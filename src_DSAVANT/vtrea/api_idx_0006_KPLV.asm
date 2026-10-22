; auto-generated
api_idx_0006_KPLV:
    mov ax, 0xfffa                   ; 0x3706
    call aztec_csav                  ; 0x3709
    call api_idx_0006_TMNI           ; 0x370c
    mov word [bp - 0x0002], ax       ; 0x370f
    test ax, ax                      ; 0x3712
    je short @..api_idx_0006_KPLV.l1 ; 0x3714
    mov ax, 0                        ; 0x3716
    push ax                          ; 0x3719
    push word [bss_8d08]             ; 0x371a
    push word [bss_8d06]             ; 0x371e
    call gfx_restore_area            ; 0x3722
    add sp, byte 6                   ; 0x3725
    mov ax, 0xb9                     ; 0x3728
    push ax                          ; 0x372b
    mov ax, 0x131                    ; 0x372c
    push ax                          ; 0x372f
    call gfx_set_text_pos            ; 0x3730
    add sp, byte 4                   ; 0x3733
    mov ax, 4                        ; 0x3736
    push ax                          ; 0x3739
    mov bx, word [bp - 0x0002]       ; 0x373a
    mov al, byte [bx + 0x7]          ; 0x373d
    sub ah, ah                       ; 0x3740
    push ax                          ; 0x3742
    call draw_font_glyph             ; 0x3743
    add sp, byte 4                   ; 0x3746
    mov ax, 0xc4                     ; 0x3749
    push ax                          ; 0x374c
    mov ax, 0x13c                    ; 0x374d
    push ax                          ; 0x3750
    mov ax, 0xb9                     ; 0x3751
    push ax                          ; 0x3754
    mov ax, 0x131                    ; 0x3755
    push ax                          ; 0x3758
    call gfx_show_area               ; 0x3759
    add sp, byte 8                   ; 0x375c
    mov ax, 1                        ; 0x375f
    ret                              ; 0x3762
@..api_idx_0006_KPLV.l1:
    mov ax, 0                        ; 0x3763
    push ax                          ; 0x3766
    mov ax, word [party_map_piece]   ; 0x3767
    mov cx, 6                        ; 0x376a
    shl ax, cl                       ; 0x376d
    mov cx, word [party_cell_y]      ; 0x376f
    shl cx, 1                        ; 0x3773
    shl cx, 1                        ; 0x3775
    shl cx, 1                        ; 0x3777
    add ax, cx                       ; 0x3779
    add ax, word [party_cell_x]      ; 0x377b
    push ax                          ; 0x377f
    mov ax, bss_8bfe                 ; 0x3780
    push ax                          ; 0x3783
    call set_bitmap_bit              ; 0x3784
    add sp, byte 6                   ; 0x3787
    mov ax, 0                        ; 0x378a
    push ax                          ; 0x378d
    push word [bss_8d08]             ; 0x378e
    push word [bss_8d06]             ; 0x3792
    call gfx_restore_area            ; 0x3796
    add sp, byte 6                   ; 0x3799
    mov ax, 0xc4                     ; 0x379c
    push ax                          ; 0x379f
    mov ax, 0x13c                    ; 0x37a0
    push ax                          ; 0x37a3
    mov ax, 0xb9                     ; 0x37a4
    push ax                          ; 0x37a7
    mov ax, 0x131                    ; 0x37a8
    push ax                          ; 0x37ab
    call gfx_show_area               ; 0x37ac
    add sp, byte 8                   ; 0x37af
    mov ax, 0                        ; 0x37b2
    ret                              ; 0x37b5
