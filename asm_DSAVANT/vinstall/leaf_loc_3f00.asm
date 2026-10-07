leaf_loc_3f00:
    or di, word [bx + 0xb]           ; 0x3f00
    or word [bp + di], data_0004     ; 0x3f03
    or word [bp + di], byte 0x8d     ; 0x3f07
    or cx, word [bx - 0x6ef5]        ; 0x3f0a
    or ax, word [si]                 ; 0x3f0e
    add byte [bp + di - 0x62f5], dl  ; 0x3f10
    or bx, word [bx - 0x5ef5]        ; 0x3f14
    or ax, word [si]                 ; 0x3f18
    add byte [bp + di - 0x52f5], ah  ; 0x3f1a
    or bp, word [bx - 0x4ef5]        ; 0x3f1e
    or ax, word [si]                 ; 0x3f22
    add byte [bp + di - 0x42f5], dh  ; 0x3f24
    or di, word [bx - 0x3ef5]        ; 0x3f28
    or ax, word [si]                 ; 0x3f2c
    add bl, al                       ; 0x3f2e
    or cx, bp                        ; 0x3f30
    or cx, di                        ; 0x3f32
    or dx, cx                        ; 0x3f34
    or ax, word [si]                 ; 0x3f36
    add bl, dl                       ; 0x3f38
    or bx, bp                        ; 0x3f3a
    or sp, cx                        ; 0x3f3c
    or sp, bp                        ; 0x3f3e
    or ax, word [si]                 ; 0x3f40
    add bh, ah                       ; 0x3f42
    or si, cx                        ; 0x3f44
    or si, bx                        ; 0x3f46
    or si, bp                        ; 0x3f48
    or ax, word [si]                 ; 0x3f4a
    add bh, dh                       ; 0x3f4c
    or ax, word [bx + di]            ; 0x3f4e
    or al, 3                         ; 0x3f50
    or al, data_0005                 ; 0x3f52
    or al, data_0004                 ; 0x3f54
    add byte [bx], al                ; 0x3f56
    or al, 0x11                      ; 0x3f58
    or al, 0x15                      ; 0x3f5a
    or al, 0x19                      ; 0x3f5c
    or al, data_0004                 ; 0x3f5e
    add byte [bp + di], bl           ; 0x3f60
    or al, 0x25                      ; 0x3f62
    or al, 0x28                      ; 0x3f64
    or al, 0x2b                      ; 0x3f66
    or al, data_0004                 ; 0x3f68
    add byte [data_380c], ch         ; 0x3f6a
    or al, 0x3c                      ; 0x3f6e
    or al, 0x40                      ; 0x3f70
    or al, data_0004                 ; 0x3f72
    add byte [bp + si + 0xc], al     ; 0x3f74
    dec sp                           ; 0x3f77
    or al, 0x4e                      ; 0x3f78
    or al, 0x50                      ; 0x3f7a
    or al, data_0004                 ; 0x3f7c
    add byte [bp + si + 0xc], dl     ; 0x3f7e
    pop sp                           ; 0x3f81
    or al, 0x5f                      ; 0x3f82
    or al, 0x62                      ; 0x3f84
    or al, data_0004                 ; 0x3f86
    add byte [si + 0xc], ah          ; 0x3f88
    outsb                            ; 0x3f8b
    or al, 0x72                      ; 0x3f8c
    or al, 0x76                      ; 0x3f8e
    or al, data_0004                 ; 0x3f90
    add byte [bx + di + 0xc], bh     ; 0x3f92
    or word [si], byte 0x87          ; 0x3f95
    or al, 0x8b                      ; 0x3f98
    or al, data_0004                 ; 0x3f9a
    add byte [bp - 0x67f4], cl       ; 0x3f9c
    or al, 0x9e                      ; 0x3fa0
    or al, 0xa4                      ; 0x3fa2
    or al, data_0004                 ; 0x3fa4
    add byte [bx - 0x4ef4], ah       ; 0x3fa6
    or al, 0xb4                      ; 0x3faa
    or al, 0xb7                      ; 0x3fac
    or al, data_0004                 ; 0x3fae
    add byte [bx + di - 0x3cf4], bh  ; 0x3fb0
    or al, 0xc6                      ; 0x3fb4
    or al, 0xc9                      ; 0x3fb6
    or al, data_0004                 ; 0x3fb8
    add ah, cl                       ; 0x3fba
    or al, 0xd6                      ; 0x3fbc
    or al, 0xd9                      ; 0x3fbe
    or al, 0xdc                      ; 0x3fc0
    or al, data_0004                 ; 0x3fc2
    add dh, bl                       ; 0x3fc4
    or al, 0xe8                      ; 0x3fc6
    or al, 0xeb                      ; 0x3fc8
    or al, 0xee                      ; 0x3fca
    or al, data_0004                 ; 0x3fcc
    add al, dh                       ; 0x3fce
    or al, 0xfa                      ; 0x3fd0
    or al, 0xfd                      ; 0x3fd2
    or al, 0                         ; 0x3fd4
    or ax, strict word 4             ; 0x3fd6
    add cl, byte [di]                ; 0x3fd9
    or al, 0xd                       ; 0x3fdb
    adc byte [di], cl                ; 0x3fdd
    adc al, 0xd                      ; 0x3fdf
    add al, 0                        ; 0x3fe1
    pop ss                           ; 0x3fe3
    or ax, 0xd21                     ; 0x3fe4
    daa                              ; 0x3fe7
    or ax, 0xd2d                     ; 0x3fe8
    add al, 0                        ; 0x3feb
    xor byte [di], cl                ; 0x3fed
    cmp cl, byte [di]                ; 0x3fef
    cmp al, 0xd                      ; 0x3ff1
    ds or ax, data_0004              ; 0x3ff3
    inc ax                           ; 0x3ff7
    or ax, 0xd4a                     ; 0x3ff8
    dec bp                           ; 0x3ffb
    or ax, 0xd50                     ; 0x3ffc
    add ax, 0x5300                   ; 0x3fff
    or ax, 0xd5b                     ; 0x4002
    pop bp                           ; 0x4005
    or ax, 0xd5f                     ; 0x4006
    add ax, 0x6100                   ; 0x4009
    or ax, 0xd6a                     ; 0x400c
    insb                             ; 0x400f
    or ax, 0xd6e                     ; 0x4010
    add ax, 0x7000                   ; 0x4013
    or ax, 0xd7b                     ; 0x4016
    jge short @..leaf_loc_3f00.l1    ; 0x4019
    jg short @..leaf_loc_3f00.l2     ; 0x401b
    add ax, 0x8100                   ; 0x401d
    or ax, 0xd8c                     ; 0x4020
    mov cs, word [di]                ; 0x4023
    nop                              ; 0x4025
    db 0x0d, 0x05
@..leaf_loc_3f00.l1:
    db 0x00
    xchg dx, ax                      ; 0x4029
@..leaf_loc_3f00.l2:
    or ax, 0xd9d                     ; 0x402a
    lahf                             ; 0x402d
    or ax, 0xda1                     ; 0x402e
    add ax, 0xa300                   ; 0x4031
    or ax, 0xdae                     ; 0x4034
    mov al, 0xd                      ; 0x4037
    mov dl, 0xd                      ; 0x4039
    add ax, 0xb400                   ; 0x403b
    or ax, 0xdbf                     ; 0x403e
    ror word [di], 0xc3              ; 0x4041
    or ax, strict word 5             ; 0x4044
    lds cx, word [di]                ; 0x4047
    ror byte [di], 1                 ; 0x4049
    ror byte [di], cl                ; 0x404b
    aam 0xd                          ; 0x404d
    add ax, 0xd600                   ; 0x404f
    or ax, 0xde1                     ; 0x4052
    jcxz @..leaf_loc_3f00.l3         ; 0x4055
    in ax, 0xd                       ; 0x4057
    add ax, 0xe700                   ; 0x4059
    or ax, 0xdf2                     ; 0x405c
    hlt                              ; 0x405f
