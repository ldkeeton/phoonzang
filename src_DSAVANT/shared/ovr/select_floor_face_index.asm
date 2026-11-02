; auto-generated
select_floor_face_index:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 4]
    cmp word [floor_checker_parity], byte 0
    je short .return1
    mov ax, word [bp + 6]
.return1:
    ret
