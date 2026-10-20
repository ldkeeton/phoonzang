; auto-generated
leaf_loc_JLIP:
    dec ax                           ; 0x4d55
    mov cl, 2                        ; 0x4d56
    shl ax, cl                       ; 0x4d58
    mov bx, cseg_0ffb - IMAGE_BASE   ; 0x4d5a
    add bx, ax                       ; 0x4d5d
    mov word [bp - 0x0004], bx       ; 0x4d5f
    mov ax, word [cs:bx + 0x2]       ; 0x4d62
    sub word [cs:cseg_10cd - IMAGE_BASE], ax ; 0x4d66
    mov word [bp - 0x0006], ax       ; 0x4d6b
@..leaf_loc_JLIP.l1:
    mov bx, word [bp - 0x0004]       ; 0x4d6e
    mov dx, word [cs:bx]             ; 0x4d71
    add dx, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x4d74
    mov es, dx                       ; 0x4d79
    mov dx, word [cs:bx + 0x4]       ; 0x4d7b
    add dx, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x4d7f
    mov ds, dx                       ; 0x4d84
    mov cx, word [cs:bx + 0x6]       ; 0x4d86
    or cx, cx                        ; 0x4d8a
    je short @..leaf_loc_JLIP.l3     ; 0x4d8c
@..leaf_loc_JLIP.l2:
    push cx                          ; 0x4d8e
    mov cx, 0x10                     ; 0x4d8f
    xor si, si                       ; 0x4d92
    xor di, di                       ; 0x4d94
    rep movsb                        ; 0x4d96
    mov cx, ds                       ; 0x4d98
    inc cx                           ; 0x4d9a
    mov ds, cx                       ; 0x4d9b
    mov cx, es                       ; 0x4d9d
    inc cx                           ; 0x4d9f
    mov es, cx                       ; 0x4da0
    pop cx                           ; 0x4da2
    loop @..leaf_loc_JLIP.l2         ; 0x4da3
    mov bx, word [bp - 0x0004]       ; 0x4da5
    mov cx, word [bp - 0x0006]       ; 0x4da8
    mov ax, word [cs:bx + 0x4]       ; 0x4dab
    sub ax, cx                       ; 0x4daf
    mov word [cs:bx], ax             ; 0x4db1
    add ax, word [cs:bx + 0x6]       ; 0x4db4
    mov word [cs:bx + 0x4], ax       ; 0x4db8
    mov ax, word [cs:bx + 0x6]       ; 0x4dbc
    mov word [cs:bx + 0x2], ax       ; 0x4dc0
    add bx, byte 4                   ; 0x4dc4
    mov word [bp - 0x0004], bx       ; 0x4dc7
    jmp short @..leaf_loc_JLIP.l1    ; 0x4dca
@..leaf_loc_JLIP.l3:
    mov bx, word [bp - 0x0004]       ; 0x4dcc
    xor ax, ax                       ; 0x4dcf
    mov word [cs:bx], ax             ; 0x4dd1
    mov word [cs:bx + 0x2], ax       ; 0x4dd4
    ret                              ; 0x4dd8
