; auto-generated
api_idx_0012_VQVU:
    mov ax, 0xffee                   ; 0x3f56
    call aztec_csav                  ; 0x3f59
    mov word [bp - 0x0004], 0xffff   ; 0x3f5c
    mov word [bp - 0x0006], 0xffff   ; 0x3f61
    mov ax, word [bp + 0x6]          ; 0x3f66
    jmp near @..api_idx_0012_VQVU.l34 ; 0x3f69
jumptable_4404_case_8:
    cmp word [bp + 0x26], byte 0xff  ; 0x3f6c
    jne short @..api_idx_0012_VQVU.l1 ; 0x3f70
    jmp near @..api_idx_0012_VQVU.l11 ; 0x3f72
@..api_idx_0012_VQVU.l1:
    cmp word [bp + 0x4], byte 0      ; 0x3f75
    je short @..api_idx_0012_VQVU.l2 ; 0x3f79
    jmp near @..api_idx_0012_VQVU.l11 ; 0x3f7b
@..api_idx_0012_VQVU.l2:
    cmp word [bp + 0x6], byte 8      ; 0x3f7e
    jne short @..api_idx_0012_VQVU.l3 ; 0x3f82
    mov ax, word [bp + 0x26]         ; 0x3f84
    inc ax                           ; 0x3f87
    jmp short @..api_idx_0012_VQVU.l4 ; 0x3f88
@..api_idx_0012_VQVU.l3:
    mov ax, word [bp + 0x26]         ; 0x3f8a
    inc ax                           ; 0x3f8d
    inc ax                           ; 0x3f8e
    inc ax                           ; 0x3f8f
@..api_idx_0012_VQVU.l4:
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
    jge short @..api_idx_0012_VQVU.l5 ; 0x3fac
    mov ax, word [bp - 0x0002]       ; 0x3fae
    inc ax                           ; 0x3fb1
@..api_idx_0012_VQVU.l5:
    push ax                          ; 0x3fb2
    mov ax, 0xffff                   ; 0x3fb3
    cmp word [bp + 0x8], byte 2      ; 0x3fb6
    jge short @..api_idx_0012_VQVU.l6 ; 0x3fba
    mov ax, word [bp - 0x0002]       ; 0x3fbc
@..api_idx_0012_VQVU.l6:
    push ax                          ; 0x3fbf
    mov ax, 0                        ; 0x3fc0
    push ax                          ; 0x3fc3
    push ax                          ; 0x3fc4
    mov ax, 2                        ; 0x3fc5
    push ax                          ; 0x3fc8
    push ax                          ; 0x3fc9
    cmp word [bp + 0x6], byte 8      ; 0x3fca
    jne short @..api_idx_0012_VQVU.l7 ; 0x3fce
    cmp word [bp + 0x8], byte 2      ; 0x3fd0
    jg short @..api_idx_0012_VQVU.l8 ; 0x3fd4
@..api_idx_0012_VQVU.l7:
    cmp word [bp + 0x6], byte 9      ; 0x3fd6
    jne short @..api_idx_0012_VQVU.l9 ; 0x3fda
    cmp word [bp + 0x8], byte 2      ; 0x3fdc
    jge short @..api_idx_0012_VQVU.l9 ; 0x3fe0
@..api_idx_0012_VQVU.l8:
    mov ax, word [bp - 0x0002]       ; 0x3fe2
    inc ax                           ; 0x3fe5
    jmp short @..api_idx_0012_VQVU.l10 ; 0x3fe6
@..api_idx_0012_VQVU.l9:
    mov ax, 0xffff                   ; 0x3fe8
@..api_idx_0012_VQVU.l10:
    push ax                          ; 0x3feb
    push word [bp - 0x0002]          ; 0x3fec
    mov ax, 0xfd                     ; 0x3fef
    push ax                          ; 0x3ff2
    call api_idx_0004_OVUO           ; 0x3ff3
    add sp, byte 0x1c                ; 0x3ff6
jumptable_4404_case_3:
@..api_idx_0012_VQVU.l11:
    cmp word [bp + 0x6], byte 3      ; 0x3ff9
    je short @..api_idx_0012_VQVU.l12 ; 0x3ffd
    jmp near @..api_idx_0012_VQVU.l15 ; 0x3fff
@..api_idx_0012_VQVU.l12:
    cmp word [bp + 0x4], byte 4      ; 0x4002
    jl short @..api_idx_0012_VQVU.l13 ; 0x4006
    jmp near @..api_idx_0012_VQVU.l15 ; 0x4008
@..api_idx_0012_VQVU.l13:
    cmp word [bp + 0x34], byte 0xff  ; 0x400b
    je short @..api_idx_0012_VQVU.l14 ; 0x400f
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
    call loc_UMHI_2eac               ; 0x402e
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
    call loc_LPLI_2ec0               ; 0x404f
    add sp, byte 4                   ; 0x4052
    push ax                          ; 0x4055
    mov ax, 0xfd                     ; 0x4056
    push ax                          ; 0x4059
    call api_idx_0004_OVUO           ; 0x405a
    add sp, byte 0x1c                ; 0x405d
@..api_idx_0012_VQVU.l14:
    mov ax, word [bp + 0x32]         ; 0x4060
    add ax, word [bp + 0x4]          ; 0x4063
    push ax                          ; 0x4066
    mov ax, word [bp + 0x30]         ; 0x4067
    add ax, word [bp + 0x4]          ; 0x406a
    push ax                          ; 0x406d
    call loc_LPLI_2ec0               ; 0x406e
    add sp, byte 4                   ; 0x4071
    mov word [bp - 0x0004], ax       ; 0x4074
    mov ax, word [bp + 0x30]         ; 0x4077
    add ax, word [bp + 0x4]          ; 0x407a
    push ax                          ; 0x407d
    call loc_UMHI_2eac               ; 0x407e
    pop cx                           ; 0x4081
    mov word [bp - 0x0006], ax       ; 0x4082
@..api_idx_0012_VQVU.l15:
    cmp word [bp + 0x6], byte 6      ; 0x4085
    jne short @..api_idx_0012_VQVU.l16 ; 0x4089
    cmp word [bp + 0x4], byte 4      ; 0x408b
    jge short @..api_idx_0012_VQVU.l16 ; 0x408f
    mov ax, word [bp + 0x24]         ; 0x4091
    add ax, word [bp + 0x4]          ; 0x4094
    push ax                          ; 0x4097
    mov ax, word [bp + 0x22]         ; 0x4098
    add ax, word [bp + 0x4]          ; 0x409b
    push ax                          ; 0x409e
    call loc_LPLI_2ec0               ; 0x409f
    add sp, byte 4                   ; 0x40a2
    mov word [bp - 0x0004], ax       ; 0x40a5
    mov ax, word [bp + 0x22]         ; 0x40a8
    add ax, word [bp + 0x4]          ; 0x40ab
    push ax                          ; 0x40ae
    call loc_UMHI_2eac               ; 0x40af
    pop cx                           ; 0x40b2
    mov word [bp - 0x0006], ax       ; 0x40b3
jumptable_4404_case_1:
@..api_idx_0012_VQVU.l16:
    cmp word [bss_91d4], byte 0      ; 0x40b6
    jne short @..api_idx_0012_VQVU.l18 ; 0x40bb
    cmp word [bp + 0x4], byte 4      ; 0x40bd
    jge short @..api_idx_0012_VQVU.l17 ; 0x40c1
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
    call loc_UMHI_2eac               ; 0x40df
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
    call loc_LPLI_2ec0               ; 0x40ff
    add sp, byte 4                   ; 0x4102
    push ax                          ; 0x4105
    mov ax, 0xfd                     ; 0x4106
    push ax                          ; 0x4109
    call api_idx_0004_OVUO           ; 0x410a
    add sp, byte 0x1c                ; 0x410d
@..api_idx_0012_VQVU.l17:
    jmp short @..api_idx_0012_VQVU.l19 ; 0x4110
@..api_idx_0012_VQVU.l18:
    cmp word [bss_91d4], byte 2      ; 0x4112
    jne short @..api_idx_0012_VQVU.l19 ; 0x4117
    cmp word [bp + 0x4], byte 5      ; 0x4119
    jge short @..api_idx_0012_VQVU.l19 ; 0x411d
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
    call loc_UMHI_2eac               ; 0x413b
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
    call loc_LPLI_2ec0               ; 0x415b
    add sp, byte 4                   ; 0x415e
    push ax                          ; 0x4161
    mov ax, 0xfd                     ; 0x4162
    push ax                          ; 0x4165
    call api_idx_0004_OVUO           ; 0x4166
    add sp, byte 0x1c                ; 0x4169
@..api_idx_0012_VQVU.l19:
    cmp word [bp + 0x26], byte 0xff  ; 0x416c
    je short @..api_idx_0012_VQVU.l22 ; 0x4170
    cmp word [bp + 0x4], byte 0      ; 0x4172
    jne short @..api_idx_0012_VQVU.l22 ; 0x4176
    cmp word [bp + 0x6], byte 8      ; 0x4178
    je short @..api_idx_0012_VQVU.l20 ; 0x417c
    cmp word [bp + 0x6], byte 9      ; 0x417e
    jne short @..api_idx_0012_VQVU.l22 ; 0x4182
@..api_idx_0012_VQVU.l20:
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
    jge short @..api_idx_0012_VQVU.l21 ; 0x419e
    mov ax, word [bp + 0x26]         ; 0x41a0
@..api_idx_0012_VQVU.l21:
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
    call api_idx_0004_OVUO           ; 0x41b9
    add sp, byte 0x1c                ; 0x41bc
@..api_idx_0012_VQVU.l22:
    jmp near jumptable_4404_case_0   ; 0x41bf
jumptable_4404_case_7:
    cmp word [bp + 0x4], byte 4      ; 0x41c2
    jge short @..api_idx_0012_VQVU.l23 ; 0x41c6
    mov ax, word [bp + 0x3a]         ; 0x41c8
    add ax, word [bp + 0x4]          ; 0x41cb
    push ax                          ; 0x41ce
    mov ax, word [bp + 0x38]         ; 0x41cf
    add ax, word [bp + 0x4]          ; 0x41d2
    push ax                          ; 0x41d5
    call loc_LPLI_2ec0               ; 0x41d6
    add sp, byte 4                   ; 0x41d9
    mov word [bp - 0x0004], ax       ; 0x41dc
    mov ax, word [bp + 0x38]         ; 0x41df
    add ax, word [bp + 0x4]          ; 0x41e2
    push ax                          ; 0x41e5
    call loc_UMHI_2eac               ; 0x41e6
    pop cx                           ; 0x41e9
    mov word [bp - 0x0006], ax       ; 0x41ea
jumptable_4404_case_2:
@..api_idx_0012_VQVU.l23:
    cmp word [bss_91d4], byte 0      ; 0x41ed
    jne short @..api_idx_0012_VQVU.l25 ; 0x41f2
    cmp word [bp + 0x4], byte 4      ; 0x41f4
    jge short @..api_idx_0012_VQVU.l24 ; 0x41f8
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
    call loc_UMHI_2eac               ; 0x4216
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
    call loc_LPLI_2ec0               ; 0x4236
    add sp, byte 4                   ; 0x4239
    push ax                          ; 0x423c
    mov ax, 0xfd                     ; 0x423d
    push ax                          ; 0x4240
    call api_idx_0004_OVUO           ; 0x4241
    add sp, byte 0x1c                ; 0x4244
@..api_idx_0012_VQVU.l24:
    jmp near @..api_idx_0012_VQVU.l31 ; 0x4247
@..api_idx_0012_VQVU.l25:
    cmp word [bss_91d4], byte 3      ; 0x424a
    jl short @..api_idx_0012_VQVU.l26 ; 0x424f
    cmp word [bss_91d4], byte 5      ; 0x4251
    je short @..api_idx_0012_VQVU.l26 ; 0x4256
    jmp near @..api_idx_0012_VQVU.l30 ; 0x4258
@..api_idx_0012_VQVU.l26:
    cmp word [bp + 0x4], byte 5      ; 0x425b
    jl short @..api_idx_0012_VQVU.l27 ; 0x425f
    jmp near @..api_idx_0012_VQVU.l29 ; 0x4261
@..api_idx_0012_VQVU.l27:
    cmp word [bss_91d4], byte 2      ; 0x4264
    jne short @..api_idx_0012_VQVU.l28 ; 0x4269
    cmp word [bp - 0x0004], byte 0xff ; 0x426b
    je short @..api_idx_0012_VQVU.l28 ; 0x426f
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
    call api_idx_0004_OVUO           ; 0x429f
    add sp, byte 0x1c                ; 0x42a2
@..api_idx_0012_VQVU.l28:
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
    call loc_UMHI_2eac               ; 0x42c2
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
    call loc_LPLI_2ec0               ; 0x42e3
    add sp, byte 4                   ; 0x42e6
    push ax                          ; 0x42e9
    mov ax, 0xfd                     ; 0x42ea
    push ax                          ; 0x42ed
    call api_idx_0004_OVUO           ; 0x42ee
    add sp, byte 0x1c                ; 0x42f1
@..api_idx_0012_VQVU.l29:
    jmp short @..api_idx_0012_VQVU.l31 ; 0x42f4
@..api_idx_0012_VQVU.l30:
    cmp word [bss_91d4], byte 5      ; 0x42f6
    jge short @..api_idx_0012_VQVU.l31 ; 0x42fb
    cmp word [bp + 0x4], byte 4      ; 0x42fd
    jge short @..api_idx_0012_VQVU.l31 ; 0x4301
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
    call loc_UMHI_2eac               ; 0x4320
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
    call loc_LPLI_2ec0               ; 0x4341
    add sp, byte 4                   ; 0x4344
    push ax                          ; 0x4347
    mov ax, 0xfd                     ; 0x4348
    push ax                          ; 0x434b
    call api_idx_0004_OVUO           ; 0x434c
    add sp, byte 0x1c                ; 0x434f
@..api_idx_0012_VQVU.l31:
    jmp near jumptable_4404_case_0   ; 0x4352
jumptable_4404_case_4:
    cmp word [bp + 0x4], byte 4      ; 0x4355
    jge short @..api_idx_0012_VQVU.l32 ; 0x4359
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
    call loc_UMHI_2e84               ; 0x4378
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
    call loc_LPLI_2e98               ; 0x4399
    add sp, byte 4                   ; 0x439c
    push ax                          ; 0x439f
    mov ax, 0xfb                     ; 0x43a0
    push ax                          ; 0x43a3
    call api_idx_0004_OVUO           ; 0x43a4
    add sp, byte 0x1c                ; 0x43a7
@..api_idx_0012_VQVU.l32:
    jmp near jumptable_4404_case_0   ; 0x43aa
jumptable_4404_case_5:
    cmp word [bp + 0x4], byte 4      ; 0x43ad
    jge short @..api_idx_0012_VQVU.l33 ; 0x43b1
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
    call loc_UMHI_2eac               ; 0x43d0
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
    call loc_LPLI_2ec0               ; 0x43f1
    add sp, byte 4                   ; 0x43f4
    push ax                          ; 0x43f7
    mov ax, 0xfd                     ; 0x43f8
    push ax                          ; 0x43fb
    call api_idx_0004_OVUO           ; 0x43fc
    add sp, byte 0x1c                ; 0x43ff
@..api_idx_0012_VQVU.l33:
    jmp short jumptable_4404_case_0  ; 0x4402
jumptable_4404:
    dw jumptable_4404_case_0 - IMAGE_BASE + __zres_end ; 0x4404
    dw jumptable_4404_case_1 - IMAGE_BASE + __zres_end ; 0x4406
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end ; 0x4408
    dw jumptable_4404_case_3 - IMAGE_BASE + __zres_end ; 0x440a
    dw jumptable_4404_case_4 - IMAGE_BASE + __zres_end ; 0x440c
    dw jumptable_4404_case_5 - IMAGE_BASE + __zres_end ; 0x440e
    dw jumptable_4404_case_3 - IMAGE_BASE + __zres_end ; 0x4410
    dw jumptable_4404_case_7 - IMAGE_BASE + __zres_end ; 0x4412
    dw jumptable_4404_case_8 - IMAGE_BASE + __zres_end ; 0x4414
    dw jumptable_4404_case_8 - IMAGE_BASE + __zres_end ; 0x4416
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end ; 0x4418
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end ; 0x441a
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end ; 0x441c
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end ; 0x441e
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end ; 0x4420
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end ; 0x4422
@..api_idx_0012_VQVU.l34:
    cmp ax, strict word 0x10         ; 0x4424
    jae short jumptable_4404_case_0  ; 0x4427
    xchg bx, ax                      ; 0x4429
    shl bx, 1                        ; 0x442a
    jmp [cs:bx + jumptable_4404 - IMAGE_BASE + __zres_end] ; 0x442c
jumptable_4404_case_0:
    cmp word [bp + 0x4], byte 4      ; 0x4431
    jl short @..api_idx_0012_VQVU.l35 ; 0x4435
    jmp near @..api_idx_0012_VQVU.l50 ; 0x4437
@..api_idx_0012_VQVU.l35:
    cmp word [bp + 0x8], byte 1      ; 0x443a
    je short @..api_idx_0012_VQVU.l36 ; 0x443e
    cmp word [bp + 0x8], byte 3      ; 0x4440
    jne short @..api_idx_0012_VQVU.l37 ; 0x4444
@..api_idx_0012_VQVU.l36:
    mov ax, 0                        ; 0x4446
    jmp short @..api_idx_0012_VQVU.l38 ; 0x4449
@..api_idx_0012_VQVU.l37:
    mov ax, 1                        ; 0x444b
@..api_idx_0012_VQVU.l38:
    mov word [bp - 0x0012], ax       ; 0x444e
    mov ax, 0                        ; 0x4451
    cmp word [bp + 0x8], byte 2      ; 0x4454
    jle short @..api_idx_0012_VQVU.l39 ; 0x4458
    mov ax, 1                        ; 0x445a
@..api_idx_0012_VQVU.l39:
    mov word [bp - 0x0006], ax       ; 0x445d
    mov word [bp - 0x000c], 0xffff   ; 0x4460
    mov ax, word [bp + 0x6]          ; 0x4465
    jmp near @..api_idx_0012_VQVU.l48 ; 0x4468
jumptable_4607_case_0:
    mov word [bp - 0x000c], 9        ; 0x446b
    mov ax, word [bp + 0x4]          ; 0x4470
    mov cx, 4                        ; 0x4473
    shl ax, cl                       ; 0x4476
    mov cx, word [bp - 0x0012]       ; 0x4478
    shl cx, 1                        ; 0x447b
    shl cx, 1                        ; 0x447d
    shl cx, 1                        ; 0x447f
    add ax, cx                       ; 0x4481
    mov cx, word [bp - 0x0006]       ; 0x4483
    shl cx, 1                        ; 0x4486
    shl cx, 1                        ; 0x4488
    add ax, cx                       ; 0x448a
    mov bx, ax                       ; 0x448c
    mov ax, word [bx + 0x3e6]        ; 0x448e
    mov word [bp - 0x000e], ax       ; 0x4492
    mov ax, word [bx + 0x3e8]        ; 0x4495
    mov word [bp - 0x0010], ax       ; 0x4499
    mov word [bp - 0x0008], 4        ; 0x449c
    mov ax, word [bss_82e8]          ; 0x44a1
    add ax, strict word 5            ; 0x44a4
    mov word [bp - 0x000a], ax       ; 0x44a7
    jmp near @..api_idx_0012_VQVU.l49 ; 0x44aa
jumptable_4607_case_1:
    mov word [bp - 0x000c], 9        ; 0x44ad
    mov ax, word [bp + 0x4]          ; 0x44b2
    mov cx, 4                        ; 0x44b5
    shl ax, cl                       ; 0x44b8
    mov cx, word [bp - 0x0012]       ; 0x44ba
    shl cx, 1                        ; 0x44bd
    shl cx, 1                        ; 0x44bf
    shl cx, 1                        ; 0x44c1
    add ax, cx                       ; 0x44c3
    mov cx, word [bp - 0x0006]       ; 0x44c5
    shl cx, 1                        ; 0x44c8
    shl cx, 1                        ; 0x44ca
    add ax, cx                       ; 0x44cc
    mov bx, ax                       ; 0x44ce
    mov ax, word [bx + 0x436]        ; 0x44d0
    mov word [bp - 0x000e], ax       ; 0x44d4
    mov ax, word [bx + 0x438]        ; 0x44d7
    mov word [bp - 0x0010], ax       ; 0x44db
    mov word [bp - 0x0008], 9        ; 0x44de
    mov ax, 0                        ; 0x44e3
    cmp word [bss_82e8], byte 0      ; 0x44e6
    je short @..api_idx_0012_VQVU.l40 ; 0x44eb
    mov ax, 0xa                      ; 0x44ed
@..api_idx_0012_VQVU.l40:
    mov word [bp - 0x000a], ax       ; 0x44f0
    jmp near @..api_idx_0012_VQVU.l49 ; 0x44f3
jumptable_4607_case_2:
    mov word [bp - 0x000c], 0xa      ; 0x44f6
    cmp word [bss_91d4], byte 0      ; 0x44fb
    jne short @..api_idx_0012_VQVU.l41 ; 0x4500
    mov ax, word [bp + 0x4]          ; 0x4502
    mov cx, 4                        ; 0x4505
    shl ax, cl                       ; 0x4508
    mov cx, word [bp - 0x0012]       ; 0x450a
    shl cx, 1                        ; 0x450d
    shl cx, 1                        ; 0x450f
    shl cx, 1                        ; 0x4511
    add ax, cx                       ; 0x4513
    mov cx, word [bp - 0x0006]       ; 0x4515
    shl cx, 1                        ; 0x4518
    shl cx, 1                        ; 0x451a
    add ax, cx                       ; 0x451c
    mov bx, ax                       ; 0x451e
    mov ax, word [bx + 0x486]        ; 0x4520
    jmp short @..api_idx_0012_VQVU.l42 ; 0x4524
@..api_idx_0012_VQVU.l41:
    mov ax, word [bp + 0x4]          ; 0x4526
    mov cx, 4                        ; 0x4529
    shl ax, cl                       ; 0x452c
    mov cx, word [bp - 0x0012]       ; 0x452e
    shl cx, 1                        ; 0x4531
    shl cx, 1                        ; 0x4533
    shl cx, 1                        ; 0x4535
    add ax, cx                       ; 0x4537
    mov cx, word [bp - 0x0006]       ; 0x4539
    shl cx, 1                        ; 0x453c
    shl cx, 1                        ; 0x453e
    add ax, cx                       ; 0x4540
    mov bx, ax                       ; 0x4542
    mov ax, word [bx + 0x4d6]        ; 0x4544
@..api_idx_0012_VQVU.l42:
    mov word [bp - 0x000e], ax       ; 0x4548
    cmp word [bss_91d4], byte 0      ; 0x454b
    jne short @..api_idx_0012_VQVU.l43 ; 0x4550
    mov ax, word [bp + 0x4]          ; 0x4552
    mov cx, 4                        ; 0x4555
    shl ax, cl                       ; 0x4558
    mov cx, word [bp - 0x0012]       ; 0x455a
    shl cx, 1                        ; 0x455d
    shl cx, 1                        ; 0x455f
    shl cx, 1                        ; 0x4561
    add ax, cx                       ; 0x4563
    mov cx, word [bp - 0x0006]       ; 0x4565
    shl cx, 1                        ; 0x4568
    shl cx, 1                        ; 0x456a
    add ax, cx                       ; 0x456c
    mov bx, ax                       ; 0x456e
    mov ax, word [bx + 0x488]        ; 0x4570
    jmp short @..api_idx_0012_VQVU.l44 ; 0x4574
@..api_idx_0012_VQVU.l43:
    mov ax, word [bp + 0x4]          ; 0x4576
    mov cx, 4                        ; 0x4579
    shl ax, cl                       ; 0x457c
    mov cx, word [bp - 0x0012]       ; 0x457e
    shl cx, 1                        ; 0x4581
    shl cx, 1                        ; 0x4583
    shl cx, 1                        ; 0x4585
    add ax, cx                       ; 0x4587
    mov cx, word [bp - 0x0006]       ; 0x4589
    shl cx, 1                        ; 0x458c
    shl cx, 1                        ; 0x458e
    add ax, cx                       ; 0x4590
    mov bx, ax                       ; 0x4592
    mov ax, word [bx + 0x4d8]        ; 0x4594
@..api_idx_0012_VQVU.l44:
    mov word [bp - 0x0010], ax       ; 0x4598
    mov ax, 7                        ; 0x459b
    cmp word [bss_91d4], byte 0      ; 0x459e
    jne short @..api_idx_0012_VQVU.l45 ; 0x45a3
    mov ax, 3                        ; 0x45a5
@..api_idx_0012_VQVU.l45:
    mov cx, 0                        ; 0x45a8
    cmp word [bp + 0x6], byte 0x0d   ; 0x45ab
    jne short @..api_idx_0012_VQVU.l46 ; 0x45af
    mov cx, 1                        ; 0x45b1
@..api_idx_0012_VQVU.l46:
    add ax, cx                       ; 0x45b4
    mov word [bp - 0x0008], ax       ; 0x45b6
    mov word [bp - 0x000a], 0        ; 0x45b9
    jmp short @..api_idx_0012_VQVU.l49 ; 0x45be
jumptable_4607_case_4:
    mov word [bp - 0x000c], 0xa      ; 0x45c0
    mov ax, word [bp + 0x4]          ; 0x45c5
    mov cx, 4                        ; 0x45c8
    shl ax, cl                       ; 0x45cb
    mov cx, word [bp - 0x0012]       ; 0x45cd
    shl cx, 1                        ; 0x45d0
    shl cx, 1                        ; 0x45d2
    shl cx, 1                        ; 0x45d4
    add ax, cx                       ; 0x45d6
    mov cx, word [bp - 0x0006]       ; 0x45d8
    shl cx, 1                        ; 0x45db
    shl cx, 1                        ; 0x45dd
    add ax, cx                       ; 0x45df
    mov bx, ax                       ; 0x45e1
    mov ax, word [bx + 0x526]        ; 0x45e3
    mov word [bp - 0x000e], ax       ; 0x45e7
    mov ax, word [bx + 0x528]        ; 0x45ea
    mov word [bp - 0x0010], ax       ; 0x45ee
    mov word [bp - 0x0008], 0xc      ; 0x45f1
    mov ax, 0xe                      ; 0x45f6
    cmp word [bp + 0x6], byte 0x0e   ; 0x45f9
    jne short @..api_idx_0012_VQVU.l47 ; 0x45fd
    mov ax, 0xd                      ; 0x45ff
@..api_idx_0012_VQVU.l47:
    mov word [bp - 0x000a], ax       ; 0x4602
    jmp short @..api_idx_0012_VQVU.l49 ; 0x4605
jumptable_4607:
    dw jumptable_4607_case_0 - IMAGE_BASE + __zres_end ; 0x4607
    dw jumptable_4607_case_1 - IMAGE_BASE + __zres_end ; 0x4609
    dw jumptable_4607_case_2 - IMAGE_BASE + __zres_end ; 0x460b
    dw jumptable_4607_case_2 - IMAGE_BASE + __zres_end ; 0x460d
    dw jumptable_4607_case_4 - IMAGE_BASE + __zres_end ; 0x460f
    dw jumptable_4607_case_4 - IMAGE_BASE + __zres_end ; 0x4611
@..api_idx_0012_VQVU.l48:
    sub ax, strict word 0xa          ; 0x4613
    cmp ax, strict word 6            ; 0x4616
    jae short @..api_idx_0012_VQVU.l49 ; 0x4619
    xchg bx, ax                      ; 0x461b
    shl bx, 1                        ; 0x461c
    jmp [cs:bx + jumptable_4607 - IMAGE_BASE + __zres_end] ; 0x461e
@..api_idx_0012_VQVU.l49:
    cmp word [bp - 0x000c], byte 0xff ; 0x4623
    je short @..api_idx_0012_VQVU.l50 ; 0x4627
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
    call api_idx_0004_OVUO           ; 0x465e
    add sp, byte 0x1c                ; 0x4661
@..api_idx_0012_VQVU.l50:
    ret                              ; 0x4664
