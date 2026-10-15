; auto-generated
loc_LRIS:
    cmp ax, strict word 0x13         ; 0x5777
    jae short string_loc_SQRJ        ; 0x577a
    xchg bx, ax                      ; 0x577c
    shl bx, 1                        ; 0x577d
    jmp [cs:bx - 0x5868]             ; 0x577f
