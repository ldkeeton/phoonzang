; auto-generated
loc_PQKO:
    mov ax, 0                        ; 0x9448
    call aztec_csav                  ; 0x944b
    mov ax, 0x26                     ; 0x944e
    imul word [bp + 0x4]             ; 0x9451
    mov bx, ax                       ; 0x9454
    mov al, byte [bx - 0x7b14]       ; 0x9456
    sub ah, ah                       ; 0x945a
    cmp ax, word [bp + 0x6]          ; 0x945c
    jne short @..loc_PQKO.l1         ; 0x945f
    mov ax, 1                        ; 0x9461
    jmp short @..loc_PQKO.l2         ; 0x9464
@..loc_PQKO.l1:
    mov ax, 0                        ; 0x9466
@..loc_PQKO.l2:
    ret                              ; 0x9469
loc_QJRN:
    mov ax, 0                        ; 0x946a
    call aztec_csav                  ; 0x946d
    mov ax, 0x26                     ; 0x9470
    imul word [bp + 0x4]             ; 0x9473
    mov bx, ax                       ; 0x9476
    mov byte [bx - 0x7b16], 3        ; 0x9478
    mov al, byte [bx - 0x7b15]       ; 0x947d
    sub ah, ah                       ; 0x9481
    push ax                          ; 0x9483
    mov al, byte [bx - 0x7b14]       ; 0x9484
    sub ah, ah                       ; 0x9488
    push ax                          ; 0x948a
    push word [bp + 0x4]             ; 0x948b
    call api_idx_0006_TNSP           ; 0x948e
    add sp, byte 6                   ; 0x9491
    test ax, ax                      ; 0x9494
    jne short @..loc_QJRN.l1         ; 0x9496
    mov ax, 0x26                     ; 0x9498
    imul word [bp + 0x4]             ; 0x949b
    mov bx, ax                       ; 0x949e
    mov byte [bx - 0x7b16], 0        ; 0x94a0
@..loc_QJRN.l1:
    ret                              ; 0x94a5
