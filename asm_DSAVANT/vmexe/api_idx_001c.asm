api_idx_001c:
    mov ax, 0xffe4                   ; 0x0a83
    call ds_dispatch_f40b            ; 0x0a86
    mov byte [bp - 0x001c], 0        ; 0x0a89
    mov ax, 6                        ; 0x0a8d
    imul word [bp + 0x4]             ; 0x0a90
    mov cx, word [bp + 0x6]          ; 0x0a93
    shl cx, 1                        ; 0x0a96
    add ax, cx                       ; 0x0a98
    mov bx, ax                       ; 0x0a9a
    mov ax, word [bx - 0x7bc6]       ; 0x0a9c
    mov cx, 0xa                      ; 0x0aa0
    cwd                              ; 0x0aa3
    idiv cx                          ; 0x0aa4
    mov word [bp - 0x0002], ax       ; 0x0aa6
    mov word [bp - 0x0004], dx       ; 0x0aa9
    cmp ax, strict word 1            ; 0x0aac
    jl short @..api_idx_001c.l1      ; 0x0aaf
    cmp ax, strict word 3            ; 0x0ab1
    jg short @..api_idx_001c.l1      ; 0x0ab4
    mov ax, word [bp + 0x4]          ; 0x0ab6
    cmp ax, word [data_8454]         ; 0x0ab9
    jle short @..api_idx_001c.l2     ; 0x0abd
@..api_idx_001c.l1:
    ret                              ; 0x0abf
