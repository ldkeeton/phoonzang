; auto-generated
api_idx_0006_NNSP:
    mov ax, 0xfffa                   ; 0x75ae
    call aztec_csav                  ; 0x75b1
    mov word [bp - 4], 0             ; 0x75b4
    mov word [bp - 2], 0             ; 0x75b9
@..api_idx_0006_NNSP.l1:
    mov ax, 2                        ; 0x75be
    push ax                          ; 0x75c1
    mov ax, word [bp - 2]            ; 0x75c2
    shl ax, 1                        ; 0x75c5
    push ax                          ; 0x75c7
    mov ax, word [party_region]      ; 0x75c8
    shl ax, 1                        ; 0x75cb
    mov si, ax                       ; 0x75cd
    mov bx, word [maze_tables]       ; 0x75cf
    push word [bx + si + 0x3c0]      ; 0x75d3
    call get_bits                    ; 0x75d7
    add sp, byte 6                   ; 0x75da
    mov cx, word [bp - 2]            ; 0x75dd
    shl cx, 1                        ; 0x75e0
    mov bx, cx                       ; 0x75e2
    mov word [bx + adjacent_object_type], ax ; 0x75e4
    mov ax, 2                        ; 0x75e8
    push ax                          ; 0x75eb
    add cx, byte 8                   ; 0x75ec
    mov ax, cx                       ; 0x75ef
    push ax                          ; 0x75f1
    mov ax, word [party_region]      ; 0x75f2
    shl ax, 1                        ; 0x75f5
    mov si, ax                       ; 0x75f7
    mov bx, word [maze_tables]       ; 0x75f9
    push word [bx + si + 0x3c0]      ; 0x75fd
    call get_bits                    ; 0x7601
    add sp, byte 6                   ; 0x7604
    cmp ax, strict word 2            ; 0x7607
    jne short @..api_idx_0006_NNSP.l2 ; 0x760a
    mov word [bp - 4], 1             ; 0x760c
@..api_idx_0006_NNSP.l2:
    inc word [bp - 2]                ; 0x7611
    mov ax, word [bp - 2]            ; 0x7614
    cmp ax, strict word 4            ; 0x7617
    jl short @..api_idx_0006_NNSP.l1 ; 0x761a
    cmp word [bp - 4], byte 0        ; 0x761c
    je short @..api_idx_0006_NNSP.l3 ; 0x7620
    call api_idx_0004_THPM           ; 0x7622
@..api_idx_0006_NNSP.l3:
    mov bx, word [maze_tables]       ; 0x7625
    mov si, word [party_region]      ; 0x7629
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x762d
    sub ah, ah                       ; 0x7631
    mov word [bp - 6], ax            ; 0x7633
    mov ax, 2                        ; 0x7636
    push ax                          ; 0x7639
    mov ax, 5                        ; 0x763a
    push ax                          ; 0x763d
    push word [bp - 6]               ; 0x763e
    call get_bits                    ; 0x7641
    add sp, byte 6                   ; 0x7644
    push ax                          ; 0x7647
    call mark_region_bits            ; 0x7648
    pop cx                           ; 0x764b
    ret                              ; 0x764c
