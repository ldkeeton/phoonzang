; auto-generated
; asm only
bios_mouse_loc_NPNG:
    push bp
    mov bp, sp
    sub sp, byte 6
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:cseg_0128 - IMAGE_BASE], 0
    je short @..bios_mouse_loc_NPNG.l1
    mov ax, 3
    int 0x33 ; BIOS mouse
    mov word [bp - 0x0002], bx
    mov bx, word [bp + 0xc]
    shr cx, 1
    mov word [bx], cx
    mov bx, word [bp + 0xe]
    mov word [bx], dx
    mov ax, word [bp - 0x0002]
@..bios_mouse_loc_NPNG.l1:
    pop es
    mov sp, bp
    pop bp
    ret
