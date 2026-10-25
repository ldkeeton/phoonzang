; auto-generated
redraw_treasure_caption:
    mov ax, 0xfff6                   ; 0x0954
    call aztec_csav                  ; 0x0957
    mov ax, 0                        ; 0x095a
    push ax                          ; 0x095d
    push word [saved_area_a_hi]      ; 0x095e
    push word [saved_area_a]         ; 0x0962
    call gfx_restore_area            ; 0x0966
    add sp, byte 6                   ; 0x0969
    mov ax, 0                        ; 0x096c
    push ax                          ; 0x096f
    push word [saved_area_b_hi]      ; 0x0970
    push word [saved_area_b]         ; 0x0974
    call gfx_restore_area            ; 0x0978
    add sp, byte 6                   ; 0x097b
    mov byte [bp - 0x000a], 1        ; 0x097e
    mov byte [bp - 0x0009], 0        ; 0x0982
    mov ax, 0                        ; 0x0986
    push ax                          ; 0x0989
    push ax                          ; 0x098a
    lea ax, word [bp - 0x000a]       ; 0x098b
    push ax                          ; 0x098e
    mov ax, 0                        ; 0x098f
    push ax                          ; 0x0992
    mov ax, 0xc7                     ; 0x0993
    push ax                          ; 0x0996
    mov ax, 0                        ; 0x0997
    push ax                          ; 0x099a
    mov ax, 0x13f                    ; 0x099b
    push ax                          ; 0x099e
    mov ax, 0                        ; 0x099f
    push ax                          ; 0x09a2
    mov ax, 0x9a                     ; 0x09a3
    push ax                          ; 0x09a6
    mov ax, 0x37                     ; 0x09a7
    push ax                          ; 0x09aa
    mov ax, 0xe                      ; 0x09ab
    push ax                          ; 0x09ae
    call gfx_draw_text               ; 0x09af
    add sp, byte 0x16                ; 0x09b2
    cmp word [treasure_caption_on], byte 0 ; 0x09b5
    je short @..redraw_treasure_caption.l1 ; 0x09ba
    mov ax, 0x92                     ; 0x09bc
    push ax                          ; 0x09bf
    mov ax, treasure_caption         ; 0x09c0
    push ax                          ; 0x09c3
    call aztec_strlen                ; 0x09c4
    pop cx                           ; 0x09c7
    mov cx, 6                        ; 0x09c8
    imul cx                          ; 0x09cb
    mov cx, 2                        ; 0x09cd
    cwd                              ; 0x09d0
    idiv cx                          ; 0x09d1
    mov cx, ax                       ; 0x09d3
    mov ax, 0xa1                     ; 0x09d5
    sub ax, cx                       ; 0x09d8
    push ax                          ; 0x09da
    call gfx_set_text_pos            ; 0x09db
    add sp, byte 4                   ; 0x09de
    mov ax, 0                        ; 0x09e1
    push ax                          ; 0x09e4
    mov ax, 0x17                     ; 0x09e5
    push ax                          ; 0x09e8
    call gfx_set_text_color          ; 0x09e9
    add sp, byte 4                   ; 0x09ec
    mov ax, 0                        ; 0x09ef
    push ax                          ; 0x09f2
    mov ax, treasure_caption         ; 0x09f3
    push ax                          ; 0x09f6
    call draw_text_glyphs            ; 0x09f7
    add sp, byte 4                   ; 0x09fa
@..redraw_treasure_caption.l1:
    cmp word [bp + 0x4], byte 0      ; 0x09fd
    je short @..redraw_treasure_caption.l2 ; 0x0a01
    mov ax, 0xc6                     ; 0x0a03
    push ax                          ; 0x0a06
    mov ax, 0x127                    ; 0x0a07
    push ax                          ; 0x0a0a
    mov ax, 0x92                     ; 0x0a0b
    push ax                          ; 0x0a0e
    mov ax, 0x19                     ; 0x0a0f
    push ax                          ; 0x0a12
    call gfx_show_area               ; 0x0a13
    add sp, byte 8                   ; 0x0a16
@..redraw_treasure_caption.l2:
    ret                              ; 0x0a19
