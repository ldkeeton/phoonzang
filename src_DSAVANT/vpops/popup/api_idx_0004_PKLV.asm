; auto-generated
api_idx_0004_PKLV:
    mov ax, 0xfffc                   ; 0x4528
    call aztec_csav                  ; 0x452b
    mov word [bp - 0x0004], 0        ; 0x452e
    mov word [bp - 0x0002], 0        ; 0x4533
    jmp short @..api_idx_0004_PKLV.l3 ; 0x4538
@..api_idx_0004_PKLV.l1:
    mov ax, 0x2c                     ; 0x453a
    imul word [bp - 0x0002]          ; 0x453d
    mov si, ax                       ; 0x4540
    mov ax, word [bp + 0x6]          ; 0x4542
    shl ax, 1                        ; 0x4545
    mov bx, ax                       ; 0x4547
    mov bx, word [bx + party_char]   ; 0x4549
    mov ax, word [bx + si + 0x4]     ; 0x454d
    mov cx, word [bx + si + 0x2]     ; 0x4550
    sub ax, cx                       ; 0x4553
    cmp ax, word [bp - 0x0004]       ; 0x4555
    jle short @..api_idx_0004_PKLV.l2 ; 0x4558
    mov ax, 2                        ; 0x455a
    push ax                          ; 0x455d
    call random_below                ; 0x455e
    pop cx                           ; 0x4561
    test ax, ax                      ; 0x4562
    jne short @..api_idx_0004_PKLV.l2 ; 0x4564
    mov al, byte [bp + 0x6]          ; 0x4566
    mov bx, word [bp + 0x4]          ; 0x4569
    mov byte [bx + 0x1f], al         ; 0x456c
    mov al, byte [bp - 0x0002]       ; 0x456f
    mov bx, word [bp + 0x4]          ; 0x4572
    mov byte [bx + 0x20], al         ; 0x4575
    mov ax, 0x2c                     ; 0x4578
    imul word [bp - 0x0002]          ; 0x457b
    mov si, ax                       ; 0x457e
    mov ax, word [bp + 0x6]          ; 0x4580
    shl ax, 1                        ; 0x4583
    mov bx, ax                       ; 0x4585
    mov bx, word [bx + party_char]   ; 0x4587
    mov ax, word [bx + si + 0x4]     ; 0x458b
    mov cx, word [bx + si + 0x2]     ; 0x458e
    sub ax, cx                       ; 0x4591
    mov word [bp - 0x0004], ax       ; 0x4593
@..api_idx_0004_PKLV.l2:
    inc word [bp - 0x0002]           ; 0x4596
@..api_idx_0004_PKLV.l3:
    mov ax, word [bp + 0x6]          ; 0x4599
    shl ax, 1                        ; 0x459c
    mov bx, ax                       ; 0x459e
    mov bx, word [bx + party_char]   ; 0x45a0
    mov al, byte [bx + 0x1a1]        ; 0x45a4
    sub ah, ah                       ; 0x45a8
    cmp ax, word [bp - 0x0002]       ; 0x45aa
    jg short @..api_idx_0004_PKLV.l1 ; 0x45ad
    mov ax, word [bp - 0x0004]       ; 0x45af
    ret                              ; 0x45b2
