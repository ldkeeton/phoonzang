; auto-generated
api_idx_0002_MPHM:
    mov ax, 0xfffe
    call aztec_csav
    mov word [bp - 0x0002], 0
@..api_idx_0002_MPHM.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0002_MPHM.loc1
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xd
    jle short @..api_idx_0002_MPHM.l1
    ret
