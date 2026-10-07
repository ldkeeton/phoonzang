string_loc_4bb2:
    mov word [bp - 0x0002], 8        ; 0x4bb2
    lodsb                            ; 0x4bb7
@..string_loc_4bb2.l1:
    cmp word [bp - 0x0004], byte 0   ; 0x4bb8
    je short @..string_loc_4bb2.l2   ; 0x4bbc
    call dos_file_loc_4bcb           ; 0x4bbe
    mov byte [es:di], bl             ; 0x4bc1
    inc di                           ; 0x4bc4
    dec word [bp - 0x0004]           ; 0x4bc5
    jmp short @..string_loc_4bb2.l1  ; 0x4bc8
@..string_loc_4bb2.l2:
    ret                              ; 0x4bca
