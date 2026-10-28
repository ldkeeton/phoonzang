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
    jmp near .forward3
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
    jmp near .forward4
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
    jae short .back2
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
.forward3:
    mov ax, cs
    mov ds, ax
    mov dx, load_sound.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
load_sound.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... slot already used.', 0
    db 0x0a, 0x24

load_sound.back2:
    mov ax, cs
    mov ds, ax
    mov dx, load_sound.cseg2 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
load_sound.cseg2:

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... not enough memory.', 0
    db 0x0a, 0x24

load_sound.forward4:
    mov cx, ax
    mov ax, word [cs:scratch_buf_seg - IMAGE_BASE]
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
    mov word [bp - 4], ax
    mov bx, word [bp - 2]
    mov word [cs:bx + 2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0xa]
    mov word [cs:bx + 2], ax
    add ax, word [cs:maze_paras_used - IMAGE_BASE]
    cmp ax, 0x4180
    jb short load_sound.forward5
    jmp near load_sound.back2
load_sound.forward5:
    mov word [cs:maze_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:bx]
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    mov es, ax
    call string_loc_RQON
    xor ax, ax
    jmp near load_sound.back1
