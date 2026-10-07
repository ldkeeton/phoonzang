dos_free_mem:
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    mov ds, ax
    mov si, word [bp + 0xc]
    or ax, si
    je short @..dos_free_mem.l2
    mov ax, word [cs:data_01e5]
    mov es, ax
    lodsw
    mov word [bp - 0x0002], ax
    add si, byte 2
    lodsw
    mov word [bp - 0x0004], ax
    lodsw
    mov word [bp - 0x0006], ax
    add si, byte 4
@..dos_free_mem.l1:
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short @..dos_free_mem.l1
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..dos_free_mem.l3
    mov ax, ds
    or ax, ax
    je short @..dos_free_mem.l3
    mov es, ax
    mov ah, 0x49
    int 0x21 ; DOS free memory
    jmp short @..dos_free_mem.l3
@..dos_free_mem.l2:
    mov ax, cs
    mov ds, ax
    mov dx, 0xec0
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
    or ax, 0x70a

    db 'RESTOREAREA called with NULL pointer.', 0

    or ah, byte [si]
@..dos_free_mem.l3:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
