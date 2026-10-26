; auto-generated
loc_LPLI_194f:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 4]
    cmp word [loc_LPLI_194f.bss1], byte 0
    je short @..loc_LPLI_194f.l1
    mov ax, word [bp + 6]
@..loc_LPLI_194f.l1:
    ret
