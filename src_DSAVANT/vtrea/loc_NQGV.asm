; auto-generated
loc_NQGV:
    mov ax, 0                        ; 0x0a1a
    call aztec_csav                  ; 0x0a1d
    mov ax, 0xc6                     ; 0x0a20
    push ax                          ; 0x0a23
    mov ax, 0x109                    ; 0x0a24
    push ax                          ; 0x0a27
    mov ax, 0x92                     ; 0x0a28
    push ax                          ; 0x0a2b
    mov ax, 0x37                     ; 0x0a2c
    push ax                          ; 0x0a2f
    call ds_app_io_VRKV              ; 0x0a30
    add sp, byte 8                   ; 0x0a33
    cmp word [bp + 0x4], byte 0      ; 0x0a36
    je short @..loc_NQGV.l2          ; 0x0a3a
    mov ax, word [bss_905a]          ; 0x0a3c
    cmp byte [bss_598c], 0           ; 0x0a3f
    je short @..loc_NQGV.l1          ; 0x0a44
    shl ax, 1                        ; 0x0a46
@..loc_NQGV.l1:
    push ax                          ; 0x0a48
    call api_idx_0004_UQUT           ; 0x0a49
    pop cx                           ; 0x0a4c
    jmp short @..loc_NQGV.l3         ; 0x0a4d
@..loc_NQGV.l2:
    call ds_app_TMKJ                 ; 0x0a4f
    test ax, ax                      ; 0x0a52
    jne short @..loc_NQGV.l3         ; 0x0a54
    call loc_IKLI                    ; 0x0a56
    jmp short @..loc_NQGV.l2         ; 0x0a59
@..loc_NQGV.l3:
    mov ax, 0                        ; 0x0a5b
    push ax                          ; 0x0a5e
    call api_idx_000a_TIPG           ; 0x0a5f
    pop cx                           ; 0x0a62
    mov word [bss_9150], 0           ; 0x0a63
    ret                              ; 0x0a69
