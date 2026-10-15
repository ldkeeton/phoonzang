; auto-generated
loc_QMIO:
    mov ax, 0                        ; 0x9a04
    call aztec_csav                  ; 0x9a07
    mov word [bss_9e46], 0xffff      ; 0x9a0a
    mov word [bss_9e42], 0xffff      ; 0x9a10
    mov word [bss_9e44], 0           ; 0x9a16
    mov ax, word [bss_9e48]          ; 0x9a1c
    jmp near @..loc_QMIO.l4          ; 0x9a1f
