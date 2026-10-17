; auto-generated
; asm only
aztec_strcmp:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
@..aztec_strcmp.l1:
    lodsw
    scasw
    jne short loc_OSRT
    test al, al
    je short loc_PGTO
    test ah, ah
    jne short @..aztec_strcmp.l1
    jmp short loc_PGTO
