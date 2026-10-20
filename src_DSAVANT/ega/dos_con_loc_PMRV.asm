; auto-generated
dos_con_loc_PMRV:
    mov ah, 9                        ; 0x493a
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x493e
    int 0x21 ; DOS function dispatcher
