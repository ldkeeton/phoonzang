; auto-generated
loc_POQO:
    push word [bp - 0x000a]          ; 0x56b8
    push word [bp - 0x0008]          ; 0x56bb
    push word [bp - 0x0016]          ; 0x56be
    call api_idx_0052_LJTK           ; 0x56c1
    add sp, byte 6                   ; 0x56c4
    mov ax, word [bp - 0x0016]       ; 0x56c7
    inc ax                           ; 0x56ca
    mov cx, 0x13                     ; 0x56cb
    cwd                              ; 0x56ce
    idiv cx                          ; 0x56cf
    mov word [bp - 0x0016], dx       ; 0x56d1
    cmp dx, byte 0x0e                ; 0x56d4
    jne short loc_JOVO_56dc          ; 0x56d7
    inc word [bp - 0x0016]           ; 0x56d9
loc_JOVO_56dc:
    mov ax, word [bp - 0x000e]       ; 0x56dc
    inc ax                           ; 0x56df
    push ax                          ; 0x56e0
    mov ax, word [bp - 0x000c]       ; 0x56e1
    inc ax                           ; 0x56e4
    push ax                          ; 0x56e5
    mov ax, word [bp - 0x000a]       ; 0x56e6
    dec ax                           ; 0x56e9
    push ax                          ; 0x56ea
    mov ax, word [bp - 0x0008]       ; 0x56eb
    dec ax                           ; 0x56ee
    push ax                          ; 0x56ef
    call thunk_4                     ; 0x56f0
    add sp, byte 8                   ; 0x56f3
    jmp near loc_QMPV                ; 0x56f6
