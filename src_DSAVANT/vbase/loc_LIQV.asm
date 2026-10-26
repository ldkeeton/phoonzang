; auto-generated
loc_LIQV:
    mov ax, 0xfefa                   ; 0x6f79
    call aztec_csav                  ; 0x6f7c
    call loc_SVUQ                    ; 0x6f7f
    mov word [scene_running], 0      ; 0x6f82
    mov word [bss_a4a8], 0xc         ; 0x6f88
    mov word [bss_a4a6], 0           ; 0x6f8e
    mov byte [bss_a4aa], 0           ; 0x6f94
@..loc_LIQV.l1:
    lea ax, word [bp - 0x105]        ; 0x6f99
    push ax                          ; 0x6f9d
    push word [bp + 4]               ; 0x6f9e
    call load_message_string         ; 0x6fa1
    add sp, byte 4                   ; 0x6fa4
    cmp word [message_not_found], byte 0 ; 0x6fa7
    jne short @..loc_LIQV.l2         ; 0x6fac
    lea ax, word [bp - 0x105]        ; 0x6fae
    push ax                          ; 0x6fb2
    call api_idx_0004_OTSN           ; 0x6fb3
    pop cx                           ; 0x6fb6
    inc word [bp + 4]                ; 0x6fb7
@..loc_LIQV.l2:
    cmp word [message_not_found], byte 0 ; 0x6fba
    je short @..loc_LIQV.l1          ; 0x6fbf
    cmp byte [bss_a4aa], 0           ; 0x6fc1
    je short @..loc_LIQV.l3          ; 0x6fc6
    mov ax, bss_a4aa                 ; 0x6fc8
    push ax                          ; 0x6fcb
    call api_idx_0004_RLUP           ; 0x6fcc
    pop cx                           ; 0x6fcf
@..loc_LIQV.l3:
    cmp word [bp + 6], byte 0        ; 0x6fd0
    je short @..loc_LIQV.l4          ; 0x6fd4
    call api_idx_0004_MIQG           ; 0x6fd6
@..loc_LIQV.l4:
    ret                              ; 0x6fd9
