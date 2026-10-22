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
    jb short @..load_maze.l1
    jmp near load_maze.dos_con_loc1
@..load_maze.l1:
    shl ax, 1
    mov word [bp - 0x0008], ax
    mov bx, maze_map_slots - IMAGE_BASE
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:bx]
    or ax, ax
    jne short load_maze.dos_con_loc2
    jmp near load_maze.loc1
