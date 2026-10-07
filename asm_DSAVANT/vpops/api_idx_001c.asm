api_idx_001c:
    mov ax, 0xffe4                   ; 0x0b31
    call ds_dispatch_f40b            ; 0x0b34
    mov byte [bp - 0x001c], 0        ; 0x0b37
    mov ax, 6                        ; 0x0b3b
    imul word [bp + 0x4]             ; 0x0b3e
    mov cx, word [bp + 0x6]          ; 0x0b41
    shl cx, 1                        ; 0x0b44
    add ax, cx                       ; 0x0b46
    mov bx, ax                       ; 0x0b48
    mov ax, word [bx - 0x7bc6]       ; 0x0b4a
    mov cx, 0xa                      ; 0x0b4e
    cwd                              ; 0x0b51
    idiv cx                          ; 0x0b52
    mov word [bp - 0x0002], ax       ; 0x0b54
    mov word [bp - 0x0004], dx       ; 0x0b57
    cmp ax, strict word 1            ; 0x0b5a
    jl short @..api_idx_001c.l1      ; 0x0b5d
    cmp ax, strict word 3            ; 0x0b5f
    jg short @..api_idx_001c.l1      ; 0x0b62
    mov ax, word [bp + 0x4]          ; 0x0b64
    cmp ax, word [data_8454]         ; 0x0b67
    jle short @..api_idx_001c.l2     ; 0x0b6b
@..api_idx_001c.l1:
    ret                              ; 0x0b6d
