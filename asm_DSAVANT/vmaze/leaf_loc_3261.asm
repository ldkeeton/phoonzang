leaf_loc_3261:
    cmp word [bss_91d6], byte 0      ; 0x3261
    jne short @..leaf_loc_3261.l1    ; 0x3266
    mov word [bp - 0x0004], 0xc      ; 0x3268
@..leaf_loc_3261.l1:
    jmp near loc_3387                ; 0x326d
