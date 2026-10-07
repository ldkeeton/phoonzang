api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x1f98
    call ds_dispatch_f40b            ; 0x1f9b
    mov ax, 0x2c                     ; 0x1f9e
    imul word [bp + 0x6]             ; 0x1fa1
    mov si, ax                       ; 0x1fa4
    mov ax, word [bp + 0x4]          ; 0x1fa6
    shl ax, 1                        ; 0x1fa9
    mov bx, ax                       ; 0x1fab
    mov bx, word [bx - 0x7b7e]       ; 0x1fad
    mov al, byte [bx + si + 0x22]    ; 0x1fb1
    sub ah, ah                       ; 0x1fb4
    cmp ax, word [bp + 0xc]          ; 0x1fb6
    jge short @..api_idx_0002_4.l1   ; 0x1fb9
    push word [bp + 0x6]             ; 0x1fbb
    push word [bp + 0x4]             ; 0x1fbe
    call loc_1f5d                    ; 0x1fc1
    add sp, byte 4                   ; 0x1fc4
    test ax, ax                      ; 0x1fc7
    je short @..api_idx_0002_4.l2    ; 0x1fc9
@..api_idx_0002_4.l1:
    ret                              ; 0x1fcb
