; auto-generated
aztec_strcmp:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov si, word [bp + 4]
    mov di, ds
    mov es, di
    mov di, word [bp + 6]
@..aztec_strcmp.cmploop:
    lodsw
    scasw
    jne short @..aztec_strcmp.word_notequal
    test al, al
    je short @..aztec_strcmp.equal
    test ah, ah
    jne short @..aztec_strcmp.cmploop
    jmp short @..aztec_strcmp.equal
aztec_strncmp:
    push bp
    mov bp, sp
    mov cx, word [bp + 8]
    mov dx, cx
    shr cx, 1
    cld
    push si
    push di
    mov si, word [bp + 4]
    mov di, ds
    mov es, di
    mov di, word [bp + 6]
    jcxz @..aztec_strcmp.words_equal
@..aztec_strcmp.ncmploop:
    lodsw
    scasw
    jne short @..aztec_strcmp.word_notequal
    test al, al
    je short @..aztec_strcmp.equal
    test ah, ah
    loopne @..aztec_strcmp.ncmploop
    je short @..aztec_strcmp.equal
@..aztec_strcmp.words_equal:
    test dl, 1
    je short @..aztec_strcmp.equal
    cmpsb
    jne short @..aztec_strcmp.notequal
@..aztec_strcmp.equal:
    sub ax, ax
@..aztec_strcmp.done:
    pop di
    pop si
    pop bp
    ret
@..aztec_strcmp.word_notequal:
    sub di, byte 2
    scasb
    jne short @..aztec_strcmp.notequal
    test al, al
    je short @..aztec_strcmp.equal
    mov al, ah
    scasb
@..aztec_strcmp.notequal:
    sbb ax, ax
    js short @..aztec_strcmp.done
    inc ax
    jmp short @..aztec_strcmp.done
