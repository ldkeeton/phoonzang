dos_read_file:
    push bp
    mov bp, sp
    cld
    sub sp, byte 8
    push si
    push di
    push ds
    push es
    mov ax, ds
    mov es, ax
    mov ax, cs
    mov ds, ax
    mov ax, word [bp + 0x6]
    mov bx, 0x364a
    shl ax, 1
    add bx, ax
    mov ax, word [bx]
    mov ds, ax
    xor bx, bx
    xor ah, ah
    mov al, byte [bp + 0x8]
    mov cx, word [bx + 0xa]
    mul cx
    mov cx, dx
    mov dx, ax
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0x4]
    int 0x21 ; DOS seek file (lseek)
    xor bx, bx
    xor ah, ah
    mov al, byte [bp + 0xa]
    shl al, 1
    add bx, byte 0x10
    add bx, ax
    xor ah, ah
    mov al, byte [bx]
    xor bx, bx
    mov cx, word [bx + 0xa]
    mul cx
    add ax, 0x110
    mov dx, ax
    mov cx, word [bx + 0xa]
    mov bx, word [bp + 0x4]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    xor bx, bx
    pop es
    pop ds
    pop di
    pop si
    mov sp, bp
    pop bp
    ret
