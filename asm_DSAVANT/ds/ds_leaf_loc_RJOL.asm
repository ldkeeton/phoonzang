; auto-generated
ds_leaf_loc_RJOL:
    push ax                          ; 0x3c0d
    push bx                          ; 0x3c0e
    push cx                          ; 0x3c0f
    push dx                          ; 0x3c10
    mov ax, word [cs:cseg_30dc - IMAGE_BASE] ; 0x3c11
    cwd                              ; 0x3c15
    mov bx, 0xb1                     ; 0x3c16
    idiv bx                          ; 0x3c19
    mov cx, dx                       ; 0x3c1b
    mov dx, 2                        ; 0x3c1d
    imul dx                          ; 0x3c20
    mov bx, ax                       ; 0x3c22
    mov ax, 0xab                     ; 0x3c24
    imul cx                          ; 0x3c27
    sub ax, bx                       ; 0x3c29
    jns short @..ds_leaf_loc_RJOL.l1 ; 0x3c2b
    add ax, 0x763d                   ; 0x3c2d
@..ds_leaf_loc_RJOL.l1:
    mov word [cs:cseg_30dc - IMAGE_BASE], ax ; 0x3c30
    mov ax, word [cs:cseg_30de - IMAGE_BASE] ; 0x3c34
    cwd                              ; 0x3c38
    mov bx, 0xb0                     ; 0x3c39
    idiv bx                          ; 0x3c3c
    mov cx, dx                       ; 0x3c3e
    mov dx, 0x23                     ; 0x3c40
    imul dx                          ; 0x3c43
    mov bx, ax                       ; 0x3c45
    mov ax, 0xac                     ; 0x3c47
    imul cx                          ; 0x3c4a
    sub ax, bx                       ; 0x3c4c
    jns short @..ds_leaf_loc_RJOL.l2 ; 0x3c4e
    add ax, 0x7663                   ; 0x3c50
@..ds_leaf_loc_RJOL.l2:
    mov word [cs:cseg_30de - IMAGE_BASE], ax ; 0x3c53
    mov ax, word [cs:cseg_30e0 - IMAGE_BASE] ; 0x3c57
    cwd                              ; 0x3c5b
    mov bx, 0xb2                     ; 0x3c5c
    idiv bx                          ; 0x3c5f
    mov cx, dx                       ; 0x3c61
    mov dx, 0x3f                     ; 0x3c63
    imul dx                          ; 0x3c66
    mov bx, ax                       ; 0x3c68
    mov ax, 0xaa                     ; 0x3c6a
    imul cx                          ; 0x3c6d
    sub ax, bx                       ; 0x3c6f
    jns short @..ds_leaf_loc_RJOL.l3 ; 0x3c71
    add ax, 0x7673                   ; 0x3c73
@..ds_leaf_loc_RJOL.l3:
    mov word [cs:cseg_30e0 - IMAGE_BASE], ax ; 0x3c76
    pop dx                           ; 0x3c7a
    pop cx                           ; 0x3c7b
    pop bx                           ; 0x3c7c
    pop ax                           ; 0x3c7d
    ret                              ; 0x3c7e
cseg_3c7f:

    times 24 db 0

