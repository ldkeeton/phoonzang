api_idx_0002_8:
    mov ax, 0xfffe                   ; 0x8676
    call ds_dispatch_f40b            ; 0x8679
    mov ax, 0                        ; 0x867c
    push ax                          ; 0x867f
    push ax                          ; 0x8680
    push word [dseg_93f8]            ; 0x8681
    push word [dseg_93f6]            ; 0x8685
    call ds_dispatch_e942            ; 0x8689
    add sp, byte 8                   ; 0x868c
    mov word [bp - 0x0002], 0        ; 0x868f
    jmp near @..api_idx_0002_8.l2    ; 0x8694
@..api_idx_0002_8.l1:
    mov ax, 0                        ; 0x8697
    push ax                          ; 0x869a
    mov ax, word [bp + 0x6]          ; 0x869b
    shl ax, 1                        ; 0x869e
    mov bx, ax                       ; 0x86a0
    db 0xff, 0xb7, 0x30, 0x00 ; push word [bx + 0x30]
    call ds_dispatch_e823            ; 0x86a6
    add sp, byte 4                   ; 0x86a9
    mov ax, 6                        ; 0x86ac
    imul word [bp - 0x0002]          ; 0x86af
    add ax, strict word 0x72         ; 0x86b2
    push ax                          ; 0x86b5
    mov ax, 6                        ; 0x86b6
    push ax                          ; 0x86b9
    call ds_dispatch_e809            ; 0x86ba
    add sp, byte 4                   ; 0x86bd
    mov ax, 0                        ; 0x86c0
    push ax                          ; 0x86c3
    mov ax, 0x14                     ; 0x86c4
    imul word [bp - 0x0002]          ; 0x86c7
    add ax, 0xe38                    ; 0x86ca
    push ax                          ; 0x86cd
    call ds_dispatch_e84e            ; 0x86ce
    add sp, byte 4                   ; 0x86d1
    mov ax, 6                        ; 0x86d4
    imul word [bp - 0x0002]          ; 0x86d7
    add ax, strict word 0x72         ; 0x86da
    push ax                          ; 0x86dd
    mov ax, 0x85                     ; 0x86de
    push ax                          ; 0x86e1
    call ds_dispatch_e809            ; 0x86e2
    add sp, byte 4                   ; 0x86e5
    mov ax, 0                        ; 0x86e8
    push ax                          ; 0x86eb
    mov ax, 1                        ; 0x86ec
    push ax                          ; 0x86ef
    call ds_dispatch_e823            ; 0x86f0
    add sp, byte 4                   ; 0x86f3
    mov ax, 0                        ; 0x86f6
    push ax                          ; 0x86f9
    mov ax, 3                        ; 0x86fa
    push ax                          ; 0x86fd
    mov ax, 0x248                    ; 0x86fe
    imul word [bp + 0x4]             ; 0x8701
    mov cx, word [bp - 0x0002]       ; 0x8704
    shl cx, 1                        ; 0x8707
    mov si, cx                       ; 0x8709
    mov bx, word [bp + 0xa]          ; 0x870b
    mov cx, word [bx + si]           ; 0x870e
    add ax, cx                       ; 0x8710
    mov bx, ax                       ; 0x8712
    mov al, byte [bx + 0x5d6c]       ; 0x8714
    sub ah, ah                       ; 0x8718
    push ax                          ; 0x871a
    call ds_dispatch_b2e7            ; 0x871b
    add sp, byte 6                   ; 0x871e
    inc word [bp - 0x0002]           ; 0x8721
@..api_idx_0002_8.l2:
    mov ax, word [bp - 0x0002]       ; 0x8724
    cmp ax, word [bp + 0x8]          ; 0x8727
    jge short @..api_idx_0002_8.l3   ; 0x872a
    jmp near @..api_idx_0002_8.l1    ; 0x872c
@..api_idx_0002_8.l3:
    ret                              ; 0x872f
