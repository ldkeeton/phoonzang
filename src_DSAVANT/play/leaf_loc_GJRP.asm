; auto-generated
leaf_loc_GJRP:
    push bp                          ; 0x0154
    mov bp, sp                       ; 0x0155
    mov ax, word [bp + 0x8]          ; 0x0157
    mov word [cs:music_data_offset - IMAGE_BASE], ax ; 0x015a
    mov ax, word [bp + 0xa]          ; 0x015e
    mov word [cs:music_data_segment - IMAGE_BASE], ax ; 0x0161
    mov ax, word [bp + 0xc]          ; 0x0165
    mov byte [cs:music_device - IMAGE_BASE], al ; 0x0168
    pop bp                           ; 0x016c
    ret                              ; 0x016d
