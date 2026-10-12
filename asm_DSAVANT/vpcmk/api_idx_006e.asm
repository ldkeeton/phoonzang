api_idx_006e:
    mov ax, 0xff92                   ; 0x3d59
    call ds_aztec_csav               ; 0x3d5c
    mov ax, word [bp + 0x6]          ; 0x3d5f
    jmp short @..api_idx_006e.l5     ; 0x3d62
@..api_idx_006e.l1:
    mov word [bp - 0x000c], 8        ; 0x3d64
    mov word [bp - 0x000e], 0x20     ; 0x3d69
    jmp short @..api_idx_006e.l6     ; 0x3d6e
@..api_idx_006e.l2:
    mov word [bp - 0x000c], 4        ; 0x3d70
    mov word [bp - 0x000e], 0x1e     ; 0x3d75
    jmp short @..api_idx_006e.l6     ; 0x3d7a
@..api_idx_006e.l3:
    mov word [bp - 0x000c], 2        ; 0x3d7c
    mov word [bp - 0x000e], 0x1f     ; 0x3d81
    jmp short @..api_idx_006e.l6     ; 0x3d86
@..api_idx_006e.l4:
    mov word [bp - 0x000c], 1        ; 0x3d88
    mov word [bp - 0x000e], 0x1d     ; 0x3d8d
    jmp short @..api_idx_006e.l6     ; 0x3d92
@..api_idx_006e.l5:
    cmp ax, strict word 0            ; 0x3d94
    je short @..api_idx_006e.l1      ; 0x3d97
    cmp ax, strict word 1            ; 0x3d99
    je short @..api_idx_006e.l2      ; 0x3d9c
    cmp ax, strict word 2            ; 0x3d9e
    je short @..api_idx_006e.l4      ; 0x3da1
    cmp ax, strict word 3            ; 0x3da3
    je short @..api_idx_006e.l3      ; 0x3da6
@..api_idx_006e.l6:
    mov ax, 0x10                     ; 0x3da8
    push ax                          ; 0x3dab
    lea ax, word [bp - 0x001e]       ; 0x3dac
    push ax                          ; 0x3daf
    mov ax, 0x248                    ; 0x3db0
    imul word [bp + 0x4]             ; 0x3db3
    add ax, 0x5e12                   ; 0x3db6
    push ax                          ; 0x3db9
    call ds_aztec_movmem             ; 0x3dba
    add sp, byte 6                   ; 0x3dbd
    mov ax, 0                        ; 0x3dc0
    push ax                          ; 0x3dc3
    mov ax, 0x10                     ; 0x3dc4
    push ax                          ; 0x3dc7
    mov ax, 0x248                    ; 0x3dc8
    imul word [bp + 0x4]             ; 0x3dcb
    add ax, 0x5e12                   ; 0x3dce
    push ax                          ; 0x3dd1
    call ds_aztec_setmem             ; 0x3dd2
    add sp, byte 6                   ; 0x3dd5
    mov word [bp - 0x000a], 1        ; 0x3dd8
    mov word [bp - 0x0004], 0        ; 0x3ddd
    mov word [bp - 0x0002], 0        ; 0x3de2
@..api_idx_006e.l7:
    mov ax, 6                        ; 0x3de7
    imul word [bp - 0x0002]          ; 0x3dea
    mov bx, ax                       ; 0x3ded
    mov al, byte [bx + 0x625]        ; 0x3def
    sub ah, ah                       ; 0x3df3
    test word [bp - 0x000c], ax      ; 0x3df5
    je short @..api_idx_006e.l8      ; 0x3df8
    mov al, byte [bx + 0x621]        ; 0x3dfa
    sub ah, ah                       ; 0x3dfe
    cmp ax, word [bp - 0x000a]       ; 0x3e00
    jg short @..api_idx_006e.l8      ; 0x3e03
    push word [bp - 0x0002]          ; 0x3e05
    lea ax, word [bp - 0x001e]       ; 0x3e08
    push ax                          ; 0x3e0b
    call ds_leaf_loc_3ebb            ; 0x3e0c
    add sp, byte 4                   ; 0x3e0f
    test ax, ax                      ; 0x3e12
    jne short @..api_idx_006e.l8     ; 0x3e14
    mov ax, 1                        ; 0x3e16
    push ax                          ; 0x3e19
    push word [bp - 0x0002]          ; 0x3e1a
    mov ax, 0x248                    ; 0x3e1d
    imul word [bp + 0x4]             ; 0x3e20
    add ax, 0x5e12                   ; 0x3e23
    push ax                          ; 0x3e26
    call ds_leaf_loc_3e88            ; 0x3e27
    add sp, byte 6                   ; 0x3e2a
    inc word [bp - 0x0004]           ; 0x3e2d
@..api_idx_006e.l8:
    inc word [bp - 0x0002]           ; 0x3e30
    mov ax, word [bp - 0x0002]       ; 0x3e33
    cmp ax, strict word 0x66         ; 0x3e36
    jl short @..api_idx_006e.l7      ; 0x3e39
    cmp word [bp - 0x0004], byte 0   ; 0x3e3b
    jne short @..api_idx_006e.l9     ; 0x3e3f
    mov ax, 0x10                     ; 0x3e41
    push ax                          ; 0x3e44
    mov ax, 0x248                    ; 0x3e45
    imul word [bp + 0x4]             ; 0x3e48
    add ax, 0x5e12                   ; 0x3e4b
    push ax                          ; 0x3e4e
    lea ax, word [bp - 0x001e]       ; 0x3e4f
    push ax                          ; 0x3e52
    call ds_aztec_movmem             ; 0x3e53
    add sp, byte 6                   ; 0x3e56
    ret                              ; 0x3e59
@..api_idx_006e.l9:
    lea ax, word [bp - 0x006e]       ; 0x3e5a
    push ax                          ; 0x3e5d
    mov ax, 0x2bf                    ; 0x3e5e
    push ax                          ; 0x3e61
    call ds_app_mem_0782             ; 0x3e62
    add sp, byte 4                   ; 0x3e65
    mov ax, 1                        ; 0x3e68
    push ax                          ; 0x3e6b
    lea ax, word [bp - 0x006e]       ; 0x3e6c
    push ax                          ; 0x3e6f
    call api_idx_0004_2              ; 0x3e70
    add sp, byte 4                   ; 0x3e73
    mov ax, 0                        ; 0x3e76
    push ax                          ; 0x3e79
    mov ax, 1                        ; 0x3e7a
    push ax                          ; 0x3e7d
    mov ax, 0x7ec                    ; 0x3e7e
    push ax                          ; 0x3e81
    push word [bp + 0x4]             ; 0x3e82
    call api_idx_0050                ; 0x3e85
    add sp, byte 8                   ; 0x3e88
    mov word [bp - 0x0004], ax       ; 0x3e8b
    mov ax, 0x10                     ; 0x3e8e
    push ax                          ; 0x3e91
    mov ax, 0x248                    ; 0x3e92
    imul word [bp + 0x4]             ; 0x3e95
    add ax, 0x5e12                   ; 0x3e98
    push ax                          ; 0x3e9b
    lea ax, word [bp - 0x001e]       ; 0x3e9c
    push ax                          ; 0x3e9f
    call ds_aztec_movmem             ; 0x3ea0
    add sp, byte 6                   ; 0x3ea3
    cmp word [bp - 0x0004], byte 0   ; 0x3ea6
    je short @..api_idx_006e.l10     ; 0x3eaa
    jmp near @..api_idx_006e.l12     ; 0x3eac
@..api_idx_006e.l10:
    mov ax, word [bss_904e]          ; 0x3eaf
    mov cx, 0x100                    ; 0x3eb2
    cwd                              ; 0x3eb5
    idiv cx                          ; 0x3eb6
    mov word [bp - 0x0008], ax       ; 0x3eb8
    mov word [bp - 0x0006], dx       ; 0x3ebb
    mov ax, 1                        ; 0x3ebe
    push ax                          ; 0x3ec1
    push dx                          ; 0x3ec2
    mov ax, 0x248                    ; 0x3ec3
    imul word [bp + 0x4]             ; 0x3ec6
    add ax, 0x5e12                   ; 0x3ec9
    push ax                          ; 0x3ecc
    call ds_leaf_loc_3e88            ; 0x3ecd
    add sp, byte 6                   ; 0x3ed0
    mov ax, 6                        ; 0x3ed3
    imul word [bp - 0x0006]          ; 0x3ed6
    mov bx, ax                       ; 0x3ed9
    mov al, byte [bx + 0x621]        ; 0x3edb
    sub ah, ah                       ; 0x3edf
    push ax                          ; 0x3ee1
    mov ax, 0x248                    ; 0x3ee2
    imul word [bp + 0x4]             ; 0x3ee5
    mov bx, ax                       ; 0x3ee8
    mov al, byte [bx + 0x5d66]       ; 0x3eea
    sub ah, ah                       ; 0x3eee
    mov cx, 6                        ; 0x3ef0
    cwd                              ; 0x3ef3
    idiv cx                          ; 0x3ef4
    mov cx, ax                       ; 0x3ef6
    pop ax                           ; 0x3ef8
    imul cx                          ; 0x3ef9
    inc ax                           ; 0x3efb
    mov word [bp - 0x0002], ax       ; 0x3efc
    mov ax, 6                        ; 0x3eff
    imul word [bp - 0x0006]          ; 0x3f02
    mov bx, ax                       ; 0x3f05
    mov al, byte [bx + 0x620]        ; 0x3f07
    sub ah, ah                       ; 0x3f0b
    mov word [bp - 0x0004], ax       ; 0x3f0d
    mov ax, 0x248                    ; 0x3f10
    imul word [bp + 0x4]             ; 0x3f13
    mov cx, word [bp - 0x0004]       ; 0x3f16
    shl cx, 1                        ; 0x3f19
    shl cx, 1                        ; 0x3f1b
    add ax, cx                       ; 0x3f1d
    mov bx, ax                       ; 0x3f1f
    mov ax, word [bx + 0x5c1e]       ; 0x3f21
    add ax, word [bp - 0x0002]       ; 0x3f25
    push ax                          ; 0x3f28
    mov ax, 6                        ; 0x3f29
    imul word [bp - 0x0006]          ; 0x3f2c
    mov bx, ax                       ; 0x3f2f
    mov al, byte [bx + 0x622]        ; 0x3f31
    sub ah, ah                       ; 0x3f35
    mov cx, ax                       ; 0x3f37
    pop ax                           ; 0x3f39
    cmp ax, cx                       ; 0x3f3a
    jge short @..api_idx_006e.l11    ; 0x3f3c
    mov ax, 0x248                    ; 0x3f3e
    imul word [bp + 0x4]             ; 0x3f41
    mov dx, word [bp - 0x0004]       ; 0x3f44
    shl dx, 1                        ; 0x3f47
    shl dx, 1                        ; 0x3f49
    add ax, dx                       ; 0x3f4b
    mov bx, ax                       ; 0x3f4d
    sub cx, word [bx + 0x5c1e]       ; 0x3f4f
    mov word [bp - 0x0002], cx       ; 0x3f53
@..api_idx_006e.l11:
    mov ax, word [bp - 0x0002]       ; 0x3f56
    push ax                          ; 0x3f59
    mov ax, 0x248                    ; 0x3f5a
    imul word [bp + 0x4]             ; 0x3f5d
    mov cx, ax                       ; 0x3f60
    mov dx, word [bp - 0x0004]       ; 0x3f62
    shl dx, 1                        ; 0x3f65
    shl dx, 1                        ; 0x3f67
    add ax, dx                       ; 0x3f69
    mov bx, ax                       ; 0x3f6b
    pop ax                           ; 0x3f6d
    add word [bx + 0x5c1e], ax       ; 0x3f6e
    add word [bx + 0x5c1c], ax       ; 0x3f72
    add cx, word [bp + 0x6]          ; 0x3f76
    mov bx, cx                       ; 0x3f79
    dec byte [bx + 0x5d50]           ; 0x3f7b
    push word [bp + 0x4]             ; 0x3f7f
    call api_idx_0004                ; 0x3f82
    pop cx                           ; 0x3f85
@..api_idx_006e.l12:
    ret                              ; 0x3f86
loc_3f87:
    mov ax, 0                        ; 0x3f87
    call ds_aztec_csav               ; 0x3f8a
    les bx, word [dseg_0002]         ; 0x3f8d
    mov ax, word [es:bx]             ; 0x3f91
    mov dx, word [es:bx + 0x2]       ; 0x3f94
    mov word [bss_9090], dx          ; 0x3f98
    mov word [bss_908e], ax          ; 0x3f9c
    mov ax, word [bss_908e]          ; 0x3f9f
    mov dx, word [bss_9090]          ; 0x3fa2
    sub ax, word [bss_908a]          ; 0x3fa6
    sbb dx, word [bss_908c]          ; 0x3faa
    mov word [bss_9094], dx          ; 0x3fae
    mov word [bss_9092], ax          ; 0x3fb2
    mov ax, word [bss_976c]          ; 0x3fb5
    cwd                              ; 0x3fb8
    mov cx, ax                       ; 0x3fb9
    mov bx, dx                       ; 0x3fbb
    mov ax, word [bss_9092]          ; 0x3fbd
    mov dx, word [bss_9094]          ; 0x3fc0
    cmp bx, dx                       ; 0x3fc4
    jg short @..local.l35            ; 0x3fc6
    jne short @..local.l36           ; 0x3fc8
    cmp cx, ax                       ; 0x3fca
    jbe short @..local.l36           ; 0x3fcc
@..local.l35:
    jmp short @..local.l37           ; 0x3fce
@..local.l36:
    mov ax, word [bss_908e]          ; 0x3fd0
    mov dx, word [bss_9090]          ; 0x3fd3
    mov word [bss_908c], dx          ; 0x3fd7
    mov word [bss_908a], ax          ; 0x3fdb
    mov ax, word [bss_95ae]          ; 0x3fde
    inc ax                           ; 0x3fe1
    mov cx, 3                        ; 0x3fe2
    cwd                              ; 0x3fe5
    idiv cx                          ; 0x3fe6
    mov word [bss_95ae], dx          ; 0x3fe8
    push dx                          ; 0x3fec
    call api_idx_000a                ; 0x3fed
    pop cx                           ; 0x3ff0
    mov ax, 0x41                     ; 0x3ff1
    push ax                          ; 0x3ff4
    mov ax, 0x65                     ; 0x3ff5
    push ax                          ; 0x3ff8
    mov ax, 0x19                     ; 0x3ff9
    push ax                          ; 0x3ffc
    mov ax, 0x5a                     ; 0x3ffd
    push ax                          ; 0x4000
    call ds_loc_3b21                 ; 0x4001
    add sp, byte 8                   ; 0x4004
    mov ax, 0xffff                   ; 0x4007
    push ax                          ; 0x400a
    call api_idx_0002_3              ; 0x400b
    pop cx                           ; 0x400e
    push word [bp + 0x4]             ; 0x400f
    call api_idx_0004                ; 0x4012
    pop cx                           ; 0x4015
    mov ax, 0xbf                     ; 0x4016
    push ax                          ; 0x4019
    mov ax, 0x13f                    ; 0x401a
    push ax                          ; 0x401d
    mov ax, 0x7e                     ; 0x401e
    push ax                          ; 0x4021
    mov ax, 0xb8                     ; 0x4022
    push ax                          ; 0x4025
    call ds_loc_3b21                 ; 0x4026
    add sp, byte 8                   ; 0x4029
@..local.l37:
    ret                              ; 0x402c
