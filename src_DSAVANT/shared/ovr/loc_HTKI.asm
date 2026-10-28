; auto-generated
loc_HTKI:
    mov ax, 0
    call aztec_csav
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 6]
    push ax
    mov ax, 6
    imul word [bp + 8]
    add ax, word [bp + 4]
    inc ax
    inc ax
    push ax
    push word [bp + 6]
    push word [bp + 4]
    call draw_inset_panel
    add sp, byte 8
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0x10]
    push word [bp + 8]
    push word [bp + 6]
    push word [bp + 4]
    call draw_list_rows
    add sp, byte 0xc
    ret
