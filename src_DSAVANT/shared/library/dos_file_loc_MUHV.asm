; auto-generated
dos_file_loc_MUHV:
    push ds
    push es
    push si
    push di
    mov dx, word [cs:cseg_00e9 - IMAGE_BASE]
    mov ds, dx
@..dos_file_loc_MUHV.l1:
    xor dx, dx
    mov cx, 0x1000
    mov bx, word [bp - 0x0002]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    or ax, ax
    je short dos_file_loc_MUHV.loc1
    mov cx, ax
    push ax
    mov bx, word [bp - 0x0004]
    xor dx, dx
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jb short dos_file_loc_MUHV.dos_con_loc1
    pop cx
    cmp cx, ax
    je short @..dos_file_loc_MUHV.l1
