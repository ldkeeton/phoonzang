; auto-generated
api_idx_0002_OTTG:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call data_file_path
    add sp, byte 4
    push ax
    call aztec_open
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0002_OTTG.l1
    mov ax, 0x1b
    push ax
    call release_and_exit
    pop cx
@..api_idx_0002_OTTG.l1:
    mov ax, 0
    push ax
    push word [bp + 0x6]
    push word [bp - 0x0002]
    call gfx_load_maze
    add sp, byte 6
    push word [bp - 0x0002]
    call aztec_close
    pop cx
    ret
