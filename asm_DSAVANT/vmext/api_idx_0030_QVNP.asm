; auto-generated
api_idx_0030_QVNP:
    mov ax, 0xffd0                   ; 0x3e8c
    call aztec_csav                  ; 0x3e8f
    mov word [bp - 0x0024], 0        ; 0x3e92
    mov word [bp - 0x0022], 4        ; 0x3e97
    mov word [bp - 0x0020], 1        ; 0x3e9c
    mov word [bp - 0x001e], 3        ; 0x3ea1
    mov word [bp - 0x001c], 2        ; 0x3ea6
    mov word [bss_8f20], 0           ; 0x3eab
    mov ax, word [bss_8f46]          ; 0x3eb1
    mov word [bp - 0x000a], ax       ; 0x3eb4
    mov ax, word [bss_8f44]          ; 0x3eb7
    mov word [bp - 0x000c], ax       ; 0x3eba
    mov ax, word [bss_8f42]          ; 0x3ebd
    mov word [bp - 0x000e], ax       ; 0x3ec0
    mov ax, word [bss_8f40]          ; 0x3ec3
    mov word [bp - 0x0010], ax       ; 0x3ec6
    mov ax, word [bss_8f3e]          ; 0x3ec9
    mov word [bp - 0x0012], ax       ; 0x3ecc
    mov word [bss_8f48], 0           ; 0x3ecf
    mov word [bss_8456], 0           ; 0x3ed5
    mov ax, 0                        ; 0x3edb
    push ax                          ; 0x3ede
    mov ax, 0x8f                     ; 0x3edf
    push ax                          ; 0x3ee2
    mov ax, 0xf7                     ; 0x3ee3
    push ax                          ; 0x3ee6
    mov ax, 0x20                     ; 0x3ee7
    push ax                          ; 0x3eea
    mov ax, 0x48                     ; 0x3eeb
    push ax                          ; 0x3eee
    call thunk_7                     ; 0x3eef
    add sp, byte 0x0a                ; 0x3ef2
    mov ax, word [bp - 0x0012]       ; 0x3ef5
    mov cx, 6                        ; 0x3ef8
    shl ax, cl                       ; 0x3efb
    mov cx, word [bp - 0x0010]       ; 0x3efd
    shl cx, 1                        ; 0x3f00
    shl cx, 1                        ; 0x3f02
    shl cx, 1                        ; 0x3f04
    add ax, cx                       ; 0x3f06
    add ax, word [bp - 0x000e]       ; 0x3f08
    mov word [bp - 0x0008], ax       ; 0x3f0b
    cmp word [bss_830c], byte 0x0a   ; 0x3f0e
    je short @..api_idx_0030_QVNP.l1 ; 0x3f13
    cmp word [bss_830c], byte 0x19   ; 0x3f15
    je short @..api_idx_0030_QVNP.l1 ; 0x3f1a
    jmp near @..api_idx_0030_QVNP.l5 ; 0x3f1c
@..api_idx_0030_QVNP.l1:
    push ax                          ; 0x3f1f
    mov ax, word [bss_0e14]          ; 0x3f20
    add ax, 0x930                    ; 0x3f23
    push ax                          ; 0x3f26
    call ds_leaf_loc_KIMU            ; 0x3f27
    add sp, byte 4                   ; 0x3f2a
    test ax, ax                      ; 0x3f2d
    jne short @..api_idx_0030_QVNP.l2 ; 0x3f2f
    jmp near @..api_idx_0030_QVNP.l5 ; 0x3f31
@..api_idx_0030_QVNP.l2:
    mov ax, 0x63                     ; 0x3f34
    push ax                          ; 0x3f37
    mov ax, 0x8e                     ; 0x3f38
    push ax                          ; 0x3f3b
    mov ax, 0xf7                     ; 0x3f3c
    push ax                          ; 0x3f3f
    mov ax, 0x21                     ; 0x3f40
    push ax                          ; 0x3f43
    mov ax, 0x48                     ; 0x3f44
    push ax                          ; 0x3f47
    call thunk_7                     ; 0x3f48
    add sp, byte 0x0a                ; 0x3f4b
    mov ax, word [bss_830c]          ; 0x3f4e
    cmp ax, word [bss_8f28]          ; 0x3f51
    jne short @..api_idx_0030_QVNP.l4 ; 0x3f55
    mov ax, word [bp - 0x0012]       ; 0x3f57
    cmp ax, word [bss_8f2a]          ; 0x3f5a
    jne short @..api_idx_0030_QVNP.l4 ; 0x3f5e
    mov ax, word [bp - 0x000e]       ; 0x3f60
    cmp ax, word [bss_8f2e]          ; 0x3f63
    jne short @..api_idx_0030_QVNP.l4 ; 0x3f67
    mov ax, word [bp - 0x0010]       ; 0x3f69
    cmp ax, word [bss_8f2c]          ; 0x3f6c
    jne short @..api_idx_0030_QVNP.l4 ; 0x3f70
    cmp word [bss_8f22], byte 0      ; 0x3f72
    je short @..api_idx_0030_QVNP.l3 ; 0x3f77
    mov word [bss_8f20], 0xffff      ; 0x3f79
@..api_idx_0030_QVNP.l3:
    mov byte [bp - 0x0030], 2        ; 0x3f7f
    mov byte [bp - 0x002f], 0        ; 0x3f83
    mov ax, 0                        ; 0x3f87
    push ax                          ; 0x3f8a
    push ax                          ; 0x3f8b
    lea ax, word [bp - 0x0030]       ; 0x3f8c
    push ax                          ; 0x3f8f
    mov ax, 0                        ; 0x3f90
    push ax                          ; 0x3f93
    mov ax, 0x90                     ; 0x3f94
    push ax                          ; 0x3f97
    mov ax, 0x20                     ; 0x3f98
    push ax                          ; 0x3f9b
    mov ax, 0xf8                     ; 0x3f9c
    push ax                          ; 0x3f9f
    mov ax, 0x48                     ; 0x3fa0
    push ax                          ; 0x3fa3
    mov al, byte [bss_7b05]          ; 0x3fa4
    sub ah, ah                       ; 0x3fa7
    inc ax                           ; 0x3fa9
    push ax                          ; 0x3faa
    mov al, byte [bss_7abe]          ; 0x3fab
    sub ah, ah                       ; 0x3fae
    inc ax                           ; 0x3fb0
    push ax                          ; 0x3fb1
    mov ax, 0xc                      ; 0x3fb2
    push ax                          ; 0x3fb5
    call thunk_28                    ; 0x3fb6
    add sp, byte 0x16                ; 0x3fb9
@..api_idx_0030_QVNP.l4:
    call ds_app_NLKG                 ; 0x3fbc
    ret                              ; 0x3fbf
@..api_idx_0030_QVNP.l5:
    cmp word [bss_5b6e], byte 1      ; 0x3fc0
    je short @..api_idx_0030_QVNP.l6 ; 0x3fc5
    cmp word [bss_9188], byte 0      ; 0x3fc7
    je short @..api_idx_0030_QVNP.l8 ; 0x3fcc
@..api_idx_0030_QVNP.l6:
    push word [bp - 0x0008]          ; 0x3fce
    mov ax, word [bss_0e14]          ; 0x3fd1
    add ax, 0x8b0                    ; 0x3fd4
    push ax                          ; 0x3fd7
    call ds_leaf_loc_KIMU            ; 0x3fd8
    add sp, byte 4                   ; 0x3fdb
    test ax, ax                      ; 0x3fde
    je short @..api_idx_0030_QVNP.l8 ; 0x3fe0
    cmp word [bss_9188], byte 0      ; 0x3fe2
    je short @..api_idx_0030_QVNP.l7 ; 0x3fe7
    mov ax, 0xff                     ; 0x3fe9
    push ax                          ; 0x3fec
    mov ax, 0x8e                     ; 0x3fed
    push ax                          ; 0x3ff0
    mov ax, 0xf7                     ; 0x3ff1
    push ax                          ; 0x3ff4
    mov ax, 0x21                     ; 0x3ff5
    push ax                          ; 0x3ff8
    mov ax, 0x48                     ; 0x3ff9
    push ax                          ; 0x3ffc
    call thunk_7                     ; 0x3ffd
    add sp, byte 0x0a                ; 0x4000
    call api_idx_001e_PMST           ; 0x4003
    call api_idx_0024_SLHO           ; 0x4006
@..api_idx_0030_QVNP.l7:
    call ds_app_NLKG                 ; 0x4009
    ret                              ; 0x400c
@..api_idx_0030_QVNP.l8:
    mov ax, 0                        ; 0x400d
    push ax                          ; 0x4010
    mov ax, 0x19                     ; 0x4011
    push ax                          ; 0x4014
    mov ax, 0x91de                   ; 0x4015
    push ax                          ; 0x4018
    call aztec_setmem                ; 0x4019
    add sp, byte 6                   ; 0x401c
    mov ax, 0                        ; 0x401f
    push ax                          ; 0x4022
    mov ax, 0x19                     ; 0x4023
    push ax                          ; 0x4026
    mov ax, 0x91c5                   ; 0x4027
    push ax                          ; 0x402a
    call aztec_setmem                ; 0x402b
    add sp, byte 6                   ; 0x402e
    mov ax, 0                        ; 0x4031
    push ax                          ; 0x4034
    mov ax, 0x19                     ; 0x4035
    push ax                          ; 0x4038
    mov ax, 0x91ac                   ; 0x4039
    push ax                          ; 0x403c
    call aztec_setmem                ; 0x403d
    add sp, byte 6                   ; 0x4040
    mov ax, 0                        ; 0x4043
    push ax                          ; 0x4046
    mov ax, 0x19                     ; 0x4047
    push ax                          ; 0x404a
    mov ax, 0x9aee                   ; 0x404b
    push ax                          ; 0x404e
    call aztec_setmem                ; 0x404f
    add sp, byte 6                   ; 0x4052
    mov ax, 0                        ; 0x4055
    push ax                          ; 0x4058
    mov ax, 0x19                     ; 0x4059
    push ax                          ; 0x405c
    mov ax, 0x91f7                   ; 0x405d
    push ax                          ; 0x4060
    call aztec_setmem                ; 0x4061
    add sp, byte 6                   ; 0x4064
    mov ax, 0                        ; 0x4067
    push ax                          ; 0x406a
    mov ax, 0x32                     ; 0x406b
    push ax                          ; 0x406e
    mov ax, 0x928e                   ; 0x406f
    push ax                          ; 0x4072
    call aztec_setmem                ; 0x4073
    add sp, byte 6                   ; 0x4076
    mov ax, 0                        ; 0x4079
    push ax                          ; 0x407c
    mov ax, 0x19                     ; 0x407d
    push ax                          ; 0x4080
    mov ax, 0x9274                   ; 0x4081
    push ax                          ; 0x4084
    call aztec_setmem                ; 0x4085
    add sp, byte 6                   ; 0x4088
    mov ax, 0                        ; 0x408b
    push ax                          ; 0x408e
    mov ax, 0x32                     ; 0x408f
    push ax                          ; 0x4092
    mov ax, 0x9210                   ; 0x4093
    push ax                          ; 0x4096
    call aztec_setmem                ; 0x4097
    add sp, byte 6                   ; 0x409a
    mov ax, 0                        ; 0x409d
    push ax                          ; 0x40a0
    mov ax, 0x32                     ; 0x40a1
    push ax                          ; 0x40a4
    mov ax, 0x92c0                   ; 0x40a5
    push ax                          ; 0x40a8
    call aztec_setmem                ; 0x40a9
    add sp, byte 6                   ; 0x40ac
    mov ax, 0                        ; 0x40af
    push ax                          ; 0x40b2
    mov ax, 0x32                     ; 0x40b3
    push ax                          ; 0x40b6
    mov ax, 0x9242                   ; 0x40b7
    push ax                          ; 0x40ba
    call aztec_setmem                ; 0x40bb
    add sp, byte 6                   ; 0x40be
    mov ax, 0                        ; 0x40c1
    push ax                          ; 0x40c4
    mov ax, 0x7f8                    ; 0x40c5
    push ax                          ; 0x40c8
    mov ax, 0x92f4                   ; 0x40c9
    push ax                          ; 0x40cc
    call aztec_setmem                ; 0x40cd
    add sp, byte 6                   ; 0x40d0
    mov word [bss_92f2], 0           ; 0x40d3
    mov ax, word [bp - 0x0012]       ; 0x40d9
    mov word [bp - 0x0014], ax       ; 0x40dc
    mov ax, 0xffff                   ; 0x40df
    push ax                          ; 0x40e2
    mov ax, 0                        ; 0x40e3
    push ax                          ; 0x40e6
    lea ax, word [bp - 0x0014]       ; 0x40e7
    push ax                          ; 0x40ea
    lea ax, word [bp - 0x0010]       ; 0x40eb
    push ax                          ; 0x40ee
    lea ax, word [bp - 0x000e]       ; 0x40ef
    push ax                          ; 0x40f2
    lea ax, word [bp - 0x000c]       ; 0x40f3
    push ax                          ; 0x40f6
    lea ax, word [bp - 0x000a]       ; 0x40f7
    push ax                          ; 0x40fa
    call loc_UKLN                    ; 0x40fb
    add sp, byte 0x0e                ; 0x40fe
    mov word [bss_9b08], 5           ; 0x4101
    mov ax, word [bss_8f46]          ; 0x4107
    add ax, word [bss_8f44]          ; 0x410a
    add ax, word [bss_82ee]          ; 0x410e
    mov cx, 2                        ; 0x4112
    cwd                              ; 0x4115
    idiv cx                          ; 0x4116
    mov word [bss_91a6], dx          ; 0x4118
    mov word [bss_91a8], 0           ; 0x411c
    mov ax, word [bss_5b6e]          ; 0x4122
    jmp near @..api_idx_0030_QVNP.l24 ; 0x4125
