; auto-generated
; asm only
aztec_strcpy:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    mov cx, 0xffff
    mov al, 0
    repne scasb
    not cx ; real length of string
    mov di, word [bp + 0x4]
    mov si, word [bp + 0x6]
    shr cx, 1
    jcxz @..aztec_strcpy.nowords
    rep movsw
@..aztec_strcpy.nowords:
    jae short @..aztec_strcpy.nobyte
    movsb
@..aztec_strcpy.nobyte:
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
