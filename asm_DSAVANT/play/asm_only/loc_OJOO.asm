; auto-generated
; asm only
loc_OJOO:
    mov bx, 0xddf                    ; 0x0e01
    and al, 0xf                      ; 0x0e04
    xor ah, ah                       ; 0x0e06
    add bx, ax                       ; 0x0e08
    lodsb                            ; 0x0e0a
    mov byte [cs:bx], al             ; 0x0e0b
    jmp near loc_MRJU                ; 0x0e0e
