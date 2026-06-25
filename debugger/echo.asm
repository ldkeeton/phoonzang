BITS 16
ORG 0x100

COM1 equ 0x3F8

start:
    ; Quick init: 9600,8N1
    mov dx, COM1+3
    mov al, 0x83
    out dx, al
    mov dx, COM1
    mov al, 12
    out dx, al
    mov dx, COM1+1
    mov al, 0
    out dx, al
    mov dx, COM1+3
    mov al, 0x03
    out dx, al
    mov dx, COM1+4
    mov al, 0x03
    out dx, al

loop:
    ; Read byte
    mov dx, COM1+5
.poll:in al, dx
    test al, 1
    jz .poll
    mov dx, COM1
    in al, dx

    ; Echo it back
    push ax
    mov dx, COM1+5
.tx:in al, dx
    test al, 0x20
    jz .tx
    mov dx, COM1
    pop ax
    out dx, al

    jmp loop
