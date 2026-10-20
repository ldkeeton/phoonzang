; auto-generated
string_loc_RQON:
    mov word [bp - 0x0002], 8
    lodsb
@..string_loc_RQON.l1:
    cmp word [bp - 0x0004], byte 0
    je short @..string_loc_RQON.l2
    call string_loc_RQON.dos_file_loc1
    mov byte [es:di], bl
    inc di
    dec word [bp - 0x0004]
    jmp short @..string_loc_RQON.l1
@..string_loc_RQON.l2:
    ret
