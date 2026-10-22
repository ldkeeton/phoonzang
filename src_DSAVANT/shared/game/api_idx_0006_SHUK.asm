; auto-generated
api_idx_0006_SHUK:
    mov ax, 0xfffa
    call aztec_csav
    mov ax, word [bp + 0x4]
    jmp near @..api_idx_0006_SHUK.l5
@..api_idx_0006_SHUK.l1:
    mov ax, report_line1_none
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0xe0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    call save_screen_area
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    call redraw_glyph_strip
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call restore_saved_screen
    add sp, byte 4
    jmp near @..api_idx_0006_SHUK.l8
@..api_idx_0006_SHUK.l2:
    mov ax, dseg_909f
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    call save_screen_area
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, dseg_90a6
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0xe7
    push ax
    call save_screen_area
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    mov ax, dseg_90ad
    push ax
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call save_screen_area
    add sp, byte 0x0a
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    call redraw_glyph_strip
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    call restore_saved_screen
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    call restore_saved_screen
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call restore_saved_screen
    add sp, byte 4
    jmp short @..api_idx_0006_SHUK.l8
@..api_idx_0006_SHUK.l3:
    mov ax, dseg_90b4
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 8
    push ax
    call save_screen_area
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    call redraw_glyph_strip
    pop cx
    mov ax, 1
    push ax
    push word [bp - 0x0002]
    call restore_saved_screen
    add sp, byte 4
    jmp short @..api_idx_0006_SHUK.l8
@..api_idx_0006_SHUK.l4:
    mov ax, 0
    push ax
    call redraw_glyph_strip
    pop cx
    jmp short @..api_idx_0006_SHUK.l8
@..api_idx_0006_SHUK.l5:
    cmp ax, strict word 0
    jne short @..api_idx_0006_SHUK.l6
    jmp near @..api_idx_0006_SHUK.l1
@..api_idx_0006_SHUK.l6:
    cmp ax, strict word 1
    jne short @..api_idx_0006_SHUK.l7
    jmp near @..api_idx_0006_SHUK.l2
@..api_idx_0006_SHUK.l7:
    cmp ax, strict word 2
    je short @..api_idx_0006_SHUK.l3
    cmp ax, strict word 3
    je short @..api_idx_0006_SHUK.l4
@..api_idx_0006_SHUK.l8:
    ret
