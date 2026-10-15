; auto-generated
loc_TNVN:
    mov ax, 0                        ; 0x86c6
    call aztec_csav                  ; 0x86c9
    mov word [bss_9e62], 1           ; 0x86cc
    mov ax, word [bp + 0x4]          ; 0x86d2
    jmp short @..loc_TNVN.l1         ; 0x86d5
