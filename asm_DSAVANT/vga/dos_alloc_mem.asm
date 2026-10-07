dos_alloc_mem:
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, ax
    mov ah, 0x48
    int 0x21 ; DOS allocate memory
    jae short @..dos_alloc_mem.l1
    jmp near dos_con_loc_07fd
@..dos_alloc_mem.l1:
    mov es, ax
    xor di, di
    mov ax, word [cs:data_01e5]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 0x0004]
    stosw
    mov ax, word [bp - 0x0006]
    stosw
    mov ax, word [bp - 0x0008]
    stosw
    mov ax, word [bp - 0x000a]
    stosw
@..dos_alloc_mem.l2:
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short @..dos_alloc_mem.l2
    mov dx, es
    xor ax, ax
    jmp short @..dos_alloc_mem.l3
dos_con_loc_07fd:
    mov ax, cs
    mov ds, ax
    mov dx, 0x90d
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
    or ax, 0x70a

    db 'SAVEAREA out of memory.', 0

    or ah, byte [si]
    xor dx, dx
    mov ax, dx
@..dos_alloc_mem.l3:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
