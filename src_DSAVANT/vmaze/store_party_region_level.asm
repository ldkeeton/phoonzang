; auto-generated
store_party_region_level:
    mov ax, 0                        ; 0x7436
    call $csav                  ; 0x7439
    mov bx, word [maze_tables]       ; 0x743c
    mov si, word [party_region]      ; 0x7440
    mov al, byte [bx + si + 0xa50]   ; 0x7444
    sub ah, ah                       ; 0x7448
    mov word [party_region_level_saved], ax ; 0x744a
    ret                              ; 0x744d
