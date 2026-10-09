string_loc_0883:
    mov ax, 0xff00                   ; 0x0883
    call aztec_csav                  ; 0x0886
    mov ax, word [bp + 0x4]          ; 0x0889
    jmp short @..string_loc_0883.l1  ; 0x088c
