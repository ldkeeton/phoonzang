; auto-generated
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x6e69
    call aztec_csav                  ; 0x6e6c
    mov ax, word [bp + 0x6]          ; 0x6e6f
    mov word [bp - 0x0002], ax       ; 0x6e72
    jmp short @..api_idx_0002_5.l2   ; 0x6e75
@..api_idx_0002_5.l1:
    mov ax, word [bp - 0x0002]       ; 0x6e77
    mov cx, 8                        ; 0x6e7a
    cwd                              ; 0x6e7d
    idiv cx                          ; 0x6e7e
    mov si, ax                       ; 0x6e80
    mov bx, word [bp + 0x4]          ; 0x6e82
    mov al, byte [bx + si]           ; 0x6e85
    cbw                              ; 0x6e87
    push ax                          ; 0x6e88
    mov ax, word [bp - 0x0002]       ; 0x6e89
    cwd                              ; 0x6e8c
    idiv cx                          ; 0x6e8d
    mov cx, dx                       ; 0x6e8f
    mov dx, 1                        ; 0x6e91
    shl dx, cl                       ; 0x6e94
    mov cx, dx                       ; 0x6e96
    not cx                           ; 0x6e98
    pop ax                           ; 0x6e9a
    and ax, cx                       ; 0x6e9b
    mov byte [bx + si], al           ; 0x6e9d
    inc word [bp - 0x0002]           ; 0x6e9f
@..api_idx_0002_5.l2:
    mov ax, word [bp + 0x6]          ; 0x6ea2
    inc ax                           ; 0x6ea5
    inc ax                           ; 0x6ea6
    cmp ax, word [bp - 0x0002]       ; 0x6ea7
    jg short @..api_idx_0002_5.l1    ; 0x6eaa
    ret                              ; 0x6eac
