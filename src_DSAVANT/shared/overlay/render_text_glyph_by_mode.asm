; auto-generated
render_text_glyph_by_mode:
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
    jne short .forward1
    jmp near .forward41
.forward1:
    cmp al, 3
    jne short .forward2
    jmp near .forward60
.forward2:
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
    jne short .forward3
    jmp near .forward22
.forward3:
    mov ax, word [bp - 0x28]
    add word [bp - 0xe], ax
    mov ax, word [bp - 0x24]
    mov bx, 0x140
    mul bx
    add word [bp - 0xe], ax
.back1:
    mov ax, word [bp - 0x22]
    mov di, word [bp - 0xe]
    cmp di, ax
    jb short .forward4
    jmp near .forward19
.forward4:
    push cx
    call leaf_loc_MTKK
    mov ax, text_state_words - IMAGE_BASE
    mov word [bp - 0x34], ax
    mov cx, word [bp - 2]
.back2:
    push cx
    call render_text_glyph_by_mode.leaf_loc1
    mov bx, word [bp - 0xc]
    mov al, byte [bx]
    and al, byte [bp - 0xa]
    jne short .forward5
    jmp near .forward17
.forward5:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short .forward6
    add si, byte 0x40
    jmp near .forward17
.forward6:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x38], al
    mov cx, 8
.back3:
    cmp di, word [bp - 0x22]
    jb short .forward7
    jmp near .forward16
.forward7:
    mov bx, word [bp - 0x36]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x38]
    je short .forward8
    jmp near .forward15
.forward8:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x32], al
    mov cx, 8
.back4:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x32]
    jne short .forward14
    xor ah, ah
    mov al, byte [si]
    cmp al, 0xff
    je short .forward13
    cmp byte [bp + 0x1e], 2
    jne short .forward10
    mov al, byte [es:di]
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [si]
    jb short .forward9
    cmp al, byte [cs:bx]
    jb short .forward12
.forward9:
    mov al, byte [cs:bx]
    jmp short .forward12
.forward10:
    cmp byte [bp - 0x30], 0
    je short .forward12
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [bp - 0x30]
    jb short .forward11
    cmp al, byte [cs:bx]
    jb short .forward12
.forward11:
    mov al, byte [cs:bx]
.forward12:
    mov byte [es:di], al
.forward13:
    inc si
    inc di
    ror byte [bp - 0x32], 1
    loop .back4
.back5:
    pop di
    pop cx
    add di, strict word 0x140
.back6:
    ror byte [bp - 0x38], 1
    loop .back3
    jmp short .forward16
.forward14:
    inc si
    ror byte [bp - 0x32], 1
    loop .back4
    jmp short .back5
.forward15:
    add si, byte 8
    jmp short .back6
.forward16:
    pop si
    add si, byte 0x40
    pop di
.forward17:
    add di, byte 8
    sub di, word [bp - 0x3c]
    rol byte [bp - 0xa], 1
    cmp byte [bp - 0xa], 1
    jne short .forward18
    inc word [bp - 0xc]
.forward18:
    inc word [bp - 0x34]
    pop cx
    loop .forward20
    pop cx
    add word [bp - 0xe], strict word 0xa00
    mov ax, word [bp - 0x3e]
    sub word [bp - 0xe], ax
    inc word [bp - 0x36]
    mov byte [bp - 0x3a], 0x80
    loop .forward21
.forward19:
    pop es
    ret
.forward20:
    jmp near .back2
.forward21:
    jmp near .back1
leaf_loc_MTKK:
    mov al, 0x80
    mov dl, al
    xor ax, ax
    mov word [bp - 0x3e], ax
    mov bx, word [bp - 0x36]
    mov cx, 8
.back1:
    mov al, byte [cs:bx]
    and al, dl
    je short .forward1
    add word [bp - 0x3e], strict word 0x140
.forward1:
    ror dl, 1
    loop .back1
    ret
render_text_glyph_by_mode.leaf_loc1:
    xor ax, ax
    mov word [bp - 0x3c], ax
    mov dl, 0x80
    mov bx, word [bp - 0x34]
    mov cx, 8
leaf_loc_KSJN.back1:
    mov al, byte [cs:bx]
    and al, dl
    je short leaf_loc_KSJN.forward1
    inc word [bp - 0x3c]
leaf_loc_KSJN.forward1:
    ror dl, 1
    loop leaf_loc_KSJN.back1
    ret
render_text_glyph_by_mode.forward22:
    mov ax, word [bp - 0x2a]
    sub word [bp - 0xe], ax
    mov ax, word [bp - 0x24]
    mov bx, 0x140
    mul bx
    add word [bp - 0xe], ax
render_text_glyph_by_mode.back7:
    mov ax, word [bp - 0x22]
    mov di, word [bp - 0xe]
    add di, word [bp - 0x1e]
    cmp di, ax
    jb short render_text_glyph_by_mode.forward23
    jmp near render_text_glyph_by_mode.forward38
render_text_glyph_by_mode.forward23:
    push cx
    call leaf_loc_MTKK
    mov ax, text_state_words - IMAGE_BASE
    mov word [bp - 0x34], ax
    mov cx, word [bp - 2]
render_text_glyph_by_mode.back8:
    push cx
    call render_text_glyph_by_mode.leaf_loc1
    mov bx, word [bp - 0xc]
    mov al, byte [bx]
    and al, byte [bp - 0xa]
    jne short render_text_glyph_by_mode.forward24
    jmp near render_text_glyph_by_mode.forward36
render_text_glyph_by_mode.forward24:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short render_text_glyph_by_mode.forward25
    add si, byte 0x40
    jmp near render_text_glyph_by_mode.forward36
render_text_glyph_by_mode.forward25:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x38], al
    mov cx, 8
render_text_glyph_by_mode.back9:
    cmp di, word [bp - 0x22]
    jb short render_text_glyph_by_mode.forward26
    jmp near render_text_glyph_by_mode.forward35
render_text_glyph_by_mode.forward26:
    mov bx, word [bp - 0x36]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x38]
    je short render_text_glyph_by_mode.forward27
    jmp near render_text_glyph_by_mode.forward34
render_text_glyph_by_mode.forward27:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x32], al
    mov cx, 8
render_text_glyph_by_mode.back10:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x32]
    jne short render_text_glyph_by_mode.forward33
    mov al, byte [si]
    cmp al, 0xff
    je short render_text_glyph_by_mode.forward32
    cmp byte [bp + 0x1e], 2
    jne short render_text_glyph_by_mode.forward29
    mov al, byte [es:di]
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [si]
    jb short render_text_glyph_by_mode.forward28
    cmp al, byte [cs:bx]
    jb short render_text_glyph_by_mode.forward31
render_text_glyph_by_mode.forward28:
    mov al, byte [cs:bx]
    jmp short render_text_glyph_by_mode.forward31
render_text_glyph_by_mode.forward29:
    cmp byte [bp - 0x30], 0
    je short render_text_glyph_by_mode.forward31
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [bp - 0x30]
    jb short render_text_glyph_by_mode.forward30
    cmp al, byte [cs:bx]
    jb short render_text_glyph_by_mode.forward31
render_text_glyph_by_mode.forward30:
    mov al, byte [cs:bx]
render_text_glyph_by_mode.forward31:
    mov byte [es:di], al
render_text_glyph_by_mode.forward32:
    inc si
    dec di
    ror byte [bp - 0x32], 1
    loop render_text_glyph_by_mode.back10
render_text_glyph_by_mode.back11:
    pop di
    pop cx
    add di, strict word 0x140
render_text_glyph_by_mode.back12:
    ror byte [bp - 0x38], 1
    loop render_text_glyph_by_mode.back9
    jmp short render_text_glyph_by_mode.forward35
render_text_glyph_by_mode.forward33:
    inc si
    ror byte [bp - 0x32], 1
    loop render_text_glyph_by_mode.back10
    jmp short render_text_glyph_by_mode.back11
render_text_glyph_by_mode.forward34:
    add si, byte 8
    jmp short render_text_glyph_by_mode.back12
render_text_glyph_by_mode.forward35:
    pop si
    add si, byte 0x40
    pop di
render_text_glyph_by_mode.forward36:
    sub di, byte 8
    add di, word [bp - 0x3c]
    rol byte [bp - 0xa], 1
    cmp byte [bp - 0xa], 1
    jne short render_text_glyph_by_mode.forward37
    inc word [bp - 0xc]
render_text_glyph_by_mode.forward37:
    inc word [bp - 0x34]
    pop cx
    loop render_text_glyph_by_mode.forward39
    pop cx
    add word [bp - 0xe], strict word 0xa00
    mov ax, word [bp - 0x3e]
    sub word [bp - 0xe], ax
    inc word [bp - 0x36]
    mov byte [bp - 0x3a], 0x80
    loop render_text_glyph_by_mode.forward40
render_text_glyph_by_mode.forward38:
    pop es
    ret
render_text_glyph_by_mode.forward39:
    jmp near render_text_glyph_by_mode.back8
render_text_glyph_by_mode.forward40:
    jmp near render_text_glyph_by_mode.back7
render_text_glyph_by_mode.forward41:
    mov ax, word [bp - 4]
    mov cx, 0xa00
    mul cx
    sub ax, 0x140
    add ax, word [bp - 6]
    mov word [bp - 0xe], ax
    mov si, word [bx]
    add si, bx
    mov word [bp - 0xa], 1
    lea ax, word [bx + 4]
    mov word [bp - 0xc], ax
    mov cx, word [bp - 4]
    mov byte [bp - 0x3a], 0x80
    mov ax, word [bp - 0x28]
    add word [bp - 0xe], ax
    mov ax, word [bp - 0x2c]
    mov bx, 0x140
    mul bx
    sub word [bp - 0xe], ax
render_text_glyph_by_mode.back13:
    mov ax, word [bp - 0x2e]
    mov di, word [bp - 0xe]
    cmp ax, di
    jbe short render_text_glyph_by_mode.forward42
    jmp near render_text_glyph_by_mode.forward57
render_text_glyph_by_mode.forward42:
    push cx
    call leaf_loc_MTKK
    mov ax, text_state_words - IMAGE_BASE
    mov word [bp - 0x34], ax
    mov cx, word [bp - 2]
render_text_glyph_by_mode.back14:
    push cx
    call render_text_glyph_by_mode.leaf_loc1
    mov bx, word [bp - 0xc]
    mov al, byte [bx]
    and al, byte [bp - 0xa]
    jne short render_text_glyph_by_mode.forward43
    jmp near render_text_glyph_by_mode.forward55
render_text_glyph_by_mode.forward43:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short render_text_glyph_by_mode.forward44
    add si, byte 0x40
    jmp near render_text_glyph_by_mode.forward55
render_text_glyph_by_mode.forward44:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x38], al
    mov cx, 8
render_text_glyph_by_mode.back15:
    cmp word [bp - 0x2e], di
    jbe short render_text_glyph_by_mode.forward45
    jmp near render_text_glyph_by_mode.forward54
render_text_glyph_by_mode.forward45:
    mov bx, word [bp - 0x36]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x38]
    je short render_text_glyph_by_mode.forward46
    jmp near render_text_glyph_by_mode.forward53
render_text_glyph_by_mode.forward46:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x32], al
    mov cx, 8
render_text_glyph_by_mode.back16:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x32]
    jne short render_text_glyph_by_mode.forward52
    mov al, byte [si]
    cmp al, 0xff
    je short render_text_glyph_by_mode.forward51
    cmp byte [bp + 0x1e], 2
    jne short render_text_glyph_by_mode.forward48
    mov al, byte [es:di]
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [si]
    jb short render_text_glyph_by_mode.forward47
    cmp al, byte [cs:bx]
    jb short render_text_glyph_by_mode.forward50
render_text_glyph_by_mode.forward47:
    mov al, byte [cs:bx]
    jmp short render_text_glyph_by_mode.forward50
render_text_glyph_by_mode.forward48:
    cmp byte [bp - 0x30], 0
    je short render_text_glyph_by_mode.forward50
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [bp - 0x30]
    jb short render_text_glyph_by_mode.forward49
    cmp al, byte [cs:bx]
    jb short render_text_glyph_by_mode.forward50
render_text_glyph_by_mode.forward49:
    mov al, byte [cs:bx]
render_text_glyph_by_mode.forward50:
    mov byte [es:di], al
render_text_glyph_by_mode.forward51:
    inc si
    inc di
    ror byte [bp - 0x32], 1
    loop render_text_glyph_by_mode.back16
render_text_glyph_by_mode.back17:
    pop di
    sub di, strict word 0x140
    pop cx
render_text_glyph_by_mode.back18:
    ror byte [bp - 0x38], 1
    loop render_text_glyph_by_mode.back15
    jmp short render_text_glyph_by_mode.forward54
render_text_glyph_by_mode.forward52:
    inc si
    ror byte [bp - 0x32], 1
    loop render_text_glyph_by_mode.back16
    jmp short render_text_glyph_by_mode.back17
render_text_glyph_by_mode.forward53:
    add si, byte 8
    jmp short render_text_glyph_by_mode.back18
render_text_glyph_by_mode.forward54:
    pop si
    add si, byte 0x40
    pop di
render_text_glyph_by_mode.forward55:
    add di, byte 8
    sub di, word [bp - 0x3c]
    rol byte [bp - 0xa], 1
    cmp byte [bp - 0xa], 1
    jne short render_text_glyph_by_mode.forward56
    inc word [bp - 0xc]
render_text_glyph_by_mode.forward56:
    inc word [bp - 0x34]
    pop cx
    loop render_text_glyph_by_mode.forward58
    pop cx
    sub word [bp - 0xe], strict word 0xa00
    mov ax, word [bp - 0x3e]
    add word [bp - 0xe], ax
    inc word [bp - 0x36]
    mov byte [bp - 0x3a], 0x80
    loop render_text_glyph_by_mode.forward59
render_text_glyph_by_mode.forward57:
    pop es
    ret
render_text_glyph_by_mode.forward58:
    jmp near render_text_glyph_by_mode.back14
render_text_glyph_by_mode.forward59:
    jmp near render_text_glyph_by_mode.back13
render_text_glyph_by_mode.forward60:
    mov ax, word [bp - 4]
    mov cx, 0xa00
    mul cx
    sub ax, 0x140
    add ax, word [bp - 6]
    mov word [bp - 0xe], ax
    mov si, word [bx]
    add si, bx
    mov word [bp - 0xa], 1
    lea ax, word [bx + 4]
    mov word [bp - 0xc], ax
    mov cx, word [bp - 4]
    mov byte [bp - 0x3a], 0x80
    mov ax, word [bp - 0x2a]
    sub word [bp - 0xe], ax
    mov ax, word [bp - 0x2c]
    mov bx, 0x140
    mul bx
    sub word [bp - 0xe], ax
render_text_glyph_by_mode.back19:
    mov ax, word [bp - 0x2e]
    mov di, word [bp - 0xe]
    add di, word [bp - 0x1e]
    cmp ax, di
    jb short render_text_glyph_by_mode.forward61
    jmp near render_text_glyph_by_mode.forward76
render_text_glyph_by_mode.forward61:
    push cx
    call leaf_loc_MTKK
    mov ax, text_state_words - IMAGE_BASE
    mov word [bp - 0x34], ax
    mov cx, word [bp - 2]
render_text_glyph_by_mode.back20:
    push cx
    call render_text_glyph_by_mode.leaf_loc1
    mov bx, word [bp - 0xc]
    mov al, byte [bx]
    and al, byte [bp - 0xa]
    jne short render_text_glyph_by_mode.forward62
    jmp near render_text_glyph_by_mode.forward74
render_text_glyph_by_mode.forward62:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short render_text_glyph_by_mode.forward63
    add si, byte 0x40
    jmp near render_text_glyph_by_mode.forward74
render_text_glyph_by_mode.forward63:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x38], al
    mov cx, 8
render_text_glyph_by_mode.back21:
    cmp word [bp - 0x2e], di
    jbe short render_text_glyph_by_mode.forward64
    jmp near render_text_glyph_by_mode.forward73
render_text_glyph_by_mode.forward64:
    mov bx, word [bp - 0x36]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x38]
    je short render_text_glyph_by_mode.forward65
    jmp near render_text_glyph_by_mode.forward72
render_text_glyph_by_mode.forward65:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x32], al
    mov cx, 8
render_text_glyph_by_mode.back22:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x32]
    jne short render_text_glyph_by_mode.forward71
    mov al, byte [si]
    cmp al, 0xff
    je short render_text_glyph_by_mode.forward70
    cmp byte [bp + 0x1e], 2
    jne short render_text_glyph_by_mode.forward67
    mov al, byte [es:di]
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [si]
    jb short render_text_glyph_by_mode.forward66
    cmp al, byte [cs:bx]
    jb short render_text_glyph_by_mode.forward69
render_text_glyph_by_mode.forward66:
    mov al, byte [cs:bx]
    jmp short render_text_glyph_by_mode.forward69
render_text_glyph_by_mode.forward67:
    cmp byte [bp - 0x30], 0
    je short render_text_glyph_by_mode.forward69
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [bp - 0x30]
    jb short render_text_glyph_by_mode.forward68
    cmp al, byte [cs:bx]
    jb short render_text_glyph_by_mode.forward69
render_text_glyph_by_mode.forward68:
    mov al, byte [cs:bx]
render_text_glyph_by_mode.forward69:
    mov byte [es:di], al
render_text_glyph_by_mode.forward70:
    inc si
    dec di
    ror byte [bp - 0x32], 1
    loop render_text_glyph_by_mode.back22
render_text_glyph_by_mode.back23:
    pop di
    sub di, strict word 0x140
    pop cx
render_text_glyph_by_mode.back24:
    ror byte [bp - 0x38], 1
    loop render_text_glyph_by_mode.back21
    jmp short render_text_glyph_by_mode.forward73
render_text_glyph_by_mode.forward71:
    inc si
    ror byte [bp - 0x32], 1
    loop render_text_glyph_by_mode.back22
    jmp short render_text_glyph_by_mode.back23
render_text_glyph_by_mode.forward72:
    add si, byte 8
    jmp short render_text_glyph_by_mode.back24
render_text_glyph_by_mode.forward73:
    pop si
    add si, byte 0x40
    pop di
render_text_glyph_by_mode.forward74:
    sub di, byte 8
    add di, word [bp - 0x3c]
    rol byte [bp - 0xa], 1
    cmp byte [bp - 0xa], 1
    jne short render_text_glyph_by_mode.forward75
    inc word [bp - 0xc]
render_text_glyph_by_mode.forward75:
    inc word [bp - 0x34]
    pop cx
    loop render_text_glyph_by_mode.forward77
    pop cx
    sub word [bp - 0xe], strict word 0xa00
    mov ax, word [bp - 0x3e]
    add word [bp - 0xe], ax
    inc word [bp - 0x36]
    mov byte [bp - 0x3a], 0x80
    loop render_text_glyph_by_mode.forward78
render_text_glyph_by_mode.forward76:
    pop es
    ret
render_text_glyph_by_mode.forward77:
    jmp near render_text_glyph_by_mode.back20
render_text_glyph_by_mode.forward78:
    jmp near render_text_glyph_by_mode.back19
