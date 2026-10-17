; auto-generated
leaf_loc_JQNJ:
    cmp word [bp + 0x4], byte 4      ; 0x2ec0
    jl short @..leaf_loc_JQNJ.l1     ; 0x2ec4
    jmp near @..leaf_loc_JQNJ.l16    ; 0x2ec6
@..leaf_loc_JQNJ.l1:
    cmp word [bp + 0x8], byte 1      ; 0x2ec9
    je short @..leaf_loc_JQNJ.l2     ; 0x2ecd
    cmp word [bp + 0x8], byte 3      ; 0x2ecf
    jne short @..leaf_loc_JQNJ.l3    ; 0x2ed3
@..leaf_loc_JQNJ.l2:
    mov ax, 0                        ; 0x2ed5
    jmp short @..leaf_loc_JQNJ.l4    ; 0x2ed8
@..leaf_loc_JQNJ.l3:
    mov ax, 1                        ; 0x2eda
@..leaf_loc_JQNJ.l4:
    mov word [bp - 0x0012], ax       ; 0x2edd
    mov ax, 0                        ; 0x2ee0
    cmp word [bp + 0x8], byte 2      ; 0x2ee3
    jle short @..leaf_loc_JQNJ.l5    ; 0x2ee7
    mov ax, 1                        ; 0x2ee9
@..leaf_loc_JQNJ.l5:
    mov word [bp - 0x0006], ax       ; 0x2eec
    mov word [bp - 0x000c], 0xffff   ; 0x2eef
    mov ax, word [bp + 0x6]          ; 0x2ef4
    jmp near @..leaf_loc_JQNJ.l14    ; 0x2ef7
leaf_loc_2efa:
    mov word [bp - 0x000c], 9        ; 0x2efa
    mov ax, word [bp + 0x4]          ; 0x2eff
    mov cx, 4                        ; 0x2f02
    shl ax, cl                       ; 0x2f05
    mov cx, word [bp - 0x0012]       ; 0x2f07
    shl cx, 1                        ; 0x2f0a
    shl cx, 1                        ; 0x2f0c
    shl cx, 1                        ; 0x2f0e
    add ax, cx                       ; 0x2f10
    mov cx, word [bp - 0x0006]       ; 0x2f12
    shl cx, 1                        ; 0x2f15
    shl cx, 1                        ; 0x2f17
    add ax, cx                       ; 0x2f19
    mov bx, ax                       ; 0x2f1b
    mov ax, word [bx + 0x3e6]        ; 0x2f1d
    mov word [bp - 0x000e], ax       ; 0x2f21
    mov ax, word [bx + 0x3e8]        ; 0x2f24
    mov word [bp - 0x0010], ax       ; 0x2f28
    mov word [bp - 0x0008], 4        ; 0x2f2b
    mov ax, word [bss_82e8]          ; 0x2f30
    add ax, strict word 5            ; 0x2f33
    mov word [bp - 0x000a], ax       ; 0x2f36
    jmp near @..leaf_loc_JQNJ.l15    ; 0x2f39
leaf_loc_2f3c:
    mov word [bp - 0x000c], 9        ; 0x2f3c
    mov ax, word [bp + 0x4]          ; 0x2f41
    mov cx, 4                        ; 0x2f44
    shl ax, cl                       ; 0x2f47
    mov cx, word [bp - 0x0012]       ; 0x2f49
    shl cx, 1                        ; 0x2f4c
    shl cx, 1                        ; 0x2f4e
    shl cx, 1                        ; 0x2f50
    add ax, cx                       ; 0x2f52
    mov cx, word [bp - 0x0006]       ; 0x2f54
    shl cx, 1                        ; 0x2f57
    shl cx, 1                        ; 0x2f59
    add ax, cx                       ; 0x2f5b
    mov bx, ax                       ; 0x2f5d
    mov ax, word [bx + 0x436]        ; 0x2f5f
    mov word [bp - 0x000e], ax       ; 0x2f63
    mov ax, word [bx + 0x438]        ; 0x2f66
    mov word [bp - 0x0010], ax       ; 0x2f6a
    mov word [bp - 0x0008], 9        ; 0x2f6d
    mov ax, 0                        ; 0x2f72
    cmp word [bss_82e8], byte 0      ; 0x2f75
    je short @..leaf_loc_JQNJ.l6     ; 0x2f7a
    mov ax, 0xa                      ; 0x2f7c
@..leaf_loc_JQNJ.l6:
    mov word [bp - 0x000a], ax       ; 0x2f7f
    jmp near @..leaf_loc_JQNJ.l15    ; 0x2f82
leaf_loc_2f85:
    mov word [bp - 0x000c], 0xa      ; 0x2f85
    cmp word [bss_91a8], byte 0      ; 0x2f8a
    jne short @..leaf_loc_JQNJ.l7    ; 0x2f8f
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
    jmp short @..leaf_loc_JQNJ.l8    ; 0x2fb3
@..leaf_loc_JQNJ.l7:
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
@..leaf_loc_JQNJ.l8:
    mov word [bp - 0x000e], ax       ; 0x2fd7
    cmp word [bss_91a8], byte 0      ; 0x2fda
    jne short @..leaf_loc_JQNJ.l9    ; 0x2fdf
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
    jmp short @..leaf_loc_JQNJ.l10   ; 0x3003
@..leaf_loc_JQNJ.l9:
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
@..leaf_loc_JQNJ.l10:
    mov word [bp - 0x0010], ax       ; 0x3027
    mov ax, 7                        ; 0x302a
    cmp word [bss_91a8], byte 0      ; 0x302d
    jne short @..leaf_loc_JQNJ.l11   ; 0x3032
    mov ax, 3                        ; 0x3034
@..leaf_loc_JQNJ.l11:
    mov cx, 0                        ; 0x3037
    cmp word [bp + 0x6], byte 0x0d   ; 0x303a
    jne short @..leaf_loc_JQNJ.l12   ; 0x303e
    mov cx, 1                        ; 0x3040
@..leaf_loc_JQNJ.l12:
    add ax, cx                       ; 0x3043
    mov word [bp - 0x0008], ax       ; 0x3045
    mov word [bp - 0x000a], 0        ; 0x3048
    jmp short @..leaf_loc_JQNJ.l15   ; 0x304d
leaf_loc_304f:
    mov word [bp - 0x000c], 0xa      ; 0x304f
    mov ax, word [bp + 0x4]          ; 0x3054
    mov cx, 4                        ; 0x3057
    shl ax, cl                       ; 0x305a
    mov cx, word [bp - 0x0012]       ; 0x305c
    shl cx, 1                        ; 0x305f
    shl cx, 1                        ; 0x3061
    shl cx, 1                        ; 0x3063
    add ax, cx                       ; 0x3065
    mov cx, word [bp - 0x0006]       ; 0x3067
    shl cx, 1                        ; 0x306a
    shl cx, 1                        ; 0x306c
    add ax, cx                       ; 0x306e
    mov bx, ax                       ; 0x3070
    mov ax, word [bx + 0x526]        ; 0x3072
    mov word [bp - 0x000e], ax       ; 0x3076
    mov ax, word [bx + 0x528]        ; 0x3079
    mov word [bp - 0x0010], ax       ; 0x307d
    mov word [bp - 0x0008], 0xc      ; 0x3080
    mov ax, 0xe                      ; 0x3085
    cmp word [bp + 0x6], byte 0x0e   ; 0x3088
    jne short @..leaf_loc_JQNJ.l13   ; 0x308c
    mov ax, 0xd                      ; 0x308e
@..leaf_loc_JQNJ.l13:
    mov word [bp - 0x000a], ax       ; 0x3091
    jmp short @..leaf_loc_JQNJ.l15   ; 0x3094
jumptable_3096:
    dw leaf_loc_2efa - IMAGE_BASE + __zres_end ; 0x3096
    dw leaf_loc_2f3c - IMAGE_BASE + __zres_end ; 0x3098
    dw leaf_loc_2f85 - IMAGE_BASE + __zres_end ; 0x309a
    dw leaf_loc_2f85 - IMAGE_BASE + __zres_end ; 0x309c
    dw leaf_loc_304f - IMAGE_BASE + __zres_end ; 0x309e
    dw leaf_loc_304f - IMAGE_BASE + __zres_end ; 0x30a0
@..leaf_loc_JQNJ.l14:
    sub ax, strict word 0xa          ; 0x30a2
    cmp ax, strict word 6            ; 0x30a5
    jae short @..leaf_loc_JQNJ.l15   ; 0x30a8
    xchg bx, ax                      ; 0x30aa
    shl bx, 1                        ; 0x30ab
    jmp [cs:bx + jumptable_3096 - IMAGE_BASE + __zres_end] ; 0x30ad
@..leaf_loc_JQNJ.l15:
    cmp word [bp - 0x000c], byte 0xff ; 0x30b2
    je short @..leaf_loc_JQNJ.l16    ; 0x30b6
    mov ax, 3                        ; 0x30b8
    push ax                          ; 0x30bb
    mov ax, 1                        ; 0x30bc
    push ax                          ; 0x30bf
    push word [bp - 0x0006]          ; 0x30c0
    mov ax, word [bp + 0x4]          ; 0x30c3
    shl ax, 1                        ; 0x30c6
    mov bx, ax                       ; 0x30c8
    push word [bx + 0x576]           ; 0x30ca
    push word [bp + 0x4]             ; 0x30ce
    mov ax, 0xf8                     ; 0x30d1
    push ax                          ; 0x30d4
    mov ax, 0x48                     ; 0x30d5
    push ax                          ; 0x30d8
    mov ax, 0                        ; 0x30d9
    push ax                          ; 0x30dc
    push ax                          ; 0x30dd
    push word [bp - 0x000a]          ; 0x30de
    push word [bp - 0x0008]          ; 0x30e1
    push word [bp - 0x0010]          ; 0x30e4
    push word [bp - 0x000e]          ; 0x30e7
    push word [bp - 0x000c]          ; 0x30ea
    call api_idx_0004_RTNM           ; 0x30ed
    add sp, byte 0x1c                ; 0x30f0
@..leaf_loc_JQNJ.l16:
    ret                              ; 0x30f3
