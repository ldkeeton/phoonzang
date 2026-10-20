; auto-generated
; asm only
ds_dos_con_loc_RGGK:
    mov ah, 9                        ; 0x3962
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3966
    int 0x21 ; DOS function dispatcher
