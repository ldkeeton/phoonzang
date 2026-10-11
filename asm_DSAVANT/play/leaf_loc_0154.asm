leaf_loc_0154:
    push bp                          ; 0x0154
    mov bp, sp                       ; 0x0155
    mov ax, word [bp + 0x8]          ; 0x0157
    mov word [cs:cseg_0bae - IMAGE_BASE], ax ; 0x015a
    mov ax, word [bp + 0xa]          ; 0x015e
    mov word [cs:cseg_0bac - IMAGE_BASE], ax ; 0x0161
    mov ax, word [bp + 0xc]          ; 0x0165
    mov byte [cs:cseg_0b7c - IMAGE_BASE], al ; 0x0168
    pop bp                           ; 0x016c
    ret                              ; 0x016d
