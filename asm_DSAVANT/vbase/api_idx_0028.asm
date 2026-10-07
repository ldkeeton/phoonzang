api_idx_0028:
    mov ax, 0xffd8                   ; 0x0ef7
    call ds_dispatch_f40b            ; 0x0efa
    mov word [data_904e], 0xffff     ; 0x0efd
    mov word [bp - 0x0028], 0xffff   ; 0x0f03
    mov word [bp - 0x0002], 0x37     ; 0x0f08
    mov word [bp - 0x0004], 0x8f     ; 0x0f0d
    mov word [bp - 0x0006], 0x108    ; 0x0f12
    mov word [bp - 0x0008], 0xc5     ; 0x0f17
    mov ax, 0x90bc                   ; 0x0f1c
    push ax                          ; 0x0f1f
    mov ax, word [bp - 0x0008]       ; 0x0f20
    inc ax                           ; 0x0f23
    push ax                          ; 0x0f24
    mov ax, word [bp - 0x0006]       ; 0x0f25
    inc ax                           ; 0x0f28
    push ax                          ; 0x0f29
    mov ax, word [bp - 0x0004]       ; 0x0f2a
    dec ax                           ; 0x0f2d
    push ax                          ; 0x0f2e
    mov ax, word [bp - 0x0002]       ; 0x0f2f
    dec ax                           ; 0x0f32
    push ax                          ; 0x0f33
    call ds_dispatch_c283            ; 0x0f34
    add sp, byte 0x0a                ; 0x0f37
    mov word [bp - 0x0026], ax       ; 0x0f3a
    push word [bp - 0x0008]          ; 0x0f3d
    push word [bp - 0x0006]          ; 0x0f40
    push word [bp - 0x0004]          ; 0x0f43
    push word [bp - 0x0002]          ; 0x0f46
    call ds_dispatch_bc9a            ; 0x0f49
    add sp, byte 8                   ; 0x0f4c
    lea ax, word [bp - 0x0024]       ; 0x0f4f
    push ax                          ; 0x0f52
    push word [bp + 0x4]             ; 0x0f53
    call ds_dispatch_b53b            ; 0x0f56
    add sp, byte 4                   ; 0x0f59
    lea ax, word [bp - 0x0024]       ; 0x0f5c
    push ax                          ; 0x0f5f
    push word [bp + 0x6]             ; 0x0f60
    mov ax, 1                        ; 0x0f63
    push ax                          ; 0x0f66
    mov ax, 0xc                      ; 0x0f67
    push ax                          ; 0x0f6a
    mov ax, word [bp - 0x0004]       ; 0x0f6b
    add ax, strict word 7            ; 0x0f6e
    push ax                          ; 0x0f71
    mov ax, word [bp - 0x0002]       ; 0x0f72
    add ax, strict word 8            ; 0x0f75
    push ax                          ; 0x0f78
    call ds_dispatch_c0c1            ; 0x0f79
    add sp, byte 0x0c                ; 0x0f7c
    lea ax, word [bp - 0x0024]       ; 0x0f7f
    push ax                          ; 0x0f82
    mov ax, word [bp + 0x4]          ; 0x0f83
    inc ax                           ; 0x0f86
    push ax                          ; 0x0f87
    call ds_dispatch_b53b            ; 0x0f88
    add sp, byte 4                   ; 0x0f8b
    lea ax, word [bp - 0x0024]       ; 0x0f8e
    push ax                          ; 0x0f91
    push word [bp + 0x8]             ; 0x0f92
    mov ax, 1                        ; 0x0f95
    push ax                          ; 0x0f98
    mov ax, 0xc                      ; 0x0f99
    push ax                          ; 0x0f9c
    mov ax, word [bp - 0x0004]       ; 0x0f9d
    add ax, strict word 0x17         ; 0x0fa0
    push ax                          ; 0x0fa3
    mov ax, word [bp - 0x0002]       ; 0x0fa4
    add ax, strict word 8            ; 0x0fa7
    push ax                          ; 0x0faa
    call ds_dispatch_c0c1            ; 0x0fab
    add sp, byte 0x0c                ; 0x0fae
    lea ax, word [bp - 0x0024]       ; 0x0fb1
    push ax                          ; 0x0fb4
    mov ax, word [bp + 0x4]          ; 0x0fb5
    inc ax                           ; 0x0fb8
    inc ax                           ; 0x0fb9
    push ax                          ; 0x0fba
    call ds_dispatch_b53b            ; 0x0fbb
    add sp, byte 4                   ; 0x0fbe
    lea ax, word [bp - 0x0024]       ; 0x0fc1
    push ax                          ; 0x0fc4
    push word [bp + 0xa]             ; 0x0fc5
    mov ax, 1                        ; 0x0fc8
    push ax                          ; 0x0fcb
    mov ax, 0xc                      ; 0x0fcc
    push ax                          ; 0x0fcf
    mov ax, word [bp - 0x0004]       ; 0x0fd0
    add ax, strict word 0x27         ; 0x0fd3
    push ax                          ; 0x0fd6
    mov ax, word [bp - 0x0002]       ; 0x0fd7
    add ax, strict word 8            ; 0x0fda
    push ax                          ; 0x0fdd
    call ds_dispatch_c0c1            ; 0x0fde
    add sp, byte 0x0c                ; 0x0fe1
    lea ax, word [bp - 0x0024]       ; 0x0fe4
    push ax                          ; 0x0fe7
    mov ax, 0x5aa                    ; 0x0fe8
    push ax                          ; 0x0feb
    call ds_dispatch_b53b            ; 0x0fec
    add sp, byte 4                   ; 0x0fef
    mov ax, 0xc2                     ; 0x0ff2
    push ax                          ; 0x0ff5
    mov ax, 0x9b                     ; 0x0ff6
    push ax                          ; 0x0ff9
    call ds_dispatch_e823            ; 0x0ffa
    add sp, byte 4                   ; 0x0ffd
    mov ax, word [bp - 0x0004]       ; 0x1000
    add ax, strict word 6            ; 0x1003
    push ax                          ; 0x1006
    lea ax, word [bp - 0x0024]       ; 0x1007
    push ax                          ; 0x100a
    call ds_dispatch_fa90            ; 0x100b
    pop cx                           ; 0x100e
    mov cx, ax                       ; 0x100f
    mov ax, 0x11                     ; 0x1011
    sub ax, cx                       ; 0x1014
    mov cx, 6                        ; 0x1016
    imul cx                          ; 0x1019
    inc ax                           ; 0x101b
    inc ax                           ; 0x101c
    mov cx, data_0002                ; 0x101d
    cwd                              ; 0x1020
    idiv cx                          ; 0x1021
    add ax, word [bp - 0x0002]       ; 0x1023
    add ax, strict word 0x5d         ; 0x1026
    push ax                          ; 0x1029
    call ds_dispatch_e809            ; 0x102a
    add sp, byte 4                   ; 0x102d
    mov ax, 0                        ; 0x1030
    push ax                          ; 0x1033
    lea ax, word [bp - 0x0024]       ; 0x1034
    push ax                          ; 0x1037
    call ds_dispatch_e84e            ; 0x1038
    add sp, byte 4                   ; 0x103b
    push word [bp + 0xc]             ; 0x103e
    mov ax, data_0e38                ; 0x1041
    push ax                          ; 0x1044
    call ds_dispatch_f364            ; 0x1045
    add sp, byte 4                   ; 0x1048
    mov ax, 1                        ; 0x104b
    push ax                          ; 0x104e
    mov ax, 0xffff                   ; 0x104f
    push ax                          ; 0x1052
    mov ax, 0                        ; 0x1053
    push ax                          ; 0x1056
    mov ax, 1                        ; 0x1057
    push ax                          ; 0x105a
    mov ax, 0x11                     ; 0x105b
    push ax                          ; 0x105e
    mov ax, word [bp - 0x0004]       ; 0x105f
    add ax, strict word 0xf          ; 0x1062
    push ax                          ; 0x1065
    mov ax, word [bp - 0x0002]       ; 0x1066
    add ax, strict word 0x5d         ; 0x1069
    push ax                          ; 0x106c
    call ds_dispatch_bf97            ; 0x106d
    add sp, byte 0x0e                ; 0x1070
    mov ax, 0                        ; 0x1073
    push ax                          ; 0x1076
    mov ax, 0x44                     ; 0x1077
    push ax                          ; 0x107a
    mov ax, word [bp - 0x0004]       ; 0x107b
    add ax, strict word 0x15         ; 0x107e
    push ax                          ; 0x1081
    mov ax, word [bp - 0x0002]       ; 0x1082
    add ax, 0xc5                     ; 0x1085
    push ax                          ; 0x1088
    mov ax, word [bp - 0x0004]       ; 0x1089
    add ax, strict word 0xf          ; 0x108c
    push ax                          ; 0x108f
    mov ax, word [bp - 0x0002]       ; 0x1090
    add ax, strict word 0x5d         ; 0x1093
    push ax                          ; 0x1096
    mov ax, 0                        ; 0x1097
    push ax                          ; 0x109a
    call ds_dispatch_baa6            ; 0x109b
    add sp, byte 0x0e                ; 0x109e
    lea ax, word [bp - 0x0024]       ; 0x10a1
    push ax                          ; 0x10a4
    mov ax, 0x5ab                    ; 0x10a5
    push ax                          ; 0x10a8
    call ds_dispatch_b53b            ; 0x10a9
    add sp, byte 4                   ; 0x10ac
    mov ax, 0xc2                     ; 0x10af
    push ax                          ; 0x10b2
    mov ax, 0x9b                     ; 0x10b3
    push ax                          ; 0x10b6
    call ds_dispatch_e823            ; 0x10b7
    add sp, byte 4                   ; 0x10ba
    mov ax, word [bp - 0x0004]       ; 0x10bd
    add ax, strict word 0x1e         ; 0x10c0
    push ax                          ; 0x10c3
    lea ax, word [bp - 0x0024]       ; 0x10c4
    push ax                          ; 0x10c7
    call ds_dispatch_fa90            ; 0x10c8
    pop cx                           ; 0x10cb
    mov cx, ax                       ; 0x10cc
    mov ax, 0x11                     ; 0x10ce
    sub ax, cx                       ; 0x10d1
    mov cx, 6                        ; 0x10d3
    imul cx                          ; 0x10d6
    inc ax                           ; 0x10d8
    inc ax                           ; 0x10d9
    mov cx, data_0002                ; 0x10da
    cwd                              ; 0x10dd
    idiv cx                          ; 0x10de
    add ax, word [bp - 0x0002]       ; 0x10e0
    add ax, strict word 0x5d         ; 0x10e3
    push ax                          ; 0x10e6
    call ds_dispatch_e809            ; 0x10e7
    add sp, byte 4                   ; 0x10ea
    mov ax, 0                        ; 0x10ed
    push ax                          ; 0x10f0
    lea ax, word [bp - 0x0024]       ; 0x10f1
    push ax                          ; 0x10f4
