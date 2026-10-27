; auto-generated
aztec_open:
    push bp
    mov bp, sp
    push di
    push si
    mov ax, word [bp + 6]
    and ax, 0xf3
    mov di, ax
    or ax, 0x3d00
    mov di, ax
    test word [bp + 6], 0x200
    je short .forward1
    mov di, 0x3c00
.forward1:
    mov ax, 0
    push ax
    push word [bp + 4]
    push di
    call aztec_impl_sys
    add sp, byte 6
    mov si, ax
    mov ax, si
    cmp ax, strict word 0xffff
    jne short .forward3
    test word [bp + 6], 0x100
    je short .forward2
    mov ax, 0
    push ax
    push word [bp + 4]
    mov ax, 0x3c
    push ax
    call aztec_impl_sys
    add sp, byte 6
    mov si, ax
.forward2:
    jmp short .forward4
.forward3:
    test word [bp + 6], 0x400
    je short .forward4
    push si
    call aztec_close
    pop cx
    mov word [errno], 0x13
    mov ax, 0xffff
.back1:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
.forward4:
    cmp si, byte 0
    jl short .forward6
    test word [bp + 6], 0x800
    je short .forward5
    mov ax, 2
    push ax
    mov ax, 0
    mov dx, 0
    push dx
    push ax
    push si
    call aztec_lseek
    add sp, byte 8
.forward5:
    push si
    call aztec_isatty
    pop cx
    mov byte [si + _ioflg], al
.forward6:
    mov ax, si
    jmp short .back1
