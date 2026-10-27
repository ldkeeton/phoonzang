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
.back1:
    lodsw
    scasw
    jne short loc_OSRT
    test al, al
    je short loc_PGTO
    test ah, ah
    jne short .back1
    jmp short loc_PGTO
