; auto-generated
loc_VSKM:
    mov ax, 0                        ; 0x1a12
    call aztec_csav                  ; 0x1a15
    mov ax, word [bp + 0x4]          ; 0x1a18
    jmp near @..loc_VSKM.l1          ; 0x1a1b
