; auto-generated
loc_IVVH:
    mov ax, 0                        ; 0x742e
    call aztec_csav                  ; 0x7431
    mov ax, word [bss_598e]          ; 0x7434
    cmp ax, word [bp + 0x4]          ; 0x7437
    je short @..loc_IVVH.l1          ; 0x743a
    push word [bp + 0x4]             ; 0x743c
    call ds_app_QTIV                 ; 0x743f
    pop cx                           ; 0x7442
@..loc_IVVH.l1:
    mov word [bss_93da], 0x10        ; 0x7443
    push word [bss_93da]             ; 0x7449
    call play_sound_effect           ; 0x744d
    pop cx                           ; 0x7450
    ret                              ; 0x7451
