; auto-generated
api_idx_0006_UHJH:
    mov ax, 0xfffa                   ; 0x148d
    call aztec_csav                  ; 0x1490
    mov ax, word [bp + 0xc]          ; 0x1493
    inc ax                           ; 0x1496
    push ax                          ; 0x1497
    call random_below                ; 0x1498
    pop cx                           ; 0x149b
    add ax, word [bp + 0xa]          ; 0x149c
    mov word [bp - 4], ax            ; 0x149f
    cmp ax, word [party_char_count]  ; 0x14a2
    jle short .forward1              ; 0x14a6
    mov ax, word [party_char_count]  ; 0x14a8
    mov word [bp - 4], ax            ; 0x14ab
.forward1:
    mov ax, word [party_char_count]  ; 0x14ae
    sub ax, word [bp - 4]            ; 0x14b1
    inc ax                           ; 0x14b4
    push ax                          ; 0x14b5
    call random_below                ; 0x14b6
    pop cx                           ; 0x14b9
    mov word [bp - 2], ax            ; 0x14ba
    push word [bp - 4]               ; 0x14bd
    call random_below                ; 0x14c0
    pop cx                           ; 0x14c3
    mov cx, ax                       ; 0x14c4
    mov ax, word [bp - 2]            ; 0x14c6
    add cx, ax                       ; 0x14c9
    mov word [bp - 6], cx            ; 0x14cb
    mov ax, word [bp - 2]            ; 0x14ce
    mov bx, word [bp + 4]            ; 0x14d1
    mov word [bx], ax                ; 0x14d4
    mov ax, word [bp - 4]            ; 0x14d6
    mov bx, word [bp + 6]            ; 0x14d9
    mov word [bx], ax                ; 0x14dc
    mov ax, word [bp - 6]            ; 0x14de
    mov bx, word [bp + 8]            ; 0x14e1
    mov word [bx], ax                ; 0x14e4
    ret                              ; 0x14e6
