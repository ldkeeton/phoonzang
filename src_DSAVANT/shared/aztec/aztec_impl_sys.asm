; auto-generated
aztec_impl_sys:
    push bp
    mov bp, sp
    mov ax, word [bp + 4]
    test ah, ah
    jne short .forward1
    xchg al, ah
.forward1:
    cmp ah, 0xa
    jb short .forward5
    push si
    push es
    cmp ah, 0x47
    jne short .forward2
    mov dx, word [bp + 8]
    mov si, word [bp + 6]
    jmp short .forward3
.forward2:
    mov cx, word [bp + 8]
    mov dx, word [bp + 6]
.forward3:
    int 0x21 ; DOS function dispatcher
    mov dx, es
    pop es
    jae short .forward4
    mov word [errno], ax
    mov ax, 0xffff
    mov dx, ax
.forward4:
    pop si
    pop bp
    ret
.forward5:
    mov dx, word [bp + 6]
    int 0x21 ; DOS function dispatcher
    and ax, 0xff
    pop bp
    ret
