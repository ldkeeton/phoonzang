; auto-generated
loc_PLOT:
    mov ax, 0                        ; 0x7436
    call aztec_csav                  ; 0x7439
    mov bx, word [bss_0e12]          ; 0x743c
    mov si, word [bss_8d12]          ; 0x7440
    mov al, byte [bx + si + 0xa50]   ; 0x7444
    sub ah, ah                       ; 0x7448
    mov word [bss_91b0], ax          ; 0x744a
    ret                              ; 0x744d
