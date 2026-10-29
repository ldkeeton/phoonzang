; auto-generated
draw_spell_list:
    mov ax, 0xfffe                   ; 0x1138
    call aztec_csav                  ; 0x113b
    mov word [bp - 2], 0             ; 0x113e
    jmp near .forward3               ; 0x1143
.back1:
    mov ax, word [bp + 0xc]          ; 0x1146
    add ax, word [bp - 2]            ; 0x1149
    cmp ax, word [bp + 0xe]          ; 0x114c
    jne short .forward1              ; 0x114f
    mov ax, 1                        ; 0x1151
    push ax                          ; 0x1154
    mov ax, 6                        ; 0x1155
    imul word [bp - 2]               ; 0x1158
    add ax, word [bp + 6]            ; 0x115b
    add ax, strict word 6            ; 0x115e
    push ax                          ; 0x1161
    mov ax, 6                        ; 0x1162
    imul word [bp + 8]               ; 0x1165
    add ax, word [bp + 4]            ; 0x1168
    inc ax                           ; 0x116b
    inc ax                           ; 0x116c
    push ax                          ; 0x116d
    mov ax, 6                        ; 0x116e
    imul word [bp - 2]               ; 0x1171
    add ax, word [bp + 6]            ; 0x1174
    push ax                          ; 0x1177
    push word [bp + 4]               ; 0x1178
    call call_fill_area              ; 0x117b
    add sp, byte 0xa                 ; 0x117e
    mov ax, 1                        ; 0x1181
    push ax                          ; 0x1184
    mov ax, 0                        ; 0x1185
    push ax                          ; 0x1188
    call call_set_text_color         ; 0x1189
    add sp, byte 4                   ; 0x118c
    jmp short .forward2              ; 0x118f
.forward1:
    mov ax, 0xc3                     ; 0x1191
    push ax                          ; 0x1194
    mov ax, 0xb4                     ; 0x1195
    push ax                          ; 0x1198
    call call_set_text_color         ; 0x1199
    add sp, byte 4                   ; 0x119c
.forward2:
    mov ax, 6                        ; 0x119f
    imul word [bp - 2]               ; 0x11a2
    add ax, word [bp + 6]            ; 0x11a5
    inc ax                           ; 0x11a8
    push ax                          ; 0x11a9
    mov ax, word [bp + 4]            ; 0x11aa
    inc ax                           ; 0x11ad
    inc ax                           ; 0x11ae
    push ax                          ; 0x11af
    call call_set_text_pos           ; 0x11b0
    add sp, byte 4                   ; 0x11b3
    mov ax, 0                        ; 0x11b6
    push ax                          ; 0x11b9
    mov ax, word [bp + 0xc]          ; 0x11ba
    add ax, word [bp - 2]            ; 0x11bd
    mov cx, 0x14                     ; 0x11c0
    imul cx                          ; 0x11c3
    add ax, known_spell_names        ; 0x11c5
    push ax                          ; 0x11c8
    call draw_text_glyphs            ; 0x11c9
    add sp, byte 4                   ; 0x11cc
    inc word [bp - 2]                ; 0x11cf
.forward3:
    mov ax, word [bp - 2]            ; 0x11d2
    cmp ax, word [bp + 0xa]          ; 0x11d5
    jge short .return1               ; 0x11d8
    jmp near .back1                  ; 0x11da
.return1:
    ret                              ; 0x11dd
