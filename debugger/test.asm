; test.asm — interactive target for TSR GDB stub
; Prints a counter and loops, with an int3 entry point for breaking in.
;
; Build: nasm -O0 -f bin -o test.com test.asm
; Usage: Run after gdbsrv.com TSR is installed.
;         GDB connects after the int3 fires.

BITS 16
%ifidn __OUTPUT_FORMAT__, bin
ORG 0x100
%endif

global _start
global loop
global break_here
global print_char
global counter

section .text
_start:
    mov ah, 9
    mov dx, banner
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
    mov dl, 0x0D
    int 0x21
    mov dl, 0x0A
    int 0x21
    pop dx
    pop ax

break_here:
    nop                ; <-- GDB/TSR breaks in here each iteration

loop:
    nop
    nop
    nop
    jmp print_char

section .data
counter: dw 0x30
banner:  db "test.com running - press F5 in VSCode or Ctrl+F12 in DOSBox-X", 0x0D, 0x0A, "$"
