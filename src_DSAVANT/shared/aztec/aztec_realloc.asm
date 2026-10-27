; auto-generated
aztec_realloc:
    push bp
    mov bp, sp
    add sp, byte -4
    push di
    push si
    mov si, word [bp + 4]
    mov ax, word [si - 2]
    and ax, strict word 0xfffe
    mov word [bp - 2], ax
    sub ax, si
    mov word [bp - 4], ax
    cmp ax, word [bp + 6]
    jbe short .forward1
    mov ax, word [bp + 6]
    mov word [bp - 4], ax
    mov cx, si
    add cx, ax
    mov word [bp - 2], cx
.forward1:
    push si
    call aztec_free
    pop cx
    push word [bp + 6]
    call aztec_malloc
    pop cx
    mov di, ax
    test di, di
    je short .forward2
    cmp di, si
    je short .forward2
    push word [bp - 4]
    push di
    push si
    call aztec_movmem
    add sp, byte 6
    cmp si, word [current]
    ja short .forward2
    mov ax, word [current]
    cmp ax, word [bp - 2]
    jae short .forward2
    mov ax, word [keep]
    mov cx, word [current]
    sub cx, si
    mov bx, cx
    mov word [bx + di], ax
.forward2:
    mov ax, di
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
