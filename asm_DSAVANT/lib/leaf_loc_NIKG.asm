; auto-generated
; asm only
leaf_loc_NIKG:
    push ax
    mov ah, 0x44
    mov al, 0
    pop bx
    mov dx, word [cs:cseg_0201 - IMAGE_BASE]
    int 0x67 ; EMS (Expanded Memory)
    inc bx
    mov ah, 0x44
    mov al, 1
    int 0x67 ; EMS (Expanded Memory)
    ret
