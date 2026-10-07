api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x6665
    call ds_dispatch_f40b            ; 0x6668
    mov word [data_95b2], 0          ; 0x666b
    cmp word [data_904c], byte 0     ; 0x6671
    jne short @..api_idx_0004_3.l3   ; 0x6676
    call api_idx_00aa                ; 0x6678
    call 0xd9ca                      ; 0x667b
    mov word [data_a494], ax         ; 0x667e
    test ax, ax                      ; 0x6681
    jne short @..api_idx_0004_3.l1   ; 0x6683
    mov word [bp - 0x0002], 0xffff   ; 0x6685
    jmp short @..api_idx_0004_3.l2   ; 0x668a
@..api_idx_0004_3.l1:
    mov ax, 0xc                      ; 0x668c
    push ax                          ; 0x668f
    call ds_dispatch_b75e            ; 0x6690
    pop cx                           ; 0x6693
    push word [bp + 0x4]             ; 0x6694
    call api_idx_0038_2              ; 0x6697
    pop cx                           ; 0x669a
    mov word [bp - 0x0002], ax       ; 0x669b
@..api_idx_0004_3.l2:
    mov word [data_904c], 1          ; 0x669e
    jmp short @..api_idx_0004_3.l4   ; 0x66a4
@..api_idx_0004_3.l3:
    push word [bp + 0x4]             ; 0x66a6
    call api_idx_0038_2              ; 0x66a9
    pop cx                           ; 0x66ac
    mov word [bp - 0x0002], ax       ; 0x66ad
@..api_idx_0004_3.l4:
    cmp word [bp - 0x0002], byte 0xff ; 0x66b0
    jne short @..api_idx_0004_3.l5   ; 0x66b4
    mov ax, 0xc6                     ; 0x66b6
    push ax                          ; 0x66b9
    mov ax, 0x109                    ; 0x66ba
    push ax                          ; 0x66bd
    mov ax, 0x8e                     ; 0x66be
    push ax                          ; 0x66c1
    mov ax, api_idx_0002             ; 0x66c2
    push ax                          ; 0x66c5
    call ds_dispatch_e8da            ; 0x66c6
    add sp, byte 8                   ; 0x66c9
    ret                              ; 0x66cc
