; gdbexec.asm — load a DOS target stopped before its first instruction
;
; DOS EXEC subfunction 4B01h loads a child but does not execute it. The TSR's
; INT 2Fh service plants a private INT3 in the loaded image, after which this
; launcher transfers control to DOS's returned initial SS:SP and CS:IP.

BITS 16
ORG 0x100

start:
    ; Use a private stack before shrinking this process's DOS memory block.
    cli
    mov ax, cs
    mov ss, ax
    mov sp, runner_stack_top
    mov ds, ax
    mov es, ax
    sti

    call parse_command_line
    jc usage_error

    ; Leave enough memory for this launcher while allowing DOS to allocate
    ; the target as a child process.
    mov bx, (image_end - $$ + 0x100 + 15) / 16
    mov ah, 0x4A
    int 0x21
    jc memory_error

    ; EXEC parameter block for AL=01h. The load-only call fills SS:SP and
    ; CS:IP at offsets 0Eh and 12h respectively.
    mov ax, cs
    mov [exec_params+4], ax
    mov [exec_params+6], ax
    mov word [exec_params+2], child_tail
    mov [exec_params+8], ax
    mov word [exec_params+10], 0x5C
    mov [exec_params+12], ax
    mov word [exec_params+14], 0x6C

    mov dx, target_name
    mov bx, exec_params
    mov ax, 0x4B01
    int 0x21
    jc exec_error

    ; EXEC/01 makes the loaded program the current PSP. Preserve BX, which
    ; DOS uses for the child's initial memory-size register.
    mov [cs:child_memsize], bx
    mov ah, 0x62
    int 0x21
    mov [cs:child_psp], bx

    ; EXEC/01 returns after loading, not after running. Route child termination
    ; through this launcher so DOS cannot resume the post-load handoff and
    ; enter the target again after Ctrl-C.
    mov ax, [cs:child_psp]
    mov es, ax
    mov word [es:0x0A], child_exit
    mov ax, cs
    mov [es:0x0C], ax

    ; Ask GDBSRV to save the original entry byte and arm an in-memory INT3.
    mov dx, [cs:exec_params+18]    ; initial IP
    mov cx, [cs:exec_params+20]    ; initial CS
    mov ax, 0xCF02
    int 0x2F
    cmp ax, 0xCF03
    jne no_stub_error

    ; EXEC/01 stores the initial AX value at SS:(SP-2), then returns that
    ; adjusted SP in the parameter block. Reconstruct DOS's normal startup
    ; registers and the original SP before entering the child.
    mov bx, [cs:exec_params+14]    ; returned SP points at saved initial AX
    mov ax, [cs:exec_params+16]   ; returned SS
    mov es, ax
    mov ax, [es:bx]
    mov [cs:child_ax], ax
    add bx, 2
    mov [cs:child_sp], bx

    ; DOS LOADNGO startup context: AX=FCB status, BX=memory paragraphs,
    ; CX=00FFh, DX=PSP, SI=entry IP, DI=initial SP, BP=091Ch, DS=ES=PSP.
    cli
    mov ax, [cs:exec_params+16]     ; initial SS
    mov ss, ax
    mov sp, [cs:child_sp]
    mov ax, [cs:child_ax]
    mov bx, [cs:child_memsize]
    mov cx, 0x00FF
    mov dx, [cs:child_psp]
    mov si, [cs:exec_params+18]
    mov di, [cs:child_sp]
    mov bp, 0x091C
    mov ds, dx
    mov es, dx
    cld
    push word 0x0202                 ; reserved bit and DOS's enabled IF
    popf
    jmp far [cs:exec_params+18]    ; initial CS:IP

child_exit:
    mov ax, 0xCF04
    int 0x2F
    mov ax, 0x4C00
    int 0x21

parse_command_line:
    mov si, 0x81
    xor cx, cx
    mov cl, [0x80]
.skip_leading:
    jcxz .bad
    lodsb
    dec cx
    cmp al, ' '
    jbe .skip_leading

    mov di, target_name
.copy_name:
    cmp al, 0x0D
    je .name_done
    cmp al, ' '
    jbe .name_done
    cmp di, target_name_end - 1
    jae .bad
    stosb
    jcxz .name_done
    lodsb
    dec cx
    jmp .copy_name

.name_done:
    mov byte [di], 0
    cmp di, target_name
    je .bad

    ; Forward optional arguments as a conventional DOS command tail.
    mov di, child_tail+1
.skip_argument_space:
    cmp al, 0x0D
    je .tail_done
    cmp al, ' '
    ja .copy_arguments
    jcxz .tail_done
    lodsb
    dec cx
    jmp .skip_argument_space

.copy_arguments:
    mov byte [di], ' '
    inc di
.copy_argument:
    cmp al, 0x0D
    je .tail_done
    cmp di, child_tail+127
    jae .bad
    stosb
    jcxz .tail_done
    lodsb
    dec cx
    jmp .copy_argument

.tail_done:
    mov byte [di], 0x0D
    mov ax, di
    sub ax, child_tail+1
    mov [child_tail], al
    clc
    ret
.bad:
    stc
    ret

usage_error:
    mov dx, msg_usage
    jmp print_error
memory_error:
    mov dx, msg_memory
    jmp print_error
exec_error:
    mov dx, msg_exec
    jmp print_error
no_stub_error:
    mov dx, msg_stub
print_error:
    push cs
    pop ds
    mov ah, 9
    int 0x21
    mov ax, 0x4C01
    int 0x21

msg_usage:  db 'Usage: GDBEXEC.COM program [arguments]', 13, 10, '$'
msg_memory: db 'GDBEXEC: cannot resize launcher memory', 13, 10, '$'
msg_exec:   db 'GDBEXEC: DOS could not load target', 13, 10, '$'
msg_stub:   db 'GDBEXEC: GDBSRV is not installed', 13, 10, '$'

target_name: times 64 db 0
target_name_end:
child_tail: times 128 db 0
exec_params:
    dw 0                            ; environment segment: inherit parent's
    dw 0, 0                         ; command-tail pointer
    dw 0, 0                         ; first default FCB pointer
    dw 0, 0                         ; second default FCB pointer
    dw 0, 0                         ; returned SS:SP
    dw 0, 0                         ; returned IP:CS
child_psp: dw 0
child_ax: dw 0
child_sp: dw 0
child_memsize: dw 0
align 2
runner_stack: times 512 db 0
runner_stack_top:
image_end:
