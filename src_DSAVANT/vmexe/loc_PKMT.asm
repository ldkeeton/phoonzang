; auto-generated
loc_PKMT:
    mov ax, 0                        ; 0x24c2
    call aztec_csav                  ; 0x24c5
    mov ax, 4                        ; 0x24c8
    push ax                          ; 0x24cb
    mov ax, 2                        ; 0x24cc
    push ax                          ; 0x24cf
    call api_idx_0004_UONH           ; 0x24d0
    add sp, byte 4                   ; 0x24d3
    mov ax, 2                        ; 0x24d6
    push ax                          ; 0x24d9
    mov ax, 0x41                     ; 0x24da
    push ax                          ; 0x24dd
    push word [bp + 4]               ; 0x24de
    call api_idx_0050_PLNP           ; 0x24e1
    add sp, byte 6                   ; 0x24e4
    push word [bss_9058]             ; 0x24e7
    call api_idx_0004_QUPL           ; 0x24eb
    pop cx                           ; 0x24ee
    ret                              ; 0x24ef
