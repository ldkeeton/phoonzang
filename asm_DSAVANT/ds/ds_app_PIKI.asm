; auto-generated
ds_app_PIKI: ; Aztec csav frame=0x003a
    mov ax, 0xffc6                   ; 0x1d81
    call aztec_csav                  ; 0x1d84
    mov ax, 0                        ; 0x1d87
    push ax                          ; 0x1d8a
    mov ax, word [bp + 0x4]          ; 0x1d8b
    shl ax, 1                        ; 0x1d8e
    shl ax, 1                        ; 0x1d90
    mov bx, ax                       ; 0x1d92
    push word [bx + 0x69a6]          ; 0x1d94
    push word [bx + 0x69a4]          ; 0x1d98
    call thunk_13                    ; 0x1d9c
    add sp, byte 6                   ; 0x1d9f
    mov ax, word [bp + 0x4]          ; 0x1da2
    mov cx, 2                        ; 0x1da5
    cwd                              ; 0x1da8
    idiv cx                          ; 0x1da9
    mov ax, dx                       ; 0x1dab
    mov cx, 0xfc                     ; 0x1dad
    imul cx                          ; 0x1db0
    add ax, strict word 5            ; 0x1db2
    mov word [bp - 0x000a], ax       ; 0x1db5
    mov ax, word [bp + 0x4]          ; 0x1db8
    mov cx, 2                        ; 0x1dbb
    cwd                              ; 0x1dbe
    idiv cx                          ; 0x1dbf
    mov cx, 0x2d                     ; 0x1dc1
    imul cx                          ; 0x1dc4
    add ax, strict word 0x12         ; 0x1dc6
    mov word [bp - 0x000c], ax       ; 0x1dc9
    push ax                          ; 0x1dcc
    push word [bp - 0x000a]          ; 0x1dcd
    call thunk                       ; 0x1dd0
    add sp, byte 4                   ; 0x1dd3
    mov ax, 5                        ; 0x1dd6
    push ax                          ; 0x1dd9
    mov ax, word [bp + 0x4]          ; 0x1dda
    shl ax, 1                        ; 0x1ddd
    mov bx, ax                       ; 0x1ddf
    mov al, byte [bx + 0x69bc]       ; 0x1de1
    sub ah, ah                       ; 0x1de5
    push ax                          ; 0x1de7
    call ds_loc_3a77                 ; 0x1de8
    add sp, byte 4                   ; 0x1deb
    mov ax, 0                        ; 0x1dee
    push ax                          ; 0x1df1
    mov ax, 1                        ; 0x1df2
    push ax                          ; 0x1df5
    call thunk_3                     ; 0x1df6
    add sp, byte 4                   ; 0x1df9
    mov ax, word [bp - 0x000c]       ; 0x1dfc
    add ax, strict word 0x20         ; 0x1dff
    push ax                          ; 0x1e02
    mov ax, word [bp - 0x000a]       ; 0x1e03
    add ax, strict word 4            ; 0x1e06
    push ax                          ; 0x1e09
    call thunk                       ; 0x1e0a
    add sp, byte 4                   ; 0x1e0d
    mov ax, 0                        ; 0x1e10
    push ax                          ; 0x1e13
    mov ax, 0x248                    ; 0x1e14
    imul word [bp + 0x4]             ; 0x1e17
    add ax, 0x5bf4                   ; 0x1e1a
    push ax                          ; 0x1e1d
    call ds_string_loc_PTIK          ; 0x1e1e
    add sp, byte 4                   ; 0x1e21
    mov ax, 0                        ; 0x1e24
    push ax                          ; 0x1e27
    mov ax, 0x84                     ; 0x1e28
    push ax                          ; 0x1e2b
    call thunk_3                     ; 0x1e2c
    add sp, byte 4                   ; 0x1e2f
    mov ax, word [bp - 0x000c]       ; 0x1e32
    add ax, strict word 0x26         ; 0x1e35
    push ax                          ; 0x1e38
    mov ax, word [bp - 0x000a]       ; 0x1e39
    add ax, strict word 4            ; 0x1e3c
    push ax                          ; 0x1e3f
    call thunk                       ; 0x1e40
    add sp, byte 4                   ; 0x1e43
    lea ax, word [bp - 0x0038]       ; 0x1e46
    push ax                          ; 0x1e49
    mov ax, 0x248                    ; 0x1e4a
    imul word [bp + 0x4]             ; 0x1e4d
    mov bx, ax                       ; 0x1e50
    mov al, byte [bx + 0x5e2d]       ; 0x1e52
    sub ah, ah                       ; 0x1e56
    add ax, strict word 0x78         ; 0x1e58
    push ax                          ; 0x1e5b
    call ds_app_mem_VKHV             ; 0x1e5c
    add sp, byte 4                   ; 0x1e5f
    mov byte [bp - 0x0031], 0        ; 0x1e62
    mov ax, 0                        ; 0x1e66
    push ax                          ; 0x1e69
    lea ax, word [bp - 0x0038]       ; 0x1e6a
    push ax                          ; 0x1e6d
    call ds_string_loc_PTIK          ; 0x1e6e
    add sp, byte 4                   ; 0x1e71
    mov ax, 0x248                    ; 0x1e74
    imul word [bp + 0x4]             ; 0x1e77
    mov bx, ax                       ; 0x1e7a
    mov al, byte [bx + 0x5e2f]       ; 0x1e7c
    sub ah, ah                       ; 0x1e80
    shl ax, 1                        ; 0x1e82
    mov bx, ax                       ; 0x1e84
    mov ax, word [bx + 0x920]        ; 0x1e86
    mov word [bp - 0x0006], ax       ; 0x1e8a
    cmp ax, strict word 0xffff       ; 0x1e8d
    jne short @..ds_app_PIKI.l1      ; 0x1e90
    mov ax, 0x248                    ; 0x1e92
    imul word [bp + 0x4]             ; 0x1e95
    mov bx, ax                       ; 0x1e98
    cmp byte [bx + 0x5d5c], 0        ; 0x1e9a
    jbe short @..ds_app_PIKI.l1      ; 0x1e9f
    mov ax, 0                        ; 0x1ea1
    jmp short @..ds_app_PIKI.l2      ; 0x1ea4
@..ds_app_PIKI.l1:
    mov ax, word [bp - 0x0006]       ; 0x1ea6
@..ds_app_PIKI.l2:
    mov word [bp - 0x0006], ax       ; 0x1ea9
    cmp ax, strict word 0            ; 0x1eac
    jg short @..ds_app_PIKI.l3       ; 0x1eaf
    mov ax, 0x248                    ; 0x1eb1
    imul word [bp + 0x4]             ; 0x1eb4
    mov bx, ax                       ; 0x1eb7
    cmp byte [bx + 0x5d5d], 0        ; 0x1eb9
    jbe short @..ds_app_PIKI.l3      ; 0x1ebe
    mov ax, 1                        ; 0x1ec0
    jmp short @..ds_app_PIKI.l4      ; 0x1ec3
@..ds_app_PIKI.l3:
    mov ax, word [bp - 0x0006]       ; 0x1ec5
@..ds_app_PIKI.l4:
    mov word [bp - 0x0006], ax       ; 0x1ec8
    cmp ax, strict word 0xffff       ; 0x1ecb
    je short @..ds_app_PIKI.l5       ; 0x1ece
    mov ax, word [bp - 0x000c]       ; 0x1ed0
    add ax, strict word 0x15         ; 0x1ed3
    push ax                          ; 0x1ed6
    mov ax, word [bp - 0x000a]       ; 0x1ed7
    add ax, strict word 0x1c         ; 0x1eda
    push ax                          ; 0x1edd
    call thunk                       ; 0x1ede
    add sp, byte 4                   ; 0x1ee1
    mov ax, 6                        ; 0x1ee4
    push ax                          ; 0x1ee7
    mov al, byte [bp - 0x0006]       ; 0x1ee8
    sub ah, ah                       ; 0x1eeb
    push ax                          ; 0x1eed
    call ds_loc_3a77                 ; 0x1eee
    add sp, byte 4                   ; 0x1ef1
@..ds_app_PIKI.l5:
    mov word [bp - 0x0006], 0xffff   ; 0x1ef4
    mov word [bp - 0x0008], 0xffff   ; 0x1ef9
    mov word [bp - 0x0002], 0        ; 0x1efe
@..ds_app_PIKI.l6:
    mov ax, 0x248                    ; 0x1f03
    imul word [bp + 0x4]             ; 0x1f06
    add ax, word [bp - 0x0002]       ; 0x1f09
    mov bx, ax                       ; 0x1f0c
    cmp byte [bx + 0x5d5a], 0        ; 0x1f0e
    jbe short @..ds_app_PIKI.l7      ; 0x1f13
    mov ax, word [bp - 0x0002]       ; 0x1f15
    shl ax, 1                        ; 0x1f18
    mov bx, ax                       ; 0x1f1a
    mov ax, word [bx + 0x940]        ; 0x1f1c
    cmp ax, word [bp - 0x0008]       ; 0x1f20
    jle short @..ds_app_PIKI.l7      ; 0x1f23
    mov ax, word [bx + 0x92c]        ; 0x1f25
    mov word [bp - 0x0006], ax       ; 0x1f29
    mov ax, word [bx + 0x940]        ; 0x1f2c
    mov word [bp - 0x0008], ax       ; 0x1f30
@..ds_app_PIKI.l7:
    inc word [bp - 0x0002]           ; 0x1f33
    mov ax, word [bp - 0x0002]       ; 0x1f36
    cmp ax, strict word 0xa          ; 0x1f39
    jl short @..ds_app_PIKI.l6       ; 0x1f3c
    cmp word [bp - 0x0006], byte 0xff ; 0x1f3e
    je short @..ds_app_PIKI.l8       ; 0x1f42
    mov ax, word [bp - 0x000c]       ; 0x1f44
    add ax, strict word 0x15         ; 0x1f47
    push ax                          ; 0x1f4a
    mov ax, word [bp - 0x000a]       ; 0x1f4b
    add ax, strict word 0x26         ; 0x1f4e
    push ax                          ; 0x1f51
    call thunk                       ; 0x1f52
    add sp, byte 4                   ; 0x1f55
    mov ax, 6                        ; 0x1f58
    push ax                          ; 0x1f5b
    mov al, byte [bp - 0x0006]       ; 0x1f5c
    sub ah, ah                       ; 0x1f5f
    push ax                          ; 0x1f61
    call ds_loc_3a77                 ; 0x1f62
    add sp, byte 4                   ; 0x1f65
@..ds_app_PIKI.l8:
    mov ax, 0x248                    ; 0x1f68
    imul word [bp + 0x4]             ; 0x1f6b
    mov bx, ax                       ; 0x1f6e
    cmp byte [bx + 0x5e2a], 0x13     ; 0x1f70
    je short @..ds_app_PIKI.l9       ; 0x1f75
    cmp byte [bx + 0x5e2a], 0x19     ; 0x1f77
    jne short @..ds_app_PIKI.l10     ; 0x1f7c
@..ds_app_PIKI.l9:
    mov ax, 0xa                      ; 0x1f7e
    jmp short @..ds_app_PIKI.l11     ; 0x1f81
@..ds_app_PIKI.l10:
    mov al, byte [bx + 0x5e2b]       ; 0x1f83
    sub ah, ah                       ; 0x1f87
    shl ax, 1                        ; 0x1f89
    mov bx, ax                       ; 0x1f8b
    mov ax, word [bx + 0x954]        ; 0x1f8d
@..ds_app_PIKI.l11:
    mov word [bp - 0x003a], ax       ; 0x1f91
    mov word [bp - 0x0002], 0        ; 0x1f94
@..ds_app_PIKI.l12:
    mov ax, word [bp - 0x000c]       ; 0x1f99
    add ax, strict word 7            ; 0x1f9c
    push ax                          ; 0x1f9f
    mov ax, 0xe                      ; 0x1fa0
    imul word [bp - 0x0002]          ; 0x1fa3
    add ax, word [bp - 0x000a]       ; 0x1fa6
    add ax, strict word 0x1e         ; 0x1fa9
    push ax                          ; 0x1fac
    call thunk                       ; 0x1fad
    add sp, byte 4                   ; 0x1fb0
    mov ax, 0x248                    ; 0x1fb3
    imul word [bp + 0x4]             ; 0x1fb6
    add ax, word [bp - 0x0002]       ; 0x1fb9
    mov bx, ax                       ; 0x1fbc
    mov al, byte [bx + 0x5d48]       ; 0x1fbe
    sub ah, ah                       ; 0x1fc2
    mov word [bp - 0x0004], ax       ; 0x1fc4
    cmp ax, 0xff                     ; 0x1fc7
    je short @..ds_app_PIKI.l13      ; 0x1fca
    mov ax, 0x248                    ; 0x1fcc
    imul word [bp + 0x4]             ; 0x1fcf
    push ax                          ; 0x1fd2
    mov ax, 0xc                      ; 0x1fd3
    imul word [bp - 0x0004]          ; 0x1fd6
    mov cx, ax                       ; 0x1fd9
    pop ax                           ; 0x1fdb
    add ax, cx                       ; 0x1fdc
    mov bx, ax                       ; 0x1fde
    cmp word [bx + 0x5c34], byte 0   ; 0x1fe0
    jle short @..ds_app_PIKI.l13     ; 0x1fe5
    mov ax, 4                        ; 0x1fe7
    push ax                          ; 0x1fea
    mov al, byte [bx + 0x5c39]       ; 0x1feb
    sub ah, ah                       ; 0x1fef
    push ax                          ; 0x1ff1
    call ds_loc_3a77                 ; 0x1ff2
    add sp, byte 4                   ; 0x1ff5
    jmp short @..ds_app_PIKI.l14     ; 0x1ff8
@..ds_app_PIKI.l13:
    mov ax, 7                        ; 0x1ffa
    push ax                          ; 0x1ffd
    mov ax, word [bp - 0x003a]       ; 0x1ffe
    add ax, word [bp - 0x0002]       ; 0x2001
    sub ah, ah                       ; 0x2004
    push ax                          ; 0x2006
    call ds_loc_3a77                 ; 0x2007
    add sp, byte 4                   ; 0x200a
@..ds_app_PIKI.l14:
    inc word [bp - 0x0002]           ; 0x200d
    mov ax, word [bp - 0x0002]       ; 0x2010
    cmp ax, strict word 2            ; 0x2013
    jl short @..ds_app_PIKI.l12      ; 0x2016
    mov ax, 0x1b                     ; 0x2018
    push ax                          ; 0x201b
    mov ax, 0x248                    ; 0x201c
    imul word [bp + 0x4]             ; 0x201f
    mov bx, ax                       ; 0x2022
    push word [bx + 0x5c0e]          ; 0x2024
    push word [bx + 0x5c0c]          ; 0x2028
    mov ax, 0x16                     ; 0x202c
    push ax                          ; 0x202f
    mov ax, 3                        ; 0x2030
    push ax                          ; 0x2033
    mov ax, word [bp - 0x000c]       ; 0x2034
    add ax, strict word 0x15         ; 0x2037
    push ax                          ; 0x203a
    mov ax, word [bp - 0x000a]       ; 0x203b
    add ax, strict word 0x30         ; 0x203e
    push ax                          ; 0x2041
    call ds_app_NHUH                 ; 0x2042
    add sp, byte 0x0e                ; 0x2045
    mov ax, 0x56                     ; 0x2048
    push ax                          ; 0x204b
    mov ax, 0x248                    ; 0x204c
    imul word [bp + 0x4]             ; 0x204f
    mov bx, ax                       ; 0x2052
    push word [bx + 0x5c12]          ; 0x2054
    push word [bx + 0x5c10]          ; 0x2058
    mov ax, 0x16                     ; 0x205c
    push ax                          ; 0x205f
    mov ax, 3                        ; 0x2060
    push ax                          ; 0x2063
    mov ax, word [bp - 0x000c]       ; 0x2064
    add ax, strict word 0x15         ; 0x2067
    push ax                          ; 0x206a
    mov ax, word [bp - 0x000a]       ; 0x206b
    add ax, strict word 0x34         ; 0x206e
    push ax                          ; 0x2071
    call ds_app_NHUH                 ; 0x2072
    add sp, byte 0x0e                ; 0x2075
    mov word [bp - 0x000e], 0        ; 0x2078
    mov word [bp - 0x0010], 0        ; 0x207d
    mov word [bp - 0x0002], 0        ; 0x2082
@..ds_app_PIKI.l15:
    mov ax, 0x248                    ; 0x2087
    imul word [bp + 0x4]             ; 0x208a
    mov cx, word [bp - 0x0002]       ; 0x208d
    shl cx, 1                        ; 0x2090
    shl cx, 1                        ; 0x2092
    add ax, cx                       ; 0x2094
    mov bx, ax                       ; 0x2096
    mov ax, word [bx + 0x5c1c]       ; 0x2098
    add word [bp - 0x000e], ax       ; 0x209c
    mov ax, word [bx + 0x5c1e]       ; 0x209f
    add word [bp - 0x0010], ax       ; 0x20a3
    inc word [bp - 0x0002]           ; 0x20a6
    mov ax, word [bp - 0x0002]       ; 0x20a9
    cmp ax, strict word 6            ; 0x20ac
    jl short @..ds_app_PIKI.l15      ; 0x20af
    mov ax, 0x98                     ; 0x20b1
    push ax                          ; 0x20b4
    push word [bp - 0x0010]          ; 0x20b5
    push word [bp - 0x000e]          ; 0x20b8
    mov ax, 0x16                     ; 0x20bb
    push ax                          ; 0x20be
    mov ax, 3                        ; 0x20bf
    push ax                          ; 0x20c2
    mov ax, word [bp - 0x000c]       ; 0x20c3
    add ax, strict word 0x15         ; 0x20c6
    push ax                          ; 0x20c9
    mov ax, word [bp - 0x000a]       ; 0x20ca
    add ax, strict word 0x38         ; 0x20cd
    push ax                          ; 0x20d0
    call ds_app_NHUH                 ; 0x20d1
    add sp, byte 0x0e                ; 0x20d4
    cmp word [bp + 0x6], byte 0      ; 0x20d7
    je short @..ds_app_PIKI.l16      ; 0x20db
    mov ax, word [bp - 0x000c]       ; 0x20dd
    add ax, strict word 0x2b         ; 0x20e0
    push ax                          ; 0x20e3
    mov ax, word [bp - 0x000a]       ; 0x20e4
    add ax, strict word 0x3b         ; 0x20e7
    push ax                          ; 0x20ea
    push word [bp - 0x000c]          ; 0x20eb
    push word [bp - 0x000a]          ; 0x20ee
    call thunk_4                     ; 0x20f1
    add sp, byte 8                   ; 0x20f4
@..ds_app_PIKI.l16:
    ret                              ; 0x20f7
