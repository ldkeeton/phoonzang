strlen:
    push bp
    mov bp, sp
    push es
    push di
    push bx
    push cx
    cld
    mov di, word [bp + 0x8]
    mov es, word [bp + 0xa]
    xor al, al
    mov cx, 8
    repne scasb
    mov word [es:di - 0x0001], 0x2e
    mov al, byte [bp + 0xc]
    call io_loc_02b3
    mov bl, al
    mov byte [cs:data_0b7c], al
    mov bh, bl
    shl bl, 1
    add bl, bh
    xor bh, bh
    add bx, strict word 0x242
    mov ax, word [cs:bx]
    stosw
    mov al, byte [cs:bx + 0x2]
    mov ah, 0
    stosw
    pop cx
    pop bx
    pop di
    pop es
    pop bp
    ret
