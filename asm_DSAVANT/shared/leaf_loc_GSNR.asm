; auto-generated
leaf_loc_GSNR:
    jmp short @..leaf_loc_GSNR.l2
@..leaf_loc_GSNR.l1:
    add si, word [bp - 0x0030]
@..leaf_loc_GSNR.l2:
    add word [bp - 0x003c], dx
    mov bx, word [bp - 0x003c]
    cmp bx, word [bp - 0x0034]
    jb short @..leaf_loc_GSNR.l3
    sub bx, word [bp - 0x0034]
    mov word [bp - 0x003c], bx
    inc si
@..leaf_loc_GSNR.l3:
    cmp si, word [bp - 0x0032]
    jb short @..leaf_loc_GSNR.l5
@..leaf_loc_GSNR.l4:
    ret
@..leaf_loc_GSNR.l5:
    test si, 0x8000
    jne short @..leaf_loc_GSNR.l4
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
    jmp short @..leaf_loc_GSNR.l1
