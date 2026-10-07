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
