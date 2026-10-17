; auto-generated
leaf_loc_ITHO:
    mov ax, 0xf                      ; 0x18ba
    cmp word [bp + 0x6], byte 0      ; 0x18bd
    jne short @..leaf_loc_ITHO.l1    ; 0x18c1
    mov ax, 0x1c                     ; 0x18c3
@..leaf_loc_ITHO.l1:
    ret                              ; 0x18c6
jumptable_18c7:
    dw leaf_loc_NRKJ - IMAGE_BASE + 0x5055     ; 0x18c7
    dw leaf_loc_PNPQ - IMAGE_BASE + 0x5055     ; 0x18c9
    dw leaf_loc_PNPQ - IMAGE_BASE + 0x5055     ; 0x18cb
    dw leaf_loc_HIVO_18a9 - IMAGE_BASE + 0x5055 ; 0x18cd
    dw leaf_loc_HIVO_18a9 - IMAGE_BASE + 0x5055 ; 0x18cf
    dw leaf_loc_PNPQ - IMAGE_BASE + 0x5055     ; 0x18d1
    dw leaf_loc_HIVO_18a9 - IMAGE_BASE + 0x5055 ; 0x18d3
    dw leaf_loc_PNPQ - IMAGE_BASE + 0x5055     ; 0x18d5
    dw leaf_loc_NRKJ - IMAGE_BASE + 0x5055     ; 0x18d7
    dw leaf_loc_ITHO - IMAGE_BASE + 0x5055     ; 0x18d9
    dw leaf_loc_NRKJ - IMAGE_BASE + 0x5055     ; 0x18db
    dw leaf_loc_KRST - IMAGE_BASE + 0x5055     ; 0x18dd
    dw leaf_loc_ITHO - IMAGE_BASE + 0x5055     ; 0x18df
