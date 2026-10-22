; auto-generated
api_idx_0050_NKOU:
    mov ax, 0xffb0                   ; 0x41e7
    call aztec_csav                  ; 0x41ea
    lea ax, word [bp - 0x0050]       ; 0x41ed
    push ax                          ; 0x41f0
    push word [bp + 0x4]             ; 0x41f1
    call load_message_string         ; 0x41f4
    add sp, byte 4                   ; 0x41f7
    mov ax, 0xc2                     ; 0x41fa
    push ax                          ; 0x41fd
    push word [bp + 0xa]             ; 0x41fe
    call gfx_set_text_color          ; 0x4201
    add sp, byte 4                   ; 0x4204
    cmp word [bp + 0x6], byte 0      ; 0x4207
    jge short @..api_idx_0050_NKOU.l1 ; 0x420b
    lea ax, word [bp - 0x0050]       ; 0x420d
    push ax                          ; 0x4210
    call aztec_strlen                ; 0x4211
    pop cx                           ; 0x4214
    mov cx, 6                        ; 0x4215
    imul cx                          ; 0x4218
    mov cx, 2                        ; 0x421a
    cwd                              ; 0x421d
    idiv cx                          ; 0x421e
    mov cx, ax                       ; 0x4220
    mov ax, 0xa0                     ; 0x4222
    sub ax, cx                       ; 0x4225
    mov word [bp + 0x6], ax          ; 0x4227
@..api_idx_0050_NKOU.l1:
    push word [bp + 0x8]             ; 0x422a
    push word [bp + 0x6]             ; 0x422d
    call gfx_set_text_pos            ; 0x4230
    add sp, byte 4                   ; 0x4233
    mov ax, 0                        ; 0x4236
    push ax                          ; 0x4239
    lea ax, word [bp - 0x0050]       ; 0x423a
    push ax                          ; 0x423d
    call draw_text_glyphs            ; 0x423e
    add sp, byte 4                   ; 0x4241
    ret                              ; 0x4244
