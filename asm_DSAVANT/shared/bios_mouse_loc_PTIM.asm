; auto-generated
; asm only
bios_mouse_loc_PTIM:
    push ds
    push es
    push si
    push di
    cmp byte [cs:cseg_0126 - IMAGE_BASE], 1
    je short @..bios_mouse_loc_PTIM.l1
    cmp byte [cs:cseg_0128 - IMAGE_BASE], 1
    je short @..bios_mouse_loc_PTIM.l2
@..bios_mouse_loc_PTIM.l1:
    jmp near @..bios_mouse_loc_PTIM.l4
@..bios_mouse_loc_PTIM.l2:
    mov ax, 3
    int 0x33 ; BIOS mouse
    shr cx, 1
    cmp word [cs:bios_mouse_loc_PTIM.cseg1 - IMAGE_BASE], cx
    jne short @..bios_mouse_loc_PTIM.l3
    cmp word [cs:bios_mouse_loc_PTIM.cseg2 - IMAGE_BASE], dx
    je short @..bios_mouse_loc_PTIM.l4
@..bios_mouse_loc_PTIM.l3:
    shl cx, 1
    mov ax, cs
    push ax
    call leaf_loc_JHTT
@..bios_mouse_loc_PTIM.l4:
    mov byte [cs:cseg_0127 - IMAGE_BASE], 0
    pop di
    pop si
    pop es
    pop ds
    ret
