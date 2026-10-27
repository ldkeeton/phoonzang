; auto-generated
aztec_write:
    push bp
    mov bp, sp
    mov ah, 0x40
aztec_write.loc1:
    mov bx, word [bp + 4]
    cmp byte [bx + _ioflg], 0
    je short aztec_write.loc2
    pop bp
    cmp ah, 0x3f
    je short aztec_write.loc3
    jmp [_ttwr]
aztec_write.loc3:
    jmp [_ttrd]
aztec_write.loc2:
    mov dx, word [bp + 6]
    mov cx, word [bp + 8]
    int 0x21 ; DOS function dispatcher
    jae short aztec_write.loc4
    mov word [errno], ax
    mov ax, 0xffff
aztec_write.loc4:
    pop bp
    ret
