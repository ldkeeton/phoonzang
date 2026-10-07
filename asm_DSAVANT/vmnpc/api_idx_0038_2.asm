api_idx_0038_2:
    mov ax, 0xffc8                   ; 0x3e3a
    db 0xe8, 0xcb, 0xb5 ; call 0xf40b
    mov word [data_904e], 0xffff     ; 0x3e40
    mov word [bp - 0x0004], 0x37     ; 0x3e46
    mov word [bp - 0x0006], 0x8f     ; 0x3e4b
    mov word [bp - 0x0008], 0x108    ; 0x3e50
    mov word [bp - 0x000a], 0xc5     ; 0x3e55
    mov word [bp - 0x0012], 0x16     ; 0x3e5a
    mov ax, 3                        ; 0x3e5f
    cmp word [bp + 0xc], byte 3      ; 0x3e62
    jge short @..api_idx_0038_2.l1   ; 0x3e66
    mov ax, word [bp + 0xc]          ; 0x3e68
@..api_idx_0038_2.l1:
    mov word [bp - 0x0022], ax       ; 0x3e6b
    mov ax, 0x90d0                   ; 0x3e6e
    push ax                          ; 0x3e71
    mov ax, word [bp - 0x000a]       ; 0x3e72
    inc ax                           ; 0x3e75
    push ax                          ; 0x3e76
    mov ax, word [bp - 0x0008]       ; 0x3e77
    inc ax                           ; 0x3e7a
    push ax                          ; 0x3e7b
    mov ax, word [bp - 0x0006]       ; 0x3e7c
    dec ax                           ; 0x3e7f
    push ax                          ; 0x3e80
    mov ax, word [bp - 0x0004]       ; 0x3e81
    dec ax                           ; 0x3e84
    push ax                          ; 0x3e85
    db 0xe8, 0xfa, 0x83 ; call 0xc283
    add sp, byte 0x0a                ; 0x3e89
    mov word [bp - 0x0038], ax       ; 0x3e8c
    push word [bp - 0x000a]          ; 0x3e8f
    push word [bp - 0x0008]          ; 0x3e92
    push word [bp - 0x0006]          ; 0x3e95
    push word [bp - 0x0004]          ; 0x3e98
    db 0xe8, 0xfc, 0x7d ; call 0xbc9a
    add sp, byte 8                   ; 0x3e9e
    cmp word [bp + 0x6], byte 0      ; 0x3ea1
    je short @..api_idx_0038_2.l2    ; 0x3ea5
    lea ax, word [bp - 0x0036]       ; 0x3ea7
    push ax                          ; 0x3eaa
    push word [bp + 0x4]             ; 0x3eab
    db 0xe8, 0x8a, 0x76 ; call 0xb53b
    add sp, byte 4                   ; 0x3eb1
    jmp short @..api_idx_0038_2.l3   ; 0x3eb4
@..api_idx_0038_2.l2:
    push word [bp + 0xe]             ; 0x3eb6
    lea ax, word [bp - 0x0036]       ; 0x3eb9
    push ax                          ; 0x3ebc
    db 0xe8, 0xa4, 0xb4 ; call 0xf364
    add sp, byte 4                   ; 0x3ec0
@..api_idx_0038_2.l3:
    lea ax, word [bp - 0x0036]       ; 0x3ec3
    push ax                          ; 0x3ec6
    push word [bp + 0x6]             ; 0x3ec7
    mov ax, 1                        ; 0x3eca
    push ax                          ; 0x3ecd
    mov ax, 0xc                      ; 0x3ece
    push ax                          ; 0x3ed1
    mov ax, word [bp - 0x0006]       ; 0x3ed2
    add ax, strict word 7            ; 0x3ed5
    push ax                          ; 0x3ed8
    mov ax, word [bp - 0x0004]       ; 0x3ed9
    add ax, strict word 8            ; 0x3edc
    push ax                          ; 0x3edf
    call 0xc0c1                      ; 0x3ee0
    add sp, byte 0x0c                ; 0x3ee3
    lea ax, word [bp - 0x0036]       ; 0x3ee6
    push ax                          ; 0x3ee9
    mov ax, word [bp + 0x4]          ; 0x3eea
    inc ax                           ; 0x3eed
    push ax                          ; 0x3eee
    db 0xe8, 0x49, 0x76 ; call 0xb53b
    add sp, byte 4                   ; 0x3ef2
    lea ax, word [bp - 0x0036]       ; 0x3ef5
    push ax                          ; 0x3ef8
    push word [bp + 0x8]             ; 0x3ef9
    mov ax, 1                        ; 0x3efc
    push ax                          ; 0x3eff
    mov ax, 0xc                      ; 0x3f00
    push ax                          ; 0x3f03
    mov ax, word [bp - 0x0006]       ; 0x3f04
    add ax, strict word 0x17         ; 0x3f07
    push ax                          ; 0x3f0a
    mov ax, word [bp - 0x0004]       ; 0x3f0b
    add ax, strict word 8            ; 0x3f0e
    push ax                          ; 0x3f11
    db 0xe8, 0xac, 0x81 ; call 0xc0c1
    add sp, byte 0x0c                ; 0x3f15
    lea ax, word [bp - 0x0036]       ; 0x3f18
    push ax                          ; 0x3f1b
    mov ax, word [bp + 0x4]          ; 0x3f1c
    inc ax                           ; 0x3f1f
    inc ax                           ; 0x3f20
    push ax                          ; 0x3f21
    db 0xe8, 0x16, 0x76 ; call 0xb53b
    add sp, byte 4                   ; 0x3f25
    lea ax, word [bp - 0x0036]       ; 0x3f28
    push ax                          ; 0x3f2b
    push word [bp + 0xa]             ; 0x3f2c
    mov ax, 1                        ; 0x3f2f
    push ax                          ; 0x3f32
    mov ax, 0xc                      ; 0x3f33
    push ax                          ; 0x3f36
    mov ax, word [bp - 0x0006]       ; 0x3f37
    add ax, strict word 0x27         ; 0x3f3a
    push ax                          ; 0x3f3d
    mov ax, word [bp - 0x0004]       ; 0x3f3e
    add ax, strict word 8            ; 0x3f41
    push ax                          ; 0x3f44
    db 0xe8, 0x79, 0x81 ; call 0xc0c1
    add sp, byte 0x0c                ; 0x3f48
    mov word [bp - 0x0016], 0        ; 0x3f4b
    mov word [bp - 0x0020], 0xffff   ; 0x3f50
    push word [bp - 0x0022]          ; 0x3f55
    push word [bp - 0x0020]          ; 0x3f58
    push word [bp - 0x0016]          ; 0x3f5b
    mov ax, 7                        ; 0x3f5e
    push ax                          ; 0x3f61
    mov ax, 0xf                      ; 0x3f62
    push ax                          ; 0x3f65
    mov ax, word [bp - 0x0006]       ; 0x3f66
    add ax, strict word 6            ; 0x3f69
    push ax                          ; 0x3f6c
    mov ax, word [bp - 0x0004]       ; 0x3f6d
    add ax, strict word 0x5d         ; 0x3f70
    push ax                          ; 0x3f73
    call math_loc_3df9               ; 0x3f74
    add sp, byte 0x0e                ; 0x3f77
    mov word [bp - 0x0010], 0        ; 0x3f7a
    push word [bp - 0x0010]          ; 0x3f7f
    mov ax, 7                        ; 0x3f82
    push ax                          ; 0x3f85
    mov ax, 8                        ; 0x3f86
    push ax                          ; 0x3f89
    mov ax, word [bp - 0x0006]       ; 0x3f8a
    add ax, strict word 6            ; 0x3f8d
    push ax                          ; 0x3f90
    mov ax, word [bp - 0x0004]       ; 0x3f91
    add ax, 0xc1                     ; 0x3f94
    push ax                          ; 0x3f97
    call 0xbfd8                      ; 0x3f98
    add sp, byte 0x0a                ; 0x3f9b
    mov ax, 0                        ; 0x3f9e
    push ax                          ; 0x3fa1
    push ax                          ; 0x3fa2
    mov ax, word [bp - 0x0006]       ; 0x3fa3
    add ax, word [bp - 0x0010]       ; 0x3fa6
    add ax, strict word 0x12         ; 0x3fa9
    push ax                          ; 0x3fac
    mov ax, word [bp - 0x0004]       ; 0x3fad
    add ax, 0xc9                     ; 0x3fb0
    push ax                          ; 0x3fb3
    mov ax, word [bp - 0x0006]       ; 0x3fb4
    add ax, word [bp - 0x0010]       ; 0x3fb7
    add ax, strict word 0xe          ; 0x3fba
    push ax                          ; 0x3fbd
    mov ax, word [bp - 0x0004]       ; 0x3fbe
    add ax, 0xc1                     ; 0x3fc1
    push ax                          ; 0x3fc4
    mov ax, 0                        ; 0x3fc5
    push ax                          ; 0x3fc8
    db 0xe8, 0xda, 0x7a ; call 0xbaa6
    add sp, byte 0x0e                ; 0x3fcc
    mov ax, 0                        ; 0x3fcf
    push ax                          ; 0x3fd2
    mov ax, 9                        ; 0x3fd3
    push ax                          ; 0x3fd6
    mov ax, word [bp - 0x0006]       ; 0x3fd7
    add ax, strict word 0xc          ; 0x3fda
    push ax                          ; 0x3fdd
    mov ax, word [bp - 0x0004]       ; 0x3fde
    add ax, 0xc9                     ; 0x3fe1
    push ax                          ; 0x3fe4
    mov ax, word [bp - 0x0006]       ; 0x3fe5
    add ax, strict word 6            ; 0x3fe8
    push ax                          ; 0x3feb
    mov ax, word [bp - 0x0004]       ; 0x3fec
    add ax, 0xc1                     ; 0x3fef
    push ax                          ; 0x3ff2
    mov ax, 1                        ; 0x3ff3
    push ax                          ; 0x3ff6
    db 0xe8, 0xac, 0x7a ; call 0xbaa6
    add sp, byte 0x0e                ; 0x3ffa
    mov ax, 0                        ; 0x3ffd
    push ax                          ; 0x4000
    mov ax, 0xb                      ; 0x4001
    push ax                          ; 0x4004
    mov ax, word [bp - 0x0006]       ; 0x4005
    add ax, strict word 0x30         ; 0x4008
    push ax                          ; 0x400b
    mov ax, word [bp - 0x0004]       ; 0x400c
    add ax, 0xc9                     ; 0x400f
    push ax                          ; 0x4012
    mov ax, word [bp - 0x0006]       ; 0x4013
    add ax, strict word 0x2a         ; 0x4016
    push ax                          ; 0x4019
    mov ax, word [bp - 0x0004]       ; 0x401a
    add ax, 0xc1                     ; 0x401d
    push ax                          ; 0x4020
    mov ax, data_0002                ; 0x4021
    push ax                          ; 0x4024
    db 0xe8, 0x7e, 0x7a ; call 0xbaa6
    add sp, byte 0x0e                ; 0x4028
    mov ax, 0                        ; 0x402b
    push ax                          ; 0x402e
    push ax                          ; 0x402f
    mov ax, word [bp - 0x0006]       ; 0x4030
    add ax, strict word 0xf          ; 0x4033
    push ax                          ; 0x4036
    mov ax, word [bp - 0x0004]       ; 0x4037
