; auto-generated
flash_message_line:
    mov ax, 0xfff8                   ; 0x0164
    call aztec_csav                  ; 0x0167
    mov ax, 6                        ; 0x016a
    imul word [bp + 6]               ; 0x016d
    add ax, 0x98                     ; 0x0170
    push ax                          ; 0x0173
    mov ax, 0x13f                    ; 0x0174
    push ax                          ; 0x0177
    mov ax, 6                        ; 0x0178
    imul word [bp + 6]               ; 0x017b
    add ax, 0x92                     ; 0x017e
    push ax                          ; 0x0181
    mov ax, 0                        ; 0x0182
    push ax                          ; 0x0185
    call call_show_area              ; 0x0186
    add sp, byte 8                   ; 0x0189
    push word [bp + 4]               ; 0x018c
    call aztec_strlen                ; 0x018f
    pop cx                           ; 0x0192
    mov cx, 6                        ; 0x0193
    imul cx                          ; 0x0196
    mov cx, 2                        ; 0x0198
    cwd                              ; 0x019b
    idiv cx                          ; 0x019c
    mov cx, ax                       ; 0x019e
    mov ax, 0xa1                     ; 0x01a0
    sub ax, cx                       ; 0x01a3
    mov word [bp - 2], ax            ; 0x01a5
    push word [bp + 4]               ; 0x01a8
    call aztec_strlen                ; 0x01ab
    pop cx                           ; 0x01ae
    mov cx, 6                        ; 0x01af
    imul cx                          ; 0x01b2
    mov cx, ax                       ; 0x01b4
    mov ax, word [bp - 2]            ; 0x01b6
    add cx, ax                       ; 0x01b9
    mov word [bp - 4], cx            ; 0x01bb
    mov ax, 6                        ; 0x01be
    imul word [bp + 6]               ; 0x01c1
    add ax, 0x98                     ; 0x01c4
    push ax                          ; 0x01c7
    push cx                          ; 0x01c8
    mov ax, 6                        ; 0x01c9
    imul word [bp + 6]               ; 0x01cc
    add ax, 0x92                     ; 0x01cf
    push ax                          ; 0x01d2
    push word [bp - 2]               ; 0x01d3
    call call_save_area              ; 0x01d6
    add sp, byte 8                   ; 0x01d9
    mov word [bp - 6], dx            ; 0x01dc
    mov word [bp - 8], ax            ; 0x01df
    mov ax, 0                        ; 0x01e2
    push ax                          ; 0x01e5
    mov ax, 0x16                     ; 0x01e6
    push ax                          ; 0x01e9
    call call_set_text_color         ; 0x01ea
    add sp, byte 4                   ; 0x01ed
    mov ax, 6                        ; 0x01f0
    imul word [bp + 6]               ; 0x01f3
    add ax, 0x92                     ; 0x01f6
    push ax                          ; 0x01f9
    push word [bp - 2]               ; 0x01fa
    call call_set_text_pos           ; 0x01fd
    add sp, byte 4                   ; 0x0200
    mov ax, 0                        ; 0x0203
    push ax                          ; 0x0206
    push word [bp + 4]               ; 0x0207
    call draw_text_glyphs            ; 0x020a
    add sp, byte 4                   ; 0x020d
    mov ax, 6                        ; 0x0210
    imul word [bp + 6]               ; 0x0213
    add ax, 0x98                     ; 0x0216
    push ax                          ; 0x0219
    push word [bp - 4]               ; 0x021a
    mov ax, 6                        ; 0x021d
    imul word [bp + 6]               ; 0x0220
    add ax, 0x92                     ; 0x0223
    push ax                          ; 0x0226
    push word [bp - 2]               ; 0x0227
    call call_show_area              ; 0x022a
    add sp, byte 8                   ; 0x022d
    mov ax, 1                        ; 0x0230
    push ax                          ; 0x0233
    push word [bp - 6]               ; 0x0234
    push word [bp - 8]               ; 0x0237
    call call_restore_area           ; 0x023a
    add sp, byte 6                   ; 0x023d
    call flush_keyboard              ; 0x0240
    ret                              ; 0x0243
