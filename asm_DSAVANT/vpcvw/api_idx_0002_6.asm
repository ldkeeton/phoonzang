api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x4573
    call aztec_csav                  ; 0x4576
    mov word [bp - 0x0002], 0xffff   ; 0x4579
    mov bx, word [bp + 0x6]          ; 0x457e
    mov al, byte [bx + 0x38]         ; 0x4581
    sub ah, ah                       ; 0x4584
    jmp near @..api_idx_0002_6.l2    ; 0x4586
