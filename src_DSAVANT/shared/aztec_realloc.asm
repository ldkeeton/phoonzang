; auto-generated
aztec_realloc:
    push bp
    mov bp, sp
    add sp, byte 0xfc
    push di
    push si
    mov si, word [bp + 0x4]
    mov ax, word [si - 0x0002]
    and ax, strict word 0xfffe
    mov word [bp - 0x0002], ax
    sub ax, si
    mov word [bp - 0x0004], ax
    cmp ax, word [bp + 0x6]
    jbe short @..aztec_realloc.l1
    mov ax, word [bp + 0x6]
    mov word [bp - 0x0004], ax
    mov cx, si
    add cx, ax
    mov word [bp - 0x0002], cx
@..aztec_realloc.l1:
    push si
    call aztec_free
    pop cx
    push word [bp + 0x6]
    call aztec_malloc
    pop cx
    mov di, ax
    test di, di
    je short @..aztec_realloc.l2
    cmp di, si
    je short @..aztec_realloc.l2
    push word [bp - 0x0004]
    push di
    push si
    call aztec_movmem
    add sp, byte 6
    cmp si, word [current]
    ja short @..aztec_realloc.l2
    mov ax, word [current]
    cmp ax, word [bp - 0x0002]
    jae short @..aztec_realloc.l2
    mov ax, word [keep]
    mov cx, word [current]
    sub cx, si
    mov bx, cx
    mov word [bx + di], ax
@..aztec_realloc.l2:
    mov ax, di
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
