; auto-generated
dos_file_loc_MUHV:
    push ds
    push es
    push si
    push di
    mov dx, word [cs:scratch_buf_seg - IMAGE_BASE]
    mov ds, dx
.back1:
    xor dx, dx
    mov cx, 0x1000
    mov bx, word [bp - 2]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    or ax, ax
    je short dos_file_loc_MUHV.loc1
    mov cx, ax
    push ax
    mov bx, word [bp - 4]
    xor dx, dx
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jb short dos_file_loc_MUHV.dos_con_loc1
    pop cx
    cmp cx, ax
    je short .back1
