io_loc_0a6d:
    in al, 0x61                      ; 0x0a6d
    and al, strlen                   ; 0x0a6f
    out 0x61, al                     ; 0x0a71
    mov byte [cs:data_0b94], 0xff    ; 0x0a73
    ret                              ; 0x0a79
