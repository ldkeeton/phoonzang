; auto-generated
aztec_sbegin_exitad:
    db 0x00, 0x00
aztec_sbegin_exitcs:
    db 0x00, 0x00
__zinsn_aztec_begin:
aztec_begin:
    mov bp, __zdseg_para
    test bp, bp
    jne short @..aztec_sbegin.notcom
    mov bp, ds
@..aztec_sbegin.notcom:
    mov word [cs:aztec_sbegin_exitcs - IMAGE_BASE], ds
    mov bx, word [psp_top_of_memory]
    sub bx, bp
    cmp bx, strict word 0x1000
    jbe short @..aztec_sbegin.smallseg
    lea bx, word [bp + 0x1000]
    mov ax, es
    sub bx, ax
    mov ah, 0x4a
    int 0x21 ; DOS resize memory block
    mov bx, 0x1000
@..aztec_sbegin.smallseg:
    mov es, bp
    mov word [es:_PSP], ds
    mov cl, 4
    shl bx, cl
    cmp word [es:_STKLOW], byte 0
    je short @..aztec_sbegin.setstk
    mov ax, word [es:_STKRED]
    shl ax, 1
    mov bx, word [es:_STKSIZ]
    shl bx, cl
    cmp bx, ax
    ja short @..aztec_sbegin.sizeok
    mov bx, ax
@..aztec_sbegin.sizeok:
    add bx, __zdseg_end
@..aztec_sbegin.setstk:
    cli
    mov ss, bp
    mov sp, bx
    sti
    test bx, bx
    jne short @..aztec_sbegin.oksav
    mov bx, 0xffff
@..aztec_sbegin.oksav:
    mov word [es:_mtop], bx
    cmp word [es:_STKLOW], byte 0
    je short @..aztec_sbegin.heapdone
    mov si, word [es:_HEAPSIZ]
    mov ax, bx
    inc ax
    mov word [es:aztec_MEMRY], ax
    shl si, cl
    add bx, si
    jae short @..aztec_sbegin.heapok
    mov bx, 0xffff
@..aztec_sbegin.heapok:
    mov word [es:_mtop], bx
    add bx, byte 0xf
    shr bx, cl
    mov ax, es
    add bx, ax
    mov ax, ds
    sub bx, ax
    mov bp, es
    mov es, ax
    mov ah, 0x4a
    int 0x21 ; DOS resize memory block
    jae short @..aztec_sbegin.heapdone
    mov al, 0xfe
    jmp near @..aztec_sbegin.exits
@..aztec_sbegin.heapdone:
    mov es, bp
    cld
    mov di, _Uorg
    mov cx, __zdseg_end
    sub cx, di
    inc cx
    shr cx, 1
    jcxz @..aztec_sbegin.noclear
    sub ax, ax
    rep stosw
@..aztec_sbegin.noclear:
    mov es, word [psp_env_segment]
    sub di, di
    mov cx, 0x7fff
@..aztec_sbegin.arglook:
    mov ah, byte [es:di]
    cmp ah, 0x3d
    je short @..aztec_sbegin.found_args
    test ah, ah
    je short @..aztec_sbegin.no_args
    repne scasb
    je short @..aztec_sbegin.arglook
@..aztec_sbegin.no_args:
    mov cl, byte [psp_cmd_tail_len]
    sub ch, ch
    mov si, 0x81
    mov ax, 1
    jmp short @..aztec_sbegin.mov_args
@..aztec_sbegin.found_args:
    sub ax, ax
    stosb
    mov si, di
    mov di, es
    mov ds, di
@..aztec_sbegin.mov_args:
    push ax
    mov es, bp
    mov di, word [es:aztec_MEMRY]
    push di
    jcxz @..aztec_sbegin.cpy_done
@..aztec_sbegin.cpy_args:
    lodsb
    test al, al
    je short @..aztec_sbegin.cpy_done
    stosb
    loop @..aztec_sbegin.cpy_args
@..aztec_sbegin.cpy_done:
    sub al, al
    stosb
    mov ds, bp
    inc di
    and di, strict word 0xfffe
    mov word [aztec_MEMRY], di
    mov word [_mbot], di
    mov word [_sbot], __zdseg_end
    cmp word [_STKLOW], byte 0
    jne short @..aztec_sbegin.nostk
    mov word [_sbot], di
@..aztec_sbegin.nostk:
    mov ax, word [_sbot]
    add ax, word [_STKRED]
    mov word [_sbot], ax
    mov word [_dsval], ds
    mov word [_csval], cs
    call aztec_fltinit
    jb short @..aztec_sbegin.no_8087
    call aztec_Croot
    jmp short @..aztec_sbegin.exits
@..aztec_sbegin.no_8087:
    mov ah, 9
    mov dx, bad8087
    int 0x21 ; DOS string output
    mov al, 0xfd
    jmp short @..aztec_sbegin.exits
aztec_impl_exit:
    pop ax
    pop ax
@..aztec_sbegin.exits:
    mov ah, 0x4c
    int 0x21 ; DOS exit with return code
@..aztec_sbegin.tail1:
    jmp far [cs:aztec_sbegin_exitad - IMAGE_BASE]
@..aztec_sbegin.retip:
    db 0x00, 0x00
@..aztec_sbegin.retcs:
    db 0x00, 0x00
    pop word [cs:@..aztec_sbegin.retip - IMAGE_BASE]
    pop word [cs:@..aztec_sbegin.retcs - IMAGE_BASE]
    pop ds
    call @..aztec_sbegin.l1
    jmp far [cs:@..aztec_sbegin.retip - IMAGE_BASE]
@..aztec_sbegin.l1:
    push di
    push si
    retf
