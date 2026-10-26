; auto-generated
aztec_format_conversions:
    db 0x4c
aztec_format_conversions_1:

    db 'lhFNoxXudiscpneEfgG%'

aztec_format.conv_routines:
    dw aztec_format.ldblopt - IMAGE_BASE
    dw aztec_format.longopt - IMAGE_BASE
    dw aztec_format.shortopt - IMAGE_BASE
    dw aztec_format.FARopt - IMAGE_BASE
    dw aztec_format.shortopt - IMAGE_BASE
    dw aztec_format.octal - IMAGE_BASE
    dw aztec_format.hex - IMAGE_BASE
    dw aztec_format.upperhex - IMAGE_BASE
    dw aztec_format.unsigned - IMAGE_BASE
    dw aztec_format.decimal - IMAGE_BASE
    dw aztec_format.decimal - IMAGE_BASE
    dw aztec_format.fprec_ok - IMAGE_BASE
    dw aztec_format.char - IMAGE_BASE
    dw aztec_format.pointer - IMAGE_BASE
    dw aztec_format.numchar - IMAGE_BASE
    dw aztec_format.fltformat - IMAGE_BASE
    dw aztec_format.cap_fltformat - IMAGE_BASE
    dw aztec_format.fltformat - IMAGE_BASE
    dw aztec_format.fltformat - IMAGE_BASE
    dw aztec_format.cap_fltformat - IMAGE_BASE
    dw aztec_format.default - IMAGE_BASE
aztec_format_digits:

    db '0123456789abcdef'

aztec_format_nofltmsg:
    db ' -lm first', 0
aztec_format:
    push bp
    mov bp, sp
    sub sp, strict word 0x154
    push di
    push si
    cld
    mov si, word [bp + 6]
    mov word [bp - 2], 0
.main_loop:
    mov byte [bp - 0xb], 0
    lodsb
    cmp al, 0x25
    je short .ispercent
.default:
    test al, al
    je short .finishup
    call .emitchar
    jmp short .main_loop
.finishup:
    mov ax, word [bp - 2]
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
.ispercent:
    mov byte [bp - 0xc], 0x20
    mov byte [bp - 0xe], 0
    mov byte [bp - 0xd], 0
    mov word [bp - 6], 0xffff
.next_flag:
    lodsb
    cmp al, 0x2d
    jne short .not_minus
    or byte [bp - 0xb], 8
    jmp short .next_flag
.not_minus:
    cmp al, 0x2b
    jne short .not_plus
    mov byte [bp - 0xe], 0x2b
    jmp short .next_flag
.not_plus:
    cmp al, 0x20
    jne short .not_space
    cmp byte [bp - 0xe], 0
    jne short .next_flag
    mov byte [bp - 0xe], 0x20
    jmp short .next_flag
.not_space:
    cmp al, 0x23
    jne short .not_alter
    or byte [bp - 0xb], 0x10
    jmp short .next_flag
.not_alter:
    cmp al, 0x30
    jne short .not_zero
    mov byte [bp - 0xc], 0x30
    lodsb
.not_zero:
    call .do_width
    test dx, dx
    jns short .pos_width
    neg dx
    or byte [bp - 0xb], 8
.pos_width:
    mov word [bp - 4], dx
    cmp al, 0x2e
    jne short .no_precision
    lodsb
    call .do_width
    mov word [bp - 6], dx
.no_precision:
    mov di, cs
    mov es, di
.convert_again:
    mov di, aztec_format_conversions - IMAGE_BASE
    mov cx, 0x15
    repne scasb
    sub di, aztec_format_conversions + 0x1 - IMAGE_BASE
    shl di, 1
    jmp [cs:di + .conv_routines - IMAGE_BASE]
.ldblopt:
    or byte [bp - 0xb], 1
    lodsb
    jmp short .convert_again
.longopt:
    or byte [bp - 0xb], 2
.shortopt:
    lodsb
    jmp short .convert_again
.FARopt:
    or byte [bp - 0xb], 4
    lodsb
    jmp short .convert_again
.octal:
    mov cx, 8
    jmp short .intconv
.upperhex:
    or byte [bp - 0xb], 0x20
.hex:
    mov cx, 0x10
    jmp short .intconv
.unsigned:
    mov cx, 0xa
    jmp short .intconv
.decimal:
    mov cx, 0xff0a
.intconv:
    push ds
    pop es
    mov di, word [bp + 8]
    mov ax, word [es:di]
    add di, byte 2
    test byte [bp - 0xb], 2
    je short .shortload
    mov dx, word [es:di]
    add di, byte 2
    jmp short .signcheck
.shortload:
    sub dx, dx
    test ch, ch
    je short .nosign
    cwd
.signcheck:
    test ch, ch
    je short .nosign
    mov ch, byte [bp - 0xe]
    mov byte [bp - 0xd], ch
    test dx, dx
    jns short .nosign
    mov byte [bp - 0xd], 0x2d
    neg dx
    neg ax
    sbb dx, byte 0
.nosign:
    mov word [bp + 8], di
    cmp word [bp - 6], byte 0
    jge short .prec_ok
    mov word [bp - 6], 1
.prec_ok:
    mov ch, 0
    mov di, ss
    mov es, di
    lea di, word [bp - 0x140]
.digit_loop:
    test dx, dx
    jne short .forward15
    test ax, ax
    je short .digits_done
.forward15:
    sub bx, bx
    cmp cx, dx
    ja short .veryeasy
    push ax
    mov ax, dx
    sub dx, dx
    div cx
    mov bx, ax
    pop ax
    div cx
    jmp short .div_done
.veryeasy:
    div cx
.div_done:
    xchg bx, dx
    mov bl, byte [cs:bx + aztec_format_digits - IMAGE_BASE]
    dec di
    mov byte [es:di], bl
    jmp short .digit_loop
.digits_done:
    test byte [bp - 0xb], 0x10
    je short .normalform
    cmp cl, 0xa
    je short .normalform
    cmp cl, 0x10
    jne short .nothex
    mov byte [bp - 0xd], 0x78
    jmp short .normalform
.nothex:
    dec di
    mov byte [es:di], 0x30
.normalform:
    lea cx, word [bp - 0x140]
    sub cx, di
    mov ax, word [bp - 6]
    sub ax, cx
    mov word [bp - 6], ax
    jle short .output_string
    sub word [bp - 4], ax
.output_string:
    mov word [bp - 8], cx
    cmp byte [bp - 0xd], 0
    je short .width_ok
    cmp byte [bp - 0xd], 0x78
    jne short .nothex_prefix
    dec word [bp - 4]
.nothex_prefix:
    dec word [bp - 4]
.width_ok:
    sub word [bp - 4], cx
    jle short .left_justify
    test byte [bp - 0xb], 8
    jne short .left_justify
    cmp byte [bp - 0xc], 0x30
    jne short .wpad_loop
    call .emitsign
.wpad_loop:
    mov al, byte [bp - 0xc]
    call .emitchar
    dec word [bp - 4]
    jg short .wpad_loop
.left_justify:
    call .emitsign
.zpad_loop:
    dec word [bp - 6]
    js short .outchars
    mov al, 0x30
    call .emitchar
    jmp short .zpad_loop
.outchars:
    dec word [bp - 8]
    js short .trail_pad
    mov al, byte [es:di]
    inc di
    call .emitchar
    jmp short .outchars
.trail_pad:
    dec word [bp - 4]
    js short .outdone
    mov al, 0x20
    call .emitchar
    jmp short .trail_pad
.outdone:
    jmp near .main_loop
.cap_fltformat:
    or byte [bp - 0xb], 0x20
    add al, 0x20
.fltformat:
    add word [bp + 8], byte 8
    mov ax, cs
    mov es, ax
    mov di, aztec_format_nofltmsg - IMAGE_BASE
    sub word [bp - 4], byte 0xa
    jmp short .outchars
.fprec_ok:
    call .get_pointer
    push di
    mov al, 0
    mov cx, 0xffff
    repne scasb
    not cx
    dec cx
    cmp cx, word [bp - 6]
    jbe short .strlen_ok
    mov cx, word [bp - 6]
.strlen_ok:
    pop di
    mov word [bp - 6], 0
    jmp near .output_string
.char:
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
    jmp near .output_string
.pointer:
    jmp near .main_loop
.numchar:
    call .get_pointer
    mov ax, word [bp - 2]
    mov word [es:di], ax
    test byte [bp - 0xb], 2
    je short .nc_done
    mov word [es:di + 2], 0
.nc_done:
    jmp near .main_loop
.emitsign:
    mov al, byte [bp - 0xd]
    test al, al
    je short .emitreturn
    cmp al, 0x78
    jne short aztec_format.emitsign.forward1
    mov al, 0x30
    call .emitchar
    mov al, 0x78
aztec_format.emitsign.forward1:
    mov byte [bp - 0xd], 0
aztec_format.emitchar:
    inc word [bp - 2]
    test byte [bp - 0xb], 0x20
    je short .forward1
    cmp al, 0x61
    jb short .forward1
    cmp al, 0x7a
    ja short .forward1
    sub al, 0x20
.forward1:
    push es
    sub ah, ah
    push ax
    call [bp + 4]
    pop ax
    pop es
aztec_format.emitreturn:
    ret
aztec_format.get_pointer:
    push ds
    pop es
    mov di, word [bp + 8]
    test byte [bp - 0xb], 4
    jne short .forward1
    mov di, word [di]
    add word [bp + 8], byte 2
    ret
.forward1:
    les di, word [es:di]
    add word [bp + 8], byte 4
    ret
aztec_format.do_width:
    cmp al, 0x2a
    jne short .forward1
    push ds
    pop es
    mov di, word [bp + 8]
    mov dx, word [es:di]
    add di, byte 2
    mov word [bp + 8], di
    lodsb
    ret
.forward1:
    sub dx, dx
    mov ah, 0
.back1:
    cmp al, 0x30
    jb short .return1
    cmp al, 0x39
    ja short .return1
    sub al, 0x30
    shl dx, 1
    mov cx, dx
    shl dx, 1
    shl dx, 1
    add dx, cx
    add dx, ax
    lodsb
    jmp short .back1
.return1:
    ret
