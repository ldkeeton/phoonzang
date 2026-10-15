; auto-generated
loc_HTNP:
    mov ax, 0xfefa                   ; 0x6f79
    call aztec_csav                  ; 0x6f7c
    call loc_SKTH                    ; 0x6f7f
    mov word [bss_a5ac], 0           ; 0x6f82
    mov word [bss_a4a8], 0xc         ; 0x6f88
    mov word [bss_a4a6], 0           ; 0x6f8e
    mov byte [bss_a4aa], 0           ; 0x6f94
@..loc_HTNP.l1:
    lea ax, word [bp - 0x0105]       ; 0x6f99
    push ax                          ; 0x6f9d
    push word [bp + 0x4]             ; 0x6f9e
    call ds_app_mem_VKHV             ; 0x6fa1
    add sp, byte 4                   ; 0x6fa4
    cmp word [bss_5216], byte 0      ; 0x6fa7
    jne short @..loc_HTNP.l2         ; 0x6fac
    lea ax, word [bp - 0x0105]       ; 0x6fae
    push ax                          ; 0x6fb2
    call api_idx_0004_KGUI           ; 0x6fb3
    pop cx                           ; 0x6fb6
    inc word [bp + 0x4]              ; 0x6fb7
@..loc_HTNP.l2:
    cmp word [bss_5216], byte 0      ; 0x6fba
    je short @..loc_HTNP.l1          ; 0x6fbf
    cmp byte [bss_a4aa], 0           ; 0x6fc1
    je short @..loc_HTNP.l3          ; 0x6fc6
    mov ax, 0xa4aa                   ; 0x6fc8
    push ax                          ; 0x6fcb
    call api_idx_0004_PUGI           ; 0x6fcc
    pop cx                           ; 0x6fcf
@..loc_HTNP.l3:
    cmp word [bp + 0x6], byte 0      ; 0x6fd0
    je short @..loc_HTNP.l4          ; 0x6fd4
    call api_idx_0004_TLTU           ; 0x6fd6
@..loc_HTNP.l4:
    ret                              ; 0x6fd9
