; auto-generated
; asm only
io_loc_KRUO:
    push bx                          ; 0x07f6
    push dx                          ; 0x07f7
    xor bh, bh                       ; 0x07f8
    mov bl, ah                       ; 0x07fa
    mov byte [cs:bx + 0x1529], al    ; 0x07fc
    mov dx, 0x388                    ; 0x0801
    xchg ah, al                      ; 0x0804
    pushf                            ; 0x0806
    cli                              ; 0x0807
    call io_loc_TOKT                 ; 0x0808
    out dx, al                       ; 0x080b
    call io_loc_RPJI                 ; 0x080c
    inc dx                           ; 0x080f
    xchg ah, al                      ; 0x0810
    out dx, al                       ; 0x0812
    call io_loc_TOKT                 ; 0x0813
    dec dx                           ; 0x0816
    mov al, 0x40                     ; 0x0817
    out dx, al                       ; 0x0819
    call io_loc_TOKT                 ; 0x081a
    popf                             ; 0x081d
    pop dx                           ; 0x081e
    pop bx                           ; 0x081f
    ret                              ; 0x0820
