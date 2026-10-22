; auto-generated
api_idx_0016_JNJG:
    mov ax, 0xffea
    call aztec_csav
    mov ax, api_idx_0016_JNJG.dseg1
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call aztec_strcpy
    add sp, byte 4
    mov ax, 0
    push ax
    call gfx_wait_sound
    pop cx
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x0016]
    push ax
    call data_file_path
    add sp, byte 4
    push ax
    call aztec_open
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0016_JNJG.l1
    mov ax, 0x13
    push ax
    call release_and_exit
    pop cx
@..api_idx_0016_JNJG.l1:
    push word [bp + 0x6]
    push word [bp + 0x4]
    mov ax, 5
    push ax
    push word [bp - 0x0002]
    call dos_read_file
    add sp, byte 8
    push word [bp - 0x0002]
    call aztec_close
    pop cx
    ret
