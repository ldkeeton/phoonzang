; auto-generated
load_picture:
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, picture_slots - IMAGE_BASE
    add bx, ax
    mov word [bp - 2], bx
    mov ax, word [cs:bx]
    or ax, ax
    je short .forward1
    jmp near .forward6
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
    mov word [bp - 2], bx
    mov ax, word [cs:maze_paras_used - IMAGE_BASE]
    mov word [cs:bx], ax
    mov ax, word [cs:scratch_buf_seg - IMAGE_BASE]
    mov ds, ax
    xor dx, dx
    mov cx, 4
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    xor bx, bx
    mov ax, word [bx]
    mov dx, word [bx + 2]
    mov word [bp - 4], ax
    mov word [bp - 6], dx
    mov cl, 4
    add ax, strict word 0xf
    adc dx, byte 0
    shr ax, cl
    shl dl, cl
    or ah, dl
    add word [cs:maze_paras_used - IMAGE_BASE], ax
    mov bx, word [bp - 2]
    mov word [cs:bx + 2], ax
    mov ax, word [cs:maze_paras_used - IMAGE_BASE]
    cmp ax, 0x4180
    jb short .forward2
    jmp near .forward7
.forward2:
    mov bx, word [bp - 2]
    mov ax, word [cs:bx]
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    mov ds, ax
.back1:
    mov cx, word [bp - 4]
    mov dx, word [bp - 6]
    mov bx, cx
    or bx, dx
    je short .forward5
    or dx, dx
    jne short .forward3
    cmp cx, strict word 0x1000
    jae short .forward3
    sub word [bp - 4], cx
    jmp short .forward4
.forward3:
    sub cx, strict word 0x1000
    sbb dx, byte 0
    mov word [bp - 4], cx
    mov word [bp - 6], dx
    mov cx, 0x1000
.forward4:
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov ax, ds
    add ax, 0x100
    mov ds, ax
    jmp short .back1
.forward5:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
.forward6:
    mov ax, word [bp + 0xe]
    mov bx, 0xa
    div bx
    or byte [cs:picture_error_tens - IMAGE_BASE], al
    or byte [cs:picture_error_ones - IMAGE_BASE], dl
load_picture.loc1:
    mov ax, cs
    mov ds, ax
    mov dx, load_picture.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
load_picture.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'Picture slot '

picture_error_tens:
    db 0x30
picture_error_ones:
    db '0 not freed.', 0
    db 0x0a, 0x24
load_picture.forward7:
    mov ax, cs
    mov ds, ax
    mov dx, load_picture.cseg2 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
load_picture.cseg2:

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable loading picture.', 0
    db 0x0a, 0x24

