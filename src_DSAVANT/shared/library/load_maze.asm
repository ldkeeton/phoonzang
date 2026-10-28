; auto-generated
load_maze:
    push bp
    mov bp, sp
    sub sp, byte 0x14
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    cmp ax, strict word 0xa
    jb short .forward1
    jmp near .forward6
.forward1:
    shl ax, 1
    mov word [bp - 8], ax
    mov bx, maze_map_slots - IMAGE_BASE
    add bx, ax
    mov word [bp - 2], bx
    mov ax, word [cs:bx]
    or ax, ax
    jne short .forward2
    jmp near .forward3
.forward2:
    mov ax, cs
    mov ds, ax
    mov dx, load_maze.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
.forward3:
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
    mov ax, word [bp + 0x10]
    or ax, ax
    je short .forward4
    jmp near .forward8
.forward4:
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
    mov bx, word [bp - 8]
    add bx, strict word 0x27d
    mov word [cs:bx], ax
    mov bx, ax
    sub bx, byte 6
    mov cl, byte [bx + 5]
    mov al, byte [bx + 4]
    mul cl
    mov cl, 3
    shl ax, cl
    mov cx, word [bx + 2]
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
    mov word [bp - 8], ax
    mov word [bp - 6], dx
    pop dx
    pop ax
    add ax, strict word 0xf
    adc dx, byte 0
    mov bx, 0x10
    div bx
    mov bx, word [bp - 2]
    mov word [cs:bx + 2], ax
    add word [cs:maze_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:maze_paras_used - IMAGE_BASE]
    cmp ax, 0x4180
    jae short .forward7
    mov ax, ds
    add ax, 0x100
    mov ds, ax
    mov dx, 0
.back1:
    cmp word [bp - 6], byte 0
    je short .forward5
    dec word [bp - 6]
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
    jmp short .back1
.forward5:
    mov cx, word [bp - 8]
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
.back2:
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
.forward6:
    mov ax, cs
    mov ds, ax
    mov dx, load_maze.cseg2 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
.forward7:
    mov ax, cs
    mov ds, ax
    mov dx, load_maze.cseg3 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
load_maze.cseg2:

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with bad slot number.', 0
    db 0x0a, 0x24

load_maze.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with filled slot number.', 0
    db 0x0a, 0x24

load_maze.cseg3:

    db 0x0d, 0x0a, 0x07
    db 'oops... LOAD_MAZE filled its memory area.', 0
    db 0x0a, 0x24

load_maze.forward8:
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov si, cache_maze_slot_table - IMAGE_BASE
    add si, ax
    mov ax, word [cs:si]
    dec ax
    mov cl, 2
    shl ax, cl
    mov di, ems_blocks - IMAGE_BASE
    add di, ax
    mov si, word [cs:di]
    mov ax, word [cs:di + 2]
    mov word [cs:bx + 2], ax
    mov word [bp - 4], ax
    mov dx, word [cs:maze_mem_seg - IMAGE_BASE]
    add dx, word [cs:maze_paras_used - IMAGE_BASE]
    mov word [bp - 0xa], dx
    mov es, dx
    add word [cs:maze_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:ems_frame_seg - IMAGE_BASE]
    mov ds, ax
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:ems_cur_page - IMAGE_BASE], ax
    call ems_map_pages
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
load_maze.back3:
    test si, 0xc000
    je short load_maze.forward9
    inc word [cs:ems_cur_page - IMAGE_BASE]
    mov ax, word [cs:ems_cur_page - IMAGE_BASE]
    call ems_map_pages
    sub si, strict word 0x4000
load_maze.forward9:
    xor di, di
    mov cx, 0x10
    rep movsb
    mov ax, es
    inc ax
    mov es, ax
    dec word [bp - 4]
    jne short load_maze.back3
    mov ax, word [bp - 0xa]
    mov ds, ax
    mov bx, 0
    mov ax, word [bx]
    mov cx, 6
    mul cx
    add ax, strict word 4
    mov bx, word [bp - 8]
    add bx, strict word 0x27d
    mov word [cs:bx], ax
    jmp near load_maze.back2
