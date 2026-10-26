; auto-generated
aztec_realloc:
    push bp
    mov bp, sp
    add sp, byte 0xfc
    push di
    push si
    mov si, word [bp + 4]
    mov ax, word [si - 2]
    and ax, strict word 0xfffe
    mov word [bp - 2], ax
    sub ax, si
    mov word [bp - 4], ax
    cmp ax, word [bp + 6]
    jbe short @..aztec_realloc.l1
    mov ax, word [bp + 6]
    mov word [bp - 4], ax
    mov cx, si
    add cx, ax
    mov word [bp - 2], cx
@..aztec_realloc.l1:
    push si
    call aztec_free
    pop cx
    push word [bp + 6]
    call aztec_malloc
    pop cx
    mov di, ax
    test di, di
    je short @..aztec_realloc.l2
    cmp di, si
    je short @..aztec_realloc.l2
    push word [bp - 4]
    push di
    push si
    call aztec_movmem
    add sp, byte 6
    cmp si, word [current]
    ja short @..aztec_realloc.l2
    mov ax, word [current]
    cmp ax, word [bp - 2]
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
aztec_malloc:
    push bp
    mov bp, sp
    add sp, byte 0xfa
    push di
    push si
    mov ax, word [bp + 4]
    inc ax
    inc ax
    inc ax
    shr ax, 1
    shl ax, 1
    mov word [bp + 4], ax
    cmp word [current], byte 0
    jne short @..aztec_malloc.l1
    mov word [first], first
    or word [first], 1
    mov word [current], first
@..aztec_malloc.l1:
    mov word [bp - 6], 0
    mov si, word [current]
    mov word [bp - 2], si
@..aztec_malloc.l2:
    cmp si, word [endmarker]
    jne short @..aztec_malloc.l5
    inc word [bp - 6]
    mov ax, word [bp - 6]
    cmp ax, strict word 1
    jle short @..aztec_malloc.l5
    mov word [bp - 4], 0x400
    push word [bp - 4]
    call aztec_sbrk
    pop cx
    mov di, ax
    mov ax, di
    cmp ax, strict word 0xffff
    jne short @..aztec_malloc.l3
    mov ax, 0
@..aztec_misc_lmalloc.tail1:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
@..aztec_malloc.l3:
    mov ax, si
    add ax, strict word 2
    cmp di, ax
    je short @..aztec_malloc.l4
    mov word [si], di
    or word [si], 1
    dec word [bp - 4]
    dec word [bp - 4]
    mov si, di
@..aztec_malloc.l4:
    mov di, si
    add di, word [bp - 4]
    mov word [si], di
    mov word [di], first
    or word [di], 1
    mov word [endmarker], di
    mov bx, word [bp - 2]
    mov ax, word [bx]
    and ax, strict word 0xfffe
    cmp ax, si
    jne short @..aztec_malloc.l5
    mov si, bx
@..aztec_malloc.l5:
    test word [si], 1
    jne short @..aztec_malloc.l9
    mov word [bp - 2], si
@..aztec_malloc.l6:
    mov ax, word [si]
    and ax, strict word 0xfffe
    mov di, ax
    mov bx, di
    test word [bx], 1
    jne short @..aztec_malloc.l7
    mov ax, word [di]
    mov word [si], ax
    jmp short @..aztec_malloc.l6
@..aztec_malloc.l7:
    sub bx, si
    mov word [bp - 4], bx
    cmp bx, word [bp + 4]
    jb short @..aztec_malloc.l9
    cmp bx, word [bp + 4]
    jbe short @..aztec_malloc.l8
    mov ax, si
    add ax, word [bp + 4]
    mov word [si], ax
    mov bx, ax
    mov ax, word [bx]
    mov word [keep], ax
    mov bx, word [si]
    mov word [bx], di
@..aztec_malloc.l8:
    mov ax, word [si]
    mov word [current], ax
    or word [si], 1
    mov ax, si
    add ax, strict word 2
    jmp near @..aztec_misc_lmalloc.tail1
@..aztec_malloc.l9:
    mov ax, word [si]
    and ax, strict word 0xfffe
    mov si, ax
    jmp near @..aztec_malloc.l2
@..aztec_misc_lmalloc.tail2:
    jmp near @..aztec_misc_lmalloc.tail1
aztec_free:
    push bp
    mov bp, sp
    push si
    mov si, word [bp + 4]
    add si, byte 0xfe
    test word [si], 1
    jne short @..aztec_free.l2
    mov ax, 0xffff
@..aztec_free.l1:
    pop si
    mov sp, bp
    pop bp
    ret
@..aztec_free.l2:
    and word [si], strict word 0xfffe
    mov word [current], si
    mov ax, 0
    jmp short @..aztec_free.l1
