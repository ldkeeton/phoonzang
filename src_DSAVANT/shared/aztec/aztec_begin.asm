; auto-generated
__zinsn_aztec_begin:
aztec_begin:
    mov bp, __zdseg_para
    test bp, bp
    jne short .forward1
    mov bp, ds
.forward1:
    mov word [cs:aztec_begin_exitcs - IMAGE_BASE], ds
    mov bx, word [psp_top_of_memory]
    sub bx, bp
    cmp bx, strict word 0x1000
    jbe short .forward2
    lea bx, word [bp + 0x1000]
    mov ax, es
    sub bx, ax
    mov ah, 0x4a
    int 0x21 ; DOS resize memory block
    mov bx, 0x1000
.forward2:
    mov es, bp
    mov word [es:_PSP], ds
    mov cl, 4
    shl bx, cl
    cmp word [es:_STKLOW], byte 0
    je short .forward4
    mov ax, word [es:_STKRED]
    shl ax, 1
    mov bx, word [es:_STKSIZ]
    shl bx, cl
    cmp bx, ax
    ja short .forward3
    mov bx, ax
.forward3:
    add bx, strict word __zdseg_end
.forward4:
    cli
    mov ss, bp
    mov sp, bx
    sti
    test bx, bx
    jne short .forward5
    mov bx, 0xffff
.forward5:
    mov word [es:_mtop], bx
    cmp word [es:_STKLOW], byte 0
    je short .forward7
    mov si, word [es:_HEAPSIZ]
    mov ax, bx
    inc ax
    mov word [es:aztec_MEMRY], ax
    shl si, cl
    add bx, si
    jae short .forward6
    mov bx, 0xffff
.forward6:
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
    jae short .forward7
    mov al, 0xfe
    jmp near aztec_begin.loc1
.forward7:
    mov es, bp
    cld
    mov di, _Uorg
    mov cx, __zdseg_end
    sub cx, di
    inc cx
    shr cx, 1
    jcxz .forward8
    sub ax, ax
    rep stosw
.forward8:
    mov es, word [psp_env_segment]
    sub di, di
    mov cx, 0x7fff
.back1:
    mov ah, byte [es:di]
    cmp ah, 0x3d
    je short .forward10
    test ah, ah
    je short .forward9
    repne scasb
    je short .back1
.forward9:
    mov cl, byte [psp_cmd_tail_len]
    sub ch, ch
    mov si, 0x81
    mov ax, 1
    jmp short .forward11
.forward10:
    sub ax, ax
    stosb
    mov si, di
    mov di, es
    mov ds, di
.forward11:
    push ax
    mov es, bp
    mov di, word [es:aztec_MEMRY]
    push di
    jcxz .forward12
.back2:
    lodsb
    test al, al
    je short .forward12
    stosb
    loop .back2
.forward12:
    sub al, al
    stosb
    mov ds, bp
    inc di
    and di, strict word 0xfffe
    mov word [aztec_MEMRY], di
    mov word [_mbot], di
    mov word [_sbot], __zdseg_end
    cmp word [_STKLOW], byte 0
    jne short .forward13
    mov word [_sbot], di
.forward13:
    mov ax, word [_sbot]
    add ax, word [_STKRED]
    mov word [_sbot], ax
    mov word [_dsval], ds
    mov word [_csval], cs
    call aztec_fltinit
    jb short .forward14
    call aztec_Croot
    jmp short aztec_begin.loc1
.forward14:
    mov ah, 9
    mov dx, bad8087
    int 0x21 ; DOS string output
    mov al, 0xfd
    jmp short aztec_begin.loc1
