; auto-generated
fill_area:
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [cs:fill_area.screen_buf_seg1 - IMAGE_BASE]
    mov es, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x14]
@..fill_area.l1:
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep stosb
    dec word [bp - 0x0004]
    jne short @..fill_area.l1
    pop di
    pop es
    mov sp, bp
    pop bp
    ret
