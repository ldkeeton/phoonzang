; auto-generated
loc_QLNN:
    cmp ax, strict word 0x11         ; 0x57f0
    jae short leaf_loc_HJSM          ; 0x57f3
    xchg bx, ax                      ; 0x57f5
    shl bx, 1                        ; 0x57f6
    jmp [cs:bx - 0x57eb]             ; 0x57f8
