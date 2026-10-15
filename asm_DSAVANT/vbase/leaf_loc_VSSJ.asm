; auto-generated
leaf_loc_VSSJ:
    mov ax, 0x16                     ; 0x185a
    ret                              ; 0x185d
jumptable_185e:
    dw leaf_loc_UIJV - IMAGE_BASE + 0x5055     ; 0x185e
    dw leaf_loc_NMHI_1838 - IMAGE_BASE + 0x5055 ; 0x1860
    dw leaf_loc_NNQS - IMAGE_BASE + 0x5055     ; 0x1862
    dw leaf_loc_RMSR - IMAGE_BASE + 0x5055     ; 0x1864
    dw leaf_loc_VPOQ - IMAGE_BASE + 0x5055     ; 0x1866
    dw leaf_loc_VSSJ - IMAGE_BASE + 0x5055     ; 0x1868
@..loc_JVTQ.l1:
    sub ax, strict word 5            ; 0x186a
    cmp ax, strict word 6            ; 0x186d
    jae short @..loc_JVTQ.l2         ; 0x1870
    xchg bx, ax                      ; 0x1872
    shl bx, 1                        ; 0x1873
    jmp [cs:bx + 0x68a5]             ; 0x1875
@..loc_JVTQ.l2:
    cmp word [bp + 0x8], byte 0x0d   ; 0x187a
    jne short @..loc_JVTQ.l3         ; 0x187e
    mov ax, 0x12                     ; 0x1880
    ret                              ; 0x1883
@..loc_JVTQ.l3:
    cmp word [bp + 0x4], byte 1      ; 0x1884
    jne short @..loc_JVTQ.l5         ; 0x1888
    mov ax, word [bp + 0x8]          ; 0x188a
    jmp short @..loc_JVTQ.l4         ; 0x188d
