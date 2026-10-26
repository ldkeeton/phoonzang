; auto-generated
leaf_loc_NOSG:
    jmp short @..leaf_loc_NOSG.l2
@..leaf_loc_NOSG.l1:
    add si, word [bp - 0x30]
@..leaf_loc_NOSG.l2:
    add word [bp - 0x3c], dx
    mov bx, word [bp - 0x3c]
    cmp bx, word [bp - 0x34]
    jb short @..leaf_loc_NOSG.l3
    sub bx, word [bp - 0x34]
    mov word [bp - 0x3c], bx
    inc si
@..leaf_loc_NOSG.l3:
    cmp si, word [bp - 0x32]
    jb short @..leaf_loc_NOSG.l5
@..leaf_loc_NOSG.l4:
    ret
@..leaf_loc_NOSG.l5:
    test si, 0x8000
    jne short @..leaf_loc_NOSG.l4
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
    jmp short @..leaf_loc_NOSG.l1
