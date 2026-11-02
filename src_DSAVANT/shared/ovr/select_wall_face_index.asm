; auto-generated
select_wall_face_index:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 4]
    cmp word [api_idx_0012_KQTQ_bss2524], byte 0
    je short .return1
    mov ax, word [bp + 6]
.return1:
    ret
