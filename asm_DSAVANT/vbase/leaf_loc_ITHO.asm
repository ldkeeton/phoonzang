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
@..loc_QKKR_1820.l4:
    cmp ax, strict word 0xd          ; 0x18e1
    jae short @..loc_QKKR_1820.l5    ; 0x18e4
    xchg bx, ax                      ; 0x18e6
    shl bx, 1                        ; 0x18e7
    jmp [cs:bx + 0x690e]             ; 0x18e9
@..loc_QKKR_1820.l5:
    mov ax, word [bp + 0x4]          ; 0x18ee
    cmp ax, strict word 2            ; 0x18f1
    je short @..loc_QKKR_1820.l6     ; 0x18f4
    cmp ax, strict word 4            ; 0x18f6
    je short @..loc_QKKR_1820.l6     ; 0x18f9
    cmp ax, strict word 3            ; 0x18fb
    je short @..loc_QKKR_1820.l6     ; 0x18fe
    jmp near @..loc_QKKR_1820.l8     ; 0x1900
@..loc_QKKR_1820.l6:
    mov ax, word [bp + 0x8]          ; 0x1903
    jmp short @..loc_QKKR_1820.l7    ; 0x1906
