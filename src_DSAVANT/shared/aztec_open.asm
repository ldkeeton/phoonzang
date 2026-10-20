; auto-generated
aztec_creat:
    push bp
    mov bp, sp
    push word [bp + 0x6]
    mov ax, 0x301
    push ax
    push word [bp + 0x4]
    call aztec_open
    add sp, byte 6
    mov sp, bp
    pop bp
    ret
aztec_open:
    push bp
    mov bp, sp
    push di
    push si
    mov ax, word [bp + 0x6]
    and ax, 0xf3
    mov di, ax
    or ax, 0x3d00
    mov di, ax
    test word [bp + 0x6], 0x200
    je short @..aztec_open.l1
    mov di, 0x3c00
@..aztec_open.l1:
    mov ax, 0
    push ax
    push word [bp + 0x4]
    push di
    call aztec_impl_sys
    add sp, byte 6
    mov si, ax
    mov ax, si
    cmp ax, strict word 0xffff
    jne short @..aztec_open.l3
    test word [bp + 0x6], 0x100
    je short @..aztec_open.l2
    mov ax, 0
    push ax
    push word [bp + 0x4]
    mov ax, 0x3c
    push ax
    call aztec_impl_sys
    add sp, byte 6
    mov si, ax
@..aztec_open.l2:
    jmp short @..aztec_open.l5
@..aztec_open.l3:
    test word [bp + 0x6], 0x400
    je short @..aztec_open.l5
    push si
    call aztec_close
    pop cx
    mov word [errno], 0x13
    mov ax, 0xffff
@..aztec_open.l4:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
@..aztec_open.l5:
    cmp si, byte 0
    jl short @..aztec_open.l7
    test word [bp + 0x6], 0x800
    je short @..aztec_open.l6
    mov ax, 2
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push si
    call aztec_lseek
    add sp, byte 8
@..aztec_open.l6:
    push si
    call aztec_isatty
    pop cx
    mov byte [si + _ioflg], al
@..aztec_open.l7:
    mov ax, si
    jmp short @..aztec_open.l4
