; auto-generated
dos_con_loc_GJMS:
    push ax
    mov bx, score_slots - IMAGE_BASE
    mov cx, 5
.back1:
    cmp ax, word [cs:bx]
    jae short .forward1
    dec word [cs:bx]
    push ds
    push ax
    push bx
    push cx
    push dx
    mov ax, cs
    mov ds, ax
    mov dx, dos_con_loc_GJMS.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    pop dx
    pop cx
    pop bx
    pop ax
    pop ds
.forward1:
    add bx, byte 4
    loop .back1
    pop ax
    ret
dos_con_loc_GJMS.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'Score slot moved.', 0
    db 0x0a, 0x24

