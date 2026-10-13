; auto-generated
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x0e60
    call aztec_csav                  ; 0x0e63
    mov word [bp - 0x0002], 0        ; 0x0e66
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x0e6b
    shl ax, 1                        ; 0x0e6e
    shl ax, 1                        ; 0x0e70
    mov bx, ax                       ; 0x0e72
    mov ax, word [word bx + 0x4a]    ; 0x0e74
    cmp ax, word [bp + 0x4]          ; 0x0e78
    jge short @..api_idx_0002_3.l2   ; 0x0e7b
    inc word [bp - 0x0002]           ; 0x0e7d
    jmp short @..api_idx_0002_3.l1   ; 0x0e80
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x0e82
    shl ax, 1                        ; 0x0e85
    shl ax, 1                        ; 0x0e87
    mov bx, ax                       ; 0x0e89
    push word [word bx + 0x4a]       ; 0x0e8b
    push word [word bx + 0x48]       ; 0x0e8f
    mov ax, word [bp + 0x4]          ; 0x0e93
    add ax, word [bp + 0x6]          ; 0x0e96
    push ax                          ; 0x0e99
    call ds_app_0a09                 ; 0x0e9a
    add sp, byte 6                   ; 0x0e9d
    ret                              ; 0x0ea0
