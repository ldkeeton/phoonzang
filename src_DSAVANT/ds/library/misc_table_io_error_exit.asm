; auto-generated
misc_table_io_error_exit:
    mov ah, 9                        ; 0x3fd5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3fd9
    int 0x21 ; DOS function dispatcher
