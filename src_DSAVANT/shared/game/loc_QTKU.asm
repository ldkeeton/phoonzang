; auto-generated
loc_QTKU:
    mov ax, 0
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + bss_5e2a + 0x5], 3
    jae short @..loc_QTKU.l1
    mov al, byte [bx + bss_5e2a + 0x2]
    sub ah, ah
    add ax, strict word 8
    push ax
    call play_sound_effect
    pop cx
@..loc_QTKU.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + bss_5e2a + 0x5], 3
    mov word [bx + bss_5c0a + 0x2], 0
    mov word [bx + pc_records], 0
    cmp word [bp + 0x6], byte 0
    jle short @..loc_QTKU.l2
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_app_LUOV
    add sp, byte 4
    cmp word [bp + 0x6], byte 1
    jle short @..loc_QTKU.l2
    mov ax, 8
    push ax
    call ds_app_OIGN
    pop cx
@..loc_QTKU.l2:
    ret
