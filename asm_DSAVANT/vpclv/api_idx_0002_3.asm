api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x038c
    call ds_aztec_csav               ; 0x038f
    mov word [bp - 0x0002], 0        ; 0x0392
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x0397
    shl ax, 1                        ; 0x039a
    shl ax, 1                        ; 0x039c
    mov bx, ax                       ; 0x039e
    mov ax, word [word bx + 0x4a]    ; 0x03a0
    cmp ax, word [bp + 0x4]          ; 0x03a4
    jge short @..api_idx_0002_3.l2   ; 0x03a7
    inc word [bp - 0x0002]           ; 0x03a9
    jmp short @..api_idx_0002_3.l1   ; 0x03ac
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x03ae
    shl ax, 1                        ; 0x03b1
    shl ax, 1                        ; 0x03b3
    mov bx, ax                       ; 0x03b5
    push word [word bx + 0x4a]       ; 0x03b7
    push word [word bx + 0x48]       ; 0x03bb
    mov ax, word [bp + 0x4]          ; 0x03bf
    add ax, word [bp + 0x6]          ; 0x03c2
    push ax                          ; 0x03c5
    call ds_app_0a09                 ; 0x03c6
    add sp, byte 6                   ; 0x03c9
    ret                              ; 0x03cc
