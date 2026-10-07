mouse_set_pos:
    push bp
    mov bp, sp
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
    jmp near @..local.l17
@..mouse_set_pos.l2:
    mov bx, word [bp + 0x12]
    mul bx
    or dx, dx
    jne short @..mouse_set_pos.l1
    cmp ax, 0x401
    jae short @..mouse_set_pos.l1
    call bios_mouse_loc_1308
    mov ax, word [bp + 0xc]
    mov word [cs:data_1e64], ax
    mov ax, word [bp + 0xe]
    mov word [cs:data_1e66], ax
    mov ax, word [bp + 0x10]
    mov word [cs:data_1e5c], ax
    mov ax, word [bp + 0x12]
    mov word [cs:data_1e5e], ax
    mov ax, word [cs:data_1e64]
    or ax, word [cs:data_1e66]
    jne short @..mouse_set_pos.l3
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov si, 0x1e60
    mov di, data_1e5c
    mov cx, 4
    rep movsb
@..mouse_set_pos.l3:
    cmp byte [cs:data_0228], 0
    je short @..mouse_set_pos.l7
    mov cx, word [bp + 0x14]
    cmp cx, byte 0xff
    je short @..mouse_set_pos.l5
    mov dx, word [bp + 0x16]
    cmp dx, byte 0xff
    je short @..mouse_set_pos.l5
    shl cx, 1
    mov ax, 4
    int 0x33 ; BIOS mouse
@..mouse_set_pos.l4:
    mov ax, 3
    int 0x33 ; BIOS mouse
    jmp short @..mouse_set_pos.l6
@..mouse_set_pos.l5:
    cmp byte [cs:data_0226], 0
    je short @..mouse_set_pos.l4
    mov cx, word [cs:data_15ac]
    shl cx, 1
    mov dx, word [cs:data_15ae]
@..mouse_set_pos.l6:
    mov ax, cs
    push ax
    call math_loc_1e1a
    mov byte [cs:data_0227], 0
@..mouse_set_pos.l7:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
