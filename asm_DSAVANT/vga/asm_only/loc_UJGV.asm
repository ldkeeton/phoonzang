; auto-generated
; asm only
loc_UJGV:
    dec ax                           ; 0x0e71
    mov cl, 2                        ; 0x0e72
    shl ax, cl                       ; 0x0e74
    mov bx, 0x2eb                    ; 0x0e76
    add bx, ax                       ; 0x0e79
    mov word [bp - 0x0004], bx       ; 0x0e7b
    mov ax, word [cs:bx + 0x2]       ; 0x0e7e
    sub word [cs:cseg_0291 - IMAGE_BASE], ax ; 0x0e82
    mov word [bp - 0x0006], ax       ; 0x0e87
@..loc_UJGV.l1:
    mov bx, word [bp - 0x0004]       ; 0x0e8a
    mov di, word [cs:bx]             ; 0x0e8d
    mov dx, word [cs:cseg_0103 - IMAGE_BASE] ; 0x0e90
    mov es, dx                       ; 0x0e95
    mov ds, dx                       ; 0x0e97
    mov si, word [cs:bx + 0x4]       ; 0x0e99
    add dx, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x0e9d
    mov cx, word [cs:bx + 0x6]       ; 0x0ea2
    or cx, cx                        ; 0x0ea6
    jne short @..loc_UJGV.l2         ; 0x0ea8
    jmp near @..loc_UJGV.l8          ; 0x0eaa
@..loc_UJGV.l2:
    push cx                          ; 0x0ead
    mov ax, si                       ; 0x0eae
    mov cl, 0xa                      ; 0x0eb0
    shr ax, cl                       ; 0x0eb2
    mov word [cs:cseg_0e6d - IMAGE_BASE], ax ; 0x0eb4
    and si, strict word 0x3ff        ; 0x0eb8
    mov cl, 4                        ; 0x0ebc
    shl si, cl                       ; 0x0ebe
    mov ax, di                       ; 0x0ec0
    mov cl, 0xa                      ; 0x0ec2
    shr ax, cl                       ; 0x0ec4
    mov word [cs:cseg_0e6f - IMAGE_BASE], ax ; 0x0ec6
    and di, strict word 0x3ff        ; 0x0eca
    mov cl, 4                        ; 0x0ece
    shl di, cl                       ; 0x0ed0
    call leaf_loc_NKPG               ; 0x0ed2
    pop cx                           ; 0x0ed5
@..loc_UJGV.l3:
    push cx                          ; 0x0ed6
    mov cx, 0x10                     ; 0x0ed7
    rep movsb                        ; 0x0eda
    xor dx, dx                       ; 0x0edc
    cmp di, strict word 0x4000       ; 0x0ede
    jne short @..loc_UJGV.l4         ; 0x0ee2
    inc word [cs:cseg_0e6f - IMAGE_BASE] ; 0x0ee4
    inc dx                           ; 0x0ee9
@..loc_UJGV.l4:
    cmp si, strict word 0x4000       ; 0x0eea
    je short @..loc_UJGV.l5          ; 0x0eee
    cmp si, strict word 0x8000       ; 0x0ef0
    jne short @..loc_UJGV.l6         ; 0x0ef4
@..loc_UJGV.l5:
    inc word [cs:cseg_0e6d - IMAGE_BASE] ; 0x0ef6
    inc dx                           ; 0x0efb
@..loc_UJGV.l6:
    or dx, dx                        ; 0x0efc
    je short @..loc_UJGV.l7          ; 0x0efe
    call leaf_loc_NKPG               ; 0x0f00
@..loc_UJGV.l7:
    pop cx                           ; 0x0f03
    loop @..loc_UJGV.l3              ; 0x0f04
    mov bx, word [bp - 0x0004]       ; 0x0f06
    mov cx, word [bp - 0x0006]       ; 0x0f09
    mov ax, word [cs:bx + 0x4]       ; 0x0f0c
    sub ax, cx                       ; 0x0f10
    mov word [cs:bx], ax             ; 0x0f12
    add ax, word [cs:bx + 0x6]       ; 0x0f15
    mov word [cs:bx + 0x4], ax       ; 0x0f19
    mov ax, word [cs:bx + 0x6]       ; 0x0f1d
    mov word [cs:bx + 0x2], ax       ; 0x0f21
    add bx, byte 4                   ; 0x0f25
    mov word [bp - 0x0004], bx       ; 0x0f28
    jmp near @..loc_UJGV.l1          ; 0x0f2b
@..loc_UJGV.l8:
    mov bx, word [bp - 0x0004]       ; 0x0f2e
    xor ax, ax                       ; 0x0f31
    mov word [cs:bx], ax             ; 0x0f33
    mov word [cs:bx + 0x2], ax       ; 0x0f36
    ret                              ; 0x0f3a
