; auto-generated
api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x0a6a
    call aztec_csav                  ; 0x0a6d
    cmp word [bss_9150], byte 3      ; 0x0a70
    jle short @..api_idx_0004_2.l1   ; 0x0a75
    mov ax, 0                        ; 0x0a77
    push ax                          ; 0x0a7a
    call loc_0a1a                    ; 0x0a7b
    pop cx                           ; 0x0a7e
@..api_idx_0004_2.l1:
    mov bx, word [bp + 0x4]          ; 0x0a7f
    cmp byte [bx], 0                 ; 0x0a82
    jne short @..api_idx_0004_2.l2   ; 0x0a85
    inc word [bss_9150]              ; 0x0a87
    ret                              ; 0x0a8b
@..api_idx_0004_2.l2:
    mov ax, 2                        ; 0x0a8c
    push ax                          ; 0x0a8f
    push bx                          ; 0x0a90
    call ds_loc_3aca                 ; 0x0a91
    add sp, byte 4                   ; 0x0a94
    inc ax                           ; 0x0a97
    mov cx, 2                        ; 0x0a98
    cwd                              ; 0x0a9b
    idiv cx                          ; 0x0a9c
    mov cx, ax                       ; 0x0a9e
    mov ax, 0xa0                     ; 0x0aa0
    sub ax, cx                       ; 0x0aa3
    mov word [bp - 0x0002], ax       ; 0x0aa5
    push word [bp + 0x4]             ; 0x0aa8
    call aztec_strlen                ; 0x0aab
    pop cx                           ; 0x0aae
    dec ax                           ; 0x0aaf
    mov word [bp - 0x0004], ax       ; 0x0ab0
    mov bx, word [bp + 0x4]          ; 0x0ab3
    mov si, ax                       ; 0x0ab6
    mov al, byte [bx + si]           ; 0x0ab8
    sub ah, ah                       ; 0x0aba
    jmp short @..api_idx_0004_2.l5   ; 0x0abc
@..api_idx_0004_2.l3:
    mov bx, word [bp + 0x4]          ; 0x0abe
    mov si, word [bp - 0x0004]       ; 0x0ac1
    mov byte [bx + si], 0            ; 0x0ac4
    mov word [bp - 0x0002], 0x44     ; 0x0ac7
    jmp short @..api_idx_0004_2.l6   ; 0x0acc
@..api_idx_0004_2.l4:
    mov bx, word [bp + 0x4]          ; 0x0ace
    mov si, word [bp - 0x0004]       ; 0x0ad1
    mov byte [bx + si], 0            ; 0x0ad4
    mov ax, word [bss_9152]          ; 0x0ad7
    mov word [bp - 0x0002], ax       ; 0x0ada
    jmp short @..api_idx_0004_2.l6   ; 0x0add
@..api_idx_0004_2.l5:
    cmp ax, strict word 0x24         ; 0x0adf
    je short @..api_idx_0004_2.l3    ; 0x0ae2
    cmp ax, strict word 0x5e         ; 0x0ae4
    je short @..api_idx_0004_2.l4    ; 0x0ae7
@..api_idx_0004_2.l6:
    mov ax, 0xc                      ; 0x0ae9
    imul word [bss_9150]             ; 0x0aec
    add ax, 0x92                     ; 0x0af0
    push ax                          ; 0x0af3
    push word [bp - 0x0002]          ; 0x0af4
    call ds_loc_3a50                 ; 0x0af7
    add sp, byte 4                   ; 0x0afa
    mov ax, 0                        ; 0x0afd
    push ax                          ; 0x0b00
    mov ax, 0x55                     ; 0x0b01
    push ax                          ; 0x0b04
    call ds_loc_3a6a                 ; 0x0b05
    add sp, byte 4                   ; 0x0b08
    mov ax, 2                        ; 0x0b0b
    push ax                          ; 0x0b0e
    push word [bp + 0x4]             ; 0x0b0f
    call ds_string_loc_3a95          ; 0x0b12
    add sp, byte 4                   ; 0x0b15
    mov bx, word [bp + 0x4]          ; 0x0b18
    mov byte [bx], 0                 ; 0x0b1b
    mov ax, word [bp - 0x0002]       ; 0x0b1e
    mov word [bss_9152], ax          ; 0x0b21
    inc word [bss_9150]              ; 0x0b24
    ret                              ; 0x0b28
