; auto-generated
leaf_loc_TSQO:
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
    jne short @..leaf_loc_TSQO.l1    ; 0x308c
    mov ax, 0xd                      ; 0x308e
@..leaf_loc_TSQO.l1:
    mov word [bp - 0x000a], ax       ; 0x3091
    jmp short loc_LIQJ               ; 0x3094
jumptable_3096:
    dw leaf_loc_URUM - IMAGE_BASE + 0x5055     ; 0x3096
    dw leaf_loc_JNNQ - IMAGE_BASE + 0x5055     ; 0x3098
    dw leaf_loc_MGPR - IMAGE_BASE + 0x5055     ; 0x309a
    dw leaf_loc_MGPR - IMAGE_BASE + 0x5055     ; 0x309c
    dw leaf_loc_TSQO - IMAGE_BASE + 0x5055     ; 0x309e
    dw leaf_loc_TSQO - IMAGE_BASE + 0x5055     ; 0x30a0
loc_30a2:
    sub ax, strict word 0xa          ; 0x30a2
    cmp ax, strict word 6            ; 0x30a5
    jae short loc_LIQJ               ; 0x30a8
    xchg bx, ax                      ; 0x30aa
    shl bx, 1                        ; 0x30ab
    jmp [cs:bx - 0x7f23]             ; 0x30ad
loc_LIQJ:
    cmp word [bp - 0x000c], byte 0xff ; 0x30b2
    je short loc_PLIR                ; 0x30b6
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
loc_PLIR:
    ret                              ; 0x30f3
