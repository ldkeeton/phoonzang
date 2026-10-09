leaf_loc_2a4f:
    cmp byte [cs:data_2b08], 0       ; 0x2a4f
    je short @..leaf_loc_2a4f.l1     ; 0x2a55
    retf                             ; 0x2a57
@..leaf_loc_2a4f.l1:
    mov al, 0xff                     ; 0x2a58
    mov byte [cs:data_2b08], al      ; 0x2a5a
    shr cx, 1                        ; 0x2a5e
    mov word [cs:data_1beb], cx      ; 0x2a60
    mov word [cs:data_1bed], dx      ; 0x2a65
