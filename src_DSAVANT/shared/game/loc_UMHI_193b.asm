; auto-generated
loc_UMHI_193b:
    mov ax, 0
    call aztec_csav
    mov ax, 0xffff
    cmp word [loc_UMHI_193b.bss1], byte 0
    je short @..loc_UMHI_193b.l1
    mov ax, word [bp + 0x4]
@..loc_UMHI_193b.l1:
    ret
