api_idx_009e_2:
    mov ax, 0xff62                   ; 0x3cfe
    call ds_dispatch_f40b            ; 0x3d01
    mov ax, 0                        ; 0x3d04
    push ax                          ; 0x3d07
    mov bx, word [bp + 0x6]          ; 0x3d08
    push word [bx]                   ; 0x3d0b
    lea ax, word [bp - 0x004a]       ; 0x3d0d
    push ax                          ; 0x3d10
    mov ax, 1                        ; 0x3d11
    push ax                          ; 0x3d14
    call ds_dispatch_b63c            ; 0x3d15
    add sp, byte 8                   ; 0x3d18
    cmp byte [bp - 0x000b], 0        ; 0x3d1b
    ja short @..api_idx_009e_2.l1    ; 0x3d1f
    jmp near @..api_idx_009e_2.l4    ; 0x3d21
@..api_idx_009e_2.l1:
    mov al, byte [bp - 0x000b]       ; 0x3d24
    sub ah, ah                       ; 0x3d27
    jmp near @..api_idx_009e_2.l2    ; 0x3d29
    call api_idx_0012_3              ; 0x3d2c
    mov word [data_8aee], ax         ; 0x3d2f
    cmp ax, strict word 0xffff       ; 0x3d32
    je short loc_3d69                ; 0x3d35
    mov ax, 0x248                    ; 0x3d37
    imul word [bp + 0x4]             ; 0x3d3a
    push ax                          ; 0x3d3d
    mov ax, 0x78                     ; 0x3d3e
    imul word [0x9434]               ; 0x3d41
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x3d47
    db 0x03, 0xc1 ; add ax, cx
    push ax                          ; 0x3d4a
    mov ax, 0xc                      ; 0x3d4b
    imul word [data_8aee]            ; 0x3d4e
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x3d54
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx + 0x5c34], strict word 0x1d7 ; 0x3d59
    jne short loc_3d69               ; 0x3d5f
    mov ax, 0x4c18                   ; 0x3d61
    push ax                          ; 0x3d64
    call api_idx_0056                ; 0x3d65
    pop cx                           ; 0x3d68
    jmp near @..api_idx_009e_2.l3    ; 0x3d69
    push word [bp - 0x0024]          ; 0x3d6c
    call api_idx_0056                ; 0x3d6f
    pop cx                           ; 0x3d72
    jmp near @..api_idx_009e_2.l3    ; 0x3d73
    mov ax, 0x248                    ; 0x3d76
    imul word [bp + 0x4]             ; 0x3d79
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5e2d]       ; 0x3d7e
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x3d84
    lea ax, word [bp - 0x0018]       ; 0x3d85
    push ax                          ; 0x3d88
    db 0xe8, 0xe8, 0xae ; call ds_dispatch_ec74
    add sp, byte 4                   ; 0x3d8c
    test ax, ax                      ; 0x3d8f
    jne short loc_3d96               ; 0x3d91
    jmp near loc_3e21                ; 0x3d93
    mov ax, word [bp - 0x0028]       ; 0x3d96
    mov cx, 0x100                    ; 0x3d99
    cwd                              ; 0x3d9c
    idiv cx                          ; 0x3d9d
    mov word [bp - 0x004c], dx       ; 0x3d9f
    mov ax, 6                        ; 0x3da2
    imul dx                          ; 0x3da5
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x621]        ; 0x3da9
    db 0x2a, 0xe4 ; sub ah, ah
    shl ax, 1                        ; 0x3daf
    push ax                          ; 0x3db1
    mov ax, 0x248                    ; 0x3db2
    imul word [bp + 0x4]             ; 0x3db5
    db 0x8b, 0xd8 ; mov bx, ax
    mov cx, word [bx + 0x5c18]       ; 0x3dba
    pop ax                           ; 0x3dbe
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_3de3               ; 0x3dc1
    lea ax, word [bp - 0x009e]       ; 0x3dc3
    push ax                          ; 0x3dc7
    mov ax, 0x2d1                    ; 0x3dc8
    push ax                          ; 0x3dcb
    db 0xe8, 0x6c, 0x77 ; call ds_dispatch_b53b
    add sp, byte 4                   ; 0x3dcf
    mov ax, 1                        ; 0x3dd2
    push ax                          ; 0x3dd5
    lea ax, word [bp - 0x009e]       ; 0x3dd6
    push ax                          ; 0x3dda
    call api_idx_0004                ; 0x3ddb
    add sp, byte 4                   ; 0x3dde
    jmp short loc_3e1f               ; 0x3de1
    mov ax, 1                        ; 0x3de3
    push ax                          ; 0x3de6
    push word [bp - 0x004c]          ; 0x3de7
    mov ax, 0x248                    ; 0x3dea
    imul word [bp + 0x4]             ; 0x3ded
    add ax, 0x5e12                   ; 0x3df0
    push ax                          ; 0x3df3
    db 0xe8, 0x4a, 0xae ; call ds_dispatch_ec41
    add sp, byte 6                   ; 0x3df7
    lea ax, word [bp - 0x009e]       ; 0x3dfa
    push ax                          ; 0x3dfe
    mov ax, 0x2d0                    ; 0x3dff
    push ax                          ; 0x3e02
    db 0xe8, 0x35, 0x77 ; call ds_dispatch_b53b
    add sp, byte 4                   ; 0x3e06
    mov ax, 1                        ; 0x3e09
    push ax                          ; 0x3e0c
    lea ax, word [bp - 0x009e]       ; 0x3e0d
    push ax                          ; 0x3e11
    call api_idx_0004                ; 0x3e12
    add sp, byte 4                   ; 0x3e15
    mov bx, word [bp + 0x6]          ; 0x3e18
    mov word [bx], 0                 ; 0x3e1b
    jmp short loc_3e3f               ; 0x3e1f
    lea ax, word [bp - 0x009e]       ; 0x3e21
    push ax                          ; 0x3e25
    mov ax, 0x2d2                    ; 0x3e26
    push ax                          ; 0x3e29
    db 0xe8, 0x0e, 0x77 ; call ds_dispatch_b53b
    add sp, byte 4                   ; 0x3e2d
    mov ax, 1                        ; 0x3e30
    push ax                          ; 0x3e33
    lea ax, word [bp - 0x009e]       ; 0x3e34
    push ax                          ; 0x3e38
    call api_idx_0004                ; 0x3e39
    add sp, byte 4                   ; 0x3e3c
    jmp near @..api_idx_009e_2.l3    ; 0x3e3f
    mov ax, word [data_830c]         ; 0x3e42
    cmp ax, word [bp - 0x002c]       ; 0x3e45
    jne short loc_3ec1               ; 0x3e48
    mov ax, 0                        ; 0x3e4a
    push ax                          ; 0x3e4d
    mov al, byte [bp - 0x002a]       ; 0x3e4e
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x3e53
    mov ax, word [bp - 0x002c]       ; 0x3e54
    mov cx, 4                        ; 0x3e57
    shl ax, cl                       ; 0x3e5a
    add ax, 0x8d14                   ; 0x3e5c
    push ax                          ; 0x3e5f
    db 0xe8, 0xde, 0xad ; call ds_dispatch_ec41
    add sp, byte 6                   ; 0x3e63
    mov ax, 0                        ; 0x3e66
    push ax                          ; 0x3e69
    mov al, byte [bp - 0x002a]       ; 0x3e6a
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x3e6f
    mov ax, word [bp - 0x002c]       ; 0x3e70
    mov cx, 4                        ; 0x3e73
    shl ax, cl                       ; 0x3e76
    add ax, 0x5642                   ; 0x3e78
    push ax                          ; 0x3e7b
    db 0xe8, 0xc2, 0xad ; call ds_dispatch_ec41
    add sp, byte 6                   ; 0x3e7f
    mov ax, 1                        ; 0x3e82
    push ax                          ; 0x3e85
    mov al, byte [bp - 0x0029]       ; 0x3e86
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x3e8b
    mov ax, word [bp - 0x002c]       ; 0x3e8c
    mov cx, 4                        ; 0x3e8f
    shl ax, cl                       ; 0x3e92
    add ax, 0x8d14                   ; 0x3e94
    push ax                          ; 0x3e97
    db 0xe8, 0xa6, 0xad ; call ds_dispatch_ec41
    add sp, byte 6                   ; 0x3e9b
    mov ax, 1                        ; 0x3e9e
    push ax                          ; 0x3ea1
    mov al, byte [bp - 0x0029]       ; 0x3ea2
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x3ea7
    mov ax, word [bp - 0x002c]       ; 0x3ea8
    mov cx, 4                        ; 0x3eab
    shl ax, cl                       ; 0x3eae
    add ax, 0x5642                   ; 0x3eb0
    push ax                          ; 0x3eb3
    db 0xe8, 0x8a, 0xad ; call ds_dispatch_ec41
    add sp, byte 6                   ; 0x3eb7
    push word [bp + 0x6]             ; 0x3eba
    call loc_3cde                    ; 0x3ebd
    pop cx                           ; 0x3ec0
    jmp near @..api_idx_009e_2.l3    ; 0x3ec1
    mov ax, 0x248                    ; 0x3ec4
    imul word [bp + 0x4]             ; 0x3ec7
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e32], 3        ; 0x3ecc
    jae short loc_3ed8               ; 0x3ed1
    mov byte [bx + 0x5e32], 3        ; 0x3ed3
    mov ax, 0xfa                     ; 0x3ed8
    push ax                          ; 0x3edb
    mov ax, 0                        ; 0x3edc
    push ax                          ; 0x3edf
    mov al, byte [bx + 0x5d5f]       ; 0x3ee0
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, 0xc8                     ; 0x3ee6
    push ax                          ; 0x3ee9
    db 0xe8, 0xd5, 0x78 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x3eed
    push ax                          ; 0x3ef0
    mov ax, 0x248                    ; 0x3ef1
    imul word [bp + 0x4]             ; 0x3ef4
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x3ef9
    mov byte [bx + 0x5d5f], al       ; 0x3efa
    mov ax, 0xfa                     ; 0x3efe
    push ax                          ; 0x3f01
    mov ax, 0                        ; 0x3f02
    push ax                          ; 0x3f05
    mov al, byte [bx + 0x5d62]       ; 0x3f06
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, 0xc8                     ; 0x3f0c
    push ax                          ; 0x3f0f
    db 0xe8, 0xaf, 0x78 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x3f13
    push ax                          ; 0x3f16
    mov ax, 0x248                    ; 0x3f17
    imul word [bp + 0x4]             ; 0x3f1a
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x3f1f
    mov byte [bx + 0x5d62], al       ; 0x3f20
    push word [bp + 0x6]             ; 0x3f24
    call loc_3cde                    ; 0x3f27
    pop cx                           ; 0x3f2a
    mov ax, 0x248                    ; 0x3f2b
    imul word [bp + 0x4]             ; 0x3f2e
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5e2c]       ; 0x3f33
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 8            ; 0x3f39
    push ax                          ; 0x3f3c
    db 0xe8, 0xa0, 0x78 ; call ds_dispatch_b7e0
    pop cx                           ; 0x3f40
    jmp near @..api_idx_009e_2.l3    ; 0x3f41
    mov word [bp - 0x0002], 0        ; 0x3f44
    mov ax, 0x248                    ; 0x3f49
    imul word [bp + 0x4]             ; 0x3f4c
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d6b], 0        ; 0x3f51
    jbe short loc_3f6f               ; 0x3f56
    cmp word [bp - 0x0002], byte 0   ; 0x3f58
    jne short loc_3f6f               ; 0x3f5c
    dec byte [bx + 0x5d6b]           ; 0x3f5e
    mov ax, 3                        ; 0x3f62
    push ax                          ; 0x3f65
    db 0xe8, 0x40, 0x78 ; call ds_dispatch_b7a9
    pop cx                           ; 0x3f69
    mov word [bp - 0x0002], ax       ; 0x3f6a
    jmp short loc_3f49               ; 0x3f6d
    push word [bp + 0x6]             ; 0x3f6f
    call loc_3cde                    ; 0x3f72
    pop cx                           ; 0x3f75
    jmp short @..api_idx_009e_2.l3   ; 0x3f76
    mov ax, 4                        ; 0x3f78
    push ax                          ; 0x3f7b
    mov ax, 3                        ; 0x3f7c
    push ax                          ; 0x3f7f
    mov ax, 0x14                     ; 0x3f80
    push ax                          ; 0x3f83
    push word [bp + 0x4]             ; 0x3f84
    call api_idx_0002_7              ; 0x3f87
    add sp, byte 8                   ; 0x3f8a
    push word [bp + 0x6]             ; 0x3f8d
    call loc_3cde                    ; 0x3f90
    pop cx                           ; 0x3f93
    jmp short @..api_idx_009e_2.l3   ; 0x3f94
    add dl, byte [bx + si - 0x728d]  ; 0x3f96
    mov bl, 0x8d                     ; 0x3f9a
    mov bp, 0x898d                   ; 0x3f9c
    mov es, word [bp + si]           ; 0x3f9f
    nop                              ; 0x3fa1
    or cx, word [bx - 0x6ffe]        ; 0x3fa2
    add dl, byte [bx + si - 0x6ffe]  ; 0x3fa6
    mov cx, word [bx - 0x7041]       ; 0x3faa
@..api_idx_009e_2.l2:
    cmp ax, strict word 0xc          ; 0x3fae
    jae short @..api_idx_009e_2.l3   ; 0x3fb1
    xchg bx, ax                      ; 0x3fb3
    shl bx, 1                        ; 0x3fb4
    jmp [cs:bx - 0x7023]             ; 0x3fb6
@..api_idx_009e_2.l3:
    jmp short @..api_idx_009e_2.l7   ; 0x3fbb
@..api_idx_009e_2.l4:
    cmp word [bp - 0x0028], byte 0   ; 0x3fbd
    je short @..api_idx_009e_2.l6    ; 0x3fc1
    mov ax, word [bp - 0x0028]       ; 0x3fc3
    mov cx, 0x100                    ; 0x3fc6
    cwd                              ; 0x3fc9
    idiv cx                          ; 0x3fca
    mov word [bp - 0x004e], ax       ; 0x3fcc
    mov word [bp - 0x004c], dx       ; 0x3fcf
    mov ax, 6                        ; 0x3fd2
    imul dx                          ; 0x3fd5
    mov bx, ax                       ; 0x3fd7
    cmp byte [bx + 0x624], 1         ; 0x3fd9
    jne short @..api_idx_009e_2.l5   ; 0x3fde
    call api_idx_0012_2              ; 0x3fe0
    mov word [dseg_9564], ax         ; 0x3fe3
    cmp ax, strict word 0xffff       ; 0x3fe6
    jne short @..api_idx_009e_2.l5   ; 0x3fe9
    ret                              ; 0x3feb
@..api_idx_009e_2.l5:
    push word [dseg_9564]            ; 0x3fec
    push word [bp - 0x004e]          ; 0x3ff0
    push word [bp - 0x004c]          ; 0x3ff3
    push word [bp + 0x4]             ; 0x3ff6
    call api_idx_0008_2              ; 0x3ff9
    add sp, byte 8                   ; 0x3ffc
    push word [bp + 0x6]             ; 0x3fff
    call loc_3cde                    ; 0x4002
    pop cx                           ; 0x4005
    jmp short @..api_idx_009e_2.l7   ; 0x4006
@..api_idx_009e_2.l6:
    mov ax, 0                        ; 0x4008
    push ax                          ; 0x400b
    call ds_dispatch_b7e0            ; 0x400c
    pop cx                           ; 0x400f
@..api_idx_009e_2.l7:
    ret                              ; 0x4010
loc_4011:
    mov ax, 0                        ; 0x4011
    call ds_dispatch_f40b            ; 0x4014
    les bx, word [dseg_0002]         ; 0x4017
    mov ax, word [es:bx]             ; 0x401b
    mov dx, word [es:bx + 0x2]       ; 0x401e
    mov word [dseg_9090], dx         ; 0x4022
    mov word [dseg_908e], ax         ; 0x4026
    mov ax, word [dseg_908e]         ; 0x4029
    mov dx, word [dseg_9090]         ; 0x402c
    sub ax, word [dseg_908a]         ; 0x4030
    sbb dx, word [dseg_908c]         ; 0x4034
    mov word [dseg_9094], dx         ; 0x4038
    mov word [dseg_9092], ax         ; 0x403c
    mov ax, word [dseg_9562]         ; 0x403f
    cwd                              ; 0x4042
    mov cx, ax                       ; 0x4043
    mov bx, dx                       ; 0x4045
    mov ax, word [dseg_9092]         ; 0x4047
    mov dx, word [dseg_9094]         ; 0x404a
    cmp bx, dx                       ; 0x404e
    jg short @..local.l44            ; 0x4050
    jne short @..local.l45           ; 0x4052
    cmp cx, ax                       ; 0x4054
    jbe short @..local.l45           ; 0x4056
@..local.l44:
    jmp short @..local.l46           ; 0x4058
@..local.l45:
    mov ax, word [dseg_908e]         ; 0x405a
    mov dx, word [dseg_9090]         ; 0x405d
    mov word [dseg_908c], dx         ; 0x4061
    mov word [dseg_908a], ax         ; 0x4065
    mov ax, word [dseg_9432]         ; 0x4068
    inc ax                           ; 0x406b
    mov cx, 3                        ; 0x406c
    cwd                              ; 0x406f
    idiv cx                          ; 0x4070
    mov word [dseg_9432], dx         ; 0x4072
    push dx                          ; 0x4076
    call api_idx_000a                ; 0x4077
    pop cx                           ; 0x407a
    mov ax, 0x41                     ; 0x407b
    push ax                          ; 0x407e
    mov ax, 0x65                     ; 0x407f
    push ax                          ; 0x4082
    mov ax, 0x19                     ; 0x4083
    push ax                          ; 0x4086
    mov ax, 0x5a                     ; 0x4087
    push ax                          ; 0x408a
    call ds_dispatch_e8da            ; 0x408b
    add sp, byte 8                   ; 0x408e
    mov ax, 0xffff                   ; 0x4091
    push ax                          ; 0x4094
    call api_idx_0002_2              ; 0x4095
    pop cx                           ; 0x4098
    push word [bp + 0x4]             ; 0x4099
    call api_idx_0004_3              ; 0x409c
    pop cx                           ; 0x409f
    mov ax, 0xbf                     ; 0x40a0
    push ax                          ; 0x40a3
    mov ax, 0x13f                    ; 0x40a4
    push ax                          ; 0x40a7
    mov ax, 0x7e                     ; 0x40a8
    push ax                          ; 0x40ab
    mov ax, 0xb8                     ; 0x40ac
    push ax                          ; 0x40af
    call ds_dispatch_e8da            ; 0x40b0
    add sp, byte 8                   ; 0x40b3
@..local.l46:
    ret                              ; 0x40b6
loc_40b7:
    mov ax, 0                        ; 0x40b7
    call ds_dispatch_f40b            ; 0x40ba
    push word [bp + 0x4]             ; 0x40bd
    call api_idx_007c                ; 0x40c0
    pop cx                           ; 0x40c3
    push word [bp + 0x4]             ; 0x40c4
    call api_idx_0080                ; 0x40c7
    pop cx                           ; 0x40ca
    cmp word [bp + 0x6], byte 0      ; 0x40cb
    jne short @..local.l47           ; 0x40cf
    push word [bp + 0x4]             ; 0x40d1
    call api_idx_004c                ; 0x40d4
    pop cx                           ; 0x40d7
    call api_idx_0004_2              ; 0x40d8
    mov ax, 0xc7                     ; 0x40db
    push ax                          ; 0x40de
    mov ax, 0x13f                    ; 0x40df
    push ax                          ; 0x40e2
    mov ax, 0                        ; 0x40e3
    push ax                          ; 0x40e6
    push ax                          ; 0x40e7
    call ds_dispatch_e8da            ; 0x40e8
    add sp, byte 8                   ; 0x40eb
@..local.l47:
    ret                              ; 0x40ee
