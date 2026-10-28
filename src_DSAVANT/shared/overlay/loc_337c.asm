; auto-generated
loc_337c:
    mov ax, word [bp - 0x2a]
    sub word [bp - 0xe], ax
    mov ax, word [bp - 0x24]
    mov bx, 0x140
    mul bx
    add word [bp - 0xe], ax
loc_337c.loc1:
    mov ax, word [bp - 0x22]
    mov di, word [bp - 0xe]
    add di, word [bp - 0x1e]
    cmp di, ax
    jb short loc_337c.loc2
    jmp near loc_337c.loc3
loc_337c.loc2:
    push cx
    call leaf_loc_MTKK
    mov ax, text_state_words - IMAGE_BASE
    mov word [bp - 0x34], ax
    mov cx, word [bp - 2]
loc_337c.loc4:
    push cx
    call loc_337c.leaf_loc1
    mov bx, word [bp - 0xc]
    mov al, byte [bx]
    and al, byte [bp - 0xa]
    jne short loc_337c.loc5
    jmp near loc_337c.loc6
loc_337c.loc5:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short loc_337c.loc7
    add si, byte 0x40
    jmp near loc_337c.loc6
loc_337c.loc7:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x38], al
    mov cx, 8
loc_337c.loc8:
    cmp di, word [bp - 0x22]
    jb short loc_337c.loc9
    jmp near loc_337c.loc10
loc_337c.loc9:
    mov bx, word [bp - 0x36]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x38]
    je short loc_337c.loc11
    jmp near loc_337c.loc12
loc_337c.loc11:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x32], al
    mov cx, 8
loc_337c.loc13:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x32]
    jne short loc_337c.loc14
    mov al, byte [si]
    cmp al, 0xff
    je short loc_337c.loc15
    cmp byte [bp + 0x1e], 2
    jne short loc_337c.loc16
    mov al, byte [es:di]
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [si]
    jb short loc_337c.loc17
    cmp al, byte [cs:bx]
    jb short loc_337c.loc18
loc_337c.loc17:
    mov al, byte [cs:bx]
    jmp short loc_337c.loc18
loc_337c.loc16:
    cmp byte [bp - 0x30], 0
    je short loc_337c.loc18
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [bp - 0x30]
    jb short loc_337c.loc19
    cmp al, byte [cs:bx]
    jb short loc_337c.loc18
loc_337c.loc19:
    mov al, byte [cs:bx]
loc_337c.loc18:
    mov byte [es:di], al
loc_337c.loc15:
    inc si
    dec di
    ror byte [bp - 0x32], 1
    loop loc_337c.loc13
loc_337c.loc20:
    pop di
    pop cx
    add di, strict word 0x140
loc_337c.loc21:
    ror byte [bp - 0x38], 1
    loop loc_337c.loc8
    jmp short loc_337c.loc10
loc_337c.loc14:
    inc si
    ror byte [bp - 0x32], 1
    loop loc_337c.loc13
    jmp short loc_337c.loc20
loc_337c.loc12:
    add si, byte 8
    jmp short loc_337c.loc21
loc_337c.loc10:
    pop si
    add si, byte 0x40
    pop di
loc_337c.loc6:
    sub di, byte 8
    add di, word [bp - 0x3c]
    rol byte [bp - 0xa], 1
    cmp byte [bp - 0xa], 1
    jne short loc_337c.loc22
    inc word [bp - 0xc]
loc_337c.loc22:
    inc word [bp - 0x34]
    pop cx
    loop loc_337c.loc23
    pop cx
    add word [bp - 0xe], strict word 0xa00
    mov ax, word [bp - 0x3e]
    sub word [bp - 0xe], ax
    inc word [bp - 0x36]
    mov byte [bp - 0x3a], 0x80
    loop loc_337c.loc24
loc_337c.loc3:
    pop es
    ret
loc_337c.loc23:
    jmp near loc_337c.loc4
loc_337c.loc24:
    jmp near loc_337c.loc1
