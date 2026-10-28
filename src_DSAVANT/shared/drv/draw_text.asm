; auto-generated
draw_text:
    push bp
    mov bp, sp
    sub sp, byte 0x40
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x14]
    sub ax, word [bp + 0x12]
    jb short .back1
    mov ax, word [bp + 0x18]
    sub ax, word [bp + 0x16]
    jb short .back1
    mov ax, word [bp + 0x10]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xe]
    mov word [bp - 6], ax
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, picture_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    mov word [bp - 8], ax
    mov ds, ax
    xor bx, bx
    mov ax, word [bx]
    mov word [bp - 0x12], ax
    mov si, word [bp + 0x1c]
    mov bx, word [bp - 8]
    mov ds, bx
    xor ah, ah
    mov al, byte [ss:si]
    or al, al
    je short .back1
    call check_frame_index
    xor ah, ah
    mov al, byte [bx + 2]
    mov word [bp - 2], ax
    mov cx, ax
    mov al, byte [bx + 3]
    mov word [bp - 4], ax
    or ax, cx
    jne short .forward1
.back1:
    jmp near .forward46
.forward1:
    mov word [bp - 0x3a], bx
    mov ax, es
    mov word [bp - 0x38], ax
    mov ax, cs
    mov es, ax
    lea di, word [text_state_words - IMAGE_BASE]
    xor ax, ax
    mov cx, 0x14
    rep stosw
    lea di, word [text_state_bytes - IMAGE_BASE]
    mov cx, 0x19
    rep stosb
    mov bx, word [bp + 0x20]
    or bx, bx
    jne short .forward2
    jmp near .forward6
.forward2:
    cmp bx, byte 0x64
    jae short .back1
    mov ax, word [bp - 2]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short .forward3
    inc ax
.forward3:
    or ax, ax
    je short .forward4
    xor dx, dx
    mov bx, ax
    mov word [bp - 0x34], ax
    mov ax, cx
    div bx
    mov di, text_state_words - IMAGE_BASE
    mov bx, word [bp - 0x34]
    shr bx, 1
    mov word [bp - 0x3c], bx
    mov si, ax
    dec si
    mov word [bp - 0x30], ax
    mov word [bp - 0x32], cx
    call leaf_loc_NOSG
.forward4:
    mov ax, word [bp - 4]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short .forward5
    inc ax
.forward5:
    or ax, ax
    je short .forward6
    xor dx, dx
    mov bx, ax
    mov word [bp - 0x34], ax
    mov ax, cx
    div bx
    mov di, text_state_bytes - IMAGE_BASE
    mov bx, word [bp - 0x34]
    shr bx, 1
    mov word [bp - 0x3c], bx
    mov si, ax
    dec si
    mov word [bp - 0x30], ax
    mov word [bp - 0x32], cx
    call leaf_loc_NOSG
.forward6:
    mov bx, word [bp - 0x3a]
    mov ax, word [bp - 0x38]
    mov es, ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    jge short .forward7
    xor ax, ax
.forward7:
    mov word [bp - 0x28], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 2]
    mov cl, 3
    shl bx, cl
    mov cx, bx
    dec bx
    mov word [bp - 0x1e], bx
    add ax, bx
    inc ax
    sub ax, word [bp + 0x14]
    jge short .forward8
    xor ax, ax
.forward8:
    mov word [bp - 0x2a], ax
    add ax, word [bp - 0x28]
    sub cx, ax
    ja short .forward9
    jmp near .forward46
.forward9:
    mov word [bp - 0x26], cx
    mov ax, word [bp + 0x16]
    sub ax, word [bp + 0x10]
    jge short .forward10
    xor ax, ax
.forward10:
    mov word [bp - 0x24], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp - 4]
    mov cl, 3
    shl bx, cl
    mov cx, bx
    dec bx
    add ax, bx
    sub ax, word [bp + 0x18]
    jge short .forward11
    xor ax, ax
.forward11:
    mov word [bp - 0x2c], ax
    add ax, word [bp - 0x24]
    sub cx, ax
    ja short .forward12
    jmp near .forward46
.forward12:
    mov ax, word [bp + 0x18]
    inc ax
    mov cx, 0x140
    mul cx
    mov word [bp - 0x22], ax
    mov ax, word [bp + 0x16]
    mov cx, 0x140
    mul cx
    mov word [bp - 0x2e], ax
    mov ax, word [bp + 0x1a]
    and al, 1
    je short .forward13
    jmp near .forward24
.forward13:
    mov bx, word [bp - 0x1e]
    inc bx
    mov word [bp - 0x3e], bx
    mov bx, text_state_words - IMAGE_BASE
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x30], ax
    mov word [bp - 0x40], ax
    mov cx, word [bp - 0x28]
    or cx, cx
    je short .forward17
.back2:
    mov al, byte [cs:bx]
    and al, dl
    jne short .forward14
    or byte [cs:bx], dl
    jmp short .forward15
.forward14:
    inc word [bp - 0x30]
    inc cx
.forward15:
    ror dl, 1
    cmp dl, 0x80
    jne short .forward16
    inc bx
.forward16:
    loop .back2
.forward17:
    mov word [bp - 0x32], bx
    mov ax, word [bp - 0x30]
    mov word [bp - 0x40], ax
    add ax, word [bp - 0x28]
    mov bx, word [bp - 0x3e]
    cmp bx, ax
    ja short .forward18
    jmp near .forward46
.forward18:
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x30], ax
    sub bx, word [bp - 0x26]
    jbe short .forward23
    mov word [bp - 0x34], bx
    mov cx, word [bp - 0x26]
    mov bx, word [bp - 0x32]
.back3:
    mov al, byte [cs:bx]
    and al, dl
    je short .forward19
    inc word [bp - 0x30]
    mov ax, word [bp - 0x30]
    cmp ax, word [bp - 0x34]
    je short .forward21
    inc cx
.forward19:
    ror dl, 1
    cmp dl, 0x80
    jne short .forward20
    inc bx
.forward20:
    loop .back3
.forward21:
    mov word [bp - 0x32], bx
    mov ax, word [bp - 0x30]
    add ax, word [bp - 0x40]
    add ax, word [bp - 0x28]
    add ax, word [bp - 0x26]
    mov cx, word [bp - 0x3e]
    sub cx, ax
    jbe short .forward23
    mov bx, word [bp - 0x32]
.back4:
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short .forward22
    inc bx
.forward22:
    loop .back4
.forward23:
    jmp near .forward34
.forward24:
    mov bx, word [bp - 0x1e]
    inc bx
    mov word [bp - 0x3e], bx
    mov bx, text_state_words - IMAGE_BASE
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x30], ax
    mov word [bp - 0x40], ax
    mov cx, word [bp - 0x2a]
    or cx, cx
    je short .forward28
.back5:
    mov al, byte [cs:bx]
    and al, dl
    jne short .forward25
    or byte [cs:bx], dl
    jmp short .forward26
.forward25:
    inc word [bp - 0x30]
    inc cx
.forward26:
    ror dl, 1
    cmp dl, 0x80
    jne short .forward27
    inc bx
.forward27:
    loop .back5
.forward28:
    mov word [bp - 0x32], bx
    mov ax, word [bp - 0x30]
    mov word [bp - 0x40], ax
    add ax, word [bp - 0x2a]
    mov bx, word [bp - 0x3e]
    cmp bx, ax
    ja short .forward29
    jmp near .forward46
.forward29:
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x30], ax
    sub bx, word [bp - 0x26]
    jbe short .forward34
    mov word [bp - 0x34], bx
    mov cx, word [bp - 0x26]
    mov bx, word [bp - 0x32]
.back6:
    mov al, byte [cs:bx]
    and al, dl
    je short .forward30
    inc word [bp - 0x30]
    mov ax, word [bp - 0x30]
    cmp ax, word [bp - 0x34]
    je short .forward32
    inc cx
.forward30:
    ror dl, 1
    cmp dl, 0x80
    jne short .forward31
    inc bx
.forward31:
    loop .back6
.forward32:
    mov word [bp - 0x32], bx
    mov ax, word [bp - 0x30]
    add ax, word [bp - 0x40]
    add ax, word [bp - 0x2a]
    add ax, word [bp - 0x26]
    mov cx, word [bp - 0x3e]
    sub cx, ax
    jbe short .forward34
    mov bx, word [bp - 0x32]
.back7:
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short .forward33
    inc bx
.forward33:
    loop .back7
.forward34:
    mov ax, word [bp + 0x1a]
    and al, 2
    jne short .forward40
    mov bx, text_state_bytes - IMAGE_BASE
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x30], ax
    mov word [bp - 0x40], ax
    mov cx, word [bp - 0x24]
    or cx, cx
    je short .forward38
.back8:
    mov al, byte [cs:bx]
    and al, dl
    jne short .forward35
    or byte [cs:bx], dl
    jmp short .forward36
.forward35:
    inc word [bp - 0x30]
    inc cx
.forward36:
    ror dl, 1
    cmp dl, 0x80
    jne short .forward37
    inc bx
.forward37:
    loop .back8
.forward38:
    mov ax, word [bp - 0x30]
    mov word [bp - 0x40], ax
    add ax, word [bp - 0x24]
    mov bx, word [bp - 4]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    ja short .forward39
    jmp near .forward46
.forward39:
    jmp short .forward45
.forward40:
    mov bx, text_state_bytes - IMAGE_BASE
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x30], ax
    mov word [bp - 0x40], ax
    mov cx, word [bp - 0x2c]
    or cx, cx
    je short .forward44
.back9:
    mov al, byte [cs:bx]
    and al, dl
    jne short .forward41
    or byte [cs:bx], dl
    jmp short .forward42
.forward41:
    inc word [bp - 0x30]
    inc cx
.forward42:
    ror dl, 1
    cmp dl, 0x80
    jne short .forward43
    inc bx
.forward43:
    loop .back9
.forward44:
    mov ax, word [bp - 0x30]
    add ax, word [bp - 0x2c]
    mov bx, word [bp - 4]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    jbe short .forward46
.forward45:
    mov ax, word [bp + 0x20]
    mov bl, 0xc
    div bl
    xor ah, ah
    mov word [bp - 0x30], ax
.back10:
    mov si, word [bp + 0x1c]
    mov bx, word [bp - 8]
    mov ds, bx
    xor ah, ah
    mov al, byte [ss:si]
    or al, al
    je short .forward46
    call check_frame_index
    call render_text_glyph_by_mode
    inc word [bp + 0x1c]
    jmp short .back10
.forward46:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
