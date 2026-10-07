mouse_set_pos:
    push bp
    mov bp, sp
    sub sp, byte 4
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x10]
    cmp ax, strict word 0x51
    jb short @..mouse_set_pos.l2
@..mouse_set_pos.l1:
    jmp near dos_con_loc_1a9f
@..mouse_set_pos.l2:
    mov bx, word [bp + 0x12]
    mul bx
    or dx, dx
    jne short @..mouse_set_pos.l1
    cmp ax, 0x401
    jae short @..mouse_set_pos.l1
    call bios_mouse_loc_1900
    mov ax, word [bp + 0xc]
    mov word [cs:data_2599], ax
    mov ax, word [bp + 0xe]
    mov word [cs:data_259b], ax
    mov ax, word [bp + 0x10]
    mov word [cs:data_258d], ax
    mov ax, word [bp + 0x12]
    mov word [cs:data_2591], ax
    mov ax, word [cs:data_2599]
    or ax, word [cs:data_259b]
    jne short @..mouse_set_pos.l3
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov si, 0x2593
    mov di, data_258d
    mov cx, 6
    rep movsb
    push ds
    push si
    mov si, 0x259e
    mov ax, cs
    mov ds, ax
    call string_loc_17a1
    pop si
    pop ds
    jmp short @..mouse_set_pos.l4
@..mouse_set_pos.l3:
    mov ax, word [cs:data_258d]
    add ax, strict word 3
    mov cl, 2
    shr ax, cl
    mov word [cs:data_258f], ax
    push ds
    push si
    mov si, word [bp + 0xc]
    mov ax, word [bp + 0xe]
    mov ds, ax
    call string_loc_17a1
    pop si
    pop ds
@..mouse_set_pos.l4:
    cmp byte [cs:data_0228], 0
    je short @..mouse_set_pos.l8
    mov cx, word [bp + 0x14]
    cmp cx, byte 0xff
    je short @..mouse_set_pos.l6
    mov dx, word [bp + 0x16]
    cmp dx, byte 0xff
    je short @..mouse_set_pos.l6
    shl cx, 1
    mov ax, 4
    int 0x33 ; BIOS mouse
@..mouse_set_pos.l5:
    mov ax, data_0003
    int 0x33 ; BIOS mouse
    jmp short @..mouse_set_pos.l7
@..mouse_set_pos.l6:
    cmp byte [cs:data_0226], 0
    je short @..mouse_set_pos.l5
    mov cx, word [cs:data_1bd9]
    shl cx, 1
    mov dx, word [cs:data_1bdb]
@..mouse_set_pos.l7:
    mov ax, cs
    push ax
    call math_loc_2a4f
    mov byte [cs:data_0227], 0
@..mouse_set_pos.l8:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
