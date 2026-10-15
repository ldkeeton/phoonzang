; auto-generated
; asm only
dos_con_loc_PTMN:
    mov ah, 9                        ; 0x3a0f
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3a13
    int 0x21 ; DOS function dispatcher
    db 0x0d, 0x0a, 0x07
    db 'Frame '
cseg_3a21:
    db 0x30
cseg_3a22:

    db '0 too big in slot '

cseg_3a34:
    db 0x30
cseg_3a35:
    db 0x30, 0x2e, 0x00, 0x0a, 0x24
@..leaf_loc_PIVU.l1:
    mov cl, 2                        ; 0x3a3a
    shl al, cl                       ; 0x3a3c
    mov bx, 2                        ; 0x3a3e
    add bx, ax                       ; 0x3a41
    mov ax, word [bx]                ; 0x3a43
    mov dx, word [bx + 0x2]          ; 0x3a45
    mov bx, ds                       ; 0x3a48
    add bx, dx                       ; 0x3a4a
    mov ds, bx                       ; 0x3a4c
    mov bx, ax                       ; 0x3a4e
    ret                              ; 0x3a50
