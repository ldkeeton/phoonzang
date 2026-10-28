; auto-generated
leaf_loc_NOSG:
    jmp short .forward1
.back1:
    add si, word [bp - 0x30]
.forward1:
    add word [bp - 0x3c], dx
    mov bx, word [bp - 0x3c]
    cmp bx, word [bp - 0x34]
    jb short .forward2
    sub bx, word [bp - 0x34]
    mov word [bp - 0x3c], bx
    inc si
.forward2:
    cmp si, word [bp - 0x32]
    jb short .forward3
.return1:
    ret
.forward3:
    test si, 0x8000
    jne short .return1
    mov cl, 3
    mov ax, si
    shr ax, cl
    mov bx, ax
    mov ax, si
    and al, 7
    mov cl, al
    mov al, 0x80
    shr al, cl
    or byte [cs:bx + di], al
    jmp short .back1
