dos_alloc_mem:
    push bp
    mov bp, sp
    cld
    sub sp, byte 8
    push si
    push di
    push ds
    push es
    mov ax, ds
    mov es, ax
    mov bx, word [cs:data_2d4a]
    mov ds, bx
    xor dx, dx
    mov bx, word [bp + 0x4]
    mov cx, 0x10
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    jae short @..dos_alloc_mem.l1
    jmp near @..local.l70
@..dos_alloc_mem.l1:
    xor bx, bx
    mov ax, word [bx + 0xa]
    xor cx, cx
    mov cl, byte [bx + 0x5]
    mul cx
    mov word [bp - 0x0008], ax
    add ax, 0x110
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], ax
    mov al, byte [bx + 0x2]
    or al, al
    jne short @..dos_alloc_mem.l2
    mov dl, byte [bx + 0x6]
    test dl, data_0002
    je short @..dos_alloc_mem.l2
    mov ax, word [bx + 0xe]
    xor ch, ch
    mov cl, byte [bx + 0x5]
    mul cx
    add word [bp - 0x0004], ax
    mov dl, byte [bx + 0x6]
    test dl, 4
    je short @..dos_alloc_mem.l2
    add word [bp - 0x0002], ax
@..dos_alloc_mem.l2:
    mov dx, word [bp - 0x0004]
    add dx, byte 0x0f
    mov cl, 4
    shr dx, cl
    mov bx, dx
    mov ah, 0x48
    int 0x21 ; DOS allocate memory
    jae short @..dos_alloc_mem.l3
    jmp near @..dos_con_loc_3936.l1
@..dos_alloc_mem.l3:
    mov bx, 0x364a
    mov cx, word [bp + 0x6]
    shl cx, 1
    add bx, cx
    mov word [cs:bx], ax
    mov es, ax
    xor di, di
    xor si, si
    mov cx, 0x10
    rep movsb
    mov ds, ax
    mov dx, 0x10
    mov bx, word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    sub cx, dx
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    jb short @..local.l70
    xor bx, bx
    mov al, byte [bx + 0x6]
    and al, 6
    cmp al, data_0002
    jne short @..dos_alloc_mem.l4
    mov al, byte [bx + 0x2]
    or al, al
    jne short @..dos_alloc_mem.l4
    mov ax, ds
    mov es, ax
    mov di, word [bx + 0xc]
    mov si, 0x110
    mov cx, word [bp - 0x0008]
    rep movsb
@..dos_alloc_mem.l4:
    pop es
    pop ds
    pop di
    pop si
    mov sp, bp
    pop bp
    ret
