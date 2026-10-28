; auto-generated
string_loc_RQON:
    mov word [bp - 2], 8
    lodsb
.back1:
    cmp word [bp - 4], byte 0
    je short .return1
    call dos_file_loc_VPIN
    mov byte [es:di], bl
    inc di
    dec word [bp - 4]
    jmp short .back1
.return1:
    ret
