; auto-generated
loc_42a0:
    mov cx, ax
    mov ax, word [cs:cseg_00e9 - IMAGE_BASE]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov dx, 0x400
    mov bx, word [bp + 0xc]
    mov cx, 0x1000
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov si, 0x400
    mov di, 0
    lodsw
    mov word [bp - 0x0004], ax
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, word [bp - 0x000a]
    mov word [cs:bx + 0x2], ax
    add ax, word [cs:loc_42a0.cseg1 - IMAGE_BASE]
    cmp ax, 0x4180
    jb short loc_42a0.loc1
    jmp near loc_42a0.loc2
loc_42a0.loc1:
    mov word [cs:loc_42a0.cseg1 - IMAGE_BASE], ax
    mov ax, word [cs:bx]
    add ax, word [cs:loc_42a0.cseg2 - IMAGE_BASE]
    mov es, ax
    call string_loc_RQON
    xor ax, ax
    jmp near @..load_sound.l3
