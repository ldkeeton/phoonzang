api_idx_0050:
    mov ax, 0xffb0                   ; 0x41e7
    call ds_dispatch_f40b            ; 0x41ea
    lea ax, word [bp - 0x0050]       ; 0x41ed
    push ax                          ; 0x41f0
    push word [bp + 0x4]             ; 0x41f1
    call ds_dispatch_b53b            ; 0x41f4
    add sp, byte 4                   ; 0x41f7
    mov ax, 0xc2                     ; 0x41fa
    push ax                          ; 0x41fd
    push word [bp + 0xa]             ; 0x41fe
    call ds_dispatch_e823            ; 0x4201
    add sp, byte 4                   ; 0x4204
    cmp word [bp + 0x6], byte 0      ; 0x4207
    jge short @..api_idx_0050.l1     ; 0x420b
    lea ax, word [bp - 0x0050]       ; 0x420d
    push ax                          ; 0x4210
    call ds_dispatch_fa90            ; 0x4211
    pop cx                           ; 0x4214
    mov cx, 6                        ; 0x4215
    imul cx                          ; 0x4218
    mov cx, data_0002                ; 0x421a
    cwd                              ; 0x421d
    idiv cx                          ; 0x421e
    mov cx, ax                       ; 0x4220
    mov ax, 0xa0                     ; 0x4222
    sub ax, cx                       ; 0x4225
    mov word [bp + 0x6], ax          ; 0x4227
@..api_idx_0050.l1:
    push word [bp + 0x8]             ; 0x422a
    push word [bp + 0x6]             ; 0x422d
    call ds_dispatch_e809            ; 0x4230
    add sp, byte 4                   ; 0x4233
    mov ax, 0                        ; 0x4236
    push ax                          ; 0x4239
    lea ax, word [bp - 0x0050]       ; 0x423a
    push ax                          ; 0x423d
    call ds_dispatch_e84e            ; 0x423e
    add sp, byte 4                   ; 0x4241
    ret                              ; 0x4244
loc_4245:
    mov ax, 0                        ; 0x4245
    call ds_dispatch_f40b            ; 0x4248
    mov ax, 0                        ; 0x424b
    push ax                          ; 0x424e
    mov ax, 1                        ; 0x424f
    push ax                          ; 0x4252
    call ds_dispatch_e823            ; 0x4253
    add sp, byte 4                   ; 0x4256
    push word [bp + 0x6]             ; 0x4259
    push word [bp + 0x4]             ; 0x425c
    call ds_dispatch_e809            ; 0x425f
    add sp, byte 4                   ; 0x4262
    mov ax, 0                        ; 0x4265
    push ax                          ; 0x4268
    mov ax, 5                        ; 0x4269
    push ax                          ; 0x426c
    call ds_dispatch_e830            ; 0x426d
    add sp, byte 4                   ; 0x4270
    push word [bp + 0x6]             ; 0x4273
    mov ax, word [bp + 0x4]          ; 0x4276
    add ax, word [bp + 0x8]          ; 0x4279
    push ax                          ; 0x427c
    call ds_dispatch_e809            ; 0x427d
    add sp, byte 4                   ; 0x4280
    mov ax, 0                        ; 0x4283
    push ax                          ; 0x4286
    mov ax, 6                        ; 0x4287
    push ax                          ; 0x428a
    call ds_dispatch_e830            ; 0x428b
    add sp, byte 4                   ; 0x428e
    ret                              ; 0x4291
loc_4292:
    mov ax, 0                        ; 0x4292
    call ds_dispatch_f40b            ; 0x4295
    mov ax, word [bp + 0x8]          ; 0x4298
    add ax, strict word 6            ; 0x429b
    push ax                          ; 0x429e
    mov ax, word [bp + 0x6]          ; 0x429f
    add ax, strict word 0xe          ; 0x42a2
    push ax                          ; 0x42a5
    push word [bp + 0x8]             ; 0x42a6
    push word [bp + 0x6]             ; 0x42a9
    call ds_dispatch_bd98            ; 0x42ac
    add sp, byte 8                   ; 0x42af
    mov ax, word [bp + 0x8]          ; 0x42b2
    inc ax                           ; 0x42b5
    push ax                          ; 0x42b6
    mov ax, word [bp + 0x6]          ; 0x42b7
    inc ax                           ; 0x42ba
    inc ax                           ; 0x42bb
    push ax                          ; 0x42bc
    call ds_dispatch_e809            ; 0x42bd
    add sp, byte 4                   ; 0x42c0
    mov ax, 0xc3                     ; 0x42c3
    push ax                          ; 0x42c6
    mov ax, 0xb4                     ; 0x42c7
    push ax                          ; 0x42ca
    call ds_dispatch_e823            ; 0x42cb
    add sp, byte 4                   ; 0x42ce
    mov ax, 0                        ; 0x42d1
    push ax                          ; 0x42d4
    mov ax, data_0002                ; 0x42d5
    push ax                          ; 0x42d8
    push word [bp + 0x4]             ; 0x42d9
    call ds_dispatch_b2e7            ; 0x42dc
    add sp, byte 6                   ; 0x42df
    ret                              ; 0x42e2
loc_42e3:
    mov ax, 0                        ; 0x42e3
    call ds_dispatch_f40b            ; 0x42e6
    mov ax, word [bp + 0x8]          ; 0x42e9
    add ax, strict word 6            ; 0x42ec
    push ax                          ; 0x42ef
    mov ax, 6                        ; 0x42f0
    imul word [bp + 0xa]             ; 0x42f3
    add ax, word [bp + 0x6]          ; 0x42f6
    inc ax                           ; 0x42f9
    inc ax                           ; 0x42fa
    push ax                          ; 0x42fb
    push word [bp + 0x8]             ; 0x42fc
    push word [bp + 0x6]             ; 0x42ff
    call ds_dispatch_bd98            ; 0x4302
    add sp, byte 8                   ; 0x4305
    mov ax, word [bp + 0x8]          ; 0x4308
    inc ax                           ; 0x430b
    push ax                          ; 0x430c
    mov ax, word [bp + 0x6]          ; 0x430d
    inc ax                           ; 0x4310
    inc ax                           ; 0x4311
    push ax                          ; 0x4312
    call ds_dispatch_e809            ; 0x4313
    add sp, byte 4                   ; 0x4316
    mov ax, 0xc3                     ; 0x4319
    push ax                          ; 0x431c
    mov ax, 0xb4                     ; 0x431d
    push ax                          ; 0x4320
    call ds_dispatch_e823            ; 0x4321
    add sp, byte 4                   ; 0x4324
    mov ax, 0                        ; 0x4327
    push ax                          ; 0x432a
    push word [bp + 0x4]             ; 0x432b
    call ds_dispatch_e84e            ; 0x432e
    add sp, byte 4                   ; 0x4331
    ret                              ; 0x4334
