; auto-generated
draw_framed_button: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x1034
    call aztec_csav                  ; 0x1037
    mov ax, 1                        ; 0x103a
    push ax                          ; 0x103d
    mov ax, 6                        ; 0x103e
    imul word [bp + 0xa]             ; 0x1041
    add ax, word [bp + 0x6]          ; 0x1044
    inc ax                           ; 0x1047
    inc ax                           ; 0x1048
    push ax                          ; 0x1049
    mov ax, 6                        ; 0x104a
    imul word [bp + 0x8]             ; 0x104d
    add ax, word [bp + 0x4]          ; 0x1050
    push ax                          ; 0x1053
    push word [bp + 0x6]             ; 0x1054
    push word [bp + 0x4]             ; 0x1057
    call draw_bevel_frame            ; 0x105a
    add sp, byte 0x0a                ; 0x105d
    mov ax, 0xc0                     ; 0x1060
    push ax                          ; 0x1063
    mov ax, 0x55                     ; 0x1064
    push ax                          ; 0x1067
    call gfx_set_text_color          ; 0x1068
    add sp, byte 4                   ; 0x106b
    mov ax, word [bp + 0x6]          ; 0x106e
    inc ax                           ; 0x1071
    inc ax                           ; 0x1072
    push ax                          ; 0x1073
    push word [bp + 0xc]             ; 0x1074
    call aztec_strlen                ; 0x1077
    pop cx                           ; 0x107a
    mov cx, ax                       ; 0x107b
    mov ax, word [bp + 0x8]          ; 0x107d
    sub ax, cx                       ; 0x1080
    mov cx, 6                        ; 0x1082
    imul cx                          ; 0x1085
    mov cx, 2                        ; 0x1087
    cwd                              ; 0x108a
    idiv cx                          ; 0x108b
    add ax, word [bp + 0x4]          ; 0x108d
    inc ax                           ; 0x1090
    push ax                          ; 0x1091
    call gfx_set_text_pos            ; 0x1092
    add sp, byte 4                   ; 0x1095
    mov ax, 0                        ; 0x1098
    push ax                          ; 0x109b
    push word [bp + 0xc]             ; 0x109c
    call draw_text_glyphs            ; 0x109f
    add sp, byte 4                   ; 0x10a2
    ret                              ; 0x10a5
