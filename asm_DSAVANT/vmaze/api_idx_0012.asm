api_idx_0012:
    mov ax, 0xffee                   ; 0x3f56
    call ds_dispatch_f40b            ; 0x3f59
    mov word [bp - 0x0004], 0xffff   ; 0x3f5c
    mov word [bp - 0x0006], 0xffff   ; 0x3f61
    mov ax, word [bp + 0x6]          ; 0x3f66
    jmp near @..api_idx_0012.l1      ; 0x3f69
    cmp word [bp + 0x26], byte 0xff  ; 0x3f6c
    jne short loc_3f75               ; 0x3f70
    jmp near loc_3ff9                ; 0x3f72
    cmp word [bp + 0x4], byte 0      ; 0x3f75
    je short loc_3f7e                ; 0x3f79
    db 0xe9, 0x7b, 0x00 ; jmp near loc_3ff9
    cmp word [bp + 0x6], byte 8      ; 0x3f7e
    jne short loc_3f8a               ; 0x3f82
    mov ax, word [bp + 0x26]         ; 0x3f84
    inc ax                           ; 0x3f87
    jmp short loc_3f90               ; 0x3f88
    mov ax, word [bp + 0x26]         ; 0x3f8a
    inc ax                           ; 0x3f8d
    inc ax                           ; 0x3f8e
    inc ax                           ; 0x3f8f
    mov word [bp - 0x0002], ax       ; 0x3f90
    mov ax, 0                        ; 0x3f93
    push ax                          ; 0x3f96
    mov ax, 1                        ; 0x3f97
    push ax                          ; 0x3f9a
    mov ax, 0                        ; 0x3f9b
    push ax                          ; 0x3f9e
    push word [bp + 0xa]             ; 0x3f9f
    push word [bp + 0x4]             ; 0x3fa2
    mov ax, 0xffff                   ; 0x3fa5
    cmp word [bp + 0x8], byte 2      ; 0x3fa8
    jge short loc_3fb2               ; 0x3fac
    mov ax, word [bp - 0x0002]       ; 0x3fae
    inc ax                           ; 0x3fb1
    push ax                          ; 0x3fb2
    mov ax, 0xffff                   ; 0x3fb3
    cmp word [bp + 0x8], byte 2      ; 0x3fb6
    jge short loc_3fbf               ; 0x3fba
    mov ax, word [bp - 0x0002]       ; 0x3fbc
    push ax                          ; 0x3fbf
    mov ax, 0                        ; 0x3fc0
    push ax                          ; 0x3fc3
    push ax                          ; 0x3fc4
    mov ax, 2                        ; 0x3fc5
    push ax                          ; 0x3fc8
    push ax                          ; 0x3fc9
    cmp word [bp + 0x6], byte 8      ; 0x3fca
    jne short loc_3fd6               ; 0x3fce
    cmp word [bp + 0x8], byte 2      ; 0x3fd0
    jg short loc_3fe2                ; 0x3fd4
    cmp word [bp + 0x6], byte 9      ; 0x3fd6
    jne short loc_3fe8               ; 0x3fda
    cmp word [bp + 0x8], byte 2      ; 0x3fdc
    jge short loc_3fe8               ; 0x3fe0
    mov ax, word [bp - 0x0002]       ; 0x3fe2
    inc ax                           ; 0x3fe5
    jmp short loc_3feb               ; 0x3fe6
    mov ax, 0xffff                   ; 0x3fe8
    push ax                          ; 0x3feb
    push word [bp - 0x0002]          ; 0x3fec
    mov ax, 0xfd                     ; 0x3fef
    push ax                          ; 0x3ff2
    call api_idx_0004_5              ; 0x3ff3
    add sp, byte 0x1c                ; 0x3ff6
    cmp word [bp + 0x6], byte 3      ; 0x3ff9
    db 0x74, 0x03 ; je short loc_4002
    jmp near loc_4085                ; 0x3fff
    cmp word [bp + 0x4], byte 4      ; 0x4002
    jl short loc_400b                ; 0x4006
    db 0xe9, 0x7a, 0x00 ; jmp near loc_4085
    cmp word [bp + 0x34], byte 0xff  ; 0x400b
    je short loc_4060                ; 0x400f
    mov ax, 0                        ; 0x4011
    push ax                          ; 0x4014
    mov ax, 1                        ; 0x4015
    push ax                          ; 0x4018
    mov ax, 0                        ; 0x4019
    push ax                          ; 0x401c
    push word [bp + 0xe]             ; 0x401d
    push word [bp + 0x4]             ; 0x4020
    mov ax, 0xffff                   ; 0x4023
    push ax                          ; 0x4026
    mov ax, word [bp + 0x34]         ; 0x4027
    add ax, word [bp + 0x4]          ; 0x402a
    push ax                          ; 0x402d
    call loc_2eac                    ; 0x402e
    pop cx                           ; 0x4031
    push ax                          ; 0x4032
    mov ax, 0                        ; 0x4033
    push ax                          ; 0x4036
    push ax                          ; 0x4037
    push ax                          ; 0x4038
    mov ax, 2                        ; 0x4039
    push ax                          ; 0x403c
    mov ax, 0xffff                   ; 0x403d
    push ax                          ; 0x4040
    mov ax, word [bp + 0x36]         ; 0x4041
    add ax, word [bp + 0x4]          ; 0x4044
    push ax                          ; 0x4047
    mov ax, word [bp + 0x34]         ; 0x4048
    add ax, word [bp + 0x4]          ; 0x404b
    push ax                          ; 0x404e
    call loc_2ec0                    ; 0x404f
    add sp, byte 4                   ; 0x4052
    push ax                          ; 0x4055
    mov ax, 0xfd                     ; 0x4056
    push ax                          ; 0x4059
    call api_idx_0004_5              ; 0x405a
    add sp, byte 0x1c                ; 0x405d
    mov ax, word [bp + 0x32]         ; 0x4060
    add ax, word [bp + 0x4]          ; 0x4063
    push ax                          ; 0x4066
    mov ax, word [bp + 0x30]         ; 0x4067
    add ax, word [bp + 0x4]          ; 0x406a
    push ax                          ; 0x406d
    call loc_2ec0                    ; 0x406e
    add sp, byte 4                   ; 0x4071
    mov word [bp - 0x0004], ax       ; 0x4074
    mov ax, word [bp + 0x30]         ; 0x4077
    add ax, word [bp + 0x4]          ; 0x407a
    push ax                          ; 0x407d
    call loc_2eac                    ; 0x407e
    pop cx                           ; 0x4081
    mov word [bp - 0x0006], ax       ; 0x4082
    cmp word [bp + 0x6], byte 6      ; 0x4085
    jne short loc_40b6               ; 0x4089
    cmp word [bp + 0x4], byte 4      ; 0x408b
    jge short loc_40b6               ; 0x408f
    mov ax, word [bp + 0x24]         ; 0x4091
    add ax, word [bp + 0x4]          ; 0x4094
    push ax                          ; 0x4097
    mov ax, word [bp + 0x22]         ; 0x4098
    add ax, word [bp + 0x4]          ; 0x409b
    push ax                          ; 0x409e
    call loc_2ec0                    ; 0x409f
    add sp, byte 4                   ; 0x40a2
    mov word [bp - 0x0004], ax       ; 0x40a5
    mov ax, word [bp + 0x22]         ; 0x40a8
    add ax, word [bp + 0x4]          ; 0x40ab
    push ax                          ; 0x40ae
    call loc_2eac                    ; 0x40af
    pop cx                           ; 0x40b2
    mov word [bp - 0x0006], ax       ; 0x40b3
    cmp word [data_91d4], byte 0     ; 0x40b6
    jne short loc_4112               ; 0x40bb
    cmp word [bp + 0x4], byte 4      ; 0x40bd
    jge short loc_4110               ; 0x40c1
    mov ax, 0                        ; 0x40c3
    push ax                          ; 0x40c6
    mov ax, 1                        ; 0x40c7
    push ax                          ; 0x40ca
    mov ax, 0                        ; 0x40cb
    push ax                          ; 0x40ce
    push word [bp + 0xa]             ; 0x40cf
    push word [bp + 0x4]             ; 0x40d2
    push word [bp - 0x0006]          ; 0x40d5
    mov ax, word [bp + 0x1e]         ; 0x40d8
    add ax, word [bp + 0x4]          ; 0x40db
    push ax                          ; 0x40de
    call loc_2eac                    ; 0x40df
    pop cx                           ; 0x40e2
    push ax                          ; 0x40e3
    mov ax, 0                        ; 0x40e4
    push ax                          ; 0x40e7
    push ax                          ; 0x40e8
    mov ax, 2                        ; 0x40e9
    push ax                          ; 0x40ec
    push ax                          ; 0x40ed
    push word [bp - 0x0004]          ; 0x40ee
    mov ax, word [bp + 0x20]         ; 0x40f1
    add ax, word [bp + 0x4]          ; 0x40f4
    push ax                          ; 0x40f7
    mov ax, word [bp + 0x1e]         ; 0x40f8
    add ax, word [bp + 0x4]          ; 0x40fb
    push ax                          ; 0x40fe
    call loc_2ec0                    ; 0x40ff
    add sp, byte 4                   ; 0x4102
    push ax                          ; 0x4105
    mov ax, 0xfd                     ; 0x4106
    push ax                          ; 0x4109
    call api_idx_0004_5              ; 0x410a
    add sp, byte 0x1c                ; 0x410d
    jmp short loc_416c               ; 0x4110
    cmp word [data_91d4], byte 2     ; 0x4112
    jne short loc_416c               ; 0x4117
    cmp word [bp + 0x4], byte 5      ; 0x4119
    jge short loc_416c               ; 0x411d
    mov ax, 0                        ; 0x411f
    push ax                          ; 0x4122
    mov ax, 1                        ; 0x4123
    push ax                          ; 0x4126
    mov ax, 0                        ; 0x4127
    push ax                          ; 0x412a
    push word [bp + 0xe]             ; 0x412b
    push word [bp + 0x4]             ; 0x412e
    push word [bp - 0x0006]          ; 0x4131
    mov ax, word [bp + 0x2c]         ; 0x4134
    add ax, word [bp + 0x4]          ; 0x4137
    push ax                          ; 0x413a
    call loc_2eac                    ; 0x413b
    pop cx                           ; 0x413e
    push ax                          ; 0x413f
    mov ax, 0                        ; 0x4140
    push ax                          ; 0x4143
    push ax                          ; 0x4144
    mov ax, 2                        ; 0x4145
    push ax                          ; 0x4148
    push ax                          ; 0x4149
    push word [bp - 0x0004]          ; 0x414a
    mov ax, word [bp + 0x2e]         ; 0x414d
    add ax, word [bp + 0x4]          ; 0x4150
    push ax                          ; 0x4153
    mov ax, word [bp + 0x2c]         ; 0x4154
    add ax, word [bp + 0x4]          ; 0x4157
    push ax                          ; 0x415a
    call loc_2ec0                    ; 0x415b
    add sp, byte 4                   ; 0x415e
    push ax                          ; 0x4161
    mov ax, 0xfd                     ; 0x4162
    push ax                          ; 0x4165
    call api_idx_0004_5              ; 0x4166
    add sp, byte 0x1c                ; 0x4169
    cmp word [bp + 0x26], byte 0xff  ; 0x416c
    je short loc_41bf                ; 0x4170
    cmp word [bp + 0x4], byte 0      ; 0x4172
    jne short loc_41bf               ; 0x4176
    cmp word [bp + 0x6], byte 8      ; 0x4178
    je short loc_4184                ; 0x417c
    cmp word [bp + 0x6], byte 9      ; 0x417e
    db 0x75, 0x3b ; jne short loc_41bf
    mov ax, 0                        ; 0x4184
    push ax                          ; 0x4187
    mov ax, 1                        ; 0x4188
    push ax                          ; 0x418b
    mov ax, 0                        ; 0x418c
    push ax                          ; 0x418f
    push word [bp + 0xa]             ; 0x4190
    push word [bp + 0x4]             ; 0x4193
    mov ax, 0xffff                   ; 0x4196
    push ax                          ; 0x4199
    cmp word [bp + 0x8], byte 2      ; 0x419a
    db 0x7d, 0x03 ; jge short loc_41a3
    mov ax, word [bp + 0x26]         ; 0x41a0
    push ax                          ; 0x41a3
    mov ax, 0                        ; 0x41a4
    push ax                          ; 0x41a7
    push ax                          ; 0x41a8
    push ax                          ; 0x41a9
    mov ax, 2                        ; 0x41aa
    push ax                          ; 0x41ad
    mov ax, 0xffff                   ; 0x41ae
    push ax                          ; 0x41b1
    push word [bp + 0x26]            ; 0x41b2
    mov ax, 0xfd                     ; 0x41b5
    push ax                          ; 0x41b8
    call api_idx_0004_5              ; 0x41b9
    add sp, byte 0x1c                ; 0x41bc
    jmp near @..api_idx_0012.l2      ; 0x41bf
    cmp word [bp + 0x4], byte 4      ; 0x41c2
    jge short loc_41ed               ; 0x41c6
    mov ax, word [bp + 0x3a]         ; 0x41c8
    add ax, word [bp + 0x4]          ; 0x41cb
    push ax                          ; 0x41ce
    mov ax, word [bp + 0x38]         ; 0x41cf
    add ax, word [bp + 0x4]          ; 0x41d2
    push ax                          ; 0x41d5
    call loc_2ec0                    ; 0x41d6
    add sp, byte 4                   ; 0x41d9
    mov word [bp - 0x0004], ax       ; 0x41dc
    mov ax, word [bp + 0x38]         ; 0x41df
    add ax, word [bp + 0x4]          ; 0x41e2
    push ax                          ; 0x41e5
    call loc_2eac                    ; 0x41e6
    pop cx                           ; 0x41e9
    mov word [bp - 0x0006], ax       ; 0x41ea
    cmp word [data_91d4], byte 0     ; 0x41ed
    jne short loc_424a               ; 0x41f2
    cmp word [bp + 0x4], byte 4      ; 0x41f4
    jge short loc_4247               ; 0x41f8
    mov ax, 0                        ; 0x41fa
    push ax                          ; 0x41fd
    mov ax, 1                        ; 0x41fe
    push ax                          ; 0x4201
    mov ax, 0                        ; 0x4202
    push ax                          ; 0x4205
    push word [bp + 0xa]             ; 0x4206
    push word [bp + 0x4]             ; 0x4209
    push word [bp - 0x0006]          ; 0x420c
    mov ax, word [bp + 0x16]         ; 0x420f
    add ax, word [bp + 0x4]          ; 0x4212
    push ax                          ; 0x4215
    call loc_2eac                    ; 0x4216
    pop cx                           ; 0x4219
    push ax                          ; 0x421a
    mov ax, 0                        ; 0x421b
    push ax                          ; 0x421e
    push ax                          ; 0x421f
    mov ax, 2                        ; 0x4220
    push ax                          ; 0x4223
    push ax                          ; 0x4224
    push word [bp - 0x0004]          ; 0x4225
    mov ax, word [bp + 0x18]         ; 0x4228
    add ax, word [bp + 0x4]          ; 0x422b
    push ax                          ; 0x422e
    mov ax, word [bp + 0x16]         ; 0x422f
    add ax, word [bp + 0x4]          ; 0x4232
    push ax                          ; 0x4235
    call loc_2ec0                    ; 0x4236
    add sp, byte 4                   ; 0x4239
    push ax                          ; 0x423c
    mov ax, 0xfd                     ; 0x423d
    push ax                          ; 0x4240
    call api_idx_0004_5              ; 0x4241
    add sp, byte 0x1c                ; 0x4244
    db 0xe9, 0x08, 0x01 ; jmp near loc_4352
    cmp word [data_91d4], byte 3     ; 0x424a
    jl short loc_425b                ; 0x424f
    cmp word [data_91d4], byte 5     ; 0x4251
    je short loc_425b                ; 0x4256
    jmp near loc_42f6                ; 0x4258
    cmp word [bp + 0x4], byte 5      ; 0x425b
    jl short loc_4264                ; 0x425f
    jmp near loc_42f4                ; 0x4261
    cmp word [data_91d4], byte 2     ; 0x4264
    jne short loc_42a5               ; 0x4269
    cmp word [bp - 0x0004], byte 0xff ; 0x426b
    je short loc_42a5                ; 0x426f
    mov ax, 0                        ; 0x4271
    push ax                          ; 0x4274
    mov ax, 1                        ; 0x4275
    push ax                          ; 0x4278
    mov ax, 0                        ; 0x4279
    push ax                          ; 0x427c
    push word [bp + 0xe]             ; 0x427d
    push word [bp + 0x4]             ; 0x4280
    mov ax, 0xffff                   ; 0x4283
    push ax                          ; 0x4286
    push word [bp - 0x0006]          ; 0x4287
    mov ax, 0                        ; 0x428a
    push ax                          ; 0x428d
    push ax                          ; 0x428e
    push ax                          ; 0x428f
    mov ax, 2                        ; 0x4290
    push ax                          ; 0x4293
    mov ax, 0xffff                   ; 0x4294
    push ax                          ; 0x4297
    push word [bp - 0x0004]          ; 0x4298
    mov ax, 0xfd                     ; 0x429b
    push ax                          ; 0x429e
    call api_idx_0004_5              ; 0x429f
    add sp, byte 0x1c                ; 0x42a2
    mov ax, 0                        ; 0x42a5
    push ax                          ; 0x42a8
    mov ax, 1                        ; 0x42a9
    push ax                          ; 0x42ac
    mov ax, 0                        ; 0x42ad
    push ax                          ; 0x42b0
    push word [bp + 0x10]            ; 0x42b1
    push word [bp + 0x4]             ; 0x42b4
    mov ax, 0xffff                   ; 0x42b7
    push ax                          ; 0x42ba
    mov ax, word [bp + 0x28]         ; 0x42bb
    add ax, word [bp + 0x4]          ; 0x42be
    push ax                          ; 0x42c1
    call loc_2eac                    ; 0x42c2
    pop cx                           ; 0x42c5
    push ax                          ; 0x42c6
    mov ax, 0                        ; 0x42c7
    push ax                          ; 0x42ca
    push ax                          ; 0x42cb
    push ax                          ; 0x42cc
    mov ax, 2                        ; 0x42cd
    push ax                          ; 0x42d0
    mov ax, 0xffff                   ; 0x42d1
    push ax                          ; 0x42d4
    mov ax, word [bp + 0x2a]         ; 0x42d5
    add ax, word [bp + 0x4]          ; 0x42d8
    push ax                          ; 0x42db
    mov ax, word [bp + 0x28]         ; 0x42dc
    add ax, word [bp + 0x4]          ; 0x42df
    push ax                          ; 0x42e2
    call loc_2ec0                    ; 0x42e3
    add sp, byte 4                   ; 0x42e6
    push ax                          ; 0x42e9
    mov ax, 0xfd                     ; 0x42ea
    push ax                          ; 0x42ed
    call api_idx_0004_5              ; 0x42ee
    add sp, byte 0x1c                ; 0x42f1
    db 0xeb, 0x5c ; jmp short loc_4352
    cmp word [data_91d4], byte 5     ; 0x42f6
    db 0x7d, 0x55 ; jge short loc_4352
    cmp word [bp + 0x4], byte 4      ; 0x42fd
    db 0x7d, 0x4f ; jge short loc_4352
    mov ax, 0                        ; 0x4303
    push ax                          ; 0x4306
    mov ax, 1                        ; 0x4307
    push ax                          ; 0x430a
    mov ax, 0                        ; 0x430b
    push ax                          ; 0x430e
    push word [bp + 0x14]            ; 0x430f
    push word [bp + 0x4]             ; 0x4312
    mov ax, 0xffff                   ; 0x4315
    push ax                          ; 0x4318
    mov ax, word [bp + 0x3c]         ; 0x4319
    add ax, word [bp + 0x4]          ; 0x431c
    push ax                          ; 0x431f
    call loc_2eac                    ; 0x4320
    pop cx                           ; 0x4323
    push ax                          ; 0x4324
    mov ax, 0                        ; 0x4325
    push ax                          ; 0x4328
    push ax                          ; 0x4329
    push ax                          ; 0x432a
    mov ax, 2                        ; 0x432b
    push ax                          ; 0x432e
    mov ax, 0xffff                   ; 0x432f
    push ax                          ; 0x4332
    mov ax, word [bp + 0x3e]         ; 0x4333
    add ax, word [bp + 0x4]          ; 0x4336
    push ax                          ; 0x4339
    mov ax, word [bp + 0x3c]         ; 0x433a
    add ax, word [bp + 0x4]          ; 0x433d
    push ax                          ; 0x4340
    call loc_2ec0                    ; 0x4341
    add sp, byte 4                   ; 0x4344
    push ax                          ; 0x4347
    mov ax, 0xfd                     ; 0x4348
    push ax                          ; 0x434b
    call api_idx_0004_5              ; 0x434c
    add sp, byte 0x1c                ; 0x434f
    jmp near @..api_idx_0012.l2      ; 0x4352
    cmp word [bp + 0x4], byte 4      ; 0x4355
    jge short loc_43aa               ; 0x4359
    mov ax, 0                        ; 0x435b
    push ax                          ; 0x435e
    mov ax, 1                        ; 0x435f
    push ax                          ; 0x4362
    mov ax, 0                        ; 0x4363
    push ax                          ; 0x4366
    push word [bp + 0xc]             ; 0x4367
    push word [bp + 0x4]             ; 0x436a
    mov ax, 0xffff                   ; 0x436d
    push ax                          ; 0x4370
    mov ax, word [bp + 0x1a]         ; 0x4371
    add ax, word [bp + 0x4]          ; 0x4374
    push ax                          ; 0x4377
    call loc_2e84                    ; 0x4378
    pop cx                           ; 0x437b
    push ax                          ; 0x437c
    mov ax, 0                        ; 0x437d
    push ax                          ; 0x4380
    push ax                          ; 0x4381
    push ax                          ; 0x4382
    mov ax, 2                        ; 0x4383
    push ax                          ; 0x4386
    mov ax, 0xffff                   ; 0x4387
    push ax                          ; 0x438a
    mov ax, word [bp + 0x1c]         ; 0x438b
    add ax, word [bp + 0x4]          ; 0x438e
    push ax                          ; 0x4391
    mov ax, word [bp + 0x1a]         ; 0x4392
    add ax, word [bp + 0x4]          ; 0x4395
    push ax                          ; 0x4398
    call loc_2e98                    ; 0x4399
    add sp, byte 4                   ; 0x439c
    push ax                          ; 0x439f
    mov ax, 0xfb                     ; 0x43a0
    push ax                          ; 0x43a3
    call api_idx_0004_5              ; 0x43a4
    add sp, byte 0x1c                ; 0x43a7
    jmp near @..api_idx_0012.l2      ; 0x43aa
    cmp word [bp + 0x4], byte 4      ; 0x43ad
    jge short loc_4402               ; 0x43b1
    mov ax, 0                        ; 0x43b3
    push ax                          ; 0x43b6
    mov ax, 1                        ; 0x43b7
    push ax                          ; 0x43ba
    mov ax, 0                        ; 0x43bb
    push ax                          ; 0x43be
    push word [bp + 0x12]            ; 0x43bf
    push word [bp + 0x4]             ; 0x43c2
    mov ax, 0xffff                   ; 0x43c5
    push ax                          ; 0x43c8
    mov ax, word [bp + 0x40]         ; 0x43c9
    add ax, word [bp + 0x4]          ; 0x43cc
    push ax                          ; 0x43cf
    call loc_2eac                    ; 0x43d0
    pop cx                           ; 0x43d3
    push ax                          ; 0x43d4
    mov ax, 0                        ; 0x43d5
    push ax                          ; 0x43d8
    push ax                          ; 0x43d9
    push ax                          ; 0x43da
    mov ax, 2                        ; 0x43db
    push ax                          ; 0x43de
    mov ax, 0xffff                   ; 0x43df
    push ax                          ; 0x43e2
    mov ax, word [bp + 0x42]         ; 0x43e3
    add ax, word [bp + 0x4]          ; 0x43e6
    push ax                          ; 0x43e9
    mov ax, word [bp + 0x40]         ; 0x43ea
    add ax, word [bp + 0x4]          ; 0x43ed
    push ax                          ; 0x43f0
    call loc_2ec0                    ; 0x43f1
    add sp, byte 4                   ; 0x43f4
    push ax                          ; 0x43f7
    mov ax, 0xfd                     ; 0x43f8
    push ax                          ; 0x43fb
    call api_idx_0004_5              ; 0x43fc
    add sp, byte 0x1c                ; 0x43ff
    jmp short @..api_idx_0012.l2     ; 0x4402
    js short loc_439a                ; 0x4404
    std                              ; 0x4406
    nop                              ; 0x4407
    xor al, 0x92                     ; 0x4408
    inc ax                           ; 0x440a
    nop                              ; 0x440b
    pushf                            ; 0x440c
    xchg bx, ax                      ; 0x440d
    hlt                              ; 0x440e
    xchg bx, ax                      ; 0x440f
    inc ax                           ; 0x4410
    nop                              ; 0x4411
    or word [bp + si - 0x704d], dx   ; 0x4412
    mov bl, 0x8f                     ; 0x4416
    xor al, 0x92                     ; 0x4418
    xor al, 0x92                     ; 0x441a
    xor al, 0x92                     ; 0x441c
    xor al, 0x92                     ; 0x441e
    xor al, 0x92                     ; 0x4420
    xor al, 0x92                     ; 0x4422
@..api_idx_0012.l1:
    cmp ax, strict word 0x10         ; 0x4424
    jae short @..api_idx_0012.l2     ; 0x4427
    xchg bx, ax                      ; 0x4429
    shl bx, 1                        ; 0x442a
    jmp [cs:bx - 0x6bb5]             ; 0x442c
@..api_idx_0012.l2:
    cmp word [bp + 0x4], byte 4      ; 0x4431
    jl short @..api_idx_0012.l3      ; 0x4435
    jmp near @..api_idx_0012.l10     ; 0x4437
@..api_idx_0012.l3:
    cmp word [bp + 0x8], byte 1      ; 0x443a
    je short @..api_idx_0012.l4      ; 0x443e
    cmp word [bp + 0x8], byte 3      ; 0x4440
    jne short @..api_idx_0012.l5     ; 0x4444
@..api_idx_0012.l4:
    mov ax, 0                        ; 0x4446
    jmp short @..api_idx_0012.l6     ; 0x4449
@..api_idx_0012.l5:
    mov ax, 1                        ; 0x444b
@..api_idx_0012.l6:
    mov word [bp - 0x0012], ax       ; 0x444e
    mov ax, 0                        ; 0x4451
    cmp word [bp + 0x8], byte 2      ; 0x4454
    jle short @..api_idx_0012.l7     ; 0x4458
    mov ax, 1                        ; 0x445a
@..api_idx_0012.l7:
    mov word [bp - 0x0006], ax       ; 0x445d
    mov word [bp - 0x000c], 0xffff   ; 0x4460
    mov ax, word [bp + 0x6]          ; 0x4465
    jmp near @..api_idx_0012.l8      ; 0x4468

    db 0xc7, 0x46, 0xf4, 0x09, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee
    db 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03
    db 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xe6, 0x03, 0x89, 0x46, 0xf2, 0x8b, 0x87, 0xe8, 0x03, 0x89, 0x46
    db 0xf0, 0xc7, 0x46, 0xf8, 0x04, 0x00, 0xa1, 0xe8, 0x82, 0x05, 0x05, 0x00, 0x89, 0x46, 0xf6, 0xe9
    db 0x76, 0x01, 0xc7, 0x46, 0xf4, 0x09, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x36, 0x04, 0x89, 0x46, 0xf2, 0x8b, 0x87, 0x38, 0x04
    db 0x89, 0x46, 0xf0, 0xc7, 0x46, 0xf8, 0x09, 0x00, 0xb8, 0x00, 0x00, 0x83, 0x3e, 0xe8, 0x82, 0x00
    db 0x74, 0x03, 0xb8, 0x0a, 0x00, 0x89, 0x46, 0xf6, 0xe9, 0x2d, 0x01, 0xc7, 0x46, 0xf4, 0x0a, 0x00
    db 0x83, 0x3e, 0xd4, 0x91, 0x00, 0x75, 0x24, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x86, 0x04, 0xeb, 0x22, 0x8b, 0x46, 0x04, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e
    db 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xd6, 0x04, 0x89, 0x46, 0xf2
    db 0x83, 0x3e, 0xd4, 0x91, 0x00, 0x75, 0x24, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00, 0xd3, 0xe0, 0x8b
    db 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa, 0xd1, 0xe1, 0xd1
    db 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x88, 0x04, 0xeb, 0x22, 0x8b, 0x46, 0x04, 0xb9, 0x04
    db 0x00, 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e
    db 0xfa, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0xd8, 0x04, 0x89, 0x46, 0xf0
    db 0xb8, 0x07, 0x00, 0x83, 0x3e, 0xd4, 0x91, 0x00, 0x75, 0x03, 0xb8, 0x03, 0x00, 0xb9, 0x00, 0x00
    db 0x83, 0x7e, 0x06, 0x0d, 0x75, 0x03, 0xb9, 0x01, 0x00, 0x03, 0xc1, 0x89, 0x46, 0xf8, 0xc7, 0x46
    db 0xf6, 0x00, 0x00, 0xeb, 0x63, 0xc7, 0x46, 0xf4, 0x0a, 0x00, 0x8b, 0x46, 0x04, 0xb9, 0x04, 0x00
    db 0xd3, 0xe0, 0x8b, 0x4e, 0xee, 0xd1, 0xe1, 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0x4e, 0xfa
    db 0xd1, 0xe1, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0x8b, 0x87, 0x26, 0x05, 0x89, 0x46, 0xf2, 0x8b
    db 0x87, 0x28, 0x05, 0x89, 0x46, 0xf0, 0xc7, 0x46, 0xf8, 0x0c, 0x00, 0xb8, 0x0e, 0x00, 0x83, 0x7e
    db 0x06, 0x0e, 0x75, 0x03, 0xb8, 0x0d, 0x00, 0x89, 0x46, 0xf6, 0xeb, 0x1c, 0xb2, 0x94, 0xf4, 0x94
    db 0x3d, 0x95, 0x3d, 0x95, 0x07, 0x96, 0x07, 0x96

@..api_idx_0012.l8:
    sub ax, strict word 0xa          ; 0x4613
    cmp ax, strict word 6            ; 0x4616
    jae short @..api_idx_0012.l9     ; 0x4619
    xchg bx, ax                      ; 0x461b
    shl bx, 1                        ; 0x461c
    jmp [cs:bx - 0x69b2]             ; 0x461e
@..api_idx_0012.l9:
    cmp word [bp - 0x000c], byte 0xff ; 0x4623
    je short @..api_idx_0012.l10     ; 0x4627
    mov ax, 3                        ; 0x4629
    push ax                          ; 0x462c
    mov ax, 1                        ; 0x462d
    push ax                          ; 0x4630
    push word [bp - 0x0006]          ; 0x4631
    mov ax, word [bp + 0x4]          ; 0x4634
    shl ax, 1                        ; 0x4637
    mov bx, ax                       ; 0x4639
    push word [bx + 0x576]           ; 0x463b
    push word [bp + 0x4]             ; 0x463f
    mov ax, 0xf8                     ; 0x4642
    push ax                          ; 0x4645
    mov ax, 0x48                     ; 0x4646
    push ax                          ; 0x4649
    mov ax, 0                        ; 0x464a
    push ax                          ; 0x464d
    push ax                          ; 0x464e
    push word [bp - 0x000a]          ; 0x464f
    push word [bp - 0x0008]          ; 0x4652
    push word [bp - 0x0010]          ; 0x4655
    push word [bp - 0x000e]          ; 0x4658
    push word [bp - 0x000c]          ; 0x465b
    call api_idx_0004_5              ; 0x465e
    add sp, byte 0x1c                ; 0x4661
@..api_idx_0012.l10:
    ret                              ; 0x4664
