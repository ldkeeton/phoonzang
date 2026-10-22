; auto-generated
leaf_loc_NIGK:
    dec ax                           ; 0x3131
    cmp ax, word [bp - 0x0012]       ; 0x3132
    jb short loc_3188                ; 0x3135
    mov bl, 0xa                      ; 0x3137
    div bl                           ; 0x3139
    or byte [cs:cseg_316f - IMAGE_BASE], al ; 0x313b
    or byte [cs:cseg_3170 - IMAGE_BASE], dl ; 0x3140
    mov ax, word [bp + 0xc]          ; 0x3145
    mov bl, 0xa                      ; 0x3148
    div bl                           ; 0x314a
    or byte [cs:cseg_3182 - IMAGE_BASE], al ; 0x314c
    or byte [cs:cseg_3183 - IMAGE_BASE], dl ; 0x3151
