; auto-generated
aztec_format_conversions:
    db 0x4c
aztec_format_conversions_1:

    db 'lhFNoxXudiscpneEfgG%'

@..aztec_format.conv_routines:
    dw @..aztec_format.ldblopt - IMAGE_BASE
    dw @..aztec_format.longopt - IMAGE_BASE
    dw @..aztec_format.shortopt - IMAGE_BASE
    dw @..aztec_format.FARopt - IMAGE_BASE
    dw @..aztec_format.shortopt - IMAGE_BASE
    dw @..aztec_format.octal - IMAGE_BASE
    dw @..aztec_format.hex - IMAGE_BASE
    dw @..aztec_format.upperhex - IMAGE_BASE
    dw @..aztec_format.unsigned - IMAGE_BASE
    dw @..aztec_format.decimal - IMAGE_BASE
    dw @..aztec_format.decimal - IMAGE_BASE
    dw @..aztec_format.fprec_ok - IMAGE_BASE
    dw @..aztec_format.char - IMAGE_BASE
    dw @..aztec_format.pointer - IMAGE_BASE
    dw @..aztec_format.numchar - IMAGE_BASE
    dw @..aztec_format.fltformat - IMAGE_BASE
    dw @..aztec_format.cap_fltformat - IMAGE_BASE
    dw @..aztec_format.fltformat - IMAGE_BASE
    dw @..aztec_format.fltformat - IMAGE_BASE
    dw @..aztec_format.cap_fltformat - IMAGE_BASE
    dw @..aztec_format.default - IMAGE_BASE
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
    mov si, word [bp + 0x6]
    mov word [bp - 0x0002], 0
@..aztec_format.main_loop:
    mov byte [bp - 0x000b], 0
    lodsb
    cmp al, 0x25
    je short @..aztec_format.ispercent
@..aztec_format.default:
    test al, al
    je short @..aztec_format.finishup
    call @..aztec_format.emitchar
    jmp short @..aztec_format.main_loop
@..aztec_format.finishup:
    mov ax, word [bp - 0x0002]
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
@..aztec_format.ispercent:
    mov byte [bp - 0x000c], 0x20
    mov byte [bp - 0x000e], 0
    mov byte [bp - 0x000d], 0
    mov word [bp - 0x0006], 0xffff
@..aztec_format.next_flag:
    lodsb
    cmp al, 0x2d
    jne short @..aztec_format.not_minus
    or byte [bp - 0x000b], 8
    jmp short @..aztec_format.next_flag
@..aztec_format.not_minus:
    cmp al, 0x2b
    jne short @..aztec_format.not_plus
    mov byte [bp - 0x000e], 0x2b
    jmp short @..aztec_format.next_flag
@..aztec_format.not_plus:
    cmp al, 0x20
    jne short @..aztec_format.not_space
    cmp byte [bp - 0x000e], 0
    jne short @..aztec_format.next_flag
    mov byte [bp - 0x000e], 0x20
    jmp short @..aztec_format.next_flag
@..aztec_format.not_space:
    cmp al, 0x23
    jne short @..aztec_format.not_alter
    or byte [bp - 0x000b], 0x10
    jmp short @..aztec_format.next_flag
@..aztec_format.not_alter:
    cmp al, 0x30
    jne short @..aztec_format.not_zero
    mov byte [bp - 0x000c], 0x30
    lodsb
@..aztec_format.not_zero:
    call @..aztec_format.do_width
    test dx, dx
    jns short @..aztec_format.pos_width
    neg dx
    or byte [bp - 0x000b], 8
@..aztec_format.pos_width:
    mov word [bp - 0x0004], dx
    cmp al, 0x2e
    jne short @..aztec_format.no_precision
    lodsb
    call @..aztec_format.do_width
    mov word [bp - 0x0006], dx
@..aztec_format.no_precision:
    mov di, cs
    mov es, di
@..aztec_format.convert_again:
    mov di, aztec_format_conversions - IMAGE_BASE
    mov cx, 0x15
    repne scasb
    sub di, strict word aztec_format_conversions + 0x1 - IMAGE_BASE
    shl di, 1
    jmp [cs:di + @..aztec_format.conv_routines - IMAGE_BASE]
@..aztec_format.ldblopt:
    or byte [bp - 0x000b], 1
    lodsb
    jmp short @..aztec_format.convert_again
@..aztec_format.longopt:
    or byte [bp - 0x000b], 2
@..aztec_format.shortopt:
    lodsb
    jmp short @..aztec_format.convert_again
@..aztec_format.FARopt:
    or byte [bp - 0x000b], 4
    lodsb
    jmp short @..aztec_format.convert_again
@..aztec_format.octal:
    mov cx, 8
    jmp short @..aztec_format.intconv
@..aztec_format.upperhex:
    or byte [bp - 0x000b], 0x20
@..aztec_format.hex:
    mov cx, 0x10
    jmp short @..aztec_format.intconv
@..aztec_format.unsigned:
    mov cx, 0xa
    jmp short @..aztec_format.intconv
@..aztec_format.decimal:
    mov cx, 0xff0a
@..aztec_format.intconv:
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov ax, word [es:di]
    add di, byte 2
    test byte [bp - 0x000b], 2
    je short @..aztec_format.shortload
    mov dx, word [es:di]
    add di, byte 2
    jmp short @..aztec_format.signcheck
@..aztec_format.shortload:
    sub dx, dx
    test ch, ch
    je short @..aztec_format.nosign
    cwd
@..aztec_format.signcheck:
    test ch, ch
    je short @..aztec_format.nosign
    mov ch, byte [bp - 0x000e]
    mov byte [bp - 0x000d], ch
    test dx, dx
    jns short @..aztec_format.nosign
    mov byte [bp - 0x000d], 0x2d
    neg dx
    neg ax
    sbb dx, byte 0
@..aztec_format.nosign:
    mov word [bp + 0x8], di
    cmp word [bp - 0x0006], byte 0
    jge short @..aztec_format.prec_ok
    mov word [bp - 0x0006], 1
@..aztec_format.prec_ok:
    mov ch, 0
    mov di, ss
    mov es, di
    lea di, word [bp - 0x0140]
@..aztec_format.digit_loop:
    test dx, dx
    jne short @..aztec_format.l19
    test ax, ax
    je short @..aztec_format.digits_done
@..aztec_format.l19:
    sub bx, bx
    cmp cx, dx
    ja short @..aztec_format.veryeasy
    push ax
    mov ax, dx
    sub dx, dx
    div cx
    mov bx, ax
    pop ax
    div cx
    jmp short @..aztec_format.div_done
@..aztec_format.veryeasy:
    div cx
@..aztec_format.div_done:
    xchg bx, dx
    mov bl, byte [cs:bx + aztec_format_digits - IMAGE_BASE]
    dec di
    mov byte [es:di], bl
    jmp short @..aztec_format.digit_loop
@..aztec_format.digits_done:
    test byte [bp - 0x000b], 0x10
    je short @..aztec_format.normalform
    cmp cl, 0xa
    je short @..aztec_format.normalform
    cmp cl, 0x10
    jne short @..aztec_format.nothex
    mov byte [bp - 0x000d], 0x78
    jmp short @..aztec_format.normalform
@..aztec_format.nothex:
    dec di
    mov byte [es:di], 0x30
@..aztec_format.normalform:
    lea cx, word [bp - 0x0140]
    sub cx, di
    mov ax, word [bp - 0x0006]
    sub ax, cx
    mov word [bp - 0x0006], ax
    jle short @..aztec_format.output_string
    sub word [bp - 0x0004], ax
@..aztec_format.output_string:
    mov word [bp - 0x0008], cx
    cmp byte [bp - 0x000d], 0
    je short @..aztec_format.width_ok
    cmp byte [bp - 0x000d], 0x78
    jne short @..aztec_format.nothex_prefix
    dec word [bp - 0x0004]
@..aztec_format.nothex_prefix:
    dec word [bp - 0x0004]
@..aztec_format.width_ok:
    sub word [bp - 0x0004], cx
    jle short @..aztec_format.left_justify
    test byte [bp - 0x000b], 8
    jne short @..aztec_format.left_justify
    cmp byte [bp - 0x000c], 0x30
    jne short @..aztec_format.wpad_loop
    call @..aztec_format.emitsign
@..aztec_format.wpad_loop:
    mov al, byte [bp - 0x000c]
    call @..aztec_format.emitchar
    dec word [bp - 0x0004]
    jg short @..aztec_format.wpad_loop
@..aztec_format.left_justify:
    call @..aztec_format.emitsign
@..aztec_format.zpad_loop:
    dec word [bp - 0x0006]
    js short @..aztec_format.outchars
    mov al, 0x30
    call @..aztec_format.emitchar
    jmp short @..aztec_format.zpad_loop
@..aztec_format.outchars:
    dec word [bp - 0x0008]
    js short @..aztec_format.trail_pad
    mov al, byte [es:di]
    inc di
    call @..aztec_format.emitchar
    jmp short @..aztec_format.outchars
@..aztec_format.trail_pad:
    dec word [bp - 0x0004]
    js short @..aztec_format.outdone
    mov al, 0x20
    call @..aztec_format.emitchar
    jmp short @..aztec_format.trail_pad
@..aztec_format.outdone:
    jmp near @..aztec_format.main_loop
@..aztec_format.cap_fltformat:
    or byte [bp - 0x000b], 0x20
    add al, 0x20
@..aztec_format.fltformat:
    add word [bp + 0x8], byte 8
    mov ax, cs
    mov es, ax
    mov di, aztec_format_nofltmsg - IMAGE_BASE
    sub word [bp - 0x0004], byte 0x0a
    jmp short @..aztec_format.outchars
@..aztec_format.fprec_ok:
    call @..aztec_format.get_pointer
    push di
    mov al, 0
    mov cx, 0xffff
    repne scasb
    not cx
    dec cx
    cmp cx, word [bp - 0x0006]
    jbe short @..aztec_format.strlen_ok
    mov cx, word [bp - 0x0006]
@..aztec_format.strlen_ok:
    pop di
    mov word [bp - 0x0006], 0
    jmp near @..aztec_format.output_string
@..aztec_format.char:
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov al, byte [es:di]
    add di, byte 2
    mov word [bp + 0x8], di
    mov byte [bp - 0x0154], al
    mov cx, 1
    mov ax, ss
    mov es, ax
    lea di, word [bp - 0x0154]
    mov word [bp - 0x0006], 0
    jmp near @..aztec_format.output_string
@..aztec_format.pointer:
    jmp near @..aztec_format.main_loop
@..aztec_format.numchar:
    call @..aztec_format.get_pointer
    mov ax, word [bp - 0x0002]
    mov word [es:di], ax
    test byte [bp - 0x000b], 2
    je short @..aztec_format.nc_done
    mov word [es:di + 0x2], 0
@..aztec_format.nc_done:
    jmp near @..aztec_format.main_loop
@..aztec_format.emitsign:
    mov al, byte [bp - 0x000d]
    test al, al
    je short @..aztec_format.emitreturn
    cmp al, 0x78
    jne short @..aztec_format.emitsign.l1
    mov al, 0x30
    call @..aztec_format.emitchar
    mov al, 0x78
@..aztec_format.emitsign.l1:
    mov byte [bp - 0x000d], 0
@..aztec_format.emitchar:
    inc word [bp - 0x0002]
    test byte [bp - 0x000b], 0x20
    je short @..aztec_format.emitchar.l1
    cmp al, 0x61
    jb short @..aztec_format.emitchar.l1
    cmp al, 0x7a
    ja short @..aztec_format.emitchar.l1
    sub al, 0x20
@..aztec_format.emitchar.l1:
    push es
    sub ah, ah
    push ax
    call [bp + 0x4]
    pop ax
    pop es
@..aztec_format.emitreturn:
    ret
@..aztec_format.get_pointer:
    push ds
    pop es
    mov di, word [bp + 0x8]
    test byte [bp - 0x000b], 4
    jne short @..aztec_format.get_pointer.l1
    mov di, word [di]
    add word [bp + 0x8], byte 2
    ret
@..aztec_format.get_pointer.l1:
    les di, word [es:di]
    add word [bp + 0x8], byte 4
    ret
@..aztec_format.do_width:
    cmp al, 0x2a
    jne short @..aztec_format.do_width.l1
    push ds
    pop es
    mov di, word [bp + 0x8]
    mov dx, word [es:di]
    add di, byte 2
    mov word [bp + 0x8], di
    lodsb
    ret
@..aztec_format.do_width.l1:
    sub dx, dx
    mov ah, 0
@..aztec_format.do_width.l2:
    cmp al, 0x30
    jb short @..aztec_format.do_width.l3
    cmp al, 0x39
    ja short @..aztec_format.do_width.l3
    sub al, 0x30
    shl dx, 1
    mov cx, dx
    shl dx, 1
    shl dx, 1
    add dx, cx
    add dx, ax
    lodsb
    jmp short @..aztec_format.do_width.l2
@..aztec_format.do_width.l3:
    ret
