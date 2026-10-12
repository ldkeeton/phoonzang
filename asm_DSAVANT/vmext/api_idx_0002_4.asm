api_idx_0002_4:
    mov ax, 0xfffe                   ; 0x0262
    call ds_aztec_csav               ; 0x0265
    mov word [bss_9188], 0           ; 0x0268
    mov ax, word [bss_830c]          ; 0x026e
    jmp short @..api_idx_0002_4.l1   ; 0x0271
