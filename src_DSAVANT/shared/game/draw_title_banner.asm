; auto-generated
draw_title_banner:
    mov ax, 0xfff6
    call aztec_csav
    mov ax, 0
    push ax
    push ax
    push word [saved_screen + 0x2]
    push word [saved_screen]
    call gfx_restore_screen
    add sp, byte 8
    cmp word [banner_offset], byte 0
    jle short @..draw_title_banner.l1
    mov byte [bp - 0x000a], 1
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0x41
    sub ax, word [banner_offset]
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    call gfx_draw_text
    add sp, byte 0x16
@..draw_title_banner.l1:
    mov ax, 5
    cmp word [banner_plain_flag], byte 0
    jne short @..draw_title_banner.l2
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
@..draw_title_banner.l2:
    mov byte [bp - 0x000a], al
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x14
    sub ax, word [banner_offset]
    add ax, strict word 0x19
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0xf
    push ax
    call gfx_draw_text
    add sp, byte 0x16
    ret
