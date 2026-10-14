; auto-generated
api_idx_0088_PMVU:
    mov ax, 0xff78                   ; 0x3f9e
    call aztec_csav                  ; 0x3fa1
    mov word [bp - 0x0002], 0        ; 0x3fa4
@..api_idx_0088_PMVU.l1:
    mov ax, 0x248                    ; 0x3fa9
    imul word [bp + 0x4]             ; 0x3fac
    add ax, word [bp - 0x0002]       ; 0x3faf
    mov bx, ax                       ; 0x3fb2
    mov al, byte [bx + 0x5d6c]       ; 0x3fb4
    sub ah, ah                       ; 0x3fb8
    mov cx, word [bp - 0x0002]       ; 0x3fba
    shl cx, 1                        ; 0x3fbd
    mov bx, cx                       ; 0x3fbf
    mov word [bx - 0x6940], ax       ; 0x3fc1
    inc word [bp - 0x0002]           ; 0x3fc5
    mov ax, word [bp - 0x0002]       ; 0x3fc8
    cmp ax, strict word 0x22         ; 0x3fcb
    jl short @..api_idx_0088_PMVU.l1 ; 0x3fce
    mov word [bp - 0x0002], 0        ; 0x3fd0
@..api_idx_0088_PMVU.l2:
    mov ax, 0x14                     ; 0x3fd5
    imul word [bp - 0x0002]          ; 0x3fd8
    add ax, 0x95f8                   ; 0x3fdb
    push ax                          ; 0x3fde
    mov ax, word [bp - 0x0002]       ; 0x3fdf
    add ax, 0x258                    ; 0x3fe2
    push ax                          ; 0x3fe5
    call ds_app_mem_VKHV             ; 0x3fe6
    add sp, byte 4                   ; 0x3fe9
    inc word [bp - 0x0002]           ; 0x3fec
    mov ax, word [bp - 0x0002]       ; 0x3fef
    cmp ax, strict word 4            ; 0x3ff2
    jle short @..api_idx_0088_PMVU.l2 ; 0x3ff5
    lea ax, word [bp - 0x0088]       ; 0x3ff7
    push ax                          ; 0x3ffb
    push word [bp + 0x6]             ; 0x3ffc
    call ds_app_mem_VKHV             ; 0x3fff
    add sp, byte 4                   ; 0x4002
    mov ax, 1                        ; 0x4005
    push ax                          ; 0x4008
    lea ax, word [bp - 0x0088]       ; 0x4009
    push ax                          ; 0x400d
    call api_idx_0004_VPLS           ; 0x400e
    add sp, byte 4                   ; 0x4011
    mov word [bp - 0x0006], 0        ; 0x4014
@..api_idx_0088_PMVU.l3:
    lea ax, word [bp - 0x0020]       ; 0x4019
    push ax                          ; 0x401c
    push word [bp - 0x0006]          ; 0x401d
    push word [bp + 0x4]             ; 0x4020
    call api_idx_0004_ULTV           ; 0x4023
    add sp, byte 6                   ; 0x4026
    mov word [bp - 0x0008], ax       ; 0x4029
    mov word [bp - 0x0002], 0        ; 0x402c
    mov word [bp - 0x0004], 0        ; 0x4031
    jmp short @..api_idx_0088_PMVU.l5 ; 0x4036
@..api_idx_0088_PMVU.l4:
    mov ax, 0x248                    ; 0x4038
    imul word [bp + 0x4]             ; 0x403b
    mov cx, word [bp - 0x0004]       ; 0x403e
    shl cx, 1                        ; 0x4041
    mov bx, cx                       ; 0x4043
    add bx, bp                       ; 0x4045
    mov cx, word [bx - 0x0020]       ; 0x4047
    add ax, cx                       ; 0x404a
    mov bx, ax                       ; 0x404c
    mov al, byte [bx + 0x5d6c]       ; 0x404e
    sub ah, ah                       ; 0x4052
    mov cx, ax                       ; 0x4054
    mov ax, 0x64                     ; 0x4056
    sub ax, cx                       ; 0x4059
    add word [bp - 0x0002], ax       ; 0x405b
    inc word [bp - 0x0004]           ; 0x405e
@..api_idx_0088_PMVU.l5:
    mov ax, word [bp - 0x0004]       ; 0x4061
    cmp ax, word [bp - 0x0008]       ; 0x4064
    jl short @..api_idx_0088_PMVU.l4 ; 0x4067
    mov ax, word [bp - 0x0006]       ; 0x4069
    shl ax, 1                        ; 0x406c
    mov bx, ax                       ; 0x406e
    mov ax, word [bx - 0x6a10]       ; 0x4070
    cmp ax, word [bp - 0x0002]       ; 0x4074
    jle short @..api_idx_0088_PMVU.l6 ; 0x4077
    mov ax, word [bp - 0x0002]       ; 0x4079
    mov word [bx - 0x6a10], ax       ; 0x407c
@..api_idx_0088_PMVU.l6:
    lea ax, word [bp - 0x0020]       ; 0x4080
    push ax                          ; 0x4083
    push word [bp - 0x0008]          ; 0x4084
    push word [bp - 0x0006]          ; 0x4087
    push word [bp + 0x4]             ; 0x408a
    call api_idx_0002_NSNU           ; 0x408d
    add sp, byte 8                   ; 0x4090
    mov word [bp - 0x0004], 0        ; 0x4093
@..api_idx_0088_PMVU.l7:
    mov ax, word [bp - 0x0004]       ; 0x4098
    shl ax, 1                        ; 0x409b
    mov bx, ax                       ; 0x409d
    add bx, bp                       ; 0x409f
    mov word [bx - 0x0038], 0        ; 0x40a1
    mov ax, word [bp - 0x0004]       ; 0x40a6
    shl ax, 1                        ; 0x40a9
    shl ax, 1                        ; 0x40ab
    mov bx, ax                       ; 0x40ad
    mov ax, word [word bx + 0x38]    ; 0x40af
    mov word [bp - 0x0002], ax       ; 0x40b3
    jmp short @..api_idx_0088_PMVU.l11 ; 0x40b6
@..api_idx_0088_PMVU.l8:
    mov ax, word [bp - 0x0002]       ; 0x40b8
    shl ax, 1                        ; 0x40bb
    mov bx, ax                       ; 0x40bd
    cmp word [bx - 0x6a68], byte 0   ; 0x40bf
    jne short @..api_idx_0088_PMVU.l9 ; 0x40c4
    mov ax, 0x248                    ; 0x40c6
    imul word [bp + 0x4]             ; 0x40c9
    add ax, word [bp - 0x0002]       ; 0x40cc
    mov bx, ax                       ; 0x40cf
    cmp byte [bx + 0x5d6c], 0        ; 0x40d1
    jbe short @..api_idx_0088_PMVU.l10 ; 0x40d6
@..api_idx_0088_PMVU.l9:
    mov ax, word [bp - 0x0004]       ; 0x40d8
    shl ax, 1                        ; 0x40db
    mov bx, ax                       ; 0x40dd
    add bx, bp                       ; 0x40df
    mov word [bx - 0x0038], 1        ; 0x40e1
@..api_idx_0088_PMVU.l10:
    inc word [bp - 0x0002]           ; 0x40e6
@..api_idx_0088_PMVU.l11:
    mov ax, word [bp - 0x0004]       ; 0x40e9
    shl ax, 1                        ; 0x40ec
    shl ax, 1                        ; 0x40ee
    mov bx, ax                       ; 0x40f0
    mov ax, word [word bx + 0x3a]    ; 0x40f2
    cmp ax, word [bp - 0x0002]       ; 0x40f6
    jge short @..api_idx_0088_PMVU.l8 ; 0x40f9
    inc word [bp - 0x0004]           ; 0x40fb
    mov ax, word [bp - 0x0004]       ; 0x40fe
    cmp ax, strict word 4            ; 0x4101
    jl short @..api_idx_0088_PMVU.l7 ; 0x4104
    lea ax, word [bp - 0x0038]       ; 0x4106
    push ax                          ; 0x4109
    lea ax, word [bp - 0x0020]       ; 0x410a
    push ax                          ; 0x410d
    push word [bp - 0x0008]          ; 0x410e
    push word [bp - 0x0006]          ; 0x4111
    push word [bp + 0x4]             ; 0x4114
    call api_idx_0032_PTTL           ; 0x4117
    add sp, byte 0x0a                ; 0x411a
    mov word [bp - 0x0006], ax       ; 0x411d
    cmp word [bp - 0x0006], byte 4   ; 0x4120
    je short @..api_idx_0088_PMVU.l12 ; 0x4124
    jmp near @..api_idx_0088_PMVU.l3 ; 0x4126
@..api_idx_0088_PMVU.l12:
    mov ax, 0xc6                     ; 0x4129
    push ax                          ; 0x412c
    mov ax, 0x13c                    ; 0x412d
    push ax                          ; 0x4130
    mov ax, 0x70                     ; 0x4131
    push ax                          ; 0x4134
    mov ax, 1                        ; 0x4135
    push ax                          ; 0x4138
    call thunk_4                     ; 0x4139
    add sp, byte 8                   ; 0x413c
    ret                              ; 0x413f
