; auto-generated
string_loc_MLSO:
    call leaf_loc_GIJR               ; 0x32d3
    mov ax, word [bp - 0x0002]       ; 0x32d6
    mov word [es:di], ax             ; 0x32d9
    test byte [bp - 0x000b], 2       ; 0x32dc
    je short @..string_loc_MLSO.l1   ; 0x32e0
    mov word [es:di + 0x2], 0        ; 0x32e2
@..string_loc_MLSO.l1:
    jmp near loc_KNJH                ; 0x32e8
