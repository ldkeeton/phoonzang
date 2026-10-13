api_idx_0002:
    mov ax, 0xfffe                   ; 0x000e
    call aztec_csav                  ; 0x0011
@..api_idx_0002.l1:
    mov ax, 0x2f                     ; 0x0014
    push ax                          ; 0x0017
    push word [bp + 0x4]             ; 0x0018
    call strlen                      ; 0x001b
    add sp, byte 4                   ; 0x001e
    mov word [bp - 0x0002], ax       ; 0x0021
    cmp ax, strict word 0xffff       ; 0x0024
    je short @..api_idx_0002.l2      ; 0x0027
    mov bx, word [bp + 0x4]          ; 0x0029
    mov si, ax                       ; 0x002c
    mov byte [bx + si], 0x20         ; 0x002e
    jmp short @..api_idx_0002.l1     ; 0x0031
@..api_idx_0002.l2:
    ret                              ; 0x0033
