string_loc_57c7:
    mov word [bp - 0x0014], 0x16     ; 0x57c7
    jmp short leaf_loc_57fd          ; 0x57cc
jumptable_57ce:
    dw leaf_loc_57fd - IMAGE_BASE + 0x5055     ; 0x57ce
    dw string_loc_579d - IMAGE_BASE + 0x5055   ; 0x57d0
    dw leaf_loc_57fd - IMAGE_BASE + 0x5055     ; 0x57d2
    dw leaf_loc_57fd - IMAGE_BASE + 0x5055     ; 0x57d4
    dw leaf_loc_57fd - IMAGE_BASE + 0x5055     ; 0x57d6
    dw string_loc_57a4 - IMAGE_BASE + 0x5055   ; 0x57d8
    dw string_loc_57ab - IMAGE_BASE + 0x5055   ; 0x57da
    dw string_loc_57b2 - IMAGE_BASE + 0x5055   ; 0x57dc
    dw leaf_loc_57fd - IMAGE_BASE + 0x5055     ; 0x57de
    dw string_loc_57b9 - IMAGE_BASE + 0x5055   ; 0x57e0
    dw leaf_loc_57fd - IMAGE_BASE + 0x5055     ; 0x57e2
    dw leaf_loc_57fd - IMAGE_BASE + 0x5055     ; 0x57e4
    dw leaf_loc_57fd - IMAGE_BASE + 0x5055     ; 0x57e6
    dw leaf_loc_57fd - IMAGE_BASE + 0x5055     ; 0x57e8
    dw leaf_loc_57fd - IMAGE_BASE + 0x5055     ; 0x57ea
    dw string_loc_57c0 - IMAGE_BASE + 0x5055   ; 0x57ec
    dw string_loc_57c7 - IMAGE_BASE + 0x5055   ; 0x57ee
loc_57f0:
    cmp ax, strict word 0x11         ; 0x57f0
    jae short leaf_loc_57fd          ; 0x57f3
    xchg bx, ax                      ; 0x57f5
    shl bx, 1                        ; 0x57f6
    jmp [cs:bx - 0x57eb]             ; 0x57f8
