string_loc_4300:
    mov word [bp - 0x0002], 8        ; 0x4300
    lodsb                            ; 0x4305
@..string_loc_4300.l1:
    cmp word [bp - 0x0004], byte 0   ; 0x4306
    je short @..string_loc_4300.l2   ; 0x430a
    call dos_file_loc_4319           ; 0x430c
    mov byte [es:di], bl             ; 0x430f
    inc di                           ; 0x4312
    dec word [bp - 0x0004]           ; 0x4313
    jmp short @..string_loc_4300.l1  ; 0x4316
@..string_loc_4300.l2:
    ret                              ; 0x4318
