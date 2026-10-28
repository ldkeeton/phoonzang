; auto-generated
transfer_pc_file_record:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0
    push ax
    call gfx_wait_sound
    pop cx
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    mov ax, pc_file_name
    push ax
    call data_file_path
    add sp, byte 4
    push ax
    call aztec_open
    add sp, byte 4
    mov word [bp - 2], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 6]
    imul word [pc_file_record_size]
    cwd
    add ax, word [pc_file_record_base]
    adc dx, word [pc_file_record_base_hi]
    push dx
    push ax
    push word [bp - 2]
    call aztec_lseek
    add sp, byte 8
    cmp word [bp + 8], byte 0
    jne short .forward1
    push word [pc_file_record_size]
    push word [bp + 4]
    push word [bp - 2]
    call aztec_read
    add sp, byte 6
    jmp short .forward2
.forward1:
    cmp word [bp + 8], byte 1
    jne short .forward2
    push word [pc_file_record_size]
    push word [bp + 4]
    push word [bp - 2]
    call aztec_write
    add sp, byte 6
.forward2:
    push word [bp - 2]
    call aztec_close
    pop cx
    ret
