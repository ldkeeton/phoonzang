dos_print_str:
    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    cld
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0004], ax
    mov bx, data_0bc6
    add bx, ax
    mov bx, word [cs:bx]
    or bx, bx
    jne short @..dos_print_str.l1
dos_con_loc_0fda:
    mov ax, cs
    mov ds, ax
    mov dx, 0x10ea
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
    or ax, 0x70a
    dec bp
    inc cx
    pop dx
    inc bp
    and byte [bp + di + 0x45], dl
    push sp
    and byte [di + 0x52], al
    push dx
    dec di
    push dx
    add byte [cs:bp + si], cl
    db 0x24
@..dos_print_str.l1:
    db 0x4b
    mov cl, 2
    shl bx, cl
    add bx, data_0bda
    mov ax, word [cs:bx]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    cmp ax, strict word 0xffff
    je short @..dos_print_str.l2
    jmp near @..dos_print_str.l12
@..dos_print_str.l2:
    mov bx, word [bp + 0xe]
    mov ax, 5
    mul bx
    mov bx, word [bp - 0x0004]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    mov ax, word [cs:data_01e5]
    mov es, ax
    mov ax, word [cs:data_01e1]
    add ax, word [bp - 0x0002]
    mov ds, ax
    xor ah, ah
    mov al, byte [si + 0x4]
    or ax, ax
    jne short @..dos_print_str.l3
    jmp near @..local.l16
@..dos_print_str.l3:
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0004], ax
    mov al, byte [si + 0x1]
    cbw
    mov bl, byte [si + 0x3]
    xor bh, bh
    add ax, bx
    mov cl, 3
    shl ax, cl
    mov di, ax
    mov al, byte [si + 0x2]
    mov cx, 0x140
    mul cx
    add di, ax
    mov al, byte [si]
    mov bl, 6
    mul bl
    add ax, word [cs:data_027b]
    mov bx, ax
    xor ax, ax
    mov al, byte [bx + 0x4]
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x2]
    mov dl, byte [si + 0x3]
    xor dh, dh
    shl dx, 1
    shl dx, 1
    shl dx, 1
    add ax, dx
    xor cx, cx
    mov cl, byte [bx + 0x5]
    mov dx, ds
    add dx, word [bx]
    mov ds, dx
@..dos_print_str.l4:
    push cx
    mov cx, word [bp - 0x0004]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short @..dos_print_str.l10
    cmp word [bp + 0x10], byte 2
    je short @..dos_print_str.l8
    cmp word [bp + 0x10], byte 3
    je short @..dos_print_str.l6
@..dos_print_str.l5:
    lodsb
    or al, byte [es:di]
    stosb
    loop @..dos_print_str.l5
    jmp short @..dos_print_str.l11
@..dos_print_str.l6:
    lodsb
    cmp al, 0xff
    je short @..dos_print_str.l7
    mov byte [es:di], ah
@..dos_print_str.l7:
    inc di
    loop @..dos_print_str.l6
    jmp short @..dos_print_str.l11
@..dos_print_str.l8:
    lodsb
    cmp al, 0xff
    je short @..dos_print_str.l9
    mov byte [es:di], al
@..dos_print_str.l9:
    inc di
    loop @..dos_print_str.l8
    jmp short @..dos_print_str.l11
@..dos_print_str.l10:
    rep movsb
@..dos_print_str.l11:
    pop di
    add di, strict word 0x140
    pop ax
    mov dx, word [bp - 0x0006]
    add ax, dx
    pop si
    pop cx
    loop @..dos_print_str.l4
    jmp near @..local.l16
@..dos_print_str.l12:
    mov bx, word [bp + 0xe]
    mov ax, 5
    mul bx
    mov bx, word [bp - 0x0004]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    mov ax, word [cs:data_01e5]
    mov es, ax
    mov ax, word [cs:data_01e1]
    add ax, word [bp - 0x0002]
    mov ds, ax
    mov al, byte [si]
    mov bl, 6
    mul bl
    add ax, word [cs:data_027b]
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x12]
    mov bx, 5
    mul bx
    mov bx, word [bp - 0x0004]
    add bx, strict word 0x27d
    add ax, word [cs:bx]
    mov si, ax
    xor ah, ah
    mov al, byte [si + 0x4]
    or ax, ax
    jne short @..dos_print_str.l13
    jmp near @..local.l16
@..dos_print_str.l13:
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0004], ax
    mov al, byte [si + 0x1]
    cbw
    mov bl, byte [si + 0x3]
    xor bh, bh
    add ax, bx
    mov cl, 3
    shl ax, cl
    mov di, ax
    mov al, byte [si + 0x2]
    mov cx, 0x140
    mul cx
    add di, ax
    mov bx, word [bp - 0x0002]
    xor ax, ax
    mov al, byte [bx + 0x4]
    mov cl, 3
    shl ax, cl
    mov word [bp - 0x0006], ax
    mov cl, 3
    mov ax, word [bx + 0x2]
    xor dh, dh
    mov dl, byte [bx + 0x4]
    shl dx, cl
    dec dx
    add ax, dx
    xor dx, dx
    mov dl, byte [si + 0x3]
    shl dx, cl
    sub ax, dx
    xor cx, cx
    mov cl, byte [bx + 0x5]
    mov dx, ds
    add dx, word [bx]
    mov ds, dx
@..dos_print_str.l14:
    push cx
    mov cx, word [bp - 0x0004]
    push si
    push ax
    push di
    xchg si, ax
    xor ah, ah
    cmp word [bp + 0x10], byte 0
    je short @..local.l14
    cmp word [bp + 0x10], byte 2
    je short @..dos_con_loc_0fda.l3
    cmp word [bp + 0x10], byte 3
    je short @..dos_con_loc_0fda.l1
@..dos_print_str.l15:
    mov al, byte [si]
    dec si
