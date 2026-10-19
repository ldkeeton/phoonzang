; auto-generated
api_idx_0004_PMIU:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call gfx_save_area
    add sp, byte 8
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
    mov ax, 0xbc
    push ax
    push word [bp + 0x4]
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    push ax
    call gfx_entry_13
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call gfx_entry_12
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call ds_string_loc_QRJV
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call gfx_entry_16
    add sp, byte 8
    cmp word [bp + 0x6], byte 0
    jle short @..api_idx_0004_PMIU.l1
    mov ax, 0
    push ax
    call ds_app_HKIJ
    pop cx
@..api_idx_0004_PMIU.l1:
    push word [bss_905a]
    call ds_app_OIGN
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    push word [bp - 0x0004]
    call gfx_restore_area
    add sp, byte 6
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call gfx_entry_16
    add sp, byte 8
    ret
