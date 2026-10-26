; auto-generated
api_idx_0088_LVJM:
    mov ax, 0xff78                   ; 0x3f9e
    call aztec_csav                  ; 0x3fa1
    mov word [bp - 2], 0             ; 0x3fa4
.back1:
    mov ax, 0x248                    ; 0x3fa9
    imul word [bp + 4]               ; 0x3fac
    add ax, word [bp - 2]            ; 0x3faf
    mov bx, ax                       ; 0x3fb2
    mov al, byte [bx + party_records + pc_rec.flag] ; 0x3fb4
    sub ah, ah                       ; 0x3fb8
    mov cx, word [bp - 2]            ; 0x3fba
    shl cx, 1                        ; 0x3fbd
    mov bx, cx                       ; 0x3fbf
    mov word [bx + slot_limit], ax   ; 0x3fc1
    inc word [bp - 2]                ; 0x3fc5
    mov ax, word [bp - 2]            ; 0x3fc8
    cmp ax, strict word 0x22         ; 0x3fcb
    jl short .back1                  ; 0x3fce
    mov word [bp - 2], 0             ; 0x3fd0
.back2:
    mov ax, 0x14                     ; 0x3fd5
    imul word [bp - 2]               ; 0x3fd8
    add ax, slot_label               ; 0x3fdb
    push ax                          ; 0x3fde
    mov ax, word [bp - 2]            ; 0x3fdf
    add ax, MSG_WEAPONRY             ; 0x3fe2
    push ax                          ; 0x3fe5
    call load_message_string         ; 0x3fe6
    add sp, byte 4                   ; 0x3fe9
    inc word [bp - 2]                ; 0x3fec
    mov ax, word [bp - 2]            ; 0x3fef
    cmp ax, strict word 4            ; 0x3ff2
    jle short .back2                 ; 0x3ff5
    lea ax, word [bp - 0x88]         ; 0x3ff7
    push ax                          ; 0x3ffb
    push word [bp + 6]               ; 0x3ffc
    call load_message_string         ; 0x3fff
    add sp, byte 4                   ; 0x4002
    mov ax, 1                        ; 0x4005
    push ax                          ; 0x4008
    lea ax, word [bp - 0x88]         ; 0x4009
    push ax                          ; 0x400d
    call api_idx_0004_PMIU           ; 0x400e
    add sp, byte 4                   ; 0x4011
    mov word [bp - 6], 0             ; 0x4014
.back3:
    lea ax, word [bp - 0x20]         ; 0x4019
    push ax                          ; 0x401c
    push word [bp - 6]               ; 0x401d
    push word [bp + 4]               ; 0x4020
    call api_idx_0004_LOLJ           ; 0x4023
    add sp, byte 6                   ; 0x4026
    mov word [bp - 8], ax            ; 0x4029
    mov word [bp - 2], 0             ; 0x402c
    mov word [bp - 4], 0             ; 0x4031
    jmp short .forward1              ; 0x4036
.back4:
    mov ax, 0x248                    ; 0x4038
    imul word [bp + 4]               ; 0x403b
    mov cx, word [bp - 4]            ; 0x403e
    shl cx, 1                        ; 0x4041
    mov bx, cx                       ; 0x4043
    add bx, bp                       ; 0x4045
    mov cx, word [bx - 0x20]         ; 0x4047
    add ax, cx                       ; 0x404a
    mov bx, ax                       ; 0x404c
    mov al, byte [bx + party_records + pc_rec.flag] ; 0x404e
    sub ah, ah                       ; 0x4052
    mov cx, ax                       ; 0x4054
    mov ax, 0x64                     ; 0x4056
    sub ax, cx                       ; 0x4059
    add word [bp - 2], ax            ; 0x405b
    inc word [bp - 4]                ; 0x405e
.forward1:
    mov ax, word [bp - 4]            ; 0x4061
    cmp ax, word [bp - 8]            ; 0x4064
    jl short .back4                  ; 0x4067
    mov ax, word [bp - 6]            ; 0x4069
    shl ax, 1                        ; 0x406c
    mov bx, ax                       ; 0x406e
    mov ax, word [bx + slot_value]   ; 0x4070
    cmp ax, word [bp - 2]            ; 0x4074
    jle short .forward2              ; 0x4077
    mov ax, word [bp - 2]            ; 0x4079
    mov word [bx + slot_value], ax   ; 0x407c
.forward2:
    lea ax, word [bp - 0x20]         ; 0x4080
    push ax                          ; 0x4083
    push word [bp - 8]               ; 0x4084
    push word [bp - 6]               ; 0x4087
    push word [bp + 4]               ; 0x408a
    call draw_known_spell_values     ; 0x408d
    add sp, byte 8                   ; 0x4090
    mov word [bp - 4], 0             ; 0x4093
.back5:
    mov ax, word [bp - 4]            ; 0x4098
    shl ax, 1                        ; 0x409b
    mov bx, ax                       ; 0x409d
    add bx, bp                       ; 0x409f
    mov word [bx - 0x38], 0          ; 0x40a1
    mov ax, word [bp - 4]            ; 0x40a6
    shl ax, 1                        ; 0x40a9
    shl ax, 1                        ; 0x40ab
    mov bx, ax                       ; 0x40ad
    mov ax, word [word bx + 0x38]    ; 0x40af
    mov word [bp - 2], ax            ; 0x40b3
    jmp short .forward5              ; 0x40b6
.back6:
    mov ax, word [bp - 2]            ; 0x40b8
    shl ax, 1                        ; 0x40bb
    mov bx, ax                       ; 0x40bd
    cmp word [bx + bss_9598], byte 0 ; 0x40bf
    jne short .forward3              ; 0x40c4
    mov ax, 0x248                    ; 0x40c6
    imul word [bp + 4]               ; 0x40c9
    add ax, word [bp - 2]            ; 0x40cc
    mov bx, ax                       ; 0x40cf
    cmp byte [bx + party_records + pc_rec.flag], 0 ; 0x40d1
    jbe short .forward4              ; 0x40d6
.forward3:
    mov ax, word [bp - 4]            ; 0x40d8
    shl ax, 1                        ; 0x40db
    mov bx, ax                       ; 0x40dd
    add bx, bp                       ; 0x40df
    mov word [bx - 0x38], 1          ; 0x40e1
.forward4:
    inc word [bp - 2]                ; 0x40e6
.forward5:
    mov ax, word [bp - 4]            ; 0x40e9
    shl ax, 1                        ; 0x40ec
    shl ax, 1                        ; 0x40ee
    mov bx, ax                       ; 0x40f0
    mov ax, word [word bx + 0x3a]    ; 0x40f2
    cmp ax, word [bp - 2]            ; 0x40f6
    jge short .back6                 ; 0x40f9
    inc word [bp - 4]                ; 0x40fb
    mov ax, word [bp - 4]            ; 0x40fe
    cmp ax, strict word 4            ; 0x4101
    jl short .back5                  ; 0x4104
    lea ax, word [bp - 0x38]         ; 0x4106
    push ax                          ; 0x4109
    lea ax, word [bp - 0x20]         ; 0x410a
    push ax                          ; 0x410d
    push word [bp - 8]               ; 0x410e
    push word [bp - 6]               ; 0x4111
    push word [bp + 4]               ; 0x4114
    call api_idx_0032_VJTR           ; 0x4117
    add sp, byte 0xa                 ; 0x411a
    mov word [bp - 6], ax            ; 0x411d
    cmp word [bp - 6], byte 4        ; 0x4120
    je short .forward6               ; 0x4124
    jmp near .back3                  ; 0x4126
.forward6:
    mov ax, 0xc6                     ; 0x4129
    push ax                          ; 0x412c
    mov ax, 0x13c                    ; 0x412d
    push ax                          ; 0x4130
    mov ax, 0x70                     ; 0x4131
    push ax                          ; 0x4134
    mov ax, 1                        ; 0x4135
    push ax                          ; 0x4138
    call gfx_show_area               ; 0x4139
    add sp, byte 8                   ; 0x413c
    ret                              ; 0x413f
