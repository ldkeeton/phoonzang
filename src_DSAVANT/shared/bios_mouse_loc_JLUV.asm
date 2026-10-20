; auto-generated
bios_mouse_loc_JLUV:
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp byte [cs:cseg_0128 - IMAGE_BASE], 1
    je short @..bios_mouse_loc_JLUV.l1
    jmp near @..bios_mouse_loc_JLUV.l9
@..bios_mouse_loc_JLUV.l1:
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    mov cx, word [cs:bios_mouse_loc_JLUV.cseg1 - IMAGE_BASE]
    shl cx, 1
    mov dx, word [cs:bios_mouse_loc_JLUV.cseg2 - IMAGE_BASE]
    mov word [bp - 0x0006], cx
    mov word [bp - 0x0008], dx
@..bios_mouse_loc_JLUV.l2:
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0002]
    jne short @..bios_mouse_loc_JLUV.l3
    cmp dx, word [bp - 0x0004]
    jne short @..bios_mouse_loc_JLUV.l3
    jmp short @..bios_mouse_loc_JLUV.l8
@..bios_mouse_loc_JLUV.l3:
    cmp cx, word [bp - 0x0002]
    je short @..bios_mouse_loc_JLUV.l5
    js short @..bios_mouse_loc_JLUV.l4
    sub word [bp - 0x0006], byte 2
    jmp short @..bios_mouse_loc_JLUV.l5
@..bios_mouse_loc_JLUV.l4:
    add word [bp - 0x0006], byte 2
@..bios_mouse_loc_JLUV.l5:
    mov cx, word [bp - 0x0006]
    cmp dx, word [bp - 0x0004]
    je short @..bios_mouse_loc_JLUV.l7
    js short @..bios_mouse_loc_JLUV.l6
    sub word [bp - 0x0008], byte 1
    jmp short @..bios_mouse_loc_JLUV.l7
@..bios_mouse_loc_JLUV.l6:
    add word [bp - 0x0008], byte 1
@..bios_mouse_loc_JLUV.l7:
    mov dx, word [bp - 0x0008]
    mov ax, cs
    push ax
    mov ax, 0
    call leaf_loc_JHTT
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..bios_mouse_loc_JLUV.l2
    push ax
    call far [cs:cseg_00fb - IMAGE_BASE]
    pop ax
    jmp short @..bios_mouse_loc_JLUV.l2
@..bios_mouse_loc_JLUV.l8:
    mov cx, word [bp - 0x0002]
    mov dx, word [bp - 0x0004]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov byte [cs:cseg_0126 - IMAGE_BASE], 0
@..bios_mouse_loc_JLUV.l9:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
