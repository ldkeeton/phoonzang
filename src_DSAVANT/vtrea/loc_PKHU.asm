; auto-generated
loc_PKHU:
    mov ax, 0                        ; 0x809e
    call aztec_csav                  ; 0x80a1
    mov word [bss_849e], 0xffff      ; 0x80a4
    mov ax, 0x138c                   ; 0x80aa
    push ax                          ; 0x80ad
    call loc_SNOI                    ; 0x80ae
    pop cx                           ; 0x80b1
    mov ax, 0                        ; 0x80b2
    push ax                          ; 0x80b5
    call api_idx_000a_TIPG           ; 0x80b6
    pop cx                           ; 0x80b9
    cmp word [bss_84a0], byte 0xff   ; 0x80ba
    je short @..loc_PKHU.l2          ; 0x80bf
    call ds_app_NNSU                 ; 0x80c1
    mov word [bss_8450], ax          ; 0x80c4
    test ax, ax                      ; 0x80c7
    je short @..loc_PKHU.l1          ; 0x80c9
    mov ax, 1                        ; 0x80cb
    push ax                          ; 0x80ce
    mov ax, 2                        ; 0x80cf
    push ax                          ; 0x80d2
    call ds_app_file_KRUQ            ; 0x80d3
    add sp, byte 4                   ; 0x80d6
    mov ax, word [file_param_word]   ; 0x80d9
    mov word [bss_844e], ax          ; 0x80dc
    mov ax, 1                        ; 0x80df
    push ax                          ; 0x80e2
    push word [bss_844e]             ; 0x80e3
    push ax                          ; 0x80e7
    call ds_app_UKGP                 ; 0x80e8
    add sp, byte 6                   ; 0x80eb
    mov word [bss_844c], ax          ; 0x80ee
@..loc_PKHU.l1:
    mov word [bss_905e], 0x15        ; 0x80f1
    call loc_HUIS                    ; 0x80f7
    cmp word [bss_8450], byte 0      ; 0x80fa
    je short @..loc_PKHU.l2          ; 0x80ff
    push word [bss_844c]             ; 0x8101
    push word [bss_844e]             ; 0x8105
    call animate_sprite_up           ; 0x8109
    add sp, byte 4                   ; 0x810c
    mov ax, 1                        ; 0x810f
    push ax                          ; 0x8112
    call ds_app_gfx_entry_51_VGJR    ; 0x8113
    pop cx                           ; 0x8116
@..loc_PKHU.l2:
    inc word [bss_8d12]              ; 0x8117
    call loc_VSIT                    ; 0x811b
    ret                              ; 0x811e
