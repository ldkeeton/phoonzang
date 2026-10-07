api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x435b
    call ds_dispatch_f40b            ; 0x435e
    mov word [bp - 0x0002], 0        ; 0x4361
@..api_idx_0002_4.l1:
    mov ax, 6                        ; 0x4366
    imul word [bp - 0x0002]          ; 0x4369
    mov bx, ax                       ; 0x436c
    mov ax, word [bx + 0xb1a]        ; 0x436e
    mov bx, word [bp + 0x4]          ; 0x4372
    mov cx, word [bx]                ; 0x4375
    cmp ax, cx                       ; 0x4377
    jne short @..api_idx_0002_4.l2   ; 0x4379
    mov ax, 6                        ; 0x437b
    imul word [bp - 0x0002]          ; 0x437e
    mov bx, ax                       ; 0x4381
    mov ax, word [bx + 0xb1c]        ; 0x4383
    mov bx, word [bp + 0x6]          ; 0x4387
    mov cx, word [bx]                ; 0x438a
    cmp ax, cx                       ; 0x438c
    je short @..api_idx_0002_4.l3    ; 0x438e
@..api_idx_0002_4.l2:
    mov ax, 6                        ; 0x4390
    imul word [bp - 0x0002]          ; 0x4393
    mov bx, ax                       ; 0x4396
    mov ax, word [bx + 0xb1c]        ; 0x4398
    mov bx, word [bp + 0x4]          ; 0x439c
    mov cx, word [bx]                ; 0x439f
    cmp ax, cx                       ; 0x43a1
    jne short @..api_idx_0002_4.l6   ; 0x43a3
    mov ax, 6                        ; 0x43a5
    imul word [bp - 0x0002]          ; 0x43a8
    mov bx, ax                       ; 0x43ab
    mov ax, word [bx + 0xb1a]        ; 0x43ad
    mov bx, word [bp + 0x6]          ; 0x43b1
    mov cx, word [bx]                ; 0x43b4
    cmp ax, cx                       ; 0x43b6
    jne short @..api_idx_0002_4.l6   ; 0x43b8
@..api_idx_0002_4.l3:
    mov bx, word [bp + 0x4]          ; 0x43ba
    mov al, byte [bx + 0x7]          ; 0x43bd
    sub ah, ah                       ; 0x43c0
    test ax, 0x20                    ; 0x43c2
    je short @..api_idx_0002_4.l4    ; 0x43c5
    push word [bp + 0x6]             ; 0x43c7
    push bx                          ; 0x43ca
    call api_idx_004e                ; 0x43cb
    add sp, byte 4                   ; 0x43ce
    mov ax, 1                        ; 0x43d1
    ret                              ; 0x43d4
