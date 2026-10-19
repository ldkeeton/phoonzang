; gdbexec.asm — load a DOS target stopped before its first instruction
;
; DOS EXEC subfunction 4B01h loads a child but does not execute it. The TSR's
; INT 2Fh service plants a private INT3 in the loaded image, after which this
; launcher transfers control to DOS's returned initial SS:SP and CS:IP.

BITS 16                                  ; emit 16-bit x86 instructions for DOS
ORG 0x100                              ; DOS loads this COM image after its 256-byte PSP

start:                                  ; launcher entry point
    ; Use a private stack before shrinking this process's DOS memory block.
    cli                                 ; disable interrupts while changing SS:SP
    mov ax, cs                          ; AX = this launcher's segment
    mov ss, ax                          ; SS = launcher segment for private stack
    mov sp, runner_stack_top            ; SP = top of reserved launcher stack
    mov ds, ax                          ; DS = launcher segment for its data
    mov es, ax                          ; ES = launcher segment for DOS calls
    sti                                 ; allow DOS and hardware interrupts again

    call parse_command_line             ; read target filename and optional arguments
    jc usage_error                      ; invalid or missing filename -> show syntax

    ; Leave enough memory for this launcher while allowing DOS to allocate
    ; the target as a child process.
    mov bx, (image_end - $$ + 0x100 + 15) / 16 ; BX = paragraphs needed by launcher
    mov ah, 0x4A                         ; DOS resize-memory-block service
    int 0x21                             ; retain only this launcher's memory
    jc memory_error                      ; report failure if DOS cannot shrink it

    ; EXEC parameter block for AL=01h. The load-only call fills SS:SP and
    ; CS:IP at offsets 0Eh and 12h respectively.
    mov ax, cs                           ; AX = segment containing parameter data
    mov [exec_params+4], ax              ; EXEC block: command-tail segment
    mov [exec_params+6], ax              ; EXEC block: first default-FCB segment
    mov word [exec_params+2], child_tail ; EXEC block: command-tail offset
    mov [exec_params+8], ax              ; EXEC block: second default-FCB segment
    mov word [exec_params+10], 0x5C     ; EXEC block: first PSP default-FCB offset
    mov [exec_params+12], ax             ; EXEC block: second default-FCB segment
    mov word [exec_params+14], 0x6C     ; EXEC block: second PSP default-FCB offset

    mov dx, target_name                  ; DS:DX = target executable name
    mov bx, exec_params                  ; ES:BX = EXEC parameter block
    mov ax, 0x4B01                       ; DOS EXEC: load child but do not run it
    int 0x21                             ; load target and fill returned entry context
    jc exec_error                        ; report if DOS cannot load the target

    ; EXEC/01 makes the loaded program the current PSP. Preserve BX, which
    ; DOS uses for the child's initial memory-size register.
    mov [cs:child_memsize], bx           ; remember DOS's child memory-size value
    mov ah, 0x62                         ; DOS get-current-PSP service
    int 0x21                             ; BX = target's newly active PSP segment
    mov [cs:child_psp], bx               ; save target PSP for startup registers

    ; EXEC/01 returns after loading, not after running. Route child termination
    ; through this launcher so DOS cannot resume the post-load handoff and
    ; enter the target again after Ctrl-C.
    mov ax, [cs:child_psp]               ; AX = target PSP segment
    mov es, ax                           ; ES = target PSP
    mov word [es:0x0A], child_exit       ; PSP termination vector -> launcher cleanup
    mov ax, cs                           ; AX = launcher code segment
    mov [es:0x0C], ax                    ; store segment half of cleanup vector

    ; Ask GDBSRV to save the original entry byte and arm an in-memory INT3.
    mov dx, [cs:exec_params+18]          ; DX = DOS-loaded target's initial IP
    mov cx, [cs:exec_params+20]          ; CX = DOS-loaded target's initial CS
    mov ax, 0xCF02                       ; ask GDBSRV to plant its entry trap
    int 0x2F                             ; TSR saves entry byte and writes INT 3
    cmp ax, 0xCF03                       ; check that the resident stub accepted it
    jne no_stub_error                    ; no installed/available GDBSRV -> report error

    ; EXEC/01 stores the initial AX value at SS:(SP-2), then returns that
    ; adjusted SP in the parameter block. Reconstruct DOS's normal startup
    ; registers and the original SP before entering the child.
    mov bx, [cs:exec_params+14]          ; BX = returned SP, pointing at saved AX
    mov ax, [cs:exec_params+16]          ; AX = target's initial SS
    mov es, ax                           ; ES = target stack segment
    mov ax, [es:bx]                      ; recover target's initial AX value
    mov [cs:child_ax], ax                ; save AX before rebuilding startup state
    add bx, 2                            ; skip saved AX to recover original SP
    mov [cs:child_sp], bx                ; save target's original stack pointer

    ; DOS LOADNGO startup context: AX=FCB status, BX=memory paragraphs,
    ; CX=00FFh, DX=PSP, SI=entry IP, DI=initial SP, BP=091Ch, DS=ES=PSP.
    cli                                 ; protect the final stack/register handoff
    mov ax, [cs:exec_params+16]         ; AX = target's initial SS
    mov ss, ax                          ; SS = target stack segment
    mov sp, [cs:child_sp]               ; SP = target's reconstructed initial SP
    mov ax, [cs:child_ax]               ; restore target's startup AX
    mov bx, [cs:child_memsize]          ; BX = DOS LOADNGO memory-size value
    mov cx, 0x00FF                      ; CX = DOS LOADNGO startup value
    mov dx, [cs:child_psp]              ; DX = target PSP segment
    mov si, [cs:exec_params+18]         ; SI = target entry IP, as DOS supplies it
    mov di, [cs:child_sp]               ; DI = target startup SP
    mov bp, 0x091C                      ; BP = DOS LOADNGO startup value
    mov ds, dx                          ; DS = target PSP/data segment
    mov es, dx                          ; ES = target PSP/data segment
    cld                                 ; make string operations increment indexes
    push word 0x0202                    ; prepare DOS startup flags with IF enabled
    popf                                ; install those flags before entering target
    jmp far [cs:exec_params+18]         ; transfer to DOS-provided initial CS:IP

child_exit:                             ; target termination callback in its PSP
    push cs                              ; DOS enters with the target's DS
    pop ds                               ; DS = launcher segment for its data
    mov ah, 0x4D                         ; DOS get-child-return-code service
    int 0x21                             ; AL = exit code, AH = termination type
    mov [child_code], ax                 ; keep both for the message and GDB
    mov di, msg_code                     ; DI = exit-code digits in message
    call hex_byte                        ; write AL as two hex digits
    mov al, ah                           ; AL = 0 normal, 1 Ctrl-C, 2 crit-err, 3 TSR
    mov di, msg_type                     ; DI = termination-type digit in message
    call hex_byte                        ; write AH as two hex digits
    mov dx, msg_exit                     ; DS:DX = exit report left on screen
    mov ah, 9                            ; DOS print-$-terminated-string service
    int 0x21                             ; show how the target ended
    mov bx, [child_code]                 ; BL = exit code GDBSRV reports to GDB
    mov ax, 0xCF04                       ; tell GDBSRV the debugged program exited
    int 0x2F                             ; TSR sends remote exit status to GDB
    mov al, [child_code]                 ; AL = target's exit code
    mov ah, 0x4C                         ; DOS terminate-process service
    int 0x21                             ; return from target to launcher's parent

; Write AL as two uppercase hex digits to DS:DI.
hex_byte:
    push ax                              ; preserve caller's AX
    mov ah, al                           ; AH = copy for the low nibble
    shr al, 4                            ; AL = high nibble
    call .nib                            ; write high digit
    mov al, ah                           ; AL = original byte
    call .nib                            ; write low digit
    pop ax                               ; restore caller's AX
    ret                                  ; DI now follows both digits
.nib:
    and al, 0x0F                         ; keep one nibble
    add al, '0'                          ; map 0..9 to ASCII digits
    cmp al, '9'                          ; above '9' needs A..F
    jbe .nd                              ; decimal digit is ready
    add al, 7                            ; map 10..15 to 'A'..'F'
.nd:mov [di], al                         ; store digit
    inc di                               ; advance output pointer
    ret                                  ; return to hex_byte

parse_command_line:
    mov si, 0x81                         ; SI = first byte of DOS command tail
    xor cx, cx                           ; clear upper half of command-tail length
    mov cl, [0x80]                       ; CL = number of command-tail characters
.skip_leading:
    jcxz .bad                            ; empty tail -> no executable name
    lodsb                                ; read next command-line character into AL
    dec cx                               ; one fewer character remains
    cmp al, ' '                          ; skip spaces and other whitespace bytes
    jbe .skip_leading                    ; keep scanning until first name character

    mov di, target_name                  ; DI = destination for executable name
.copy_name:
    cmp al, 0x0D                         ; carriage return ends DOS command tail
    je .name_done                        ; finish name at end of line
    cmp al, ' '                          ; whitespace separates filename/arguments
    jbe .name_done                       ; finish name before optional arguments
    cmp di, target_name_end - 1          ; keep room for a terminating NUL
    jae .bad                             ; overlong filename -> usage error
    stosb                                ; append current character to target name
    jcxz .name_done                      ; no more chars -> finish the name
    lodsb                                ; fetch next filename character
    dec cx                               ; consume that command-tail character
    jmp .copy_name                       ; continue copying filename

.name_done:
    mov byte [di], 0                     ; NUL-terminate target executable path
    cmp di, target_name                  ; did parsing produce any filename bytes?
    je .bad                              ; reject empty executable name

    ; Forward optional arguments as a conventional DOS command tail.
    mov di, child_tail+1                 ; DI = start of DOS child's argument tail
.skip_argument_space:
    cmp al, 0x0D                         ; no trailing arguments at end of tail
    je .tail_done                        ; make an empty DOS argument tail
    cmp al, ' '                          ; non-whitespace starts optional arguments
    ja .copy_arguments                   ; copy the remaining argument text
    jcxz .tail_done                      ; only spaces remain -> empty argument tail
    lodsb                                ; advance to the next command-tail character
    dec cx                               ; account for consumed whitespace
    jmp .skip_argument_space             ; continue past leading argument spaces

.copy_arguments:
    mov byte [di], ' '                   ; DOS command tails conventionally start space
    inc di                               ; advance past the inserted leading space
.copy_argument:
    cmp al, 0x0D                         ; carriage return terminates DOS arguments
    je .tail_done                        ; finish argument-tail construction
    cmp di, child_tail+127               ; leave room for required DOS CR terminator
    jae .bad                             ; too many arguments -> usage error
    stosb                                ; copy current argument character
    jcxz .tail_done                      ; all characters copied -> finish tail
    lodsb                                ; read next argument character
    dec cx                               ; one fewer source character remains
    jmp .copy_argument                   ; continue copying arguments

.tail_done:
    mov byte [di], 0x0D                  ; DOS command-tail buffer ends in CR
    mov ax, di                           ; AX = end position in child-tail buffer
    sub ax, child_tail+1                 ; AX = number of copied tail characters
    mov [child_tail], al                 ; first byte stores DOS tail length
    clc                                  ; report successful argument parsing
    ret                                  ; return to launch setup
.bad:
    stc                                  ; report malformed or oversized command line
    ret                                  ; caller selects the usage-error message

usage_error:
    mov dx, msg_usage                    ; DS:DX = expected command-line syntax
    jmp print_error                      ; print message and exit with failure
memory_error:
    mov dx, msg_memory                   ; DS:DX = DOS memory-resize failure text
    jmp print_error                      ; print message and exit with failure
exec_error:
    mov dx, msg_exec                     ; DS:DX = DOS target-load failure text
    jmp print_error                      ; print message and exit with failure
no_stub_error:
    mov dx, msg_stub                     ; DS:DX = GDBSRV-not-installed message
print_error:
    push cs                              ; preserve launcher segment across DOS calls
    pop ds                               ; DS = launcher segment containing messages
    mov ah, 9                            ; DOS print-$-terminated-string service
    int 0x21                             ; display selected failure message
    mov ax, 0x4C01                       ; DOS exit service with status code 1
    int 0x21                             ; terminate launcher after setup failure

msg_usage:  db 'Usage: GDBEXEC.COM program [arguments]', 13, 10, '$' ; syntax shown on bad input
msg_memory: db 'GDBEXEC: cannot resize launcher memory', 13, 10, '$' ; resize error
msg_exec:   db 'GDBEXEC: DOS could not load target', 13, 10, '$' ; target-load error
msg_stub:   db 'GDBEXEC: GDBSRV is not installed', 13, 10, '$' ; missing TSR error
; Type: 00 normal, 01 Ctrl-C, 02 critical error, 03 TSR (INT 21h AH=4Dh).
msg_exit:   db 13, 10, 'GDBEXEC: target exited, code '
msg_code:   db '00h, type '
msg_type:   db '00h', 13, 10, '$'       ; digits patched in by child_exit

target_name: times 64 db 0              ; NUL-terminated path copied from command line
target_name_end:
child_tail: times 128 db 0              ; length-prefixed DOS command tail for target
exec_params:
    dw 0                                ; inherit parent environment (segment 0)
    dw 0, 0                             ; child command-tail offset:segment
    dw 0, 0                             ; first default FCB offset:segment
    dw 0, 0                             ; second default FCB offset:segment
    dw 0, 0                             ; DOS returns target initial SS:SP here
    dw 0, 0                             ; DOS returns target initial IP:CS here
child_psp: dw 0                         ; target's process segment
child_ax: dw 0                          ; target's saved startup AX value
child_sp: dw 0                          ; reconstructed target startup SP
child_memsize: dw 0                     ; DOS-provided target memory-size value
child_code: dw 0                        ; target's return code (AL) and type (AH)
align 2                                  ; keep following word variables word-aligned
runner_stack: times 512 db 0            ; private stack used while preparing child
runner_stack_top:
image_end:                              ; end marker used to size launcher memory
