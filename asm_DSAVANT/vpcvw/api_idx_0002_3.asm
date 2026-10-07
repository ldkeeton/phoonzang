api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x0e60
    call ds_dispatch_f40b            ; 0x0e63
    mov word [bp - 0x0002], 0        ; 0x0e66
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x0e6b
    shl ax, 1                        ; 0x0e6e
    shl ax, 1                        ; 0x0e70
    mov bx, ax                       ; 0x0e72
    db 0x8b, 0x87, 0x4a, 0x00 ; mov ax, word [bx + 0x4a]
    cmp ax, word [bp + 0x4]          ; 0x0e78
    jge short @..api_idx_0002_3.l2   ; 0x0e7b
    inc word [bp - 0x0002]           ; 0x0e7d
    jmp short @..api_idx_0002_3.l1   ; 0x0e80
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x0e82
    shl ax, 1                        ; 0x0e85
    shl ax, 1                        ; 0x0e87
    mov bx, ax                       ; 0x0e89
    db 0xff, 0xb7, 0x4a, 0x00 ; push word [bx + 0x4a]
    db 0xff, 0xb7, 0x48, 0x00 ; push word [bx + 0x48]
    mov ax, word [bp + 0x4]          ; 0x0e93
    add ax, word [bp + 0x6]          ; 0x0e96
    push ax                          ; 0x0e99
    call ds_dispatch_b7c2            ; 0x0e9a
    add sp, byte 6                   ; 0x0e9d
    ret                              ; 0x0ea0
