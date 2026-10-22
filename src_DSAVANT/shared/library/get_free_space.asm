; auto-generated
get_free_space:
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp word [bp + 0xc], byte 0
    je short @..get_free_space.l3
    cmp word [bp + 0xc], byte 1
    je short @..get_free_space.l4
    cmp word [bp + 0xc], byte 3
    je short @..get_free_space.l1
    mov ax, 0x4180
    sub ax, word [cs:maze_paras_used - IMAGE_BASE]
    mov bx, 0x10
    mul bx
    jmp short @..get_free_space.l5
@..get_free_space.l1:
    mov ah, 0x36
    mov dx, word [bp + 0xe]
    int 0x21 ; DOS get disk free space
    cmp ax, strict word 0xffff
    jne short @..get_free_space.l2
    xor ax, ax
    xor dx, dx
    jmp short @..get_free_space.l5
@..get_free_space.l2:
    mul cx
    mul bx
    jmp short @..get_free_space.l5
@..get_free_space.l3:
    mov ah, 0x48
    mov bx, 0xffff
    int 0x21 ; DOS allocate memory
    mov ax, 0x10
    mul bx
    jmp short @..get_free_space.l5
@..get_free_space.l4:
    mov ax, word [cs:ems_para_limit - IMAGE_BASE]
    sub ax, word [cs:ems_paras_used - IMAGE_BASE]
    mov bx, 0x10
    mul bx
@..get_free_space.l5:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
