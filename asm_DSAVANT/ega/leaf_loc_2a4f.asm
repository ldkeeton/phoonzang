leaf_loc_2a4f:
    cmp byte [cs:data_2b08], 0       ; 0x2a4f
    je short @..leaf_loc_2a4f.l1     ; 0x2a55
    retf                             ; 0x2a57
