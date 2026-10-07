dos_read_file:
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    cmp ax, strict word 2
    je short @..dos_read_file.l2
    cmp ax, strict word 1
    je short @..dos_read_file.l1
    jmp near @..dos_read_file.l4
@..dos_read_file.l1:
    mov ax, word [bp + 0xc]
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
    mov bx, word [cs:data_01e1]
    add bx, ax
    mov ds, bx
    mov ax, word [cs:data_01e5]
    mov es, ax
    xor di, di
    xor si, si
    mov cx, 0xfa00
    rep movsb
    jmp short @..dos_read_file.l5
@..dos_read_file.l2:
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, 0x2d7
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, 0x2eb
    add bx, ax
    mov si, word [cs:bx]
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:data_4540], ax
    call dos_file_loc_4442
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov bx, word [cs:data_0203]
    mov ds, bx
    mov ax, word [cs:data_01e5]
    mov es, ax
    xor di, di
    mov cx, data_0003
@..dos_read_file.l3:
    push cx
    mov cx, 0x4000
    rep movsb
    and si, strict word 0x3fff
    inc word [cs:data_4540]
    mov ax, word [cs:data_4540]
    call dos_file_loc_4442
    pop cx
    loop @..dos_read_file.l3
    mov cx, 0x3a00
    rep movsb
    jmp short @..dos_read_file.l5
@..dos_read_file.l4:
    mov ax, word [cs:data_01e5]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 0xfa00
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
@..dos_read_file.l5:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
