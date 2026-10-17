; auto-generated
; asm only
io_loc_TVNV:
    in al, 0x61                      ; 0x0a6d
    and al, 0xfe                     ; 0x0a6f
    out 0x61, al                     ; 0x0a71
    mov byte [cs:cseg_0a94 - IMAGE_BASE], 0xff ; 0x0a73
    ret                              ; 0x0a79
    db 0x00, 0x00
