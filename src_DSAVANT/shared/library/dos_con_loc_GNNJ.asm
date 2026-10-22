; auto-generated
dos_con_loc_GNNJ:
    mov ax, cs
    mov ds, ax
    mov dx, dos_con_loc_GNNJ.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
dos_con_loc_GNNJ.loc1:
    mov ax, word [cs:maze_block_count - IMAGE_BASE]
    inc ax
    mov word [cs:maze_block_count - IMAGE_BASE], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:maze_paras_used - IMAGE_BASE]
    mov word [cs:bx], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short loc_NTVL
    jmp near loc_LQTO
loc_NTVL:
    cld
    mov cx, 0x1000
    mov bx, word [cs:maze_mem_seg - IMAGE_BASE]
    add bx, word [cs:maze_paras_used - IMAGE_BASE]
    mov ds, bx
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov bx, 0
    mov ax, word [bx]
    mov cx, 6
    mul cx
    add ax, strict word 4
    mov bx, word [bp - 0x0008]
    add bx, strict word 0x27d
    mov word [cs:bx], ax
    mov bx, ax
    sub bx, byte 6
    mov cl, byte [bx + 0x5]
    mov al, byte [bx + 0x4]
    mul cl
    mov cl, 3
    shl ax, cl
    mov cx, word [bx + 0x2]
    add ax, cx
    push ax
    xor dx, dx
    mov ax, word [bx]
    mov cx, 0x10
    mul cx
    pop cx
    add ax, cx
    adc dx, byte 0
    push ax
    push dx
    sub ax, 0x1000
    sbb dx, byte 0
    mov word [bp - 0x0008], ax
    mov word [bp - 0x0006], dx
    pop dx
    pop ax
    add ax, strict word 0xf
    adc dx, byte 0
    mov bx, 0x10
    div bx
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add word [cs:maze_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:maze_paras_used - IMAGE_BASE]
    cmp ax, 0x4180
    jae short dos_con_loc_GNNJ.dos_con_loc1
    mov ax, ds
    add ax, 0x100
    mov ds, ax
    mov dx, 0
loc_OTIL:
    cmp word [bp - 0x0006], byte 0
    je short loc_PQKR
    dec word [bp - 0x0006]
    mov cx, 0x8000
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov ax, ds
    add ax, 0x800
    mov ds, ax
    mov cx, 0x8000
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov ax, ds
    add ax, 0x800
    mov ds, ax
    jmp short loc_OTIL
loc_PQKR:
    mov cx, word [bp - 0x0008]
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
loc_JKVR:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
