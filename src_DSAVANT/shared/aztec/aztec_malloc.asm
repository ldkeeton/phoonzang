; auto-generated
aztec_malloc:
    push bp
    mov bp, sp
    add sp, byte -6
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
    jne short .forward1
    mov word [first], first
    or word [first], 1
    mov word [current], first
.forward1:
    mov word [bp - 6], 0
    mov si, word [current]
    mov word [bp - 2], si
.back1:
    cmp si, word [endmarker]
    jne short .forward4
    inc word [bp - 6]
    mov ax, word [bp - 6]
    cmp ax, strict word 1
    jle short .forward4
    mov word [bp - 4], 0x400
    push word [bp - 4]
    call aztec_sbrk
    pop cx
    mov di, ax
    mov ax, di
    cmp ax, strict word 0xffff
    jne short .forward2
    mov ax, 0
.back2:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
.forward2:
    mov ax, si
    add ax, strict word 2
    cmp di, ax
    je short .forward3
    mov word [si], di
    or word [si], 1
    dec word [bp - 4]
    dec word [bp - 4]
    mov si, di
.forward3:
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
    jne short .forward4
    mov si, bx
.forward4:
    test word [si], 1
    jne short .forward7
    mov word [bp - 2], si
.back3:
    mov ax, word [si]
    and ax, strict word 0xfffe
    mov di, ax
    mov bx, di
    test word [bx], 1
    jne short .forward5
    mov ax, word [di]
    mov word [si], ax
    jmp short .back3
.forward5:
    sub bx, si
    mov word [bp - 4], bx
    cmp bx, word [bp + 4]
    jb short .forward7
    cmp bx, word [bp + 4]
    jbe short .forward6
    mov ax, si
    add ax, word [bp + 4]
    mov word [si], ax
    mov bx, ax
    mov ax, word [bx]
    mov word [keep], ax
    mov bx, word [si]
    mov word [bx], di
.forward6:
    mov ax, word [si]
    mov word [current], ax
    or word [si], 1
    mov ax, si
    add ax, strict word 2
    jmp near .back2
.forward7:
    mov ax, word [si]
    and ax, strict word 0xfffe
    mov si, ax
    jmp near .back1
aztec_malloc.loc1:
    jmp near aztec_malloc.back2
