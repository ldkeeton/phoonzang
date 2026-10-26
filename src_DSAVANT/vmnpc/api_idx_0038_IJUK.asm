; auto-generated
api_idx_0038_IJUK:
    mov ax, 0xffc8                   ; 0x3e3a
    call aztec_csav                  ; 0x3e3d
    mov word [spell_dialog_result], 0xffff ; 0x3e40
    mov word [bp - 4], 0x37          ; 0x3e46
    mov word [bp - 6], 0x8f          ; 0x3e4b
    mov word [bp - 8], 0x108         ; 0x3e50
    mov word [bp - 0xa], 0xc5        ; 0x3e55
    mov word [bp - 0x12], 0x16       ; 0x3e5a
    mov ax, 3                        ; 0x3e5f
    cmp word [bp + 0xc], byte 3      ; 0x3e62
    jge short .forward1              ; 0x3e66
    mov ax, word [bp + 0xc]          ; 0x3e68
.forward1:
    mov word [bp - 0x22], ax         ; 0x3e6b
    mov ax, dseg_90d0                ; 0x3e6e
    push ax                          ; 0x3e71
    mov ax, word [bp - 0xa]          ; 0x3e72
    inc ax                           ; 0x3e75
    push ax                          ; 0x3e76
    mov ax, word [bp - 8]            ; 0x3e77
    inc ax                           ; 0x3e7a
    push ax                          ; 0x3e7b
    mov ax, word [bp - 6]            ; 0x3e7c
    dec ax                           ; 0x3e7f
    push ax                          ; 0x3e80
    mov ax, word [bp - 4]            ; 0x3e81
    dec ax                           ; 0x3e84
    push ax                          ; 0x3e85
    call save_screen_area            ; 0x3e86
    add sp, byte 0xa                 ; 0x3e89
    mov word [bp - 0x38], ax         ; 0x3e8c
    push word [bp - 0xa]             ; 0x3e8f
    push word [bp - 8]               ; 0x3e92
    push word [bp - 6]               ; 0x3e95
    push word [bp - 4]               ; 0x3e98
    call draw_dialog_box             ; 0x3e9b
    add sp, byte 8                   ; 0x3e9e
    cmp word [bp + 6], byte 0        ; 0x3ea1
    je short .forward2               ; 0x3ea5
    lea ax, word [bp - 0x36]         ; 0x3ea7
    push ax                          ; 0x3eaa
    push word [bp + 4]               ; 0x3eab
    call load_message_string         ; 0x3eae
    add sp, byte 4                   ; 0x3eb1
    jmp short .forward3              ; 0x3eb4
.forward2:
    push word [bp + 0xe]             ; 0x3eb6
    lea ax, word [bp - 0x36]         ; 0x3eb9
    push ax                          ; 0x3ebc
    call aztec_strcpy                ; 0x3ebd
    add sp, byte 4                   ; 0x3ec0
.forward3:
    lea ax, word [bp - 0x36]         ; 0x3ec3
    push ax                          ; 0x3ec6
    push word [bp + 6]               ; 0x3ec7
    mov ax, 1                        ; 0x3eca
    push ax                          ; 0x3ecd
    mov ax, 0xc                      ; 0x3ece
    push ax                          ; 0x3ed1
    mov ax, word [bp - 6]            ; 0x3ed2
    add ax, strict word 7            ; 0x3ed5
    push ax                          ; 0x3ed8
    mov ax, word [bp - 4]            ; 0x3ed9
    add ax, strict word 8            ; 0x3edc
    push ax                          ; 0x3edf
    call draw_button                 ; 0x3ee0
    add sp, byte 0xc                 ; 0x3ee3
    lea ax, word [bp - 0x36]         ; 0x3ee6
    push ax                          ; 0x3ee9
    mov ax, word [bp + 4]            ; 0x3eea
    inc ax                           ; 0x3eed
    push ax                          ; 0x3eee
    call load_message_string         ; 0x3eef
    add sp, byte 4                   ; 0x3ef2
    lea ax, word [bp - 0x36]         ; 0x3ef5
    push ax                          ; 0x3ef8
    push word [bp + 8]               ; 0x3ef9
    mov ax, 1                        ; 0x3efc
    push ax                          ; 0x3eff
    mov ax, 0xc                      ; 0x3f00
    push ax                          ; 0x3f03
    mov ax, word [bp - 6]            ; 0x3f04
    add ax, strict word 0x17         ; 0x3f07
    push ax                          ; 0x3f0a
    mov ax, word [bp - 4]            ; 0x3f0b
    add ax, strict word 8            ; 0x3f0e
    push ax                          ; 0x3f11
    call draw_button                 ; 0x3f12
    add sp, byte 0xc                 ; 0x3f15
    lea ax, word [bp - 0x36]         ; 0x3f18
    push ax                          ; 0x3f1b
    mov ax, word [bp + 4]            ; 0x3f1c
    inc ax                           ; 0x3f1f
    inc ax                           ; 0x3f20
    push ax                          ; 0x3f21
    call load_message_string         ; 0x3f22
    add sp, byte 4                   ; 0x3f25
    lea ax, word [bp - 0x36]         ; 0x3f28
    push ax                          ; 0x3f2b
    push word [bp + 0xa]             ; 0x3f2c
    mov ax, 1                        ; 0x3f2f
    push ax                          ; 0x3f32
    mov ax, 0xc                      ; 0x3f33
    push ax                          ; 0x3f36
    mov ax, word [bp - 6]            ; 0x3f37
    add ax, strict word 0x27         ; 0x3f3a
    push ax                          ; 0x3f3d
    mov ax, word [bp - 4]            ; 0x3f3e
    add ax, strict word 8            ; 0x3f41
    push ax                          ; 0x3f44
    call draw_button                 ; 0x3f45
    add sp, byte 0xc                 ; 0x3f48
    mov word [bp - 0x16], 0          ; 0x3f4b
    mov word [bp - 0x20], 0xffff     ; 0x3f50
    push word [bp - 0x22]            ; 0x3f55
    push word [bp - 0x20]            ; 0x3f58
    push word [bp - 0x16]            ; 0x3f5b
    mov ax, 7                        ; 0x3f5e
    push ax                          ; 0x3f61
    mov ax, 0xf                      ; 0x3f62
    push ax                          ; 0x3f65
    mov ax, word [bp - 6]            ; 0x3f66
    add ax, strict word 6            ; 0x3f69
    push ax                          ; 0x3f6c
    mov ax, word [bp - 4]            ; 0x3f6d
    add ax, strict word 0x5d         ; 0x3f70
    push ax                          ; 0x3f73
    call loc_HTKI                    ; 0x3f74
    add sp, byte 0xe                 ; 0x3f77
    mov word [bp - 0x10], 0          ; 0x3f7a
    push word [bp - 0x10]            ; 0x3f7f
    mov ax, 7                        ; 0x3f82
    push ax                          ; 0x3f85
    mov ax, 8                        ; 0x3f86
    push ax                          ; 0x3f89
    mov ax, word [bp - 6]            ; 0x3f8a
    add ax, strict word 6            ; 0x3f8d
    push ax                          ; 0x3f90
    mov ax, word [bp - 4]            ; 0x3f91
    add ax, 0xc1                     ; 0x3f94
    push ax                          ; 0x3f97
    call draw_scrollbar              ; 0x3f98
    add sp, byte 0xa                 ; 0x3f9b
    mov ax, 0                        ; 0x3f9e
    push ax                          ; 0x3fa1
    push ax                          ; 0x3fa2
    mov ax, word [bp - 6]            ; 0x3fa3
    add ax, word [bp - 0x10]         ; 0x3fa6
    add ax, strict word 0x12         ; 0x3fa9
    push ax                          ; 0x3fac
    mov ax, word [bp - 4]            ; 0x3fad
    add ax, 0xc9                     ; 0x3fb0
    push ax                          ; 0x3fb3
    mov ax, word [bp - 6]            ; 0x3fb4
    add ax, word [bp - 0x10]         ; 0x3fb7
    add ax, strict word 0xe          ; 0x3fba
    push ax                          ; 0x3fbd
    mov ax, word [bp - 4]            ; 0x3fbe
    add ax, 0xc1                     ; 0x3fc1
    push ax                          ; 0x3fc4
    mov ax, 0                        ; 0x3fc5
    push ax                          ; 0x3fc8
    call set_hotspot                 ; 0x3fc9
    add sp, byte 0xe                 ; 0x3fcc
    mov ax, 0                        ; 0x3fcf
    push ax                          ; 0x3fd2
    mov ax, 9                        ; 0x3fd3
    push ax                          ; 0x3fd6
    mov ax, word [bp - 6]            ; 0x3fd7
    add ax, strict word 0xc          ; 0x3fda
    push ax                          ; 0x3fdd
    mov ax, word [bp - 4]            ; 0x3fde
    add ax, 0xc9                     ; 0x3fe1
    push ax                          ; 0x3fe4
    mov ax, word [bp - 6]            ; 0x3fe5
    add ax, strict word 6            ; 0x3fe8
    push ax                          ; 0x3feb
    mov ax, word [bp - 4]            ; 0x3fec
    add ax, 0xc1                     ; 0x3fef
    push ax                          ; 0x3ff2
    mov ax, 1                        ; 0x3ff3
    push ax                          ; 0x3ff6
    call set_hotspot                 ; 0x3ff7
    add sp, byte 0xe                 ; 0x3ffa
    mov ax, 0                        ; 0x3ffd
    push ax                          ; 0x4000
    mov ax, 0xb                      ; 0x4001
    push ax                          ; 0x4004
    mov ax, word [bp - 6]            ; 0x4005
    add ax, strict word 0x30         ; 0x4008
    push ax                          ; 0x400b
    mov ax, word [bp - 4]            ; 0x400c
    add ax, 0xc9                     ; 0x400f
    push ax                          ; 0x4012
    mov ax, word [bp - 6]            ; 0x4013
    add ax, strict word 0x2a         ; 0x4016
    push ax                          ; 0x4019
    mov ax, word [bp - 4]            ; 0x401a
    add ax, 0xc1                     ; 0x401d
    push ax                          ; 0x4020
    mov ax, 2                        ; 0x4021
    push ax                          ; 0x4024
    call set_hotspot                 ; 0x4025
    add sp, byte 0xe                 ; 0x4028
    mov ax, 0                        ; 0x402b
    push ax                          ; 0x402e
    push ax                          ; 0x402f
    mov ax, word [bp - 6]            ; 0x4030
    add ax, strict word 0xf          ; 0x4033
    push ax                          ; 0x4036
    mov ax, word [bp - 4]            ; 0x4037
    add ax, strict word 0x50         ; 0x403a
    push ax                          ; 0x403d
    mov ax, word [bp - 6]            ; 0x403e
    add ax, strict word 7            ; 0x4041
    push ax                          ; 0x4044
    mov ax, word [bp - 4]            ; 0x4045
    add ax, strict word 8            ; 0x4048
    push ax                          ; 0x404b
    mov ax, 3                        ; 0x404c
    push ax                          ; 0x404f
    call set_hotspot                 ; 0x4050
    add sp, byte 0xe                 ; 0x4053
    mov ax, 0                        ; 0x4056
    push ax                          ; 0x4059
    mov ax, 0xd                      ; 0x405a
    push ax                          ; 0x405d
    mov ax, word [bp - 6]            ; 0x405e
    add ax, strict word 0x1f         ; 0x4061
    push ax                          ; 0x4064
    mov ax, word [bp - 4]            ; 0x4065
    add ax, strict word 0x50         ; 0x4068
    push ax                          ; 0x406b
    mov ax, word [bp - 6]            ; 0x406c
    add ax, strict word 0x17         ; 0x406f
    push ax                          ; 0x4072
    mov ax, word [bp - 4]            ; 0x4073
    add ax, strict word 8            ; 0x4076
    push ax                          ; 0x4079
    mov ax, 4                        ; 0x407a
    push ax                          ; 0x407d
    call set_hotspot                 ; 0x407e
    add sp, byte 0xe                 ; 0x4081
    mov ax, 0                        ; 0x4084
    push ax                          ; 0x4087
    mov ax, 0x1b                     ; 0x4088
    push ax                          ; 0x408b
    mov ax, word [bp - 6]            ; 0x408c
    add ax, strict word 0x2f         ; 0x408f
    push ax                          ; 0x4092
    mov ax, word [bp - 4]            ; 0x4093
    add ax, strict word 0x50         ; 0x4096
    push ax                          ; 0x4099
    mov ax, word [bp - 6]            ; 0x409a
    add ax, strict word 0x27         ; 0x409d
    push ax                          ; 0x40a0
    mov ax, word [bp - 4]            ; 0x40a1
    add ax, strict word 8            ; 0x40a4
    push ax                          ; 0x40a7
    mov ax, 5                        ; 0x40a8
    push ax                          ; 0x40ab
    call set_hotspot                 ; 0x40ac
    add sp, byte 0xe                 ; 0x40af
    mov ax, 3                        ; 0x40b2
    cmp word [bp + 0xc], byte 3      ; 0x40b5
    jge short .forward4              ; 0x40b9
    mov ax, word [bp + 0xc]          ; 0x40bb
.forward4:
    mov word [bp - 0x1e], ax         ; 0x40be
    mov word [bp - 2], 0             ; 0x40c1
    jmp short .forward5              ; 0x40c6
.back1:
    mov ax, 0                        ; 0x40c8
    push ax                          ; 0x40cb
    push ax                          ; 0x40cc
    mov ax, 0xe                      ; 0x40cd
    imul word [bp - 2]               ; 0x40d0
    add ax, word [bp - 6]            ; 0x40d3
    add ax, strict word 0x13         ; 0x40d6
    push ax                          ; 0x40d9
    mov ax, word [bp - 4]            ; 0x40da
    add ax, 0xb9                     ; 0x40dd
    push ax                          ; 0x40e0
    mov ax, 0xe                      ; 0x40e1
    imul word [bp - 2]               ; 0x40e4
    add ax, word [bp - 6]            ; 0x40e7
    add ax, strict word 7            ; 0x40ea
    push ax                          ; 0x40ed
    mov ax, word [bp - 4]            ; 0x40ee
    add ax, strict word 0x5d         ; 0x40f1
    push ax                          ; 0x40f4
    mov ax, word [bp - 2]            ; 0x40f5
    add ax, strict word 6            ; 0x40f8
    push ax                          ; 0x40fb
    call set_hotspot                 ; 0x40fc
    add sp, byte 0xe                 ; 0x40ff
    inc word [bp - 2]                ; 0x4102
.forward5:
    mov ax, word [bp - 2]            ; 0x4105
    cmp ax, word [bp - 0x1e]         ; 0x4108
    jl short .back1                  ; 0x410b
    mov ax, 0                        ; 0x410d
    push ax                          ; 0x4110
    push ax                          ; 0x4111
    push ax                          ; 0x4112
    push ax                          ; 0x4113
    push ax                          ; 0x4114
    mov ax, 0xffff                   ; 0x4115
    push ax                          ; 0x4118
    mov ax, word [bp - 0x1e]         ; 0x4119
    add ax, strict word 6            ; 0x411c
    push ax                          ; 0x411f
    call set_hotspot                 ; 0x4120
    add sp, byte 0xe                 ; 0x4123
    mov ax, 0xc6                     ; 0x4126
    push ax                          ; 0x4129
    mov ax, 0x139                    ; 0x412a
    push ax                          ; 0x412d
    mov ax, 0x8e                     ; 0x412e
    push ax                          ; 0x4131
    mov ax, 9                        ; 0x4132
    push ax                          ; 0x4135
    call gfx_show_area               ; 0x4136
    add sp, byte 8                   ; 0x4139
    mov word [bp - 0x1a], 1          ; 0x413c
.back2:
    mov ax, hotspot_rects            ; 0x4141
    push ax                          ; 0x4144
    call poll_hotspots               ; 0x4145
    pop cx                           ; 0x4148
    dec ax                           ; 0x4149
    mov word [bp - 0x18], ax         ; 0x414a
    cmp word [space_key_hit], byte 0 ; 0x414d
    je short .forward6               ; 0x4152
    push word [bp - 0x1e]            ; 0x4154
    push word [bp - 0x16]            ; 0x4157
    push word [bp - 0x20]            ; 0x415a
    call loc_UVUO                    ; 0x415d
    add sp, byte 6                   ; 0x4160
    mov word [bp - 0x20], ax         ; 0x4163
    mov word [hotspot_hit], 1        ; 0x4166
    sub ax, word [bp - 0x16]         ; 0x416c
    add ax, strict word 6            ; 0x416f
    mov word [bp - 0x18], ax         ; 0x4172
.forward6:
    cmp word [hotspot_hit], byte 1   ; 0x4175
    je short .forward7               ; 0x417a
    jmp near .forward18              ; 0x417c
.forward7:
    mov ax, word [bp - 0x18]         ; 0x417f
    jmp near .forward16              ; 0x4182
jumptable_44d9_case_0:
    lea ax, word [bp - 0xe]          ; 0x4185
    push ax                          ; 0x4188
    lea ax, word [bp - 0xc]          ; 0x4189
    push ax                          ; 0x418c
    call gfx_get_mouse               ; 0x418d
    add sp, byte 4                   ; 0x4190
    mov ax, 4                        ; 0x4193
    push ax                          ; 0x4196
    mov ax, 0                        ; 0x4197
    push ax                          ; 0x419a
    mov ax, word [bp - 0xe]          ; 0x419b
    mov cx, word [bp - 6]            ; 0x419e
    add cx, word [bp - 0x10]         ; 0x41a1
    add cx, byte 0xe                 ; 0x41a4
    sub ax, cx                       ; 0x41a7
    push ax                          ; 0x41a9
    call clamp_between               ; 0x41aa
    add sp, byte 6                   ; 0x41ad
    mov word [bp - 0x14], ax         ; 0x41b0
api_idx_0038_IJUK.back3:
    lea ax, word [bp - 0xe]          ; 0x41b3
    push ax                          ; 0x41b6
    lea ax, word [bp - 0xc]          ; 0x41b7
    push ax                          ; 0x41ba
    call gfx_get_mouse               ; 0x41bb
    add sp, byte 4                   ; 0x41be
    mov word [bp - 0x1c], ax         ; 0x41c1
    push word [bp - 0x12]            ; 0x41c4
    mov ax, 0                        ; 0x41c7
    push ax                          ; 0x41ca
    mov ax, word [bp - 0xe]          ; 0x41cb
    mov cx, word [bp - 6]            ; 0x41ce
    add cx, byte 0xe                 ; 0x41d1
    sub ax, cx                       ; 0x41d4
    sub ax, word [bp - 0x14]         ; 0x41d6
    push ax                          ; 0x41d9
    call clamp_between               ; 0x41da
    add sp, byte 6                   ; 0x41dd
    mov word [bp - 0x10], ax         ; 0x41e0
    cmp word [bp + 0xc], byte 3      ; 0x41e3
    jle short api_idx_0038_IJUK.forward8 ; 0x41e7
    mov cx, 0x64                     ; 0x41e9
    imul cx                          ; 0x41ec
    push ax                          ; 0x41ee
    mov ax, word [bp - 0x12]         ; 0x41ef
    imul cx                          ; 0x41f2
    add ax, strict word 0x64         ; 0x41f4
    mov cx, word [bp + 0xc]          ; 0x41f7
    dec cx                           ; 0x41fa
    dec cx                           ; 0x41fb
    cwd                              ; 0x41fc
    idiv cx                          ; 0x41fd
    mov cx, ax                       ; 0x41ff
    pop ax                           ; 0x4201
    cwd                              ; 0x4202
    idiv cx                          ; 0x4203
    mov word [bp - 0x16], ax         ; 0x4205
api_idx_0038_IJUK.forward8:
    push word [bp - 0x22]            ; 0x4208
    push word [bp - 0x20]            ; 0x420b
    push word [bp - 0x16]            ; 0x420e
    mov ax, 7                        ; 0x4211
    push ax                          ; 0x4214
    mov ax, 0xf                      ; 0x4215
    push ax                          ; 0x4218
    mov ax, word [bp - 6]            ; 0x4219
    add ax, strict word 6            ; 0x421c
    push ax                          ; 0x421f
    mov ax, word [bp - 4]            ; 0x4220
    add ax, strict word 0x5d         ; 0x4223
    push ax                          ; 0x4226
    call loc_HTKI                    ; 0x4227
    add sp, byte 0xe                 ; 0x422a
    push word [bp - 0x10]            ; 0x422d
    mov ax, 7                        ; 0x4230
    push ax                          ; 0x4233
    mov ax, 8                        ; 0x4234
    push ax                          ; 0x4237
    mov ax, word [bp - 6]            ; 0x4238
    add ax, strict word 6            ; 0x423b
    push ax                          ; 0x423e
    mov ax, word [bp - 4]            ; 0x423f
    add ax, 0xc1                     ; 0x4242
    push ax                          ; 0x4245
    call draw_scrollbar              ; 0x4246
    add sp, byte 0xa                 ; 0x4249
    mov ax, 0                        ; 0x424c
    push ax                          ; 0x424f
    push ax                          ; 0x4250
    mov ax, word [bp - 6]            ; 0x4251
    add ax, word [bp - 0x10]         ; 0x4254
    add ax, strict word 0x12         ; 0x4257
    push ax                          ; 0x425a
    mov ax, word [bp - 4]            ; 0x425b
    add ax, 0xc9                     ; 0x425e
    push ax                          ; 0x4261
    mov ax, word [bp - 6]            ; 0x4262
    add ax, word [bp - 0x10]         ; 0x4265
    add ax, strict word 0xe          ; 0x4268
    push ax                          ; 0x426b
    mov ax, word [bp - 4]            ; 0x426c
    add ax, 0xc1                     ; 0x426f
    push ax                          ; 0x4272
    mov ax, 0                        ; 0x4273
    push ax                          ; 0x4276
    call set_hotspot                 ; 0x4277
    add sp, byte 0xe                 ; 0x427a
    mov ax, word [bp - 6]            ; 0x427d
    add ax, strict word 0x30         ; 0x4280
    push ax                          ; 0x4283
    mov ax, word [bp - 4]            ; 0x4284
    add ax, 0xc9                     ; 0x4287
    push ax                          ; 0x428a
    mov ax, word [bp - 6]            ; 0x428b
    add ax, strict word 6            ; 0x428e
    push ax                          ; 0x4291
    mov ax, word [bp - 4]            ; 0x4292
    add ax, strict word 0x5d         ; 0x4295
    push ax                          ; 0x4298
    call gfx_show_area               ; 0x4299
    add sp, byte 8                   ; 0x429c
    cmp word [bp - 0x1c], byte 0     ; 0x429f
    je short api_idx_0038_IJUK.forward9 ; 0x42a3
    jmp near api_idx_0038_IJUK.back3 ; 0x42a5
api_idx_0038_IJUK.forward9:
    jmp near api_idx_0038_IJUK.forward18 ; 0x42a8
jumptable_44d9_case_1:
    cmp word [bp - 0x18], byte 1     ; 0x42ab
    jne short api_idx_0038_IJUK.forward11 ; 0x42af
    mov ax, 1                        ; 0x42b1
    push ax                          ; 0x42b4
    mov ax, word [bp - 6]            ; 0x42b5
    add ax, strict word 0xc          ; 0x42b8
    push ax                          ; 0x42bb
    mov ax, word [bp - 4]            ; 0x42bc
    add ax, 0xc9                     ; 0x42bf
    push ax                          ; 0x42c2
    mov ax, word [bp - 6]            ; 0x42c3
    add ax, strict word 6            ; 0x42c6
    push ax                          ; 0x42c9
    mov ax, word [bp - 4]            ; 0x42ca
    add ax, 0xc1                     ; 0x42cd
    push ax                          ; 0x42d0
    call flash_area                  ; 0x42d1
    add sp, byte 0xa                 ; 0x42d4
    cmp word [bp - 0x16], byte 0     ; 0x42d7
    jle short api_idx_0038_IJUK.forward10 ; 0x42db
    dec word [bp - 0x16]             ; 0x42dd
api_idx_0038_IJUK.forward10:
    jmp short api_idx_0038_IJUK.forward12 ; 0x42e0
api_idx_0038_IJUK.forward11:
    mov ax, 1                        ; 0x42e2
    push ax                          ; 0x42e5
    mov ax, word [bp - 6]            ; 0x42e6
    add ax, strict word 0x30         ; 0x42e9
    push ax                          ; 0x42ec
    mov ax, word [bp - 4]            ; 0x42ed
    add ax, 0xc9                     ; 0x42f0
    push ax                          ; 0x42f3
    mov ax, word [bp - 6]            ; 0x42f4
    add ax, strict word 0x2a         ; 0x42f7
    push ax                          ; 0x42fa
    mov ax, word [bp - 4]            ; 0x42fb
    add ax, 0xc1                     ; 0x42fe
    push ax                          ; 0x4301
    call flash_area                  ; 0x4302
    add sp, byte 0xa                 ; 0x4305
    mov ax, word [bp + 0xc]          ; 0x4308
    dec ax                           ; 0x430b
    dec ax                           ; 0x430c
    dec ax                           ; 0x430d
    cmp ax, word [bp - 0x16]         ; 0x430e
    jle short api_idx_0038_IJUK.forward12 ; 0x4311
    inc word [bp - 0x16]             ; 0x4313
api_idx_0038_IJUK.forward12:
    cmp word [bp + 0xc], byte 3      ; 0x4316
    jle short api_idx_0038_IJUK.forward13 ; 0x431a
    push word [bp - 0x12]            ; 0x431c
    mov ax, 0                        ; 0x431f
    push ax                          ; 0x4322
    mov ax, 0x64                     ; 0x4323
    imul word [bp - 0x12]            ; 0x4326
    add ax, strict word 0x64         ; 0x4329
    mov cx, word [bp + 0xc]          ; 0x432c
    dec cx                           ; 0x432f
    dec cx                           ; 0x4330
    dec cx                           ; 0x4331
    cwd                              ; 0x4332
    idiv cx                          ; 0x4333
    imul word [bp - 0x16]            ; 0x4335
    mov cx, 0x64                     ; 0x4338
    cwd                              ; 0x433b
    idiv cx                          ; 0x433c
    push ax                          ; 0x433e
    call clamp_between               ; 0x433f
    add sp, byte 6                   ; 0x4342
    mov word [bp - 0x10], ax         ; 0x4345
api_idx_0038_IJUK.forward13:
    push word [bp - 0x22]            ; 0x4348
    push word [bp - 0x20]            ; 0x434b
    push word [bp - 0x16]            ; 0x434e
    mov ax, 7                        ; 0x4351
    push ax                          ; 0x4354
    mov ax, 0xf                      ; 0x4355
    push ax                          ; 0x4358
    mov ax, word [bp - 6]            ; 0x4359
    add ax, strict word 6            ; 0x435c
    push ax                          ; 0x435f
    mov ax, word [bp - 4]            ; 0x4360
    add ax, strict word 0x5d         ; 0x4363
    push ax                          ; 0x4366
    call loc_HTKI                    ; 0x4367
    add sp, byte 0xe                 ; 0x436a
    push word [bp - 0x10]            ; 0x436d
    mov ax, 7                        ; 0x4370
    push ax                          ; 0x4373
    mov ax, 8                        ; 0x4374
    push ax                          ; 0x4377
    mov ax, word [bp - 6]            ; 0x4378
    add ax, strict word 6            ; 0x437b
    push ax                          ; 0x437e
    mov ax, word [bp - 4]            ; 0x437f
    add ax, 0xc1                     ; 0x4382
    push ax                          ; 0x4385
    call draw_scrollbar              ; 0x4386
    add sp, byte 0xa                 ; 0x4389
    mov ax, 0                        ; 0x438c
    push ax                          ; 0x438f
    push ax                          ; 0x4390
    mov ax, word [bp - 6]            ; 0x4391
    add ax, word [bp - 0x10]         ; 0x4394
    add ax, strict word 0x12         ; 0x4397
    push ax                          ; 0x439a
    mov ax, word [bp - 4]            ; 0x439b
    add ax, 0xc9                     ; 0x439e
    push ax                          ; 0x43a1
    mov ax, word [bp - 6]            ; 0x43a2
    add ax, word [bp - 0x10]         ; 0x43a5
    add ax, strict word 0xe          ; 0x43a8
    push ax                          ; 0x43ab
    mov ax, word [bp - 4]            ; 0x43ac
    add ax, 0xc1                     ; 0x43af
    push ax                          ; 0x43b2
    mov ax, 0                        ; 0x43b3
    push ax                          ; 0x43b6
    call set_hotspot                 ; 0x43b7
    add sp, byte 0xe                 ; 0x43ba
    mov ax, word [bp - 6]            ; 0x43bd
    add ax, strict word 0x30         ; 0x43c0
    push ax                          ; 0x43c3
    mov ax, word [bp - 4]            ; 0x43c4
    add ax, 0xc9                     ; 0x43c7
    push ax                          ; 0x43ca
    mov ax, word [bp - 6]            ; 0x43cb
    add ax, strict word 6            ; 0x43ce
    push ax                          ; 0x43d1
    mov ax, word [bp - 4]            ; 0x43d2
    add ax, strict word 0x5d         ; 0x43d5
    push ax                          ; 0x43d8
    call gfx_show_area               ; 0x43d9
    add sp, byte 8                   ; 0x43dc
    jmp near api_idx_0038_IJUK.forward18 ; 0x43df
jumptable_44d9_case_3:
    jmp near api_idx_0038_IJUK.forward18 ; 0x43e2
jumptable_44d9_case_4:
    cmp word [bp + 8], byte 0        ; 0x43e5
    je short api_idx_0038_IJUK.forward14 ; 0x43e9
    mov ax, 1                        ; 0x43eb
    push ax                          ; 0x43ee
    push ax                          ; 0x43ef
    mov ax, 0xc                      ; 0x43f0
    push ax                          ; 0x43f3
    mov ax, word [bp - 6]            ; 0x43f4
    add ax, strict word 0x17         ; 0x43f7
    push ax                          ; 0x43fa
    mov ax, word [bp - 4]            ; 0x43fb
    add ax, strict word 8            ; 0x43fe
    push ax                          ; 0x4401
    call flash_button                ; 0x4402
    add sp, byte 0xa                 ; 0x4405
    mov ax, 0                        ; 0x4408
    push ax                          ; 0x440b
    mov ax, 1                        ; 0x440c
    push ax                          ; 0x440f
    mov ax, 0xc                      ; 0x4410
    push ax                          ; 0x4413
    mov ax, word [bp - 6]            ; 0x4414
    add ax, strict word 0x17         ; 0x4417
    push ax                          ; 0x441a
    mov ax, word [bp - 4]            ; 0x441b
    add ax, strict word 8            ; 0x441e
    push ax                          ; 0x4421
    call flash_button                ; 0x4422
    add sp, byte 0xa                 ; 0x4425
    mov word [spell_dialog_button], 1 ; 0x4428
    mov word [bp - 0x1a], 0          ; 0x442e
api_idx_0038_IJUK.forward14:
    jmp near api_idx_0038_IJUK.forward18 ; 0x4433
jumptable_44d9_case_5:
    cmp word [bp + 0xa], byte 0      ; 0x4436
    je short api_idx_0038_IJUK.forward15 ; 0x443a
    mov ax, 1                        ; 0x443c
    push ax                          ; 0x443f
    push ax                          ; 0x4440
    mov ax, 0xc                      ; 0x4441
    push ax                          ; 0x4444
    mov ax, word [bp - 6]            ; 0x4445
    add ax, strict word 0x27         ; 0x4448
    push ax                          ; 0x444b
    mov ax, word [bp - 4]            ; 0x444c
    add ax, strict word 8            ; 0x444f
    push ax                          ; 0x4452
    call flash_button                ; 0x4453
    add sp, byte 0xa                 ; 0x4456
    mov ax, 0                        ; 0x4459
    push ax                          ; 0x445c
    mov ax, 1                        ; 0x445d
    push ax                          ; 0x4460
    mov ax, 0xc                      ; 0x4461
    push ax                          ; 0x4464
    mov ax, word [bp - 6]            ; 0x4465
    add ax, strict word 0x27         ; 0x4468
    push ax                          ; 0x446b
    mov ax, word [bp - 4]            ; 0x446c
    add ax, strict word 8            ; 0x446f
    push ax                          ; 0x4472
    call flash_button                ; 0x4473
    add sp, byte 0xa                 ; 0x4476
    mov word [spell_dialog_button], 2 ; 0x4479
    mov word [bp - 0x1a], 0          ; 0x447f
api_idx_0038_IJUK.forward15:
    jmp short api_idx_0038_IJUK.forward18 ; 0x4484
api_idx_0038_IJUK.back4:
    mov ax, word [bp - 0x16]         ; 0x4486
    add ax, word [bp - 0x18]         ; 0x4489
    add ax, strict word 0xfffa       ; 0x448c
    mov word [bp - 0x20], ax         ; 0x448f
    push word [bp - 0x22]            ; 0x4492
    push ax                          ; 0x4495
    push word [bp - 0x16]            ; 0x4496
    mov ax, 7                        ; 0x4499
    push ax                          ; 0x449c
    mov ax, 0xf                      ; 0x449d
    push ax                          ; 0x44a0
    mov ax, word [bp - 6]            ; 0x44a1
    add ax, strict word 6            ; 0x44a4
    push ax                          ; 0x44a7
    mov ax, word [bp - 4]            ; 0x44a8
    add ax, strict word 0x5d         ; 0x44ab
    push ax                          ; 0x44ae
    call loc_HTKI                    ; 0x44af
    add sp, byte 0xe                 ; 0x44b2
    mov ax, word [bp - 6]            ; 0x44b5
    add ax, strict word 0x30         ; 0x44b8
    push ax                          ; 0x44bb
    mov ax, word [bp - 4]            ; 0x44bc
    add ax, 0xb9                     ; 0x44bf
    push ax                          ; 0x44c2
    mov ax, word [bp - 6]            ; 0x44c3
    add ax, strict word 6            ; 0x44c6
    push ax                          ; 0x44c9
    mov ax, word [bp - 4]            ; 0x44ca
    add ax, strict word 0x5d         ; 0x44cd
    push ax                          ; 0x44d0
    call gfx_show_area               ; 0x44d1
    add sp, byte 8                   ; 0x44d4
    jmp short api_idx_0038_IJUK.forward18 ; 0x44d7
jumptable_44d9:
    dw jumptable_44d9_case_0 - IMAGE_BASE + __zres_end ; 0x44d9
    dw jumptable_44d9_case_1 - IMAGE_BASE + __zres_end ; 0x44db
    dw jumptable_44d9_case_1 - IMAGE_BASE + __zres_end ; 0x44dd
    dw jumptable_44d9_case_3 - IMAGE_BASE + __zres_end ; 0x44df
    dw jumptable_44d9_case_4 - IMAGE_BASE + __zres_end ; 0x44e1
    dw jumptable_44d9_case_5 - IMAGE_BASE + __zres_end ; 0x44e3
api_idx_0038_IJUK.forward16:
    cmp ax, strict word 6            ; 0x44e5
    jae short api_idx_0038_IJUK.forward17 ; 0x44e8
    xchg bx, ax                      ; 0x44ea
    shl bx, 1                        ; 0x44eb
    jmp [cs:bx + jumptable_44d9 - IMAGE_BASE + __zres_end] ; 0x44ed
api_idx_0038_IJUK.forward17:
    jmp short api_idx_0038_IJUK.back4 ; 0x44f2
api_idx_0038_IJUK.forward18:
    cmp word [bp - 0x1a], byte 0     ; 0x44f4
    je short api_idx_0038_IJUK.forward19 ; 0x44f8
    jmp near api_idx_0038_IJUK.back2 ; 0x44fa
api_idx_0038_IJUK.forward19:
    mov ax, 1                        ; 0x44fd
    push ax                          ; 0x4500
    push word [bp - 0x38]            ; 0x4501
    call restore_saved_screen        ; 0x4504
    add sp, byte 4                   ; 0x4507
    mov ax, word [bp - 0x20]         ; 0x450a
    mov word [spell_dialog_result], ax ; 0x450d
    mov ax, word [spell_dialog_button] ; 0x4510
    ret                              ; 0x4513
