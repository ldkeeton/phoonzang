; auto-generated
leaf_loc_GKPH:
    mov ax, word [bp + 0x8]          ; 0x5fbf
    mov bx, word [bp - 0x0004]       ; 0x5fc2
    mov word [bx + 0x2], ax          ; 0x5fc5
    mov ax, word [bp + 0xe]          ; 0x5fc8
    mov bx, word [bp - 0x0004]       ; 0x5fcb
    mov word [bx + 0x4], ax          ; 0x5fce
    jmp short loc_NUGN               ; 0x5fd1
jumptable_5fd3:
    dw leaf_loc_JNIM - IMAGE_BASE + 0x5055     ; 0x5fd3
    dw leaf_loc_NMIT - IMAGE_BASE + 0x5055     ; 0x5fd5
    dw leaf_loc_NMIT - IMAGE_BASE + 0x5055     ; 0x5fd7
    dw leaf_loc_NMIT - IMAGE_BASE + 0x5055     ; 0x5fd9
    dw leaf_loc_NMIT - IMAGE_BASE + 0x5055     ; 0x5fdb
    dw leaf_loc_PGKQ - IMAGE_BASE + 0x5055     ; 0x5fdd
    dw leaf_loc_GKPH - IMAGE_BASE + 0x5055     ; 0x5fdf
@..api_idx_0004_QNKH.l3:
    cmp ax, strict word 7            ; 0x5fe1
    jae short loc_NUGN               ; 0x5fe4
    xchg bx, ax                      ; 0x5fe6
    shl bx, 1                        ; 0x5fe7
    jmp [cs:bx - 0x4fe6]             ; 0x5fe9
loc_NUGN:
    ret                              ; 0x5fee
