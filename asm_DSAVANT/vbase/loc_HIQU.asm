; auto-generated
loc_HIQU:
    mov ax, 0                        ; 0x4245
    call aztec_csav                  ; 0x4248
    mov ax, 0                        ; 0x424b
    push ax                          ; 0x424e
    mov ax, 1                        ; 0x424f
    push ax                          ; 0x4252
    call thunk_3                     ; 0x4253
    add sp, byte 4                   ; 0x4256
    push word [bp + 0x6]             ; 0x4259
    push word [bp + 0x4]             ; 0x425c
    call thunk                       ; 0x425f
    add sp, byte 4                   ; 0x4262
    mov ax, 0                        ; 0x4265
    push ax                          ; 0x4268
    mov ax, 5                        ; 0x4269
    push ax                          ; 0x426c
    call ds_loc_TJTV                 ; 0x426d
    add sp, byte 4                   ; 0x4270
    push word [bp + 0x6]             ; 0x4273
    mov ax, word [bp + 0x4]          ; 0x4276
    add ax, word [bp + 0x8]          ; 0x4279
    push ax                          ; 0x427c
    call thunk                       ; 0x427d
    add sp, byte 4                   ; 0x4280
    mov ax, 0                        ; 0x4283
    push ax                          ; 0x4286
    mov ax, 6                        ; 0x4287
    push ax                          ; 0x428a
    call ds_loc_TJTV                 ; 0x428b
    add sp, byte 4                   ; 0x428e
    ret                              ; 0x4291
