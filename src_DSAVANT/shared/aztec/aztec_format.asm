; auto-generated
aztec_format:
    push bp
    mov bp, sp
    sub sp, strict word 0x154
    push di
    push si
    cld
    mov si, word [bp + 6]
    mov word [bp - 2], 0
.back1:
    mov byte [bp - 0xb], 0
    lodsb
    cmp al, 0x25
    je short .forward2
aztec_format.jumptable_case1:
    test al, al
    je short aztec_format.forward1
    call aztec_format.loc1
    jmp short aztec_format.back1
aztec_format.forward1:
    mov ax, word [bp - 2]
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
aztec_format.forward2:
    mov byte [bp - 0xc], 0x20
    mov byte [bp - 0xe], 0
    mov byte [bp - 0xd], 0
    mov word [bp - 6], 0xffff
aztec_format.back2:
    lodsb
    cmp al, 0x2d
    jne short aztec_format.forward3
    or byte [bp - 0xb], 8
    jmp short aztec_format.back2
aztec_format.forward3:
    cmp al, 0x2b
    jne short aztec_format.forward4
    mov byte [bp - 0xe], 0x2b
    jmp short aztec_format.back2
aztec_format.forward4:
    cmp al, 0x20
    jne short aztec_format.forward5
    cmp byte [bp - 0xe], 0
    jne short aztec_format.back2
    mov byte [bp - 0xe], 0x20
    jmp short aztec_format.back2
aztec_format.forward5:
    cmp al, 0x23
    jne short aztec_format.forward6
    or byte [bp - 0xb], 0x10
    jmp short aztec_format.back2
aztec_format.forward6:
    cmp al, 0x30
    jne short aztec_format.forward7
    mov byte [bp - 0xc], 0x30
    lodsb
aztec_format.forward7:
    call aztec_format_do_width
    test dx, dx
    jns short aztec_format.forward8
    neg dx
    or byte [bp - 0xb], 8
aztec_format.forward8:
    mov word [bp - 4], dx
    cmp al, 0x2e
    jne short aztec_format.forward9
    lodsb
    call aztec_format_do_width
    mov word [bp - 6], dx
aztec_format.forward9:
    mov di, cs
    mov es, di
aztec_format.back3:
    mov di, aztec_format_conversions - IMAGE_BASE
    mov cx, 0x15
    repne scasb
    sub di, aztec_format.cseg1 - IMAGE_BASE
    shl di, 1
    jmp [cs:di + aztec_format_conv_routines - IMAGE_BASE]
aztec_format.jumptable_case2:
    or byte [bp - 0xb], 1
    lodsb
    jmp short aztec_format.back3
aztec_format.jumptable_case3:
    or byte [bp - 0xb], 2
aztec_format.jumptable_case4:
    lodsb
    jmp short aztec_format.back3
aztec_format.jumptable_case5:
    or byte [bp - 0xb], 4
    lodsb
    jmp short aztec_format.back3
aztec_format.jumptable_case6:
    mov cx, 8
    jmp short aztec_format.forward10
aztec_format.jumptable_case7:
    or byte [bp - 0xb], 0x20
aztec_format.jumptable_case8:
    mov cx, 0x10
    jmp short aztec_format.forward10
aztec_format.jumptable_case9:
    mov cx, 0xa
    jmp short aztec_format.forward10
aztec_format.jumptable_case10:
    mov cx, 0xff0a
aztec_format.forward10:
    push ds
    pop es
    mov di, word [bp + 8]
    mov ax, word [es:di]
    add di, byte 2
    test byte [bp - 0xb], 2
    je short aztec_format.forward11
    mov dx, word [es:di]
    add di, byte 2
    jmp short aztec_format.forward12
aztec_format.forward11:
    sub dx, dx
    test ch, ch
    je short aztec_format.forward13
    cwd
aztec_format.forward12:
    test ch, ch
    je short aztec_format.forward13
    mov ch, byte [bp - 0xe]
    mov byte [bp - 0xd], ch
    test dx, dx
    jns short aztec_format.forward13
    mov byte [bp - 0xd], 0x2d
    neg dx
    neg ax
    sbb dx, byte 0
aztec_format.forward13:
    mov word [bp + 8], di
    cmp word [bp - 6], byte 0
    jge short aztec_format.forward14
    mov word [bp - 6], 1
aztec_format.forward14:
    mov ch, 0
    mov di, ss
    mov es, di
    lea di, word [bp - 0x140]
aztec_format.back4:
    test dx, dx
    jne short aztec_format.forward15
    test ax, ax
    je short aztec_format.forward18
aztec_format.forward15:
    sub bx, bx
    cmp cx, dx
    ja short aztec_format.forward16
    push ax
    mov ax, dx
    sub dx, dx
    div cx
    mov bx, ax
    pop ax
    div cx
    jmp short aztec_format.forward17
aztec_format.forward16:
    div cx
aztec_format.forward17:
    xchg bx, dx
    mov bl, byte [cs:bx + aztec_format_digits - IMAGE_BASE]
    dec di
    mov byte [es:di], bl
    jmp short aztec_format.back4
aztec_format.forward18:
    test byte [bp - 0xb], 0x10
    je short aztec_format.forward20
    cmp cl, 0xa
    je short aztec_format.forward20
    cmp cl, 0x10
    jne short aztec_format.forward19
    mov byte [bp - 0xd], 0x78
    jmp short aztec_format.forward20
aztec_format.forward19:
    dec di
    mov byte [es:di], 0x30
aztec_format.forward20:
    lea cx, word [bp - 0x140]
    sub cx, di
    mov ax, word [bp - 6]
    sub ax, cx
    mov word [bp - 6], ax
    jle short aztec_format.back5
    sub word [bp - 4], ax
aztec_format.back5:
    mov word [bp - 8], cx
    cmp byte [bp - 0xd], 0
    je short aztec_format.forward22
    cmp byte [bp - 0xd], 0x78
    jne short aztec_format.forward21
    dec word [bp - 4]
aztec_format.forward21:
    dec word [bp - 4]
aztec_format.forward22:
    sub word [bp - 4], cx
    jle short aztec_format.forward23
    test byte [bp - 0xb], 8
    jne short aztec_format.forward23
    cmp byte [bp - 0xc], 0x30
    jne short aztec_format.back6
    call aztec_format.loc2
aztec_format.back6:
    mov al, byte [bp - 0xc]
    call aztec_format.loc1
    dec word [bp - 4]
    jg short aztec_format.back6
aztec_format.forward23:
    call aztec_format.loc2
aztec_format.back7:
    dec word [bp - 6]
    js short aztec_format.back8
    mov al, 0x30
    call aztec_format.loc1
    jmp short aztec_format.back7
aztec_format.back8:
    dec word [bp - 8]
    js short aztec_format.back9
    mov al, byte [es:di]
    inc di
    call aztec_format.loc1
    jmp short aztec_format.back8
aztec_format.back9:
    dec word [bp - 4]
    js short aztec_format.forward24
    mov al, 0x20
    call aztec_format.loc1
    jmp short aztec_format.back9
aztec_format.forward24:
    jmp near aztec_format.back1
aztec_format.jumptable_case11:
    or byte [bp - 0xb], 0x20
    add al, 0x20
aztec_format.jumptable_case12:
    add word [bp + 8], byte 8
    mov ax, cs
    mov es, ax
    mov di, aztec_format_nofltmsg - IMAGE_BASE
    sub word [bp - 4], byte 0xa
    jmp short aztec_format.back8
aztec_format.jumptable_case13:
    call aztec_format_get_pointer
    push di
    mov al, 0
    mov cx, 0xffff
    repne scasb
    not cx
    dec cx
    cmp cx, word [bp - 6]
    jbe short aztec_format.forward25
    mov cx, word [bp - 6]
aztec_format.forward25:
    pop di
    mov word [bp - 6], 0
    jmp near aztec_format.back5
aztec_format.jumptable_case14:
    push ds
    pop es
    mov di, word [bp + 8]
    mov al, byte [es:di]
    add di, byte 2
    mov word [bp + 8], di
    mov byte [bp - 0x154], al
    mov cx, 1
    mov ax, ss
    mov es, ax
    lea di, word [bp - 0x154]
    mov word [bp - 6], 0
    jmp near aztec_format.back5
aztec_format.jumptable_case15:
    jmp near aztec_format.back1
aztec_format.jumptable_case16:
    call aztec_format_get_pointer
    mov ax, word [bp - 2]
    mov word [es:di], ax
    test byte [bp - 0xb], 2
    je short aztec_format.forward26
    mov word [es:di + 2], 0
aztec_format.forward26:
    jmp near aztec_format.back1
aztec_format.loc2:
    mov al, byte [bp - 0xd]
    test al, al
    je short aztec_format.loc3
    cmp al, 0x78
    jne short ds_loc_MRST.forward1
    mov al, 0x30
    call aztec_format.loc1
    mov al, 0x78
ds_loc_MRST.forward1:
    mov byte [bp - 0xd], 0
aztec_format.loc1:
    inc word [bp - 2]
    test byte [bp - 0xb], 0x20
    je short ds_loc_NJTI.forward1
    cmp al, 0x61
    jb short ds_loc_NJTI.forward1
    cmp al, 0x7a
    ja short ds_loc_NJTI.forward1
    sub al, 0x20
ds_loc_NJTI.forward1:
    push es
    sub ah, ah
    push ax
    call [bp + 4]
    pop ax
    pop es
aztec_format.loc3:
    ret
