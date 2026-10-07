api_idx_0002_12:
    mov ax, 0xfffe                   ; 0x8d86
    db 0xe8, 0x7f, 0x66 ; call 0xf40b
    mov word [bp - 0x0002], 0        ; 0x8d8c
@..api_idx_0002_12.l1:
    mov ax, word [bp - 0x0002]       ; 0x8d91
    add ax, word [bp + 0x6]          ; 0x8d94
    mov si, ax                       ; 0x8d97
    mov bx, word [bp + 0x4]          ; 0x8d99
    cmp byte [bx + si], 0            ; 0x8d9c
    je short @..api_idx_0002_12.l2   ; 0x8d9f
    mov al, byte [bx + si]           ; 0x8da1
    cmp al, 0x20                     ; 0x8da3
    je short @..api_idx_0002_12.l2   ; 0x8da5
    inc word [bp - 0x0002]           ; 0x8da7
    jmp short @..api_idx_0002_12.l1  ; 0x8daa
@..api_idx_0002_12.l2:
    cmp word [bp - 0x0002], byte 0   ; 0x8dac
    jne short @..api_idx_0002_12.l3  ; 0x8db0
    mov ax, 0xffff                   ; 0x8db2
    ret                              ; 0x8db5
