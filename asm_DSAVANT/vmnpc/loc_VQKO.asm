; auto-generated
loc_VQKO:
    mov ax, 0                        ; 0x742e
    call aztec_csav                  ; 0x7431
    mov ax, word [bss_598e]          ; 0x7434
    cmp ax, word [bp + 0x4]          ; 0x7437
    je short @..loc_VQKO.l1          ; 0x743a
    push word [bp + 0x4]             ; 0x743c
    call ds_app_LOMI                 ; 0x743f
    pop cx                           ; 0x7442
@..loc_VQKO.l1:
    mov word [bss_93da], 0x10        ; 0x7443
    push word [bss_93da]             ; 0x7449
    call ds_app_IPOK                 ; 0x744d
    pop cx                           ; 0x7450
    ret                              ; 0x7451
