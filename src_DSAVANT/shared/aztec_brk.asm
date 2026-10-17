; auto-generated
; asm only
aztec_brk:
    push bp ; brk(addr):	set current top address to addr / returns 0 if ok, -1 if error
    mov bp, sp
    mov ax, word [bp + 0x4]
    inc ax
    and al, 0xfe
    cmp ax, word [_mbot]
    jb short @..aztec_brk.brk_ov
    cmp word [_STKLOW], byte 0
    jne short @..aztec_brk.abovestk
    mov bx, sp
    sub bx, word [_STKRED]
    cmp ax, bx
    jae short @..aztec_brk.brk_ov
    mov word [aztec_MEMRY], ax ; new value is good so save it away
    add ax, word [_STKRED]
    mov word [_sbot], ax ; save as new value for safety check
@..aztec_brk.brk_ok2:
    sub ax, ax
    pop bp
    ret
@..aztec_brk.abovestk:
    cmp ax, word [_mtop] ; heap is above stack
    ja short @..aztec_brk.getstore
    cmp ax, word [aztec_MEMRY]
    jb short @..aztec_brk.getstore
    mov word [aztec_MEMRY], ax ; new value is good so save it away
    jmp short @..aztec_brk.brk_ok2
@..aztec_brk.getstore:
    push ax ; going to do a SETBLOCK call
    mov bx, ax
    mov cx, 4
    shr bx, cl
    and bx, strict word 0xfff
    add bx, byte 0x41 ; bump to nearest 1k increment
    and bx, strict word 0xffc0 ; and round
    push bx
    push es
    mov cx, ds
    add bx, cx ; get actual paragraph address
    mov es, word [_PSP]
    sub bx, word [_PSP]
    mov ah, 0x4a
    int 0x21 ; DOS resize memory block
    pop es
    pop bx
    pop ax
    jb short @..aztec_brk.brk_ov ; couldn't do it, so punt
    mov word [aztec_MEMRY], ax
    test bx, 0xe000
    jne short @..aztec_brk.brk_ov
    mov cx, 4
    shl bx, cl
    mov word [_mtop], bx
    sub ax, ax
    pop bp
    ret
@..aztec_brk.brk_ov:
    mov word [errno], 0xfff8 ; invalid request
    mov ax, 0xffff
    test ax, ax
    pop bp
    ret
