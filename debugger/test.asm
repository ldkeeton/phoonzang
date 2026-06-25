; test.asm — simple .COM program for testing the GDB stub
BITS 16
ORG 0x100

start:
    mov ah, 9
    mov dx, msg
    int 0x21

    mov cx, 5
.lp:mov ah, 2
    mov dl, '.'
    int 0x21

    mov ah, 0x86        ; delay 15ms (on 286+ with real-time clock)
    mov cx, 0
    mov dx, 0x3A00
    int 0x15

    loop .lp

    ; trigger a breakpoint for testing
    int3

    mov ah, 9
    mov dx, msg2
    int 0x21

    ret

msg:  db "Hello from test program!", 0x0D, 0x0A, "$"
msg2: db "Breakpoint hit and continued!", 0x0D, 0x0A, "$"
