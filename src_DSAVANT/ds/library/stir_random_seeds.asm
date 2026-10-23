; auto-generated
stir_random_seeds:
    push ax                          ; 0x3c0d
    push bx                          ; 0x3c0e
    push cx                          ; 0x3c0f
    push dx                          ; 0x3c10
    mov ax, word [cs:random_seed_a - IMAGE_BASE] ; 0x3c11
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
    jns short @..stir_random_seeds.l1 ; 0x3c2b
    add ax, glyph_y_table + 0x788    ; 0x3c2d
@..stir_random_seeds.l1:
    mov word [cs:random_seed_a - IMAGE_BASE], ax ; 0x3c30
    mov ax, word [cs:random_seed_b - IMAGE_BASE] ; 0x3c34
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
    jns short @..stir_random_seeds.l2 ; 0x3c4e
    add ax, glyph_y_table + 0x7ae    ; 0x3c50
@..stir_random_seeds.l2:
    mov word [cs:random_seed_b - IMAGE_BASE], ax ; 0x3c53
    mov ax, word [cs:random_seed_c - IMAGE_BASE] ; 0x3c57
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
    jns short @..stir_random_seeds.l3 ; 0x3c71
    add ax, glyph_y_table + 0x7be    ; 0x3c73
@..stir_random_seeds.l3:
    mov word [cs:random_seed_c - IMAGE_BASE], ax ; 0x3c76
    pop dx                           ; 0x3c7a
    pop cx                           ; 0x3c7b
    pop bx                           ; 0x3c7c
    pop ax                           ; 0x3c7d
    ret                              ; 0x3c7e
