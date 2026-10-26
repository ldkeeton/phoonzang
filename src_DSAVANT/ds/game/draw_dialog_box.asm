; auto-generated
draw_dialog_box:
    mov ax, 0                        ; 0x0ee1
    call aztec_csav                  ; 0x0ee4
    mov ax, 0xc2                     ; 0x0ee7
    push ax                          ; 0x0eea
    push word [bp + 0xa]             ; 0x0eeb
    push word [bp + 8]               ; 0x0eee
    push word [bp + 6]               ; 0x0ef1
    push word [bp + 4]               ; 0x0ef4
    call gfx_fill_area               ; 0x0ef7
    add sp, byte 0xa                 ; 0x0efa
    push word [bp + 0xa]             ; 0x0efd
    push word [bp + 8]               ; 0x0f00
    push word [bp + 6]               ; 0x0f03
    push word [bp + 4]               ; 0x0f06
    call draw_rect_outline           ; 0x0f09
    add sp, byte 8                   ; 0x0f0c
    mov ax, 0xc5                     ; 0x0f0f
    push ax                          ; 0x0f12
    mov ax, 0xb4                     ; 0x0f13
    push ax                          ; 0x0f16
    push word [bp + 0xa]             ; 0x0f17
    push word [bp + 8]               ; 0x0f1a
    push word [bp + 6]               ; 0x0f1d
    push word [bp + 4]               ; 0x0f20
    call draw_rect_bevel             ; 0x0f23
    add sp, byte 0xc                 ; 0x0f26
    ret                              ; 0x0f29
