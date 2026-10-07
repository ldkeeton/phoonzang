api_idx_0014:
    mov ax, 0xffec                   ; 0x6673
    call ds_dispatch_f40b            ; 0x6676
    mov byte [bp - 0x0014], 0        ; 0x6679
    lea ax, word [bp - 0x0014]       ; 0x667d
    push ax                          ; 0x6680
    mov ax, 1                        ; 0x6681
    push ax                          ; 0x6684
    push ax                          ; 0x6685
    mov ax, 0                        ; 0x6686
    push ax                          ; 0x6689
    mov ax, 0x47e                    ; 0x668a
    push ax                          ; 0x668d
    call api_idx_0026                ; 0x668e
    add sp, byte 0x0a                ; 0x6691
    cmp ax, strict word 2            ; 0x6694
    jne short @..api_idx_0014.l1     ; 0x6697
    ret                              ; 0x6699
