; auto-generated
leaf_loc_TVGR:
    dec ax                           ; 0x39e3
    cmp ax, word [bp - 0x12]         ; 0x39e4
    jb short table_entry_ptr         ; 0x39e7
    mov bl, 0xa                      ; 0x39e9
    div bl                           ; 0x39eb
    or byte [cs:frame_digit_hi - IMAGE_BASE], al ; 0x39ed
    or byte [cs:frame_digit_lo - IMAGE_BASE], dl ; 0x39f2
    mov ax, word [bp + 0xc]          ; 0x39f7
    mov bl, 0xa                      ; 0x39fa
    div bl                           ; 0x39fc
    or byte [cs:slot_digit_hi - IMAGE_BASE], al ; 0x39fe
    or byte [cs:slot_digit_lo - IMAGE_BASE], dl ; 0x3a03
    mov bx, cs                       ; 0x3a08
    mov ds, bx                       ; 0x3a0a
    mov dx, msg_frame_too_big - IMAGE_BASE ; 0x3a0c
