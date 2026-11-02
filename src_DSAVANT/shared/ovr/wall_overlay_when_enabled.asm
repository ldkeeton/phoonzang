; auto-generated
wall_overlay_when_enabled:
    mov ax, 0
    call aztec_csav
    mov ax, 0xffff
    cmp word [api_idx_0012_KQTQ_bss2524], byte 0
    je short .return1
    mov ax, word [bp + 4]
.return1:
    ret
