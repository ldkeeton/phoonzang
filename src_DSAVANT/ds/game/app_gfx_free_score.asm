; auto-generated
app_gfx_free_score: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x2b4e
    call aztec_csav                  ; 0x2b51
    push word [bp + 0x4]             ; 0x2b54
    call gfx_free_score              ; 0x2b57
    pop cx                           ; 0x2b5a
    mov word [loaded_score_num], 0xffff ; 0x2b5b
    ret                              ; 0x2b61
