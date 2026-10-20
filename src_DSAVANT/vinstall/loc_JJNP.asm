; auto-generated
loc_JJNP:
    push bp                          ; 0x0807
    mov bp, sp                       ; 0x0808
    push word [bp + 0x4]             ; 0x080a
    call aztec_atoi                  ; 0x080d
    pop cx                           ; 0x0810
    mov sp, bp                       ; 0x0811
    pop bp                           ; 0x0813
    ret                              ; 0x0814
