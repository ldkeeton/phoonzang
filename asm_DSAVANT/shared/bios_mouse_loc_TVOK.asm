; auto-generated
; asm only
bios_mouse_loc_TVOK:
    push bp
    mov bp, sp
    sub sp, byte 4
    push ds
    push si
    push es
    mov ax, ds
    mov es, ax
    mov word [bp - 0x0004], 1
    xor ax, ax
    cmp byte [cs:cseg_0128 - IMAGE_BASE], 0
    je short @..bios_mouse_loc_TVOK.l6
    mov bx, word [cs:bios_mouse_loc_TVOK.cseg1 - IMAGE_BASE]
    or bx, bx
    je short @..bios_mouse_loc_TVOK.l1
    mov word [cs:bios_mouse_loc_TVOK.cseg1 - IMAGE_BASE], 0
    mov word [bp - 0x0002], bx
    mov cx, word [cs:bios_mouse_loc_TVOK.cseg2 - IMAGE_BASE]
    mov dx, word [cs:bios_mouse_loc_TVOK.cseg3 - IMAGE_BASE]
    jmp short @..bios_mouse_loc_TVOK.l2
@..bios_mouse_loc_TVOK.l1:
    mov ax, 3
    int 0x33 ; BIOS mouse
    xor bx, bx
    mov word [bp - 0x0002], bx
    shr cx, 1
@..bios_mouse_loc_TVOK.l2:
    mov bx, cx
    mov si, word [bp + 0xc]
@..bios_mouse_loc_TVOK.l3:
    cmp word [si], byte 0xff
    je short @..bios_mouse_loc_TVOK.l5
    cmp bx, word [si]
    jb short @..bios_mouse_loc_TVOK.l4
    cmp dx, word [si + 0x2]
    jb short @..bios_mouse_loc_TVOK.l4
    cmp word [si + 0x4], bx
    jb short @..bios_mouse_loc_TVOK.l4
    cmp word [si + 0x6], dx
    jb short @..bios_mouse_loc_TVOK.l4
    mov ax, word [bp - 0x0004]
    mov bx, word [bp - 0x0002]
    or bx, bx
    je short @..bios_mouse_loc_TVOK.l6
    neg ax
    jmp short @..bios_mouse_loc_TVOK.l6
@..bios_mouse_loc_TVOK.l4:
    add si, byte 8
    inc word [bp - 0x0004]
    jmp short @..bios_mouse_loc_TVOK.l3
@..bios_mouse_loc_TVOK.l5:
    xor ax, ax
@..bios_mouse_loc_TVOK.l6:
    pop es
    pop si
    pop ds
    mov sp, bp
    pop bp
    ret
