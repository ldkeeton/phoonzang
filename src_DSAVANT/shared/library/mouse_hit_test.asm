; auto-generated
mouse_hit_test:
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
    cmp byte [cs:mouse_present - IMAGE_BASE], 0
    je short @..mouse_hit_test.l6
    mov bx, word [cs:mouse_hit_test.cseg1 - IMAGE_BASE]
    or bx, bx
    je short @..mouse_hit_test.l1
    mov word [cs:mouse_hit_test.cseg1 - IMAGE_BASE], 0
    mov word [bp - 0x0002], bx
    mov cx, word [cs:mouse_hit_test.cseg2 - IMAGE_BASE]
    mov dx, word [cs:mouse_hit_test.cseg3 - IMAGE_BASE]
    jmp short @..mouse_hit_test.l2
@..mouse_hit_test.l1:
    mov ax, 3
    int 0x33 ; BIOS mouse
    xor bx, bx
    mov word [bp - 0x0002], bx
    shr cx, 1
@..mouse_hit_test.l2:
    mov bx, cx
    mov si, word [bp + 0xc]
@..mouse_hit_test.l3:
    cmp word [si], byte 0xff
    je short @..mouse_hit_test.l5
    cmp bx, word [si]
    jb short @..mouse_hit_test.l4
    cmp dx, word [si + 0x2]
    jb short @..mouse_hit_test.l4
    cmp word [si + 0x4], bx
    jb short @..mouse_hit_test.l4
    cmp word [si + 0x6], dx
    jb short @..mouse_hit_test.l4
    mov ax, word [bp - 0x0004]
    mov bx, word [bp - 0x0002]
    or bx, bx
    je short @..mouse_hit_test.l6
    neg ax
    jmp short @..mouse_hit_test.l6
@..mouse_hit_test.l4:
    add si, byte 8
    inc word [bp - 0x0004]
    jmp short @..mouse_hit_test.l3
@..mouse_hit_test.l5:
    xor ax, ax
@..mouse_hit_test.l6:
    pop es
    pop si
    pop ds
    mov sp, bp
    pop bp
    ret
