dos_write_file:
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    test ah, 0x80
    jne short @..dos_write_file.l1
    jmp near @..dos_write_file.l4
@..dos_write_file.l1:
    neg ax
    mov bx, 0x251
    shl ax, 1
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..dos_write_file.l2
    jmp near dos_con_loc_0f70
@..dos_write_file.l2:
    mov ax, word [cs:data_11cb]
    inc ax
    mov word [cs:data_11cb], ax
    mov word [cs:bx], ax
    mov cl, 2
    dec ax
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:data_11cd]
    mov word [cs:bx], ax
    mov cx, 0xfa0
    mov word [cs:bx + 0x2], cx
    mov dx, word [cs:data_11cd]
    add dx, cx
    mov word [cs:data_11cd], dx
    cmp dx, strict word 0x4180
    jb short @..dos_write_file.l3
    jmp near dos_con_loc_0fae
@..dos_write_file.l3:
    mov ax, word [bp + 0xc]
    neg ax
    shl ax, 1
    mov bx, 0x251
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x10fb
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:data_01e1]
    mov es, ax
    mov ax, word [cs:data_01e5]
    mov ds, ax
    xor di, di
    xor si, si
    mov cx, 0xfa00
    rep movsb
    jmp short @..dos_write_file.l5
@..dos_write_file.l4:
    mov ax, word [cs:data_01e5]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 0xfa00
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
@..dos_write_file.l5:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
