; auto-generated
load_member_icon:
    mov ax, 0xffea
    call $csav
    mov ax, portrait_data_filename
    push ax
    lea ax, word [bp - 0x16]
    push ax
    call strcpy
    add sp, byte 4
    mov ax, 0
    push ax
    call call_wait_sound
    pop cx
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x16]
    push ax
    call data_file_path
    add sp, byte 4
    push ax
    call open
    add sp, byte 4
    mov word [bp - 2], ax
    cmp ax, strict word 0xffff
    jne short .forward1
    mov ax, 0x13
    push ax
    call release_and_exit
    pop cx
.forward1:
    push word [bp + 6]
    push word [bp + 4]
    mov ax, 5
    push ax
    push word [bp - 2]
    call read_font_glyph
    add sp, byte 8
    push word [bp - 2]
    call close
    pop cx
    ret
