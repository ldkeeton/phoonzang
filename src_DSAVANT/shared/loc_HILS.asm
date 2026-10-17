; auto-generated
loc_HILS:
    mov ax, 0
    call aztec_csav
    mov word [loc_HILS.bss1], 0
    mov ax, word [bss_830c]
    cmp ax, word [bss_8f28]
    jne short @..loc_HILS.l1
    mov ax, word [bss_8f3e]
    cmp ax, word [bss_8f2a]
    jne short @..loc_HILS.l1
    mov ax, word [bss_8f42]
    cmp ax, word [bss_8f2e]
    jne short @..loc_HILS.l1
    mov ax, word [bss_8f40]
    cmp ax, word [bss_8f2c]
    jne short @..loc_HILS.l1
    mov word [loc_HILS.bss1], 1
@..loc_HILS.l1:
    ret
