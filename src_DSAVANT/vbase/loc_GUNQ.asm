; auto-generated
loc_GUNQ:
    mov ax, 0                        ; 0x72c2
    call aztec_csav                  ; 0x72c5
    push word [bp + 0x4]             ; 0x72c8
    call gfx_free_picture            ; 0x72cb
    pop cx                           ; 0x72ce
    ret                              ; 0x72cf
