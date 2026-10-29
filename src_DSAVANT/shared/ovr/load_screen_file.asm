; auto-generated
load_screen_file:
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
    mov ax, 0xe
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
    cmp word [bp + 6], byte 1
    jne short .forward2
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call call_show_area
    add sp, byte 8
    jmp short .return1
.forward2:
    cmp word [bp + 6], byte 2
    jne short .return1
    mov ax, 0
    push ax
    push ax
    push ax
    call call_reset_rgb
    add sp, byte 6
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call call_show_area
    add sp, byte 8
    mov ax, 0
    push ax
    call call_fade_in
    pop cx
.return1:
    ret
