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
    mov word [bp - 4], 1
    xor ax, ax
    cmp byte [cs:mouse_present - IMAGE_BASE], 0
    je short .forward5
    mov bx, word [cs:mouse_hit_test.cseg1 - IMAGE_BASE]
    or bx, bx
    je short .forward1
    mov word [cs:mouse_hit_test.cseg1 - IMAGE_BASE], 0
    mov word [bp - 2], bx
    mov cx, word [cs:mouse_hit_test.cseg2 - IMAGE_BASE]
    mov dx, word [cs:mouse_hit_test.cseg3 - IMAGE_BASE]
    jmp short .forward2
.forward1:
    mov ax, 3
    int 0x33 ; BIOS mouse
    xor bx, bx
    mov word [bp - 2], bx
    shr cx, 1
.forward2:
    mov bx, cx
    mov si, word [bp + 0xc]
.back1:
    cmp word [si], byte -1
    je short .forward4
    cmp bx, word [si]
    jb short .forward3
    cmp dx, word [si + 2]
    jb short .forward3
    cmp word [si + 4], bx
    jb short .forward3
    cmp word [si + 6], dx
    jb short .forward3
    mov ax, word [bp - 4]
    mov bx, word [bp - 2]
    or bx, bx
    je short .forward5
    neg ax
    jmp short .forward5
.forward3:
    add si, byte 8
    inc word [bp - 4]
    jmp short .back1
.forward4:
    xor ax, ax
.forward5:
    pop es
    pop si
    pop ds
    mov sp, bp
    pop bp
    ret
