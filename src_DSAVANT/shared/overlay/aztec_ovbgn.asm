; auto-generated
aztec_ovbgn:
    pop word [save_ret]
    pop cx
    mov word [save_sp], sp
    mov word [save_bp], bp
    mov word [save_si], si
    mov word [save_di], di
    cld
    mov di, _Uorg
    mov cx, _Uend
    sub cx, di
    shr cx, 1
    je short .forward1
    sub ax, ax
    rep stosw
.forward1:
    call ovmain
    mov bp, word [save_bp]
    mov sp, word [save_sp]
    mov si, word [save_si]
    mov di, word [save_di]
    push cx
    jmp [save_ret]
