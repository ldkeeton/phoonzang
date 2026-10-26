; auto-generated
show_area_set:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 4]
    jmp near @..show_area_set.l5
@..show_area_set.l1:
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x60
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 8
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0xe7
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp short @..show_area_set.l7
@..show_area_set.l2:
    mov ax, 0xc2
    push ax
    mov ax, 0xe0
    push ax
    mov ax, 0xa4
    push ax
    mov ax, 0x62
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp short @..show_area_set.l7
@..show_area_set.l3:
    mov ax, 0x9f
    push ax
    mov ax, 0xcd
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp short @..show_area_set.l7
@..show_area_set.l4:
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x93
    push ax
    mov ax, 8
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp short @..show_area_set.l7
@..show_area_set.l5:
    cmp ax, strict word 0
    jne short @..show_area_set.l6
    jmp near @..show_area_set.l1
@..show_area_set.l6:
    cmp ax, strict word 1
    je short @..show_area_set.l2
    cmp ax, strict word 2
    je short @..show_area_set.l3
    cmp ax, strict word 3
    je short @..show_area_set.l4
@..show_area_set.l7:
    ret
