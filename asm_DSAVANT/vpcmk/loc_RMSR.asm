; auto-generated
loc_RMSR:
    mov ax, 0                        ; 0x5706
    call aztec_csav                  ; 0x5709
    mov ax, 0x248                    ; 0x570c
    imul word [bp + 0x4]             ; 0x570f
    mov bx, ax                       ; 0x5712
    mov al, byte [bx + 0x5e2d]       ; 0x5714
    sub ah, ah                       ; 0x5718
    jmp near @..loc_RMSR.l1          ; 0x571a
