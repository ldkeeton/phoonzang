bios_get_video_mode:
    mov ah, 0xf
    int 0x10 ; BIOS video: get video mode
    mov byte [cs:data_2d36], al
    mov ax, word [bp + 0x4]
    and ax, strict word 1
    jne short @..bios_get_video_mode.l1
    jmp near @..local.l69
@..bios_get_video_mode.l1:
    mov ax, 0
    push ds
    mov ds, ax
    mov bx, 0x487
    mov al, byte [bx]
    pop ds
    or al, al
    je short @..bios_get_video_mode.l3
    xor bx, bx
    mov ax, 0x1a00
    int 0x10 ; BIOS video
    cmp bl, 7
    je short @..bios_get_video_mode.l2
    cmp bh, 7
    je short @..bios_get_video_mode.l2
    cmp bl, 8
    je short @..bios_get_video_mode.l2
    cmp bh, 8
    jne short @..bios_get_video_mode.l3
@..bios_get_video_mode.l2:
    jmp near @..leaf_loc_3330.l1
@..bios_get_video_mode.l3:
    mov word [bp - 0x0002], 0
    ret
