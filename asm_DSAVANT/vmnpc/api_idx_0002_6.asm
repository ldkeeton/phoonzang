; auto-generated
api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x57bb
    call aztec_csav                  ; 0x57be
@..api_idx_0002_6.l1:
    mov ax, 0x2f                     ; 0x57c1
    push ax                          ; 0x57c4
    push word [bp + 0x4]             ; 0x57c5
    call strlen                      ; 0x57c8
    add sp, byte 4                   ; 0x57cb
    mov word [bp - 0x0002], ax       ; 0x57ce
    cmp ax, strict word 0xffff       ; 0x57d1
    je short @..api_idx_0002_6.l2    ; 0x57d4
    mov bx, word [bp + 0x4]          ; 0x57d6
    mov si, ax                       ; 0x57d9
    mov byte [bx + si], 0x20         ; 0x57db
    jmp short @..api_idx_0002_6.l1   ; 0x57de
@..api_idx_0002_6.l2:
    ret                              ; 0x57e0
