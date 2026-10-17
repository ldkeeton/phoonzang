; auto-generated
; asm only
aztec_sbrk:
    push bp ; sbrk(size): return address of current top & bump by size bytes
    mov bp, sp
    push di
    mov ax, word [bp + 0x4]
    mov di, word [aztec_MEMRY]
    test ax, ax
    jge short @..aztec_sbrk.addok
    sub di, ax
    jb short @..aztec_sbrk.invalid
    jmp short @..aztec_sbrk.dobrk
@..aztec_sbrk.addok:
    add ax, di
    jb short @..aztec_sbrk.invalid
@..aztec_sbrk.dobrk:
    push ax
    call aztec_brk
    pop cx
    test ax, ax
    jne short @..aztec_sbrk.brk_error
    mov ax, di ; return original value of the break
@..aztec_sbrk.brk_error:
    pop di
    test ax, ax ; set flags for C
    pop bp
    ret
@..aztec_sbrk.invalid:
    mov word [errno], 0xfff8
    mov ax, 0xffff
    jmp short @..aztec_sbrk.brk_error
