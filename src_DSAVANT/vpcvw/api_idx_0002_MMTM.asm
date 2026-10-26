; auto-generated
api_idx_0002_MMTM:
    mov ax, 0xfffe                   ; 0x435b
    call aztec_csav                  ; 0x435e
    mov word [bp - 2], 0             ; 0x4361
@..api_idx_0002_MMTM.l1:
    mov ax, 6                        ; 0x4366
    imul word [bp - 2]               ; 0x4369
    mov bx, ax                       ; 0x436c
    mov ax, word [bx + spell_table + spell_table_rec_size*212 + spell_table_rec.f_0002] ; 0x436e
    mov bx, word [bp + 4]            ; 0x4372
    mov cx, word [bx]                ; 0x4375
    cmp ax, cx                       ; 0x4377
    jne short @..api_idx_0002_MMTM.l2 ; 0x4379
    mov ax, 6                        ; 0x437b
    imul word [bp - 2]               ; 0x437e
    mov bx, ax                       ; 0x4381
    mov ax, word [bx + spell_table + spell_table_rec_size*212 + spell_table_rec.f_0004] ; 0x4383
    mov bx, word [bp + 6]            ; 0x4387
    mov cx, word [bx]                ; 0x438a
    cmp ax, cx                       ; 0x438c
    je short @..api_idx_0002_MMTM.l3 ; 0x438e
@..api_idx_0002_MMTM.l2:
    mov ax, 6                        ; 0x4390
    imul word [bp - 2]               ; 0x4393
    mov bx, ax                       ; 0x4396
    mov ax, word [bx + spell_table + spell_table_rec_size*212 + spell_table_rec.f_0004] ; 0x4398
    mov bx, word [bp + 4]            ; 0x439c
    mov cx, word [bx]                ; 0x439f
    cmp ax, cx                       ; 0x43a1
    jne short @..api_idx_0002_MMTM.l6 ; 0x43a3
    mov ax, 6                        ; 0x43a5
    imul word [bp - 2]               ; 0x43a8
    mov bx, ax                       ; 0x43ab
    mov ax, word [bx + spell_table + spell_table_rec_size*212 + spell_table_rec.f_0002] ; 0x43ad
    mov bx, word [bp + 6]            ; 0x43b1
    mov cx, word [bx]                ; 0x43b4
    cmp ax, cx                       ; 0x43b6
    jne short @..api_idx_0002_MMTM.l6 ; 0x43b8
@..api_idx_0002_MMTM.l3:
    mov bx, word [bp + 4]            ; 0x43ba
    mov al, byte [bx + 7]            ; 0x43bd
    sub ah, ah                       ; 0x43c0
    test ax, 0x20                    ; 0x43c2
    je short @..api_idx_0002_MMTM.l4 ; 0x43c5
    push word [bp + 6]               ; 0x43c7
    push bx                          ; 0x43ca
    call api_idx_004e_LTSQ           ; 0x43cb
    add sp, byte 4                   ; 0x43ce
    mov ax, 1                        ; 0x43d1
    ret                              ; 0x43d4
@..api_idx_0002_MMTM.l4:
    mov bx, word [bp + 6]            ; 0x43d5
    mov al, byte [bx + 7]            ; 0x43d8
    sub ah, ah                       ; 0x43db
    test ax, 0x20                    ; 0x43dd
    je short @..api_idx_0002_MMTM.l5 ; 0x43e0
    push word [bp + 4]               ; 0x43e2
    push bx                          ; 0x43e5
    call api_idx_004e_LTSQ           ; 0x43e6
    add sp, byte 4                   ; 0x43e9
    mov ax, 1                        ; 0x43ec
    ret                              ; 0x43ef
@..api_idx_0002_MMTM.l5:
    push word [bp + 8]               ; 0x43f0
    push word [bp + 6]               ; 0x43f3
    push word [bp + 4]               ; 0x43f6
    mov ax, 6                        ; 0x43f9
    imul word [bp - 2]               ; 0x43fc
    mov bx, ax                       ; 0x43ff
    push word [bx + spell_table + spell_table_rec_size*213] ; 0x4401
    call api_idx_0048_RGQH           ; 0x4405
    add sp, byte 8                   ; 0x4408
    mov ax, 1                        ; 0x440b
    ret                              ; 0x440e
@..api_idx_0002_MMTM.l6:
    inc word [bp - 2]                ; 0x440f
    mov ax, word [bp - 2]            ; 0x4412
    cmp ax, strict word 0xf          ; 0x4415
    jge short @..api_idx_0002_MMTM.l7 ; 0x4418
    jmp near @..api_idx_0002_MMTM.l1 ; 0x441a
@..api_idx_0002_MMTM.l7:
    mov ax, 0                        ; 0x441d
    ret                              ; 0x4420
