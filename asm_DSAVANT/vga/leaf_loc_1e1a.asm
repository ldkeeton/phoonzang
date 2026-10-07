leaf_loc_1e1a:
    cmp byte [cs:data_1ed3], 0       ; 0x1e1a
    je short @..leaf_loc_1e1a.l1     ; 0x1e20
    retf                             ; 0x1e22
