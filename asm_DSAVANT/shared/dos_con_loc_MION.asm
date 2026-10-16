; auto-generated
; asm only
dos_con_loc_MION:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... not enough memory.', 0
    db 0x0a, 0x24

@..dos_read_file_6.l6:
    mov cx, ax
    mov ax, word [cs:cseg_00e9 - IMAGE_BASE]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov si, 0x400
    mov di, 0
    lodsw
    mov word [bp - 0x0004], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0x000a]
    mov word [cs:bx + 0x2], ax
    add ax, word [cs:dos_con_loc_MION.cseg1 - IMAGE_BASE]
    cmp ax, 0x4180
    jb short @..dos_read_file_6.l7
    jmp near @..dos_read_file_6.l5
@..dos_read_file_6.l7:
    mov word [cs:dos_con_loc_MION.cseg1 - IMAGE_BASE], ax
    mov ax, word [cs:bx]
    add ax, word [cs:cseg_00e1 - IMAGE_BASE]
    mov es, ax
    call string_loc_RQON
    xor ax, ax
    jmp near @..dos_read_file_6.l3
