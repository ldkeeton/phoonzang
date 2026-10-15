; auto-generated
; asm only
graphics_loc_RHSL:
    push bp                          ; 0x2d6c
    mov bp, sp                       ; 0x2d6d
    sub sp, byte 0x40                ; 0x2d6f
    push ds                          ; 0x2d72
    push es                          ; 0x2d73
    push si                          ; 0x2d74
    push di                          ; 0x2d75
    mov ax, ds                       ; 0x2d76
    mov es, ax                       ; 0x2d78
    mov ax, word [bp + 0x14]         ; 0x2d7a
    sub ax, word [bp + 0x12]         ; 0x2d7d
    jb short @..graphics_loc_RHSL.l1 ; 0x2d80
    mov ax, word [bp + 0x18]         ; 0x2d82
    sub ax, word [bp + 0x16]         ; 0x2d85
    jb short @..graphics_loc_RHSL.l1 ; 0x2d88
    mov ax, word [bp + 0x10]         ; 0x2d8a
    mov bx, 0x140                    ; 0x2d8d
    mul bx                           ; 0x2d90
    add ax, word [bp + 0xe]          ; 0x2d92
    mov word [bp - 0x0006], ax       ; 0x2d95
    mov ax, word [bp + 0xc]          ; 0x2d98
    shl ax, 1                        ; 0x2d9b
    mov bx, data_0229                ; 0x2d9d
    add bx, ax                       ; 0x2da0
    mov ax, word [cs:bx]             ; 0x2da2
    dec ax                           ; 0x2da5
    mov cl, 2                        ; 0x2da6
    shl ax, cl                       ; 0x2da8
    mov bx, data_0bda                ; 0x2daa
    add bx, ax                       ; 0x2dad
    mov ax, word [cs:bx]             ; 0x2daf
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x2db2
    mov word [bp - 0x0008], ax       ; 0x2db7
    mov ds, ax                       ; 0x2dba
    xor bx, bx                       ; 0x2dbc
    mov ax, word [bx]                ; 0x2dbe
    mov word [bp - 0x0012], ax       ; 0x2dc0
    mov si, word [bp + 0x1c]         ; 0x2dc3
    mov bx, word [bp - 0x0008]       ; 0x2dc6
    mov ds, bx                       ; 0x2dc9
    xor ah, ah                       ; 0x2dcb
    mov al, byte [ss:si]             ; 0x2dcd
    or al, al                        ; 0x2dd0
    je short @..graphics_loc_RHSL.l1 ; 0x2dd2
    call dos_con_loc_IJTI            ; 0x2dd4
    xor ah, ah                       ; 0x2dd7
    mov al, byte [bx + 0x2]          ; 0x2dd9
    mov word [bp - 0x0002], ax       ; 0x2ddc
    mov cx, ax                       ; 0x2ddf
    mov al, byte [bx + 0x3]          ; 0x2de1
    mov word [bp - 0x0004], ax       ; 0x2de4
    or ax, cx                        ; 0x2de7
    jne short @..graphics_loc_RHSL.l2 ; 0x2de9
@..graphics_loc_RHSL.l1:
    jmp near @..graphics_loc_RHSL.l56 ; 0x2deb
@..graphics_loc_RHSL.l2:
    mov word [bp - 0x003a], bx       ; 0x2dee
    mov ax, es                       ; 0x2df1
    mov word [bp - 0x0038], ax       ; 0x2df3
    mov ax, cs                       ; 0x2df6
    mov es, ax                       ; 0x2df8
    lea di, word [data_2e2b]         ; 0x2dfa
    xor ax, ax                       ; 0x2dfe
    mov cx, 0x14                     ; 0x2e00
    rep stosw                        ; 0x2e03
    lea di, word [data_2e53]         ; 0x2e05
    mov cx, 0x19                     ; 0x2e09
    rep stosb                        ; 0x2e0c
    mov bx, word [bp + 0x20]         ; 0x2e0e
    or bx, bx                        ; 0x2e11
    jne short @..graphics_loc_RHSL.l3 ; 0x2e13
    jmp near @..graphics_loc_RHSL.l7 ; 0x2e15
@..graphics_loc_RHSL.l3:
    cmp bx, byte 0x64                ; 0x2e18
    jae short @..graphics_loc_RHSL.l1 ; 0x2e1b
    mov ax, word [bp - 0x0002]       ; 0x2e1d
    mov cl, 3                        ; 0x2e20
    shl ax, cl                       ; 0x2e22
    mov cx, ax                       ; 0x2e24
    mov bx, word [bp + 0x20]         ; 0x2e26
    mul bx                           ; 0x2e29
data_2e2b:
    mov bx, 0x64                     ; 0x2e2b
    div bx                           ; 0x2e2e
    cmp dx, byte 0x32                ; 0x2e30
    jb short @..graphics_loc_RHSL.l4 ; 0x2e33
    inc ax                           ; 0x2e35
@..graphics_loc_RHSL.l4:
    or ax, ax                        ; 0x2e36
    je short @..graphics_loc_RHSL.l5 ; 0x2e38
    xor dx, dx                       ; 0x2e3a
    mov bx, ax                       ; 0x2e3c
    mov word [bp - 0x0034], ax       ; 0x2e3e
    mov ax, cx                       ; 0x2e41
    div bx                           ; 0x2e43
    mov di, data_2e2b                ; 0x2e45
    mov bx, word [bp - 0x0034]       ; 0x2e48
    shr bx, 1                        ; 0x2e4b
    mov word [bp - 0x003c], bx       ; 0x2e4d
    mov si, ax                       ; 0x2e50
    dec si                           ; 0x2e52
data_2e53:
    mov word [bp - 0x0030], ax       ; 0x2e53
    mov word [bp - 0x0032], cx       ; 0x2e56
    call leaf_loc_GSNR               ; 0x2e59
@..graphics_loc_RHSL.l5:
    mov ax, word [bp - 0x0004]       ; 0x2e5c
    mov cl, 3                        ; 0x2e5f
    shl ax, cl                       ; 0x2e61
    mov cx, ax                       ; 0x2e63
    mov bx, word [bp + 0x20]         ; 0x2e65
    mul bx                           ; 0x2e68
    mov bx, 0x64                     ; 0x2e6a
    div bx                           ; 0x2e6d
    cmp dx, byte 0x32                ; 0x2e6f
    jb short @..graphics_loc_RHSL.l6 ; 0x2e72
    inc ax                           ; 0x2e74
@..graphics_loc_RHSL.l6:
    or ax, ax                        ; 0x2e75
    je short @..graphics_loc_RHSL.l7 ; 0x2e77
    xor dx, dx                       ; 0x2e79
    mov bx, ax                       ; 0x2e7b
    mov word [bp - 0x0034], ax       ; 0x2e7d
    mov ax, cx                       ; 0x2e80
    div bx                           ; 0x2e82
    mov di, data_2e53                ; 0x2e84
    mov bx, word [bp - 0x0034]       ; 0x2e87
    shr bx, 1                        ; 0x2e8a
    mov word [bp - 0x003c], bx       ; 0x2e8c
    mov si, ax                       ; 0x2e8f
    dec si                           ; 0x2e91
    mov word [bp - 0x0030], ax       ; 0x2e92
    mov word [bp - 0x0032], cx       ; 0x2e95
    call leaf_loc_GSNR               ; 0x2e98
@..graphics_loc_RHSL.l7:
    mov bx, word [bp - 0x003a]       ; 0x2e9b
    mov ax, word [bp - 0x0038]       ; 0x2e9e
    mov es, ax                       ; 0x2ea1
    mov ax, word [bp + 0x12]         ; 0x2ea3
    sub ax, word [bp + 0xe]          ; 0x2ea6
    jge short @..graphics_loc_RHSL.l8 ; 0x2ea9
    xor ax, ax                       ; 0x2eab
@..graphics_loc_RHSL.l8:
    mov word [bp - 0x0028], ax       ; 0x2ead
    mov ax, word [bp + 0xe]          ; 0x2eb0
    mov bx, word [bp - 0x0002]       ; 0x2eb3
    mov cl, 3                        ; 0x2eb6
    shl bx, cl                       ; 0x2eb8
    mov cx, bx                       ; 0x2eba
    dec bx                           ; 0x2ebc
    mov word [bp - 0x001e], bx       ; 0x2ebd
    add ax, bx                       ; 0x2ec0
    inc ax                           ; 0x2ec2
    sub ax, word [bp + 0x14]         ; 0x2ec3
    jge short @..graphics_loc_RHSL.l9 ; 0x2ec6
    xor ax, ax                       ; 0x2ec8
@..graphics_loc_RHSL.l9:
    mov word [bp - 0x002a], ax       ; 0x2eca
    add ax, word [bp - 0x0028]       ; 0x2ecd
    sub cx, ax                       ; 0x2ed0
    ja short @..graphics_loc_RHSL.l10 ; 0x2ed2
    jmp near @..graphics_loc_RHSL.l56 ; 0x2ed4
@..graphics_loc_RHSL.l10:
    mov word [bp - 0x0026], cx       ; 0x2ed7
    mov ax, word [bp + 0x16]         ; 0x2eda
    sub ax, word [bp + 0x10]         ; 0x2edd
    jge short @..graphics_loc_RHSL.l11 ; 0x2ee0
    xor ax, ax                       ; 0x2ee2
@..graphics_loc_RHSL.l11:
    mov word [bp - 0x0024], ax       ; 0x2ee4
    mov ax, word [bp + 0x10]         ; 0x2ee7
    mov bx, word [bp - 0x0004]       ; 0x2eea
    mov cl, 3                        ; 0x2eed
    shl bx, cl                       ; 0x2eef
    mov cx, bx                       ; 0x2ef1
    dec bx                           ; 0x2ef3
    add ax, bx                       ; 0x2ef4
    sub ax, word [bp + 0x18]         ; 0x2ef6
    jge short @..graphics_loc_RHSL.l12 ; 0x2ef9
    xor ax, ax                       ; 0x2efb
@..graphics_loc_RHSL.l12:
    mov word [bp - 0x002c], ax       ; 0x2efd
    add ax, word [bp - 0x0024]       ; 0x2f00
    sub cx, ax                       ; 0x2f03
    ja short @..graphics_loc_RHSL.l13 ; 0x2f05
    jmp near @..graphics_loc_RHSL.l56 ; 0x2f07
@..graphics_loc_RHSL.l13:
    mov ax, word [bp + 0x18]         ; 0x2f0a
    inc ax                           ; 0x2f0d
    mov cx, 0x140                    ; 0x2f0e
    mul cx                           ; 0x2f11
    mov word [bp - 0x0022], ax       ; 0x2f13
    mov ax, word [bp + 0x16]         ; 0x2f16
    mov cx, 0x140                    ; 0x2f19
    mul cx                           ; 0x2f1c
    mov word [bp - 0x002e], ax       ; 0x2f1e
    mov ax, word [bp + 0x1a]         ; 0x2f21
    and al, 1                        ; 0x2f24
    je short @..graphics_loc_RHSL.l14 ; 0x2f26
    jmp near @..graphics_loc_RHSL.l28 ; 0x2f28
@..graphics_loc_RHSL.l14:
    mov bx, word [bp - 0x001e]       ; 0x2f2b
    inc bx                           ; 0x2f2e
    mov word [bp - 0x003e], bx       ; 0x2f2f
    mov bx, data_2e2b                ; 0x2f32
    mov dl, 0x80                     ; 0x2f35
    xor ax, ax                       ; 0x2f37
    mov word [bp - 0x0030], ax       ; 0x2f39
    mov word [bp - 0x0040], ax       ; 0x2f3c
    mov cx, word [bp - 0x0028]       ; 0x2f3f
    or cx, cx                        ; 0x2f42
    je short @..graphics_loc_RHSL.l19 ; 0x2f44
@..graphics_loc_RHSL.l15:
    mov al, byte [cs:bx]             ; 0x2f46
    and al, dl                       ; 0x2f49
    jne short @..graphics_loc_RHSL.l16 ; 0x2f4b
    or byte [cs:bx], dl              ; 0x2f4d
    jmp short @..graphics_loc_RHSL.l17 ; 0x2f50
@..graphics_loc_RHSL.l16:
    inc word [bp - 0x0030]           ; 0x2f52
    inc cx                           ; 0x2f55
@..graphics_loc_RHSL.l17:
    ror dl, 1                        ; 0x2f56
    cmp dl, 0x80                     ; 0x2f58
    jne short @..graphics_loc_RHSL.l18 ; 0x2f5b
    inc bx                           ; 0x2f5d
@..graphics_loc_RHSL.l18:
    loop @..graphics_loc_RHSL.l15    ; 0x2f5e
@..graphics_loc_RHSL.l19:
    mov word [bp - 0x0032], bx       ; 0x2f60
    mov ax, word [bp - 0x0030]       ; 0x2f63
    mov word [bp - 0x0040], ax       ; 0x2f66
    add ax, word [bp - 0x0028]       ; 0x2f69
    mov bx, word [bp - 0x003e]       ; 0x2f6c
    cmp bx, ax                       ; 0x2f6f
    ja short @..graphics_loc_RHSL.l20 ; 0x2f71
    jmp near @..graphics_loc_RHSL.l56 ; 0x2f73
@..graphics_loc_RHSL.l20:
    sub bx, ax                       ; 0x2f76
    xor ax, ax                       ; 0x2f78
    mov word [bp - 0x0030], ax       ; 0x2f7a
    sub bx, word [bp - 0x0026]       ; 0x2f7d
    jbe short @..graphics_loc_RHSL.l27 ; 0x2f80
    mov word [bp - 0x0034], bx       ; 0x2f82
    mov cx, word [bp - 0x0026]       ; 0x2f85
    mov bx, word [bp - 0x0032]       ; 0x2f88
@..graphics_loc_RHSL.l21:
    mov al, byte [cs:bx]             ; 0x2f8b
    and al, dl                       ; 0x2f8e
    je short @..graphics_loc_RHSL.l22 ; 0x2f90
    inc word [bp - 0x0030]           ; 0x2f92
    mov ax, word [bp - 0x0030]       ; 0x2f95
    cmp ax, word [bp - 0x0034]       ; 0x2f98
    je short @..graphics_loc_RHSL.l24 ; 0x2f9b
    inc cx                           ; 0x2f9d
@..graphics_loc_RHSL.l22:
    ror dl, 1                        ; 0x2f9e
    cmp dl, 0x80                     ; 0x2fa0
    jne short @..graphics_loc_RHSL.l23 ; 0x2fa3
    inc bx                           ; 0x2fa5
@..graphics_loc_RHSL.l23:
    loop @..graphics_loc_RHSL.l21    ; 0x2fa6
@..graphics_loc_RHSL.l24:
    mov word [bp - 0x0032], bx       ; 0x2fa8
    mov ax, word [bp - 0x0030]       ; 0x2fab
    add ax, word [bp - 0x0040]       ; 0x2fae
    add ax, word [bp - 0x0028]       ; 0x2fb1
    add ax, word [bp - 0x0026]       ; 0x2fb4
    mov cx, word [bp - 0x003e]       ; 0x2fb7
    sub cx, ax                       ; 0x2fba
    jbe short @..graphics_loc_RHSL.l27 ; 0x2fbc
    mov bx, word [bp - 0x0032]       ; 0x2fbe
@..graphics_loc_RHSL.l25:
    or byte [cs:bx], dl              ; 0x2fc1
    ror dl, 1                        ; 0x2fc4
    cmp dl, 0x80                     ; 0x2fc6
    jne short @..graphics_loc_RHSL.l26 ; 0x2fc9
    inc bx                           ; 0x2fcb
@..graphics_loc_RHSL.l26:
    loop @..graphics_loc_RHSL.l25    ; 0x2fcc
@..graphics_loc_RHSL.l27:
    jmp near @..graphics_loc_RHSL.l41 ; 0x2fce
@..graphics_loc_RHSL.l28:
    mov bx, word [bp - 0x001e]       ; 0x2fd1
    inc bx                           ; 0x2fd4
    mov word [bp - 0x003e], bx       ; 0x2fd5
    mov bx, data_2e2b                ; 0x2fd8
    mov dl, 0x80                     ; 0x2fdb
    xor ax, ax                       ; 0x2fdd
    mov word [bp - 0x0030], ax       ; 0x2fdf
    mov word [bp - 0x0040], ax       ; 0x2fe2
    mov cx, word [bp - 0x002a]       ; 0x2fe5
    or cx, cx                        ; 0x2fe8
    je short @..graphics_loc_RHSL.l33 ; 0x2fea
@..graphics_loc_RHSL.l29:
    mov al, byte [cs:bx]             ; 0x2fec
    and al, dl                       ; 0x2fef
    jne short @..graphics_loc_RHSL.l30 ; 0x2ff1
    or byte [cs:bx], dl              ; 0x2ff3
    jmp short @..graphics_loc_RHSL.l31 ; 0x2ff6
@..graphics_loc_RHSL.l30:
    inc word [bp - 0x0030]           ; 0x2ff8
    inc cx                           ; 0x2ffb
@..graphics_loc_RHSL.l31:
    ror dl, 1                        ; 0x2ffc
    cmp dl, 0x80                     ; 0x2ffe
    jne short @..graphics_loc_RHSL.l32 ; 0x3001
    inc bx                           ; 0x3003
@..graphics_loc_RHSL.l32:
    loop @..graphics_loc_RHSL.l29    ; 0x3004
@..graphics_loc_RHSL.l33:
    mov word [bp - 0x0032], bx       ; 0x3006
    mov ax, word [bp - 0x0030]       ; 0x3009
    mov word [bp - 0x0040], ax       ; 0x300c
    add ax, word [bp - 0x002a]       ; 0x300f
    mov bx, word [bp - 0x003e]       ; 0x3012
    cmp bx, ax                       ; 0x3015
    ja short @..graphics_loc_RHSL.l34 ; 0x3017
    jmp near @..graphics_loc_RHSL.l56 ; 0x3019
@..graphics_loc_RHSL.l34:
    sub bx, ax                       ; 0x301c
    xor ax, ax                       ; 0x301e
    mov word [bp - 0x0030], ax       ; 0x3020
    sub bx, word [bp - 0x0026]       ; 0x3023
    jbe short @..graphics_loc_RHSL.l41 ; 0x3026
    mov word [bp - 0x0034], bx       ; 0x3028
    mov cx, word [bp - 0x0026]       ; 0x302b
    mov bx, word [bp - 0x0032]       ; 0x302e
@..graphics_loc_RHSL.l35:
    mov al, byte [cs:bx]             ; 0x3031
    and al, dl                       ; 0x3034
    je short @..graphics_loc_RHSL.l36 ; 0x3036
    inc word [bp - 0x0030]           ; 0x3038
    mov ax, word [bp - 0x0030]       ; 0x303b
    cmp ax, word [bp - 0x0034]       ; 0x303e
    je short @..graphics_loc_RHSL.l38 ; 0x3041
    inc cx                           ; 0x3043
@..graphics_loc_RHSL.l36:
    ror dl, 1                        ; 0x3044
    cmp dl, 0x80                     ; 0x3046
    jne short @..graphics_loc_RHSL.l37 ; 0x3049
    inc bx                           ; 0x304b
@..graphics_loc_RHSL.l37:
    loop @..graphics_loc_RHSL.l35    ; 0x304c
@..graphics_loc_RHSL.l38:
    mov word [bp - 0x0032], bx       ; 0x304e
    mov ax, word [bp - 0x0030]       ; 0x3051
    add ax, word [bp - 0x0040]       ; 0x3054
    add ax, word [bp - 0x002a]       ; 0x3057
    add ax, word [bp - 0x0026]       ; 0x305a
    mov cx, word [bp - 0x003e]       ; 0x305d
    sub cx, ax                       ; 0x3060
    jbe short @..graphics_loc_RHSL.l41 ; 0x3062
    mov bx, word [bp - 0x0032]       ; 0x3064
@..graphics_loc_RHSL.l39:
    or byte [cs:bx], dl              ; 0x3067
    ror dl, 1                        ; 0x306a
    cmp dl, 0x80                     ; 0x306c
    jne short @..graphics_loc_RHSL.l40 ; 0x306f
    inc bx                           ; 0x3071
@..graphics_loc_RHSL.l40:
    loop @..graphics_loc_RHSL.l39    ; 0x3072
@..graphics_loc_RHSL.l41:
    mov ax, word [bp + 0x1a]         ; 0x3074
    and al, 2                        ; 0x3077
    jne short @..graphics_loc_RHSL.l48 ; 0x3079
    mov bx, data_2e53                ; 0x307b
    mov dl, 0x80                     ; 0x307e
    xor ax, ax                       ; 0x3080
    mov word [bp - 0x0030], ax       ; 0x3082
    mov word [bp - 0x0040], ax       ; 0x3085
    mov cx, word [bp - 0x0024]       ; 0x3088
    or cx, cx                        ; 0x308b
    je short @..graphics_loc_RHSL.l46 ; 0x308d
@..graphics_loc_RHSL.l42:
    mov al, byte [cs:bx]             ; 0x308f
    and al, dl                       ; 0x3092
    jne short @..graphics_loc_RHSL.l43 ; 0x3094
    or byte [cs:bx], dl              ; 0x3096
    jmp short @..graphics_loc_RHSL.l44 ; 0x3099
@..graphics_loc_RHSL.l43:
    inc word [bp - 0x0030]           ; 0x309b
    inc cx                           ; 0x309e
@..graphics_loc_RHSL.l44:
    ror dl, 1                        ; 0x309f
    cmp dl, 0x80                     ; 0x30a1
    jne short @..graphics_loc_RHSL.l45 ; 0x30a4
    inc bx                           ; 0x30a6
@..graphics_loc_RHSL.l45:
    loop @..graphics_loc_RHSL.l42    ; 0x30a7
@..graphics_loc_RHSL.l46:
    mov ax, word [bp - 0x0030]       ; 0x30a9
    mov word [bp - 0x0040], ax       ; 0x30ac
    add ax, word [bp - 0x0024]       ; 0x30af
    mov bx, word [bp - 0x0004]       ; 0x30b2
    mov cl, 3                        ; 0x30b5
    shl bx, cl                       ; 0x30b7
    cmp bx, ax                       ; 0x30b9
    ja short @..graphics_loc_RHSL.l47 ; 0x30bb
    jmp near @..graphics_loc_RHSL.l56 ; 0x30bd
@..graphics_loc_RHSL.l47:
    jmp short @..graphics_loc_RHSL.l54 ; 0x30c0
@..graphics_loc_RHSL.l48:
    mov bx, data_2e53                ; 0x30c2
    mov dl, 0x80                     ; 0x30c5
    xor ax, ax                       ; 0x30c7
    mov word [bp - 0x0030], ax       ; 0x30c9
    mov word [bp - 0x0040], ax       ; 0x30cc
    mov cx, word [bp - 0x002c]       ; 0x30cf
    or cx, cx                        ; 0x30d2
    je short @..graphics_loc_RHSL.l53 ; 0x30d4
@..graphics_loc_RHSL.l49:
    mov al, byte [cs:bx]             ; 0x30d6
    and al, dl                       ; 0x30d9
    jne short @..graphics_loc_RHSL.l50 ; 0x30db
    or byte [cs:bx], dl              ; 0x30dd
    jmp short @..graphics_loc_RHSL.l51 ; 0x30e0
@..graphics_loc_RHSL.l50:
    inc word [bp - 0x0030]           ; 0x30e2
    inc cx                           ; 0x30e5
@..graphics_loc_RHSL.l51:
    ror dl, 1                        ; 0x30e6
    cmp dl, 0x80                     ; 0x30e8
    jne short @..graphics_loc_RHSL.l52 ; 0x30eb
    inc bx                           ; 0x30ed
@..graphics_loc_RHSL.l52:
    loop @..graphics_loc_RHSL.l49    ; 0x30ee
@..graphics_loc_RHSL.l53:
    mov ax, word [bp - 0x0030]       ; 0x30f0
    add ax, word [bp - 0x002c]       ; 0x30f3
    mov bx, word [bp - 0x0004]       ; 0x30f6
    mov cl, 3                        ; 0x30f9
    shl bx, cl                       ; 0x30fb
    cmp bx, ax                       ; 0x30fd
    jbe short @..graphics_loc_RHSL.l56 ; 0x30ff
@..graphics_loc_RHSL.l54:
    mov ax, word [bp + 0x20]         ; 0x3101
    mov bl, 0xc                      ; 0x3104
    div bl                           ; 0x3106
    xor ah, ah                       ; 0x3108
    mov word [bp - 0x0030], ax       ; 0x310a
@..graphics_loc_RHSL.l55:
    mov si, word [bp + 0x1c]         ; 0x310d
    mov bx, word [bp - 0x0008]       ; 0x3110
    mov ds, bx                       ; 0x3113
    xor ah, ah                       ; 0x3115
    mov al, byte [ss:si]             ; 0x3117
    or al, al                        ; 0x311a
    je short @..graphics_loc_RHSL.l56 ; 0x311c
    call dos_con_loc_IJTI            ; 0x311e
    call graphics_loc_OGUJ           ; 0x3121
    inc word [bp + 0x1c]             ; 0x3124
    jmp short @..graphics_loc_RHSL.l55 ; 0x3127
@..graphics_loc_RHSL.l56:
    pop di                           ; 0x3129
    pop si                           ; 0x312a
    pop es                           ; 0x312b
    pop ds                           ; 0x312c
    mov sp, bp                       ; 0x312d
    pop bp                           ; 0x312f
    ret                              ; 0x3130
