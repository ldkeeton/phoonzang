; auto-generated
dos_file_loc_VPIN:
    mov cx, word [bp - 2]
    xor bx, bx
.back1:
    shl al, 1
    jb short .forward2
    test word [bx], 0x8000
    jne short .forward1
    mov bx, word [bx]
    jmp short .forward4
.forward1:
    mov bx, word [bx]
    neg bx
    shl bx, 1
    shl bx, 1
.back2:
    loop .back1
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short .back1
    push ax
    push di
    push bx
    push cx
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov si, 0x400
    pop cx
    pop bx
    pop di
    pop ax
    jmp short .back1
.forward2:
    test word [bx + 2], 0x8000
    jne short .forward3
    mov bx, word [bx + 2]
    jmp short .forward4
.forward3:
    mov bx, word [bx + 2]
    neg bx
    shl bx, 1
    shl bx, 1
    jmp short .back2
.forward4:
    dec cx
    jne short .forward5
    mov cx, 8
    lodsb
    cmp si, strict word 0x1400
    jb short .forward5
    push ax
    push di
    push bx
    push cx
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov si, 0x400
    pop cx
    pop bx
    pop di
    pop ax
.forward5:
    mov word [bp - 2], cx
    ret
