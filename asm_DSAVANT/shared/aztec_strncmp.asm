; auto-generated
; asm only
aztec_strncmp:
    push bp
    mov bp, sp
    mov cx, word [bp + 0x8]
    mov dx, cx
    shr cx, 1
    cld
    push si
    push di
    mov si, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    jcxz @..aztec_strncmp.l2
@..aztec_strncmp.l1:
    lodsw
    scasw
    jne short loc_OSRT
    test al, al
    je short loc_PGTO
    test ah, ah
    loopne @..aztec_strncmp.l1
    je short loc_PGTO
@..aztec_strncmp.l2:
    test dl, 1
    je short loc_PGTO
    cmpsb
    jne short aztec_strncmp.loc1
loc_PGTO:
    sub ax, ax
loc_QKLS:
    pop di
    pop si
    pop bp
    ret
