; auto-generated
; asm only
ds_leaf_loc_KIMU:
    push bp                          ; 0x3ebb
    mov bp, sp                       ; 0x3ebc
    cld                              ; 0x3ebe
    push es                          ; 0x3ebf
    push si                          ; 0x3ec0
    mov ax, ds                       ; 0x3ec1
    mov es, ax                       ; 0x3ec3
    mov si, word [bp + 0x4]          ; 0x3ec5
    mov bx, word [bp + 0x6]          ; 0x3ec8
    mov dx, bx                       ; 0x3ecb
    mov cl, 3                        ; 0x3ecd
    shr bx, cl                       ; 0x3ecf
    mov cx, 7                        ; 0x3ed1
    and cx, dx                       ; 0x3ed4
    mov al, 1                        ; 0x3ed6
    shl al, cl                       ; 0x3ed8
    test byte [bx + si], al          ; 0x3eda
    je short @..ds_leaf_loc_KIMU.l1  ; 0x3edc
    mov ax, 1                        ; 0x3ede
    jmp short @..ds_leaf_loc_KIMU.l2 ; 0x3ee1
@..ds_leaf_loc_KIMU.l1:
    xor ax, ax                       ; 0x3ee3
@..ds_leaf_loc_KIMU.l2:
    pop si                           ; 0x3ee5
    pop es                           ; 0x3ee6
    mov sp, bp                       ; 0x3ee7
    pop bp                           ; 0x3ee9
    ret                              ; 0x3eea
