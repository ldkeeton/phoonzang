; auto-generated
load_screen_file_immediate:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0
    push ax
    call call_wait_sound
    pop cx
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
    mov ax, 0x1c
    push ax
    call release_and_exit
    pop cx
.forward1:
    mov ax, 0
    push ax
    push word [bp - 2]
    call call_load_screen
    add sp, byte 4
    push word [bp - 2]
    call aztec_close
    pop cx
    cmp word [bp + 6], byte 0
    je short .return1
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call call_show_area
    add sp, byte 8
.return1:
    ret
