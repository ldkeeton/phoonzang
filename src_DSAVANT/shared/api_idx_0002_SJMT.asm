; auto-generated
api_idx_0002_SJMT:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0
    push ax
    call thunk_17
    pop cx
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, dseg_9098
    push ax
    call ds_app_UUHT
    add sp, byte 4
    push ax
    call aztec_open
    add sp, byte 4
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x6]
    imul word [bss_906e]
    cwd
    add ax, word [bss_9072]
    adc dx, word [bss_9074]
    push dx
    push ax
    push word [bp - 0x0002]
    call aztec_lseek
    add sp, byte 8
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0002_SJMT.l1
    push word [bss_906e]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call aztec_read
    add sp, byte 6
    jmp short @..api_idx_0002_SJMT.l2
@..api_idx_0002_SJMT.l1:
    cmp word [bp + 0x8], byte 1
    jne short @..api_idx_0002_SJMT.l2
    push word [bss_906e]
    push word [bp + 0x4]
    push word [bp - 0x0002]
    call aztec_write
    add sp, byte 6
@..api_idx_0002_SJMT.l2:
    push word [bp - 0x0002]
    call aztec_close
    pop cx
    ret
