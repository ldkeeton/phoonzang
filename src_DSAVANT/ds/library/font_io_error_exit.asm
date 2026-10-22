; auto-generated
font_io_error_exit:
    mov ah, 9                        ; 0x3936
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x393a
    int 0x21 ; DOS function dispatcher
