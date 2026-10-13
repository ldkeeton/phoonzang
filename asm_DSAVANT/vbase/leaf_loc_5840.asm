; auto-generated
leaf_loc_5840:
    mov word [bp - 0x0014], 0x15     ; 0x5840
    jmp short leaf_loc_5876          ; 0x5845
jumptable_5847:
    dw leaf_loc_5876 - IMAGE_BASE + 0x5055     ; 0x5847
    dw leaf_loc_5816 - IMAGE_BASE + 0x5055     ; 0x5849
    dw leaf_loc_5876 - IMAGE_BASE + 0x5055     ; 0x584b
    dw leaf_loc_5876 - IMAGE_BASE + 0x5055     ; 0x584d
    dw leaf_loc_5876 - IMAGE_BASE + 0x5055     ; 0x584f
    dw leaf_loc_581d - IMAGE_BASE + 0x5055     ; 0x5851
    dw leaf_loc_5824 - IMAGE_BASE + 0x5055     ; 0x5853
    dw leaf_loc_582b - IMAGE_BASE + 0x5055     ; 0x5855
    dw leaf_loc_5876 - IMAGE_BASE + 0x5055     ; 0x5857
    dw leaf_loc_5832 - IMAGE_BASE + 0x5055     ; 0x5859
    dw leaf_loc_5876 - IMAGE_BASE + 0x5055     ; 0x585b
    dw leaf_loc_5876 - IMAGE_BASE + 0x5055     ; 0x585d
    dw leaf_loc_5876 - IMAGE_BASE + 0x5055     ; 0x585f
    dw leaf_loc_5876 - IMAGE_BASE + 0x5055     ; 0x5861
    dw leaf_loc_5876 - IMAGE_BASE + 0x5055     ; 0x5863
    dw leaf_loc_5839 - IMAGE_BASE + 0x5055     ; 0x5865
    dw leaf_loc_5840 - IMAGE_BASE + 0x5055     ; 0x5867
loc_5869:
    cmp ax, strict word 0x11         ; 0x5869
    jae short leaf_loc_5876          ; 0x586c
    xchg bx, ax                      ; 0x586e
    shl bx, 1                        ; 0x586f
    jmp [cs:bx - 0x5772]             ; 0x5871
