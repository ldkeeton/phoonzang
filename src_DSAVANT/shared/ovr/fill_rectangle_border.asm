; auto-generated
fill_rectangle_border:
    mov ax, 0
    call aztec_csav
    push word [bp + 0xc]
    mov ax, word [bp + 6]
    dec ax
    push ax
    mov ax, word [bp + 8]
    inc ax
    push ax
    mov ax, word [bp + 6]
    dec ax
    push ax
    mov ax, word [bp + 4]
    dec ax
    push ax
    call call_fill_area
    add sp, byte 0xa
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 8]
    inc ax
    push ax
    mov ax, word [bp + 6]
    dec ax
    push ax
    mov ax, word [bp + 8]
    inc ax
    push ax
    call call_fill_area
    add sp, byte 0xa
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 8]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 4]
    dec ax
    push ax
    call call_fill_area
    add sp, byte 0xa
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 4]
    dec ax
    push ax
    mov ax, word [bp + 6]
    dec ax
    push ax
    mov ax, word [bp + 4]
    dec ax
    push ax
    call call_fill_area
    add sp, byte 0xa
    ret
