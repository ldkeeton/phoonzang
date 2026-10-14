; auto-generated
api_idx_0002_KUIN:
    mov ax, 0xfffe                   ; 0x93ab
    call aztec_csav                  ; 0x93ae
    mov word [bp - 0x0002], 0        ; 0x93b1
@..api_idx_0002_KUIN.l1:
    mov ax, 0xf                      ; 0x93b6
    imul word [bp + 0x4]             ; 0x93b9
    push ax                          ; 0x93bc
    mov ax, 3                        ; 0x93bd
    imul word [bp - 0x0002]          ; 0x93c0
    mov cx, ax                       ; 0x93c3
    pop ax                           ; 0x93c5
    add ax, cx                       ; 0x93c6
    mov bx, ax                       ; 0x93c8
    mov al, byte [bx - 0x77d4]       ; 0x93ca
    cbw                              ; 0x93ce
    cmp ax, word [bp + 0x6]          ; 0x93cf
    jne short @..api_idx_0002_KUIN.l2 ; 0x93d2
    mov al, byte [bx - 0x77d3]       ; 0x93d4
    cbw                              ; 0x93d8
    cmp ax, word [bp + 0x8]          ; 0x93d9
    jne short @..api_idx_0002_KUIN.l2 ; 0x93dc
    mov al, byte [bx - 0x77d2]       ; 0x93de
    cbw                              ; 0x93e2
    cmp ax, word [bp + 0xa]          ; 0x93e3
    jne short @..api_idx_0002_KUIN.l2 ; 0x93e6
    ret                              ; 0x93e8
@..api_idx_0002_KUIN.l2:
    inc word [bp - 0x0002]           ; 0x93e9
    mov ax, word [bp - 0x0002]       ; 0x93ec
    cmp ax, strict word 5            ; 0x93ef
    jl short @..api_idx_0002_KUIN.l1 ; 0x93f2
    mov al, byte [bp + 0x6]          ; 0x93f4
    push ax                          ; 0x93f7
    mov ax, 0xf                      ; 0x93f8
    imul word [bp + 0x4]             ; 0x93fb
    mov cx, ax                       ; 0x93fe
    mov ax, 0x26                     ; 0x9400
    imul word [bp + 0x4]             ; 0x9403
    mov bx, ax                       ; 0x9406
    mov al, byte [bx - 0x7b02]       ; 0x9408
    sub ah, ah                       ; 0x940c
    mov dx, 3                        ; 0x940e
    imul dx                          ; 0x9411
    mov dx, ax                       ; 0x9413
    add cx, ax                       ; 0x9415
    mov bx, cx                       ; 0x9417
    pop ax                           ; 0x9419
    mov byte [bx - 0x77d4], al       ; 0x941a
    mov al, byte [bp + 0x8]          ; 0x941e
    mov byte [bx - 0x77d3], al       ; 0x9421
    mov al, byte [bp + 0xa]          ; 0x9425
    mov byte [bx - 0x77d2], al       ; 0x9428
    mov ax, 0x26                     ; 0x942c
    imul word [bp + 0x4]             ; 0x942f
    mov bx, ax                       ; 0x9432
    mov al, byte [bx - 0x7b02]       ; 0x9434
    sub ah, ah                       ; 0x9438
    inc ax                           ; 0x943a
    mov cx, 5                        ; 0x943b
    cwd                              ; 0x943e
    idiv cx                          ; 0x943f
    mov ax, dx                       ; 0x9441
    mov byte [bx - 0x7b02], al       ; 0x9443
    ret                              ; 0x9447
loc_9448:
    mov ax, 0                        ; 0x9448
    call aztec_csav                  ; 0x944b
    mov ax, 0x26                     ; 0x944e
    imul word [bp + 0x4]             ; 0x9451
    mov bx, ax                       ; 0x9454
    mov al, byte [bx - 0x7b14]       ; 0x9456
    sub ah, ah                       ; 0x945a
    cmp ax, word [bp + 0x6]          ; 0x945c
    jne short @..loc_9448.l1         ; 0x945f
    mov ax, 1                        ; 0x9461
    jmp short @..loc_9448.l2         ; 0x9464
@..loc_9448.l1:
    mov ax, 0                        ; 0x9466
@..loc_9448.l2:
    ret                              ; 0x9469
loc_946a:
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
    call api_idx_0006_NOOH           ; 0x948e
    add sp, byte 6                   ; 0x9491
    test ax, ax                      ; 0x9494
    jne short @..loc_946a.l1         ; 0x9496
    mov ax, 0x26                     ; 0x9498
    imul word [bp + 0x4]             ; 0x949b
    mov bx, ax                       ; 0x949e
    mov byte [bx - 0x7b16], 0        ; 0x94a0
@..loc_946a.l1:
    ret                              ; 0x94a5
loc_94a6:
    mov ax, 0                        ; 0x94a6
    call aztec_csav                  ; 0x94a9
    mov ax, 3                        ; 0x94ac
    push ax                          ; 0x94af
    call ds_app_GGUI                 ; 0x94b0
    pop cx                           ; 0x94b3
    test ax, ax                      ; 0x94b4
    je short @..loc_94a6.l1          ; 0x94b6
    mov ax, 0x26                     ; 0x94b8
    imul word [bp + 0x4]             ; 0x94bb
    mov bx, ax                       ; 0x94be
    mov al, byte [bx - 0x7b00]       ; 0x94c0
    cbw                              ; 0x94c4
    push ax                          ; 0x94c5
    mov al, byte [bx - 0x7aff]       ; 0x94c6
    cbw                              ; 0x94ca
    mov cx, 2                        ; 0x94cb
    cwd                              ; 0x94ce
    idiv cx                          ; 0x94cf
    mov cx, ax                       ; 0x94d1
    pop ax                           ; 0x94d3
    cmp ax, cx                       ; 0x94d4
    jge short @..loc_94a6.l1         ; 0x94d6
    mov al, byte [bx - 0x7b17]       ; 0x94d8
    mov byte [bx - 0x7b15], al       ; 0x94dc
    push word [bp + 0x4]             ; 0x94e0
    call loc_946a                    ; 0x94e3
    pop cx                           ; 0x94e6
    mov ax, 1                        ; 0x94e7
    ret                              ; 0x94ea
@..loc_94a6.l1:
    mov ax, 0                        ; 0x94eb
    ret                              ; 0x94ee
