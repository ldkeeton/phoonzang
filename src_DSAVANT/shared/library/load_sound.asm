; auto-generated
load_sound:
    push bp
    mov bp, sp
    sub sp, byte 0xa
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov bx, word [bp + 0xe]
    shl bx, 1
    shl bx, 1
    add bx, sound_slots - IMAGE_BASE
    mov word [bp - 2], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short .forward1
    jmp near load_sound.dos_con_loc1
.forward1:
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
    mov ax, word [cs:scratch_buf_seg - IMAGE_BASE]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 2
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    xor bx, bx
    mov ax, word [bx]
    or ax, ax
    je short .forward2
    jmp near load_sound.loc1
.forward2:
    mov bx, word [bp - 2]
    mov ax, word [bp - 4]
    sub ax, strict word 2
    mov word [cs:bx + 2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0xa]
    mov word [cs:bx + 2], ax
    add ax, word [cs:maze_paras_used - IMAGE_BASE]
    cmp ax, 0x4180
    jae short load_sound.dos_con_loc2
    mov word [cs:maze_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:bx]
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, word [bp - 4]
    sub cx, byte 2
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    xor ax, ax
.back1:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
