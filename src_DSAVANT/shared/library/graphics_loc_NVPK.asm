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
    jne short .forward1
    jmp near graphics_loc_NVPK.loc1
.forward1:
    cmp al, 3
    jne short .forward2
    jmp near graphics_loc_NVPK.loc2
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
    jmp near graphics_loc_NVPK.loc3
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
    call graphics_loc_NVPK.leaf_loc1
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
