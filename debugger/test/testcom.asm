; testcom.com — COM target for the TSR GDB stub
; Exercises DOS/BIOS console calls, then prints a counter and loops.
; GDBEXEC plants the entry trap in loaded memory.
;
; Build: nasm -O0 -f bin -o testcom.com testcom.asm
; Usage: Run after gdbsrv.com TSR is installed.
;         GDB connects at the in-memory entry trap.

BITS 16                                  ; assemble fixture for 16-bit real mode
%ifidn __OUTPUT_FORMAT__, bin            ; set DOS load origin only for flat COM output
ORG 0x100                                ; DOS loads COM program at PSP offset 0x100
%endif                                   ; ELF symbols instead start at image offset zero

global _start                            ; expose entry point to GDB
global loop                              ; expose loop location to breakpoint tests
global break_here                        ; expose stable loop breakpoint location
global print_char                        ; expose output routine location
global counter                            ; expose counter data for inspection
global dos_version_int                   ; keep DOS-call markers available to DWARF
global date_int                           ; keep DOS-call markers available to DWARF
global time_int                           ; keep DOS-call markers available to DWARF
global bios_int                           ; keep BIOS-call marker available to DWARF
global bios_dos_int                       ; keep DOS-call marker available to DWARF
global newline_cr                         ; keep newline markers available to DWARF
global newline_int                        ; keep newline markers available to DWARF
global newline_lf                         ; keep newline markers available to DWARF
global date_time_text                     ; expose formatted date/time output buffer
global rep_stosw                          ; expose the repeated string instruction for stepping tests
global rep_stosw_done                     ; expose the instruction after REP STOSW
global rep_buffer                         ; expose the REP STOSW destination for inspection

section .text
_start:                                   ; COM entry point at offset 0x100
    mov ah, 9                              ; DOS print-$-terminated-string service
    mov dx, banner                         ; DS:DX = startup banner
    int 0x21                               ; print banner through DOS console

    ; A short REP fixture verifies that one debugger step covers every iteration.
    mov ax, 0x1234                          ; word value written by STOSW
    mov cx, 3                               ; perform three repeated stores
    mov di, rep_buffer                      ; ES:DI points at the test destination
    cld                                     ; make STOSW advance DI
rep_stosw:
    rep stosw                               ; repeat as one debugger-visible instruction
rep_stosw_done:

    ; Query the DOS version, date, and time without waiting for user input.
    mov ah, 0x30                           ; DOS get-version service
dos_version_int:                          ; GDB source-line marker before DOS call
    int 0x21                               ; AL/AH = DOS major/minor version
    mov [dos_version_major], al            ; save major version for inspection
    mov [dos_version_minor], ah            ; save minor version for inspection

    mov ah, 0x2A                           ; DOS get-date service
date_int:                                  ; GDB source-line marker before DOS call
    int 0x21                               ; return year in CX, month in DH, day in DL
    mov [date_year], cx                    ; save four-digit year
    mov [date_month], dh                   ; save month number
    mov [date_day], dl                     ; save day number

    mov ah, 0x2C                           ; DOS get-time service
time_int:                                  ; GDB source-line marker before DOS call
    int 0x21                               ; return hour/minute/second in CH/CL/DH
    mov [time_hour], ch                    ; save hour
    mov [time_minute], cl                  ; save minute
    mov [time_second], dh                  ; save second

    ; Format MM/DD/YYYY HH:MM:SS for DOS function 09h.
    mov al, [date_month]                   ; AL = month to format as two decimal digits
    mov di, date_time_text                 ; DI = output position MM
    call format_2                          ; write month digits
    mov al, [date_day]                     ; AL = day to format
    mov di, date_time_text+3               ; DI = output position DD
    call format_2                          ; write day digits
    mov ax, [date_year]                    ; AX = four-digit year
    call format_year                       ; write YYYY into date/time buffer
    mov al, [time_hour]                    ; AL = hour to format
    mov di, date_time_text+11              ; DI = output position HH
    call format_2                          ; write hour digits
    mov al, [time_minute]                  ; AL = minute to format
    mov di, date_time_text+14              ; DI = output position MM
    call format_2                          ; write minute digits
    mov al, [time_second]                  ; AL = second to format
    mov di, date_time_text+17              ; DI = output position SS
    call format_2                          ; write second digits

    mov ah, 9                              ; DOS print-string service
    mov dx, date_label                     ; DS:DX = date/time label
    int 0x21                               ; print label
    mov dx, date_time_text                 ; DS:DX = formatted date/time plus CR/LF
    int 0x21                               ; print formatted date/time

    ; BIOS teletype output is distinct from the DOS console services above.
    mov ah, 9                              ; DOS print-string service
    mov dx, bios_label                     ; DS:DX = label identifying BIOS output
    int 0x21                               ; print label before BIOS teletype character
    mov ax, 0x0E21                         ; AH=0Eh BIOS teletype, AL='!'
    mov bx, 0x0007                         ; BH=page 0, BL=light-gray text attribute
bios_int:                                  ; GDB line marker before BIOS interrupt
    int 0x10                               ; display '!' through BIOS video service
    mov ah, 9                              ; DOS print-string service
    mov dx, line_ending                    ; DS:DX = CR/LF string
bios_dos_int:                             ; GDB line marker before DOS interrupt
    int 0x21                               ; print line ending through DOS

    ; set up counter in memory
    mov word [counter], 0x30               ; initialize counter's low byte to ASCII '0'

print_char:                                ; print one digit and prepare next one
    ; print the current counter digit
    mov ah, 2                              ; DOS display-character service
    mov dl, [counter]                      ; DL = current digit
    int 0x21                               ; write digit to standard output

    ; increment counter, wrap at '9' back to '0'
    inc byte [counter]                     ; advance to next ASCII digit
    cmp byte [counter], '9'+1              ; has counter advanced beyond '9'?
    jb break_here                          ; if not, branch through stable marker
    mov byte [counter], '0'                ; wrap to '0' after printing '9'

    ; print newline every 10 chars for readability
    push ax                                ; preserve AX across newline DOS calls
    push dx                                ; preserve DX across newline DOS calls
    mov ah, 2                              ; DOS display-character service
newline_cr:
    mov dl, 0x0D                           ; DL = carriage return
newline_int:
    int 0x21                               ; print carriage return
newline_lf:
    mov dl, 0x0A                           ; DL = line feed
    int 0x21                               ; print line feed
    pop dx                                 ; restore caller's DX
    pop ax                                 ; restore caller's AX

break_here:
    nop                                    ; stable instruction address for test breakpoint

loop:                                      ; harmless instructions make stepping observable
    nop                                    ; do nothing; source-level step target
    nop                                    ; do nothing; source-level step target
    nop                                    ; do nothing; source-level step target
    call bios_delay                        ; pause between counter output iterations
    jmp print_char                         ; return to digit output

; AL is a value from 0 through 99; DI points to two output characters.
format_2:
    aam                                    ; AH=AL/10 and AL=AL%10 (decimal digits)
    add ax, 0x3030                         ; convert numeric digits to ASCII
    xchg al, ah                            ; arrange tens then ones for word store
    mov [di], ax                           ; write two ASCII digits at DS:DI
    ret                                    ; return to caller

; AX is the four-digit DOS year; write it at date_time_text+6.
format_year:
    xor dx, dx                             ; clear dividend high word before division
    mov bx, 1000                           ; BX = divisor for thousands digit
    div bx                                 ; AX/1000 -> quotient AL, remainder DX
    add al, '0'                            ; convert thousands digit to ASCII
    mov [date_time_text+6], al             ; store first year digit
    mov ax, dx                             ; AX = remainder after thousands digit
    xor dx, dx                             ; prepare next unsigned division
    mov bx, 100                            ; BX = divisor for hundreds digit
    div bx                                 ; quotient AL is hundreds, remainder DX
    add al, '0'                            ; convert hundreds digit to ASCII
    mov [date_time_text+7], al             ; store second year digit
    mov ax, dx                             ; AX = remainder below 100
    xor dx, dx                             ; prepare next unsigned division
    mov bx, 10                             ; BX = divisor for tens digit
    div bx                                 ; quotient AL is tens, remainder DL is ones
    add al, '0'                            ; convert tens digit to ASCII
    add dl, '0'                            ; convert ones digit to ASCII
    mov [date_time_text+8], al             ; store third year digit
    mov [date_time_text+9], dl             ; store final year digit
    ret                                    ; return with YYYY written

; BIOS interval wait: pause 100 ms between output iterations.
bios_delay:
    push ax                                ; preserve caller's registers
    push cx
    push dx
    mov ah, 0x86                           ; BIOS wait service
    mov cx, 0x0001                         ; high word of 100,000 microseconds
    mov dx, 0x86A0                         ; low word: CX:DX = 100,000 (100 ms)
    int 0x15                               ; wait for the requested interval
    pop dx
    pop cx
    pop ax
    ret

; Keep data in the same section so the ELF debug symbols match the flat COM
; image offsets after objcopy adjusts the load origin.
section .text                            ; keep data in the flat COM/ELF image section
counter: dw 0x30                          ; low byte is the current ASCII digit
banner:  db "testcom.com running - press F5 in VSCode or Ctrl+F12 in DOSBox-X", 0x0D, 0x0A, "$" ; startup text
date_label: db "DOS date/time: $"          ; prefix for timestamp output
date_time_text: db "00/00/0000 00:00:00", 0x0D, 0x0A, "$" ; formatted timestamp buffer
bios_label: db "BIOS teletype: $"          ; prefix distinguishing BIOS output
line_ending: db 0x0D, 0x0A, "$"          ; DOS-terminated CR/LF string
dos_version_major: db 0                   ; saved DOS major version
dos_version_minor: db 0                   ; saved DOS minor version
date_year: dw 0                           ; saved year returned by DOS
date_month: db 0                          ; saved month returned by DOS
date_day: db 0                            ; saved day returned by DOS
time_hour: db 0                           ; saved hour returned by DOS
time_minute: db 0                         ; saved minute returned by DOS
time_second: db 0                         ; saved second returned by DOS
rep_buffer: times 6 db 0                   ; three words written by the REP stepping fixture
