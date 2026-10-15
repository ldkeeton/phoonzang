; auto-generated
loc_UKVI:
    cmp word [bss_0e32], byte 0      ; 0x563a
    je short loc_UHKP                ; 0x563f
    mov ax, 0x59fe                   ; 0x5641
    push ax                          ; 0x5644
    call ds_app_io_MHHL              ; 0x5645
    pop cx                           ; 0x5648
    dec ax                           ; 0x5649
    mov word [bp - 0x0014], ax       ; 0x564a
    jmp near loc_OGLL                ; 0x564d
loc_UHKP:
    mov word [bss_5b3e], 0           ; 0x5650
    push word [bp - 0x000a]          ; 0x5656
    push word [bp - 0x0008]          ; 0x5659
    push word [bp - 0x0016]          ; 0x565c
    call api_idx_0052_IHOT           ; 0x565f
    add sp, byte 6                   ; 0x5662
    mov ax, 1                        ; 0x5665
    push ax                          ; 0x5668
    call dos_con_in_noecho_2         ; 0x5669
    pop cx                           ; 0x566c
    sub ah, ah                       ; 0x566d
    mov word [bp - 0x0004], ax       ; 0x566f
    jmp near loc_LNMV                ; 0x5672
