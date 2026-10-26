; auto-generated
graphics_loc_NVPK:
    push es
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov es, ax
    mov ax, text_state_bytes - IMAGE_BASE
    mov word [bp - 0x36], ax
    xor ax, ax
    mov word [bp - 0x3c], ax
    mov word [bp - 0x3e], ax
    mov ax, word [bp + 0x1a]
    cmp al, 2
    jne short @..graphics_loc_NVPK.l1
    jmp near graphics_loc_NVPK.loc1
@..graphics_loc_NVPK.l1:
    cmp al, 3
    jne short @..graphics_loc_NVPK.l2
    jmp near graphics_loc_NVPK.loc2
@..graphics_loc_NVPK.l2:
    mov ax, word [bp - 6]
    mov word [bp - 0xe], ax
    mov si, word [bx]
    add si, bx
    mov word [bp - 0xa], 1
    lea ax, word [bx + 4]
    mov word [bp - 0xc], ax
    mov cx, word [bp - 4]
    mov byte [bp - 0x3a], 0x80
    mov ax, word [bp + 0x1a]
    cmp al, 1
    jne short @..graphics_loc_NVPK.l3
    jmp near graphics_loc_NVPK.loc3
@..graphics_loc_NVPK.l3:
    mov ax, word [bp - 0x28]
    add word [bp - 0xe], ax
    mov ax, word [bp - 0x24]
    mov bx, 0x140
    mul bx
    add word [bp - 0xe], ax
@..graphics_loc_NVPK.l4:
    mov ax, word [bp - 0x22]
    mov di, word [bp - 0xe]
    cmp di, ax
    jb short @..graphics_loc_NVPK.l5
    jmp near @..graphics_loc_NVPK.l25
@..graphics_loc_NVPK.l5:
    push cx
    call leaf_loc_MTKK
    mov ax, text_state_words - IMAGE_BASE
    mov word [bp - 0x34], ax
    mov cx, word [bp - 2]
@..graphics_loc_NVPK.l6:
    push cx
    call graphics_loc_NVPK.leaf_loc1
    mov bx, word [bp - 0xc]
    mov al, byte [bx]
    and al, byte [bp - 0xa]
    jne short @..graphics_loc_NVPK.l7
    jmp near @..graphics_loc_NVPK.l23
@..graphics_loc_NVPK.l7:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short @..graphics_loc_NVPK.l8
    add si, byte 0x40
    jmp near @..graphics_loc_NVPK.l23
@..graphics_loc_NVPK.l8:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x38], al
    mov cx, 8
@..graphics_loc_NVPK.l9:
    cmp di, word [bp - 0x22]
    jb short @..graphics_loc_NVPK.l10
    jmp near @..graphics_loc_NVPK.l22
@..graphics_loc_NVPK.l10:
    mov bx, word [bp - 0x36]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x38]
    je short @..graphics_loc_NVPK.l11
    jmp near @..graphics_loc_NVPK.l21
@..graphics_loc_NVPK.l11:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x32], al
    mov cx, 8
@..graphics_loc_NVPK.l12:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x32]
    jne short @..graphics_loc_NVPK.l20
    xor ah, ah
    mov al, byte [si]
    cmp al, 0xff
    je short @..graphics_loc_NVPK.l17
    cmp byte [bp + 0x1e], 2
    jne short @..graphics_loc_NVPK.l14
    mov al, byte [es:di]
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [si]
    jb short @..graphics_loc_NVPK.l13
    cmp al, byte [cs:bx]
    jb short @..graphics_loc_NVPK.l16
@..graphics_loc_NVPK.l13:
    mov al, byte [cs:bx]
    jmp short @..graphics_loc_NVPK.l16
@..graphics_loc_NVPK.l14:
    cmp byte [bp - 0x30], 0
    je short @..graphics_loc_NVPK.l16
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [bp - 0x30]
    jb short @..graphics_loc_NVPK.l15
    cmp al, byte [cs:bx]
    jb short @..graphics_loc_NVPK.l16
@..graphics_loc_NVPK.l15:
    mov al, byte [cs:bx]
@..graphics_loc_NVPK.l16:
    mov byte [es:di], al
@..graphics_loc_NVPK.l17:
    inc si
    inc di
    ror byte [bp - 0x32], 1
    loop @..graphics_loc_NVPK.l12
@..graphics_loc_NVPK.l18:
    pop di
    pop cx
    add di, strict word 0x140
@..graphics_loc_NVPK.l19:
    ror byte [bp - 0x38], 1
    loop @..graphics_loc_NVPK.l9
    jmp short @..graphics_loc_NVPK.l22
@..graphics_loc_NVPK.l20:
    inc si
    ror byte [bp - 0x32], 1
    loop @..graphics_loc_NVPK.l12
    jmp short @..graphics_loc_NVPK.l18
@..graphics_loc_NVPK.l21:
    add si, byte 8
    jmp short @..graphics_loc_NVPK.l19
@..graphics_loc_NVPK.l22:
    pop si
    add si, byte 0x40
    pop di
@..graphics_loc_NVPK.l23:
    add di, byte 8
    sub di, word [bp - 0x3c]
    rol byte [bp - 0xa], 1
    cmp byte [bp - 0xa], 1
    jne short @..graphics_loc_NVPK.l24
    inc word [bp - 0xc]
@..graphics_loc_NVPK.l24:
    inc word [bp - 0x34]
    pop cx
    loop @..graphics_loc_NVPK.l26
    pop cx
    add word [bp - 0xe], strict word 0xa00
    mov ax, word [bp - 0x3e]
    sub word [bp - 0xe], ax
    inc word [bp - 0x36]
    mov byte [bp - 0x3a], 0x80
    loop @..graphics_loc_NVPK.l27
@..graphics_loc_NVPK.l25:
    pop es
    ret
@..graphics_loc_NVPK.l26:
    jmp near @..graphics_loc_NVPK.l6
@..graphics_loc_NVPK.l27:
    jmp near @..graphics_loc_NVPK.l4
