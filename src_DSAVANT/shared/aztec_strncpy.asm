; auto-generated
aztec_strncpy:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov cx, word [bp + 0x8]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x4]
    mov si, word [bp + 0x6]
    jcxz @..aztec_strncpy.cpydone
@..aztec_strncpy.cpyloop:
    lodsb
    test al, al
    je short @..aztec_strncpy.zerofill
    stosb
    loop @..aztec_strncpy.cpyloop
    jmp short @..aztec_strncpy.cpydone
@..aztec_strncpy.zerofill:
    rep stosb
@..aztec_strncpy.cpydone:
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
