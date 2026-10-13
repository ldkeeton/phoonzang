; auto-generated
leaf_loc_2f85:
    mov word [bp - 0x000c], 0xa      ; 0x2f85
    cmp word [bss_91a8], byte 0      ; 0x2f8a
    jne short @..leaf_loc_2f85.l1    ; 0x2f8f
    mov ax, word [bp + 0x4]          ; 0x2f91
    mov cx, 4                        ; 0x2f94
    shl ax, cl                       ; 0x2f97
    mov cx, word [bp - 0x0012]       ; 0x2f99
    shl cx, 1                        ; 0x2f9c
    shl cx, 1                        ; 0x2f9e
    shl cx, 1                        ; 0x2fa0
    add ax, cx                       ; 0x2fa2
    mov cx, word [bp - 0x0006]       ; 0x2fa4
    shl cx, 1                        ; 0x2fa7
    shl cx, 1                        ; 0x2fa9
    add ax, cx                       ; 0x2fab
    mov bx, ax                       ; 0x2fad
    mov ax, word [bx + 0x486]        ; 0x2faf
    jmp short @..leaf_loc_2f85.l2    ; 0x2fb3
@..leaf_loc_2f85.l1:
    mov ax, word [bp + 0x4]          ; 0x2fb5
    mov cx, 4                        ; 0x2fb8
    shl ax, cl                       ; 0x2fbb
    mov cx, word [bp - 0x0012]       ; 0x2fbd
    shl cx, 1                        ; 0x2fc0
    shl cx, 1                        ; 0x2fc2
    shl cx, 1                        ; 0x2fc4
    add ax, cx                       ; 0x2fc6
    mov cx, word [bp - 0x0006]       ; 0x2fc8
    shl cx, 1                        ; 0x2fcb
    shl cx, 1                        ; 0x2fcd
    add ax, cx                       ; 0x2fcf
    mov bx, ax                       ; 0x2fd1
    mov ax, word [bx + 0x4d6]        ; 0x2fd3
@..leaf_loc_2f85.l2:
    mov word [bp - 0x000e], ax       ; 0x2fd7
    cmp word [bss_91a8], byte 0      ; 0x2fda
    jne short @..leaf_loc_2f85.l3    ; 0x2fdf
    mov ax, word [bp + 0x4]          ; 0x2fe1
    mov cx, 4                        ; 0x2fe4
    shl ax, cl                       ; 0x2fe7
    mov cx, word [bp - 0x0012]       ; 0x2fe9
    shl cx, 1                        ; 0x2fec
    shl cx, 1                        ; 0x2fee
    shl cx, 1                        ; 0x2ff0
    add ax, cx                       ; 0x2ff2
    mov cx, word [bp - 0x0006]       ; 0x2ff4
    shl cx, 1                        ; 0x2ff7
    shl cx, 1                        ; 0x2ff9
    add ax, cx                       ; 0x2ffb
    mov bx, ax                       ; 0x2ffd
    mov ax, word [bx + 0x488]        ; 0x2fff
    jmp short @..leaf_loc_2f85.l4    ; 0x3003
@..leaf_loc_2f85.l3:
    mov ax, word [bp + 0x4]          ; 0x3005
    mov cx, 4                        ; 0x3008
    shl ax, cl                       ; 0x300b
    mov cx, word [bp - 0x0012]       ; 0x300d
    shl cx, 1                        ; 0x3010
    shl cx, 1                        ; 0x3012
    shl cx, 1                        ; 0x3014
    add ax, cx                       ; 0x3016
    mov cx, word [bp - 0x0006]       ; 0x3018
    shl cx, 1                        ; 0x301b
    shl cx, 1                        ; 0x301d
    add ax, cx                       ; 0x301f
    mov bx, ax                       ; 0x3021
    mov ax, word [bx + 0x4d8]        ; 0x3023
@..leaf_loc_2f85.l4:
    mov word [bp - 0x0010], ax       ; 0x3027
    mov ax, 7                        ; 0x302a
    cmp word [bss_91a8], byte 0      ; 0x302d
    jne short @..leaf_loc_2f85.l5    ; 0x3032
    mov ax, 3                        ; 0x3034
@..leaf_loc_2f85.l5:
    mov cx, 0                        ; 0x3037
    cmp word [bp + 0x6], byte 0x0d   ; 0x303a
    jne short @..leaf_loc_2f85.l6    ; 0x303e
    mov cx, 1                        ; 0x3040
@..leaf_loc_2f85.l6:
    add ax, cx                       ; 0x3043
    mov word [bp - 0x0008], ax       ; 0x3045
    mov word [bp - 0x000a], 0        ; 0x3048
    jmp short loc_30b2               ; 0x304d
