; auto-generated
redraw_area_set:
    mov ax, 0xfffa
    call aztec_csav
    mov ax, word [bp + 4]
    jmp near .forward1
.back1:
    mov ax, dseg_9098
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
    add sp, byte 0xa
    mov word [bp - 2], ax
    mov ax, 0
    push ax
    call redraw_glyph_strip
    pop cx
    mov ax, 1
    push ax
    push word [bp - 2]
    call restore_saved_screen
    add sp, byte 4
    jmp near .return1
.back2:
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
    add sp, byte 0xa
    mov word [bp - 2], ax
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
    add sp, byte 0xa
    mov word [bp - 4], ax
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
    add sp, byte 0xa
    mov word [bp - 6], ax
    mov ax, 0
    push ax
    call redraw_glyph_strip
    pop cx
    mov ax, 1
    push ax
    push word [bp - 6]
    call restore_saved_screen
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 4]
    call restore_saved_screen
    add sp, byte 4
    mov ax, 1
    push ax
    push word [bp - 2]
    call restore_saved_screen
    add sp, byte 4
    jmp short .return1
.back3:
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
    add sp, byte 0xa
    mov word [bp - 2], ax
    mov ax, 0
    push ax
    call redraw_glyph_strip
    pop cx
    mov ax, 1
    push ax
    push word [bp - 2]
    call restore_saved_screen
    add sp, byte 4
    jmp short .return1
.back4:
    mov ax, 0
    push ax
    call redraw_glyph_strip
    pop cx
    jmp short .return1
.forward1:
    cmp ax, strict word 0
    jne short .forward2
    jmp near .back1
.forward2:
    cmp ax, strict word 1
    jne short .forward3
    jmp near .back2
.forward3:
    cmp ax, strict word 2
    je short .back3
    cmp ax, strict word 3
    je short .back4
.return1:
    ret
