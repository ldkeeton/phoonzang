; auto-generated
loc_GOMR:
    mov ax, 0                        ; 0x47b9
    call aztec_csav                  ; 0x47bc
    call loc_RPUI                    ; 0x47bf
    mov ax, 0xc6                     ; 0x47c2
    push ax                          ; 0x47c5
    mov ax, 0x11d                    ; 0x47c6
    push ax                          ; 0x47c9
    mov ax, 0x8e                     ; 0x47ca
    push ax                          ; 0x47cd
    mov ax, 0x22                     ; 0x47ce
    push ax                          ; 0x47d1
    call gfx_entry_16                ; 0x47d2
    add sp, byte 8                   ; 0x47d5
    ret                              ; 0x47d8
