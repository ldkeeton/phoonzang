; testcom.com — COM target for the TSR GDB stub
; Exercises DOS/BIOS console calls, then prints a counter and loops.
; GDBEXEC plants the entry trap in loaded memory.
;
; Build: nasm -O0 -f bin -o testcom.com testcom.asm
; Usage: Run after gdbsrv.com TSR is installed.
;         GDB connects at the in-memory entry trap.

BITS 16
%ifidn __OUTPUT_FORMAT__, bin
ORG 0x100
%endif

global _start
global loop
global break_here
global print_char
global counter
global dos_version_int
global date_int
global time_int
global bios_int
global bios_dos_int
global newline_cr
global newline_int
global newline_lf
global date_time_text

section .text
_start:
    mov ah, 9
    mov dx, banner
    int 0x21

    ; Query the DOS version, date, and time without waiting for user input.
    mov ah, 0x30
dos_version_int:
    int 0x21
    mov [dos_version_major], al
    mov [dos_version_minor], ah

    mov ah, 0x2A
date_int:
    int 0x21
    mov [date_year], cx
    mov [date_month], dh
    mov [date_day], dl

    mov ah, 0x2C
time_int:
    int 0x21
    mov [time_hour], ch
    mov [time_minute], cl
    mov [time_second], dh

    ; Format MM/DD/YYYY HH:MM:SS for DOS function 09h.
    mov al, [date_month]
    mov di, date_time_text
    call format_2
    mov al, [date_day]
    mov di, date_time_text+3
    call format_2
    mov ax, [date_year]
    call format_year
    mov al, [time_hour]
    mov di, date_time_text+11
    call format_2
    mov al, [time_minute]
    mov di, date_time_text+14
    call format_2
    mov al, [time_second]
    mov di, date_time_text+17
    call format_2

    mov ah, 9
    mov dx, date_label
    int 0x21
    mov dx, date_time_text
    int 0x21

    ; BIOS teletype output is distinct from the DOS console services above.
    mov ah, 9
    mov dx, bios_label
    int 0x21
    mov ax, 0x0E21               ; teletype output of '!'
    mov bx, 0x0007               ; page 0, light-gray attribute
bios_int:
    int 0x10
    mov ah, 9
    mov dx, line_ending
bios_dos_int:
    int 0x21

    ; set up counter in memory
    mov word [counter], 0x30    ; start at '0'

print_char:
    ; print the current counter digit
    mov ah, 2
    mov dl, [counter]
    int 0x21

    ; increment counter, wrap at '9' back to '0'
    inc byte [counter]
    cmp byte [counter], '9'+1
    jb break_here
    mov byte [counter], '0'

    ; print newline every 10 chars for readability
    push ax
    push dx
    mov ah, 2
newline_cr:
    mov dl, 0x0D
newline_int:
    int 0x21
newline_lf:
    mov dl, 0x0A
    int 0x21
    pop dx
    pop ax

break_here:
    nop

loop:
    nop
    nop
    nop
    jmp print_char

; AL is a value from 0 through 99; DI points to two output characters.
format_2:
    aam
    add ax, 0x3030
    xchg al, ah
    mov [di], ax
    ret

; AX is the four-digit DOS year; write it at date_time_text+6.
format_year:
    xor dx, dx
    mov bx, 1000
    div bx
    add al, '0'
    mov [date_time_text+6], al
    mov ax, dx
    xor dx, dx
    mov bx, 100
    div bx
    add al, '0'
    mov [date_time_text+7], al
    mov ax, dx
    xor dx, dx
    mov bx, 10
    div bx
    add al, '0'
    add dl, '0'
    mov [date_time_text+8], al
    mov [date_time_text+9], dl
    ret

; Keep data in the same section so the ELF debug symbols match the flat COM
; image offsets after objcopy adjusts the load origin.
section .text
counter: dw 0x30
banner:  db "testcom.com running - press F5 in VSCode or Ctrl+F12 in DOSBox-X", 0x0D, 0x0A, "$"
date_label: db "DOS date/time: $"
date_time_text: db "00/00/0000 00:00:00", 0x0D, 0x0A, "$"
bios_label: db "BIOS teletype: $"
line_ending: db 0x0D, 0x0A, "$"
dos_version_major: db 0
dos_version_minor: db 0
date_year: dw 0
date_month: db 0
date_day: db 0
time_hour: db 0
time_minute: db 0
time_second: db 0
