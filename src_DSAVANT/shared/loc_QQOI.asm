; auto-generated
loc_QQOI:
    mov ax, 0
    call aztec_csav
    call loc_HVLG
    test ax, ax
    je short @..loc_QQOI.l1
    mov ax, word [bss_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bss_82e8], dx
    call loc_IONR
    mov ax, 1
    ret
@..loc_QQOI.l1:
    mov ax, 0
    ret
