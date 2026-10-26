; auto-generated
load_score:
    push bp
    mov bp, sp
    sub sp, byte 0xe
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0x12]
    shl bx, 1
    shl bx, 1
    add bx, score_slots - IMAGE_BASE
    mov word [bp - 2], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short @..load_score.l1
    jmp near load_score.dos_con_loc1
@..load_score.l1:
    mov bx, word [bp + 0x12]
    shl bx, 1
    add bx, score_info - IMAGE_BASE
    mov ax, word [bp + 0x10]
    mov word [cs:bx], ax
    mov ax, word [cs:maze_block_count - IMAGE_BASE]
    inc ax
    mov word [cs:maze_block_count - IMAGE_BASE], ax
    mov bx, word [bp - 2]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov word [bp - 0xa], bx
    mov ax, word [cs:maze_paras_used - IMAGE_BASE]
    mov word [cs:bx], ax
    xor ax, ax
    mov word [bp - 0xc], ax
    mov word [bp - 0xe], ax
    mov bx, word [bp - 2]
    mov word [cs:bx + 2], ax
    mov bx, word [bp + 0xe]
    cmp bx, byte 0xff
    je short @..load_score.l2
    mov ah, 0x42
    mov al, 2
    xor cx, cx
    mov dx, cx
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0xc], ax
    mov bx, word [bp - 2]
    mov word [cs:bx + 2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 0xe], ax
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0xe]
    xor cx, cx
    mov dx, cx
    int 0x21 ; DOS seek file (lseek)
@..load_score.l2:
    mov ah, 0x42
    mov al, 2
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 4], ax
    mov word [bp - 6], dx
    mov ah, 0x42
    mov al, 0
    mov bx, word [bp + 0xc]
    xor cx, cx
    mov dx, cx
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [bp - 4]
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0xa]
    add ax, word [bp - 0xe]
    mov word [cs:bx + 2], ax
    add ax, word [cs:maze_paras_used - IMAGE_BASE]
    cmp ax, 0x4180
    jb short @..load_score.l3
    jmp near load_score.dos_con_loc2
@..load_score.l3:
    mov word [cs:maze_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:bx]
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    mov ds, ax
    mov bx, word [bp + 0xe]
    cmp bx, byte 0xff
    je short @..load_score.l4
    xor dx, dx
    mov cx, word [bp - 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
@..load_score.l4:
    mov bx, word [bp - 2]
    mov bx, word [cs:bx + 2]
    mov dx, bx
    mov bx, word [bp + 0xc]
    mov cx, word [bp - 4]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    xor ax, ax
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
