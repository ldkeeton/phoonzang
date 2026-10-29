; auto-generated
load_maze_file:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 4]
    call data_file_path
    add sp, byte 4
    push ax
    call aztec_open
    add sp, byte 4
    mov word [bp - 2], ax
    cmp ax, strict word 0xffff
    jne short .forward1
    mov ax, 0x1b
    push ax
    call release_and_exit
    pop cx
.forward1:
    mov ax, 0
    push ax
    push word [bp + 6]
    push word [bp - 2]
    call call_load_maze
    add sp, byte 6
    push word [bp - 2]
    call aztec_close
    pop cx
    ret
