string_loc_4aa2:
    call string_loc_4aed             ; 0x4aa2
    mov ax, word [bp - 0x0002]       ; 0x4aa5
    mov word [es:di], ax             ; 0x4aa8
    test byte [bp - 0x000b], data_0002 ; 0x4aab
    je short @..string_loc_4aa2.l1   ; 0x4aaf
    mov word [es:di + 0x2], 0        ; 0x4ab1
@..string_loc_4aa2.l1:
    jmp near loc_4879                ; 0x4ab7
