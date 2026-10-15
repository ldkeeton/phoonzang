; auto-generated
ds_string_loc_IJKM:
    call ds_leaf_loc_GPQN            ; 0x4aa2
    mov ax, word [bp - 0x0002]       ; 0x4aa5
    mov word [es:di], ax             ; 0x4aa8
    test byte [bp - 0x000b], 2       ; 0x4aab
    je short @..ds_string_loc_IJKM.l1 ; 0x4aaf
    mov word [es:di + 0x2], 0        ; 0x4ab1
@..ds_string_loc_IJKM.l1:
    jmp near ds_loc_MSKN             ; 0x4ab7
