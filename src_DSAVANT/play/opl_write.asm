; auto-generated
opl_write:
    push bx                          ; 0x07f6
    push dx                          ; 0x07f7
    xor bh, bh                       ; 0x07f8
    mov bl, ah                       ; 0x07fa
    mov byte [cs:bx + opl_register_shadow - IMAGE_BASE], al ; 0x07fc
    mov dx, 0x388                    ; 0x0801
    xchg ah, al                      ; 0x0804
    pushf                            ; 0x0806
    cli                              ; 0x0807
    call opl_delay_long              ; 0x0808
    out dx, al                       ; 0x080b
    call opl_delay_short             ; 0x080c
    inc dx                           ; 0x080f
    xchg ah, al                      ; 0x0810
    out dx, al                       ; 0x0812
    call opl_delay_long              ; 0x0813
    dec dx                           ; 0x0816
    mov al, 0x40                     ; 0x0817
    out dx, al                       ; 0x0819
    call opl_delay_long              ; 0x081a
    popf                             ; 0x081d
    pop dx                           ; 0x081e
    pop bx                           ; 0x081f
    ret                              ; 0x0820
