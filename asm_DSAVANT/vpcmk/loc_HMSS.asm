; auto-generated
loc_HMSS:
    mov ax, 0                        ; 0x4392
    call aztec_csav                  ; 0x4395
    cmp word [bp + 0x6], byte 1      ; 0x4398
    jne short @..loc_HMSS.l1         ; 0x439c
    mov ax, 0x248                    ; 0x439e
    imul word [bp + 0x4]             ; 0x43a1
    mov bx, ax                       ; 0x43a4
    mov al, byte [bx + 0x5d64]       ; 0x43a6
    sub ah, ah                       ; 0x43aa
    dec ax                           ; 0x43ac
    dec ax                           ; 0x43ad
    mov byte [bx + 0x5d64], al       ; 0x43ae
    inc byte [bx + 0x5d6a]           ; 0x43b2
    inc byte [bx + 0x5d6b]           ; 0x43b6
@..loc_HMSS.l1:
    ret                              ; 0x43ba
