; auto-generated
loc_ORKT:
    mov ax, 0                        ; 0x4310
    call aztec_csav                  ; 0x4313
    mov ax, 0x248                    ; 0x4316
    imul word [bp + 0x4]             ; 0x4319
    mov bx, ax                       ; 0x431c
    mov al, byte [bx + 0x5e2d]       ; 0x431e
    sub ah, ah                       ; 0x4322
    jmp near @..loc_ORKT.l1          ; 0x4324
