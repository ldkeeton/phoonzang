; auto-generated
loc_OLNT:
    cmp ax, strict word 0x11         ; 0x5869
    jae short leaf_loc_NNQH          ; 0x586c
    xchg bx, ax                      ; 0x586e
    shl bx, 1                        ; 0x586f
    jmp [cs:bx - 0x5772]             ; 0x5871
