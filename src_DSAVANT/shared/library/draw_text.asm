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
    jb short @..draw_text.l1
    mov ax, word [bp + 0x18]
    sub ax, word [bp + 0x16]
    jb short @..draw_text.l1
    mov ax, word [bp + 0x10]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xe]
    mov word [bp - 0x0006], ax
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
    mov word [bp - 0x0008], ax
    mov ds, ax
    xor bx, bx
    mov ax, word [bx]
    mov word [bp - 0x0012], ax
    mov si, word [bp + 0x1c]
    mov bx, word [bp - 0x0008]
    mov ds, bx
    xor ah, ah
    mov al, byte [ss:si]
    or al, al
    je short @..draw_text.l1
    call draw_text.leaf_loc1
    xor ah, ah
    mov al, byte [bx + 0x2]
    mov word [bp - 0x0002], ax
    mov cx, ax
    mov al, byte [bx + 0x3]
    mov word [bp - 0x0004], ax
    or ax, cx
    jne short @..draw_text.l2
@..draw_text.l1:
    jmp near @..draw_text.l56
@..draw_text.l2:
    mov word [bp - 0x003a], bx
    mov ax, es
    mov word [bp - 0x0038], ax
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
    jne short @..draw_text.l3
    jmp near @..draw_text.l7
@..draw_text.l3:
    cmp bx, byte 0x64
    jae short @..draw_text.l1
    mov ax, word [bp - 0x0002]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short @..draw_text.l4
    inc ax
@..draw_text.l4:
    or ax, ax
    je short @..draw_text.l5
    xor dx, dx
    mov bx, ax
    mov word [bp - 0x0034], ax
    mov ax, cx
    div bx
    mov di, text_state_words - IMAGE_BASE
    mov bx, word [bp - 0x0034]
    shr bx, 1
    mov word [bp - 0x003c], bx
    mov si, ax
    dec si
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0032], cx
    call leaf_loc_NOSG
@..draw_text.l5:
    mov ax, word [bp - 0x0004]
    mov cl, 3
    shl ax, cl
    mov cx, ax
    mov bx, word [bp + 0x20]
    mul bx
    mov bx, 0x64
    div bx
    cmp dx, byte 0x32
    jb short @..draw_text.l6
    inc ax
@..draw_text.l6:
    or ax, ax
    je short @..draw_text.l7
    xor dx, dx
    mov bx, ax
    mov word [bp - 0x0034], ax
    mov ax, cx
    div bx
    mov di, text_state_bytes - IMAGE_BASE
    mov bx, word [bp - 0x0034]
    shr bx, 1
    mov word [bp - 0x003c], bx
    mov si, ax
    dec si
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0032], cx
    call leaf_loc_NOSG
@..draw_text.l7:
    mov bx, word [bp - 0x003a]
    mov ax, word [bp - 0x0038]
    mov es, ax
    mov ax, word [bp + 0x12]
    sub ax, word [bp + 0xe]
    jge short @..draw_text.l8
    xor ax, ax
@..draw_text.l8:
    mov word [bp - 0x0028], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0002]
    mov cl, 3
    shl bx, cl
    mov cx, bx
    dec bx
    mov word [bp - 0x001e], bx
    add ax, bx
    inc ax
    sub ax, word [bp + 0x14]
    jge short @..draw_text.l9
    xor ax, ax
@..draw_text.l9:
    mov word [bp - 0x002a], ax
    add ax, word [bp - 0x0028]
    sub cx, ax
    ja short @..draw_text.l10
    jmp near @..draw_text.l56
@..draw_text.l10:
    mov word [bp - 0x0026], cx
    mov ax, word [bp + 0x16]
    sub ax, word [bp + 0x10]
    jge short @..draw_text.l11
    xor ax, ax
@..draw_text.l11:
    mov word [bp - 0x0024], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    mov cx, bx
    dec bx
    add ax, bx
    sub ax, word [bp + 0x18]
    jge short @..draw_text.l12
    xor ax, ax
@..draw_text.l12:
    mov word [bp - 0x002c], ax
    add ax, word [bp - 0x0024]
    sub cx, ax
    ja short @..draw_text.l13
    jmp near @..draw_text.l56
@..draw_text.l13:
    mov ax, word [bp + 0x18]
    inc ax
    mov cx, 0x140
    mul cx
    mov word [bp - 0x0022], ax
    mov ax, word [bp + 0x16]
    mov cx, 0x140
    mul cx
    mov word [bp - 0x002e], ax
    mov ax, word [bp + 0x1a]
    and al, 1
    je short @..draw_text.l14
    jmp near @..draw_text.l28
@..draw_text.l14:
    mov bx, word [bp - 0x001e]
    inc bx
    mov word [bp - 0x003e], bx
    mov bx, text_state_words - IMAGE_BASE
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x0028]
    or cx, cx
    je short @..draw_text.l19
@..draw_text.l15:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..draw_text.l16
    or byte [cs:bx], dl
    jmp short @..draw_text.l17
@..draw_text.l16:
    inc word [bp - 0x0030]
    inc cx
@..draw_text.l17:
    ror dl, 1
    cmp dl, 0x80
    jne short @..draw_text.l18
    inc bx
@..draw_text.l18:
    loop @..draw_text.l15
@..draw_text.l19:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x0028]
    mov bx, word [bp - 0x003e]
    cmp bx, ax
    ja short @..draw_text.l20
    jmp near @..draw_text.l56
@..draw_text.l20:
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x0030], ax
    sub bx, word [bp - 0x0026]
    jbe short @..draw_text.l27
    mov word [bp - 0x0034], bx
    mov cx, word [bp - 0x0026]
    mov bx, word [bp - 0x0032]
@..draw_text.l21:
    mov al, byte [cs:bx]
    and al, dl
    je short @..draw_text.l22
    inc word [bp - 0x0030]
    mov ax, word [bp - 0x0030]
    cmp ax, word [bp - 0x0034]
    je short @..draw_text.l24
    inc cx
@..draw_text.l22:
    ror dl, 1
    cmp dl, 0x80
    jne short @..draw_text.l23
    inc bx
@..draw_text.l23:
    loop @..draw_text.l21
@..draw_text.l24:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x0040]
    add ax, word [bp - 0x0028]
    add ax, word [bp - 0x0026]
    mov cx, word [bp - 0x003e]
    sub cx, ax
    jbe short @..draw_text.l27
    mov bx, word [bp - 0x0032]
@..draw_text.l25:
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short @..draw_text.l26
    inc bx
@..draw_text.l26:
    loop @..draw_text.l25
@..draw_text.l27:
    jmp near @..draw_text.l41
@..draw_text.l28:
    mov bx, word [bp - 0x001e]
    inc bx
    mov word [bp - 0x003e], bx
    mov bx, text_state_words - IMAGE_BASE
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x002a]
    or cx, cx
    je short @..draw_text.l33
@..draw_text.l29:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..draw_text.l30
    or byte [cs:bx], dl
    jmp short @..draw_text.l31
@..draw_text.l30:
    inc word [bp - 0x0030]
    inc cx
@..draw_text.l31:
    ror dl, 1
    cmp dl, 0x80
    jne short @..draw_text.l32
    inc bx
@..draw_text.l32:
    loop @..draw_text.l29
@..draw_text.l33:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x002a]
    mov bx, word [bp - 0x003e]
    cmp bx, ax
    ja short @..draw_text.l34
    jmp near @..draw_text.l56
@..draw_text.l34:
    sub bx, ax
    xor ax, ax
    mov word [bp - 0x0030], ax
    sub bx, word [bp - 0x0026]
    jbe short @..draw_text.l41
    mov word [bp - 0x0034], bx
    mov cx, word [bp - 0x0026]
    mov bx, word [bp - 0x0032]
@..draw_text.l35:
    mov al, byte [cs:bx]
    and al, dl
    je short @..draw_text.l36
    inc word [bp - 0x0030]
    mov ax, word [bp - 0x0030]
    cmp ax, word [bp - 0x0034]
    je short @..draw_text.l38
    inc cx
@..draw_text.l36:
    ror dl, 1
    cmp dl, 0x80
    jne short @..draw_text.l37
    inc bx
@..draw_text.l37:
    loop @..draw_text.l35
@..draw_text.l38:
    mov word [bp - 0x0032], bx
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x0040]
    add ax, word [bp - 0x002a]
    add ax, word [bp - 0x0026]
    mov cx, word [bp - 0x003e]
    sub cx, ax
    jbe short @..draw_text.l41
    mov bx, word [bp - 0x0032]
@..draw_text.l39:
    or byte [cs:bx], dl
    ror dl, 1
    cmp dl, 0x80
    jne short @..draw_text.l40
    inc bx
@..draw_text.l40:
    loop @..draw_text.l39
@..draw_text.l41:
    mov ax, word [bp + 0x1a]
    and al, 2
    jne short @..draw_text.l48
    mov bx, text_state_bytes - IMAGE_BASE
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x0024]
    or cx, cx
    je short @..draw_text.l46
@..draw_text.l42:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..draw_text.l43
    or byte [cs:bx], dl
    jmp short @..draw_text.l44
@..draw_text.l43:
    inc word [bp - 0x0030]
    inc cx
@..draw_text.l44:
    ror dl, 1
    cmp dl, 0x80
    jne short @..draw_text.l45
    inc bx
@..draw_text.l45:
    loop @..draw_text.l42
@..draw_text.l46:
    mov ax, word [bp - 0x0030]
    mov word [bp - 0x0040], ax
    add ax, word [bp - 0x0024]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    ja short @..draw_text.l47
    jmp near @..draw_text.l56
@..draw_text.l47:
    jmp short @..draw_text.l54
@..draw_text.l48:
    mov bx, text_state_bytes - IMAGE_BASE
    mov dl, 0x80
    xor ax, ax
    mov word [bp - 0x0030], ax
    mov word [bp - 0x0040], ax
    mov cx, word [bp - 0x002c]
    or cx, cx
    je short @..draw_text.l53
@..draw_text.l49:
    mov al, byte [cs:bx]
    and al, dl
    jne short @..draw_text.l50
    or byte [cs:bx], dl
    jmp short @..draw_text.l51
@..draw_text.l50:
    inc word [bp - 0x0030]
    inc cx
@..draw_text.l51:
    ror dl, 1
    cmp dl, 0x80
    jne short @..draw_text.l52
    inc bx
@..draw_text.l52:
    loop @..draw_text.l49
@..draw_text.l53:
    mov ax, word [bp - 0x0030]
    add ax, word [bp - 0x002c]
    mov bx, word [bp - 0x0004]
    mov cl, 3
    shl bx, cl
    cmp bx, ax
    jbe short @..draw_text.l56
@..draw_text.l54:
    mov ax, word [bp + 0x20]
    mov bl, 0xc
    div bl
    xor ah, ah
    mov word [bp - 0x0030], ax
@..draw_text.l55:
    mov si, word [bp + 0x1c]
    mov bx, word [bp - 0x0008]
    mov ds, bx
    xor ah, ah
    mov al, byte [ss:si]
    or al, al
    je short @..draw_text.l56
    call draw_text.leaf_loc1
    call draw_text.graphics_loc1
    inc word [bp + 0x1c]
    jmp short @..draw_text.l55
@..draw_text.l56:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
