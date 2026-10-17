; auto-generated
; asm only
aztec_impl_sys:
    push bp
    mov bp, sp
    mov ax, word [bp + 0x4]
    test ah, ah
    jne short @..aztec_impl_sys.valok
    xchg al, ah
@..aztec_impl_sys.valok:
    cmp ah, 0xa
    jb short @..aztec_impl_sys.simple
    push si
    push es
    cmp ah, 0x47 ; check for getcwd call
    jne short @..aztec_impl_sys.not_cwd
    mov dx, word [bp + 0x8] ; load drive # into DX
    mov si, word [bp + 0x6]
    jmp short @..aztec_impl_sys.issue
@..aztec_impl_sys.not_cwd:
    mov cx, word [bp + 0x8]
    mov dx, word [bp + 0x6]
@..aztec_impl_sys.issue:
    int 0x21 ; DOS function dispatcher
    mov dx, es
    pop es
    jae short @..aztec_impl_sys.noerror
    mov word [errno], ax
    mov ax, 0xffff
    mov dx, ax
@..aztec_impl_sys.noerror:
    pop si
    pop bp
    ret
@..aztec_impl_sys.simple:
    mov dx, word [bp + 0x6]
    int 0x21 ; DOS function dispatcher
    and ax, 0xff
    pop bp
    ret
    db 0x00, 0x00
