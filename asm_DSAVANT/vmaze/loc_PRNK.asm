; auto-generated
loc_PRNK:
    mov ax, 0                        ; 0x7cb4
    call aztec_csav                  ; 0x7cb7
@..loc_PRNK.l1:
    cmp word [bp + 0x4], byte 0      ; 0x7cba
    jle short @..loc_PRNK.l3         ; 0x7cbe
    cmp word [bp + 0x6], byte 0      ; 0x7cc0
    je short @..loc_PRNK.l2          ; 0x7cc4
    mov ax, word [bss_82e8]          ; 0x7cc6
    inc ax                           ; 0x7cc9
    mov cx, 2                        ; 0x7cca
    cwd                              ; 0x7ccd
    idiv cx                          ; 0x7cce
    mov word [bss_82e8], dx          ; 0x7cd0
    call loc_JGLI                    ; 0x7cd4
    mov ax, 0x10                     ; 0x7cd7
    push ax                          ; 0x7cda
    call ds_app_IPOK                 ; 0x7cdb
    pop cx                           ; 0x7cde
@..loc_PRNK.l2:
    dec word [bp + 0x4]              ; 0x7cdf
    jmp short @..loc_PRNK.l1         ; 0x7ce2
@..loc_PRNK.l3:
    ret                              ; 0x7ce4
