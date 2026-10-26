; auto-generated
aztec_impl_sys:
    push bp
    mov bp, sp
    mov ax, word [bp + 4]
    test ah, ah
    jne short aztec_sys.valok
    xchg al, ah
aztec_sys.valok:
    cmp ah, 0xa
    jb short aztec_sys.simple
    push si
    push es
    cmp ah, 0x47
    jne short aztec_sys.not_cwd
    mov dx, word [bp + 8]
    mov si, word [bp + 6]
    jmp short aztec_sys.issue
aztec_sys.not_cwd:
    mov cx, word [bp + 8]
    mov dx, word [bp + 6]
aztec_sys.issue:
    int 0x21 ; DOS function dispatcher
    mov dx, es
    pop es
    jae short aztec_sys.noerror
    mov word [errno], ax
    mov ax, 0xffff
    mov dx, ax
aztec_sys.noerror:
    pop si
    pop bp
    ret
aztec_sys.simple:
    mov dx, word [bp + 6]
    int 0x21 ; DOS function dispatcher
    and ax, 0xff
    pop bp
    ret
