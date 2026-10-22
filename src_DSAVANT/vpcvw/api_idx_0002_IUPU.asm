; auto-generated
api_idx_0002_IUPU:
    mov ax, 0xfffe                   ; 0x4421
    call aztec_csav                  ; 0x4424
    mov bx, word [bp + 0x4]          ; 0x4427
    mov ax, word [bx]                ; 0x442a
    mov bx, word [bp + 0x6]          ; 0x442c
    mov cx, word [bx]                ; 0x442f
    cmp ax, cx                       ; 0x4431
    je short @..api_idx_0002_IUPU.l1 ; 0x4433
    jmp near @..api_idx_0002_IUPU.l7 ; 0x4435
@..api_idx_0002_IUPU.l1:
    mov bx, word [bp + 0x4]          ; 0x4438
    mov al, byte [bx + 0x4]          ; 0x443b
    sub ah, ah                       ; 0x443e
    mov bx, ax                       ; 0x4440
    cmp byte [bx + 0x60e], 1         ; 0x4442
    je short @..api_idx_0002_IUPU.l2 ; 0x4447
    jmp near @..api_idx_0002_IUPU.l7 ; 0x4449
@..api_idx_0002_IUPU.l2:
    mov bx, word [bp + 0x4]          ; 0x444c
    mov al, byte [bx + 0x6]          ; 0x444f
    sub ah, ah                       ; 0x4452
    push ax                          ; 0x4454
    mov bx, word [bp + 0x6]          ; 0x4455
    mov al, byte [bx + 0x6]          ; 0x4458
    sub ah, ah                       ; 0x445b
    mov cx, ax                       ; 0x445d
    pop ax                           ; 0x445f
    add ax, cx                       ; 0x4460
    mov word [bp - 0x0002], ax       ; 0x4462
    mov bx, word [bp + 0x4]          ; 0x4465
    mov al, byte [bx + 0x7]          ; 0x4468
    sub ah, ah                       ; 0x446b
    test ax, 0x80                    ; 0x446d
    je short @..api_idx_0002_IUPU.l3 ; 0x4470
    mov bx, word [bp + 0x6]          ; 0x4472
    mov al, byte [bx + 0x7]          ; 0x4475
    sub ah, ah                       ; 0x4478
    or ax, 0x80                      ; 0x447a
    mov byte [bx + 0x7], al          ; 0x447d
    push word [bp + 0x8]             ; 0x4480
    push word [bp + 0xa]             ; 0x4483
    call aztec_strcpy                ; 0x4486
    add sp, byte 4                   ; 0x4489
@..api_idx_0002_IUPU.l3:
    mov bx, word [bp + 0x6]          ; 0x448c
    mov al, byte [bx + 0x7]          ; 0x448f
    sub ah, ah                       ; 0x4492
    test ax, 0x80                    ; 0x4494
    je short @..api_idx_0002_IUPU.l4 ; 0x4497
    mov bx, word [bp + 0x4]          ; 0x4499
    mov al, byte [bx + 0x7]          ; 0x449c
    sub ah, ah                       ; 0x449f
    or ax, 0x80                      ; 0x44a1
    mov byte [bx + 0x7], al          ; 0x44a4
    push word [bp + 0xa]             ; 0x44a7
    push word [bp + 0x8]             ; 0x44aa
    call aztec_strcpy                ; 0x44ad
    add sp, byte 4                   ; 0x44b0
@..api_idx_0002_IUPU.l4:
    cmp word [bp - 0x0002], strict word 0xfa ; 0x44b3
    jg short @..api_idx_0002_IUPU.l5 ; 0x44b8
    mov al, byte [bp - 0x0002]       ; 0x44ba
    mov bx, word [bp + 0x4]          ; 0x44bd
    mov byte [bx + 0x6], al          ; 0x44c0
    mov bx, word [bp + 0x6]          ; 0x44c3
    mov word [bx], 0                 ; 0x44c6
    jmp short @..api_idx_0002_IUPU.l6 ; 0x44ca
@..api_idx_0002_IUPU.l5:
    mov bx, word [bp + 0x4]          ; 0x44cc
    mov byte [bx + 0x6], 0xfa        ; 0x44cf
    mov ax, word [bp - 0x0002]       ; 0x44d3
    add ax, 0xff06                   ; 0x44d6
    mov bx, word [bp + 0x6]          ; 0x44d9
    mov byte [bx + 0x6], al          ; 0x44dc
@..api_idx_0002_IUPU.l6:
    mov ax, 0                        ; 0x44df
    push ax                          ; 0x44e2
    call play_sound_effect           ; 0x44e3
    pop cx                           ; 0x44e6
    jmp short @..api_idx_0002_IUPU.l8 ; 0x44e7
@..api_idx_0002_IUPU.l7:
    push word [bp + 0x8]             ; 0x44e9
    push word [bp + 0x6]             ; 0x44ec
    push word [bp + 0x4]             ; 0x44ef
    call api_idx_0002_MMTM           ; 0x44f2
    add sp, byte 6                   ; 0x44f5
    test ax, ax                      ; 0x44f8
    je short @..api_idx_0002_IUPU.l8 ; 0x44fa
    mov ax, 0                        ; 0x44fc
    push ax                          ; 0x44ff
    call play_sound_effect           ; 0x4500
    pop cx                           ; 0x4503
@..api_idx_0002_IUPU.l8:
    ret                              ; 0x4504
