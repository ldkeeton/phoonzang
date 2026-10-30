; auto-generated
draw_message_box:
    mov ax, 0xfffc                   ; 0x00b5
    call aztec_csav                  ; 0x00b8
    mov ax, word [bp + 6]            ; 0x00bb
    imul word [bp + 0xe]             ; 0x00be
    add ax, word [bp + 0xa]          ; 0x00c1
    add ax, strict word 0x10         ; 0x00c4
    push ax                          ; 0x00c7
    mov ax, 6                        ; 0x00c8
    imul word [bp + 0xc]             ; 0x00cb
    add ax, word [bp + 8]            ; 0x00ce
    add ax, strict word 9            ; 0x00d1
    push ax                          ; 0x00d4
    mov ax, word [bp + 6]            ; 0x00d5
    imul word [bp + 0xe]             ; 0x00d8
    add ax, word [bp + 0xa]          ; 0x00db
    add ax, strict word 6            ; 0x00de
    push ax                          ; 0x00e1
    mov ax, word [bp + 8]            ; 0x00e2
    add ax, strict word 7            ; 0x00e5
    push ax                          ; 0x00e8
    call call_save_area              ; 0x00e9
    add sp, byte 8                   ; 0x00ec
    mov word [bp - 2], dx            ; 0x00ef
    mov word [bp - 4], ax            ; 0x00f2
    mov ax, 0                        ; 0x00f5
    push ax                          ; 0x00f8
    mov ax, word [bp + 6]            ; 0x00f9
    imul word [bp + 0xe]             ; 0x00fc
    add ax, word [bp + 0xa]          ; 0x00ff
    add ax, strict word 0xf          ; 0x0102
    push ax                          ; 0x0105
    mov ax, 6                        ; 0x0106
    imul word [bp + 0xc]             ; 0x0109
    add ax, word [bp + 8]            ; 0x010c
    add ax, strict word 8            ; 0x010f
    push ax                          ; 0x0112
    mov ax, word [bp + 6]            ; 0x0113
    imul word [bp + 0xe]             ; 0x0116
    add ax, word [bp + 0xa]          ; 0x0119
    add ax, strict word 7            ; 0x011c
    push ax                          ; 0x011f
    mov ax, word [bp + 8]            ; 0x0120
    add ax, strict word 8            ; 0x0123
    push ax                          ; 0x0126
    call draw_bevel_frame            ; 0x0127
    add sp, byte 0xa                 ; 0x012a
    mov ax, 0xc0                     ; 0x012d
    push ax                          ; 0x0130
    push word [bp + 0x10]            ; 0x0131
    call call_set_text_color         ; 0x0134
    add sp, byte 4                   ; 0x0137
    mov ax, word [bp + 6]            ; 0x013a
    imul word [bp + 0xe]             ; 0x013d
    add ax, word [bp + 0xa]          ; 0x0140
    add ax, strict word 9            ; 0x0143
    push ax                          ; 0x0146
    push word [bp + 4]               ; 0x0147
    call aztec_strlen                ; 0x014a
    pop cx                           ; 0x014d
    mov cx, ax                       ; 0x014e
    mov ax, word [bp + 0xc]          ; 0x0150
    sub ax, cx                       ; 0x0153
    mov cx, 6                        ; 0x0155
    imul cx                          ; 0x0158
    mov cx, 2                        ; 0x015a
    cwd                              ; 0x015d
    idiv cx                          ; 0x015e
    add ax, word [bp + 8]            ; 0x0160
    add ax, strict word 9            ; 0x0163
    push ax                          ; 0x0166
    call call_set_text_pos           ; 0x0167
    add sp, byte 4                   ; 0x016a
    mov ax, 0                        ; 0x016d
    push ax                          ; 0x0170
    push word [bp + 4]               ; 0x0171
    call draw_text_glyphs            ; 0x0174
    add sp, byte 4                   ; 0x0177
    mov ax, word [bp + 6]            ; 0x017a
    imul word [bp + 0xe]             ; 0x017d
    add ax, word [bp + 0xa]          ; 0x0180
    add ax, strict word 0x10         ; 0x0183
    push ax                          ; 0x0186
    mov ax, 6                        ; 0x0187
    imul word [bp + 0xc]             ; 0x018a
    add ax, word [bp + 8]            ; 0x018d
    add ax, strict word 9            ; 0x0190
    push ax                          ; 0x0193
    mov ax, word [bp + 6]            ; 0x0194
    imul word [bp + 0xe]             ; 0x0197
    add ax, word [bp + 0xa]          ; 0x019a
    add ax, strict word 6            ; 0x019d
    push ax                          ; 0x01a0
    mov ax, word [bp + 8]            ; 0x01a1
    add ax, strict word 7            ; 0x01a4
    push ax                          ; 0x01a7
    call call_show_area              ; 0x01a8
    add sp, byte 8                   ; 0x01ab
    mov ax, 1                        ; 0x01ae
    push ax                          ; 0x01b1
    push word [bp - 2]               ; 0x01b2
    push word [bp - 4]               ; 0x01b5
    call call_restore_area           ; 0x01b8
    add sp, byte 6                   ; 0x01bb
    ret                              ; 0x01be
