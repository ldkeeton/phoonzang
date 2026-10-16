; auto-generated
; asm only
sprintf:
    push bp
    mov bp, sp
    sub sp, strict word 0x154
    push di
    push si
    cld
    mov si, word [bp + 0x6]
    mov word [bp - 0x0002], 0
sprintf.loc1:
    mov byte [bp - 0x000b], 0
    lodsb
    cmp al, 0x25
    je short sprintf.loc2
