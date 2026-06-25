BITS 16
ORG 0x100

start:
    mov ah, 9
    mov dx, msg
    int 0x21

    mov cx, 10
.lp:mov ah, 2
    mov dl, '#'
    int 0x21
    push cx
    mov cx, 0x7FFF
.d1:loop .d1
    pop cx
    loop .lp

    mov ah, 2
    mov dl, 0x0D
    int 0x21
    mov dl, 0x0A
    int 0x21

    int3

    mov ah, 9
    mov dx, msg2
    int 0x21

.al:mov ah, 2
    mov dl, '.'
    int 0x21
    push cx
    mov cx, 0x7FFF
.d2:loop .d2
    pop cx
    jmp .al

msg:  db "GDBSRV test: ########## then INT3...", 0x0D, 0x0A, "$"
msg2: db "Resumed! looping forever (Ctrl+F12 to break)", 0x0D, 0x0A, "$"
