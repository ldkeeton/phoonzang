; auto-generated
loc_UUQO:
    push word [bp - 0x000a]          ; 0x5675
    push word [bp - 0x0008]          ; 0x5678
    push word [bp - 0x0016]          ; 0x567b
    call api_idx_0052_LJTK           ; 0x567e
    add sp, byte 6                   ; 0x5681
    mov ax, word [bp - 0x0016]       ; 0x5684
    add ax, strict word 0x12         ; 0x5687
    mov cx, 0x13                     ; 0x568a
    cwd                              ; 0x568d
    idiv cx                          ; 0x568e
    mov word [bp - 0x0016], dx       ; 0x5690
    cmp dx, byte 0x0e                ; 0x5693
    jne short loc_JOVO_569b          ; 0x5696
    dec word [bp - 0x0016]           ; 0x5698
loc_JOVO_569b:
    mov ax, word [bp - 0x000e]       ; 0x569b
    inc ax                           ; 0x569e
    push ax                          ; 0x569f
    mov ax, word [bp - 0x000c]       ; 0x56a0
    inc ax                           ; 0x56a3
    push ax                          ; 0x56a4
    mov ax, word [bp - 0x000a]       ; 0x56a5
    dec ax                           ; 0x56a8
    push ax                          ; 0x56a9
    mov ax, word [bp - 0x0008]       ; 0x56aa
    dec ax                           ; 0x56ad
    push ax                          ; 0x56ae
    call thunk_4                     ; 0x56af
    add sp, byte 8                   ; 0x56b2
    jmp near loc_QMPV                ; 0x56b5
