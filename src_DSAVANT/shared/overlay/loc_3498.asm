; auto-generated
loc_3498:
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
loc_3498.loc1:
    mov ax, word [bp - 0x2e]
    mov di, word [bp - 0xe]
    cmp ax, di
    jbe short loc_3498.loc2
    jmp near loc_3498.loc3
loc_3498.loc2:
    push cx
    call leaf_loc_MTKK
    mov ax, text_state_words - IMAGE_BASE
    mov word [bp - 0x34], ax
    mov cx, word [bp - 2]
loc_3498.loc4:
    push cx
    call loc_3498.leaf_loc1
    mov bx, word [bp - 0xc]
    mov al, byte [bx]
    and al, byte [bp - 0xa]
    jne short loc_3498.loc5
    jmp near loc_3498.loc6
loc_3498.loc5:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    cmp al, 0xff
    jne short loc_3498.loc7
    add si, byte 0x40
    jmp near loc_3498.loc6
loc_3498.loc7:
    push di
    push si
    mov al, 0x80
    mov byte [bp - 0x38], al
    mov cx, 8
loc_3498.loc8:
    cmp word [bp - 0x2e], di
    jbe short loc_3498.loc9
    jmp near loc_3498.loc10
loc_3498.loc9:
    mov bx, word [bp - 0x36]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x38]
    je short loc_3498.loc11
    jmp near loc_3498.loc12
loc_3498.loc11:
    push cx
    push di
    mov al, 0x80
    mov byte [bp - 0x32], al
    mov cx, 8
loc_3498.loc13:
    mov bx, word [bp - 0x34]
    mov al, byte [cs:bx]
    and al, byte [bp - 0x32]
    jne short loc_3498.loc14
    mov al, byte [si]
    cmp al, 0xff
    je short loc_3498.loc15
    cmp byte [bp + 0x1e], 2
    jne short loc_3498.loc16
    mov al, byte [es:di]
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [si]
    jb short loc_3498.loc17
    cmp al, byte [cs:bx]
    jb short loc_3498.loc18
loc_3498.loc17:
    mov al, byte [cs:bx]
    jmp short loc_3498.loc18
loc_3498.loc16:
    cmp byte [bp - 0x30], 0
    je short loc_3498.loc18
    mov bx, intensity_limits - IMAGE_BASE
    add bx, ax
    add al, byte [bp - 0x30]
    jb short loc_3498.loc19
    cmp al, byte [cs:bx]
    jb short loc_3498.loc18
loc_3498.loc19:
    mov al, byte [cs:bx]
loc_3498.loc18:
    mov byte [es:di], al
loc_3498.loc15:
    inc si
    inc di
    ror byte [bp - 0x32], 1
    loop loc_3498.loc13
loc_3498.loc20:
    pop di
    sub di, strict word 0x140
    pop cx
loc_3498.loc21:
    ror byte [bp - 0x38], 1
    loop loc_3498.loc8
    jmp short loc_3498.loc10
loc_3498.loc14:
    inc si
    ror byte [bp - 0x32], 1
    loop loc_3498.loc13
    jmp short loc_3498.loc20
loc_3498.loc12:
    add si, byte 8
    jmp short loc_3498.loc21
loc_3498.loc10:
    pop si
    add si, byte 0x40
    pop di
loc_3498.loc6:
    add di, byte 8
    sub di, word [bp - 0x3c]
    rol byte [bp - 0xa], 1
    cmp byte [bp - 0xa], 1
    jne short loc_3498.loc22
    inc word [bp - 0xc]
loc_3498.loc22:
    inc word [bp - 0x34]
    pop cx
    loop loc_3498.loc23
    pop cx
    sub word [bp - 0xe], strict word 0xa00
    mov ax, word [bp - 0x3e]
    add word [bp - 0xe], ax
    inc word [bp - 0x36]
    mov byte [bp - 0x3a], 0x80
    loop loc_3498.loc24
loc_3498.loc3:
    pop es
    ret
loc_3498.loc23:
    jmp near loc_3498.loc4
loc_3498.loc24:
    jmp near loc_3498.loc1
