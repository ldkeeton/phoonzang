; auto-generated
aztec_impl_read:
    push bp
    mov bp, sp
    mov ah, 0x3f
    mov bx, word [bp + 4]
    jmp short aztec_impl_read.loc1
aztec_impl_write:
    push bp
    mov bp, sp
    mov ah, 0x40
    mov bx, word [bp + 4]
    jmp short aztec_impl_read.loc1
aztec_read:
    push bp
    mov bp, sp
    mov ah, 0x3f
    jmp short aztec_impl_read.loc2
aztec_write:
    push bp
    mov bp, sp
    mov ah, 0x40
aztec_impl_read.loc2:
    mov bx, word [bp + 4]
    cmp byte [bx + _ioflg], 0
    je short aztec_impl_read.loc1
    pop bp
    cmp ah, 0x3f
    je short aztec_impl_read.loc3
    jmp [_ttwr]
aztec_impl_read.loc3:
    jmp [_ttrd]
aztec_impl_read.loc1:
    mov dx, word [bp + 6]
    mov cx, word [bp + 8]
    int 0x21 ; DOS function dispatcher
    jae short aztec_impl_read.loc4
    mov word [errno], ax
    mov ax, 0xffff
aztec_impl_read.loc4:
    pop bp
    ret
aztec_close:
    push bp
    mov bp, sp
    mov ah, 0x3e
    mov bx, word [bp + 4]
    int 0x21 ; DOS close file handle
    jae short .forward1
    mov word [errno], ax
    mov ax, 0xffff
    pop bp
    ret
.forward1:
    sub ax, ax
    pop bp
    ret
aztec_lseek:
    push bp
    mov bp, sp
    mov ah, 0x42
    mov al, byte [bp + 0xa]
    mov dx, word [bp + 6]
    mov cx, word [bp + 8]
    mov bx, word [bp + 4]
    int 0x21 ; DOS seek file (lseek)
    jae short .forward1
    mov word [errno], ax
    mov ax, 0xffff
    mov dx, ax
.forward1:
    pop bp
    ret
aztec_unlink:
    push bp
    mov bp, sp
    mov ah, 0x41
    mov dx, word [bp + 4]
    int 0x21 ; DOS delete file (handle)
    jae short .forward1
    mov word [errno], ax
    mov ax, 0xffff
    pop bp
    ret
.forward1:
    sub ax, ax
    pop bp
    ret
aztec_rename:
    push bp
    mov bp, sp
    push di
    mov ah, 0x56
    mov dx, word [bp + 4]
    mov di, ds
    mov es, di
    mov di, word [bp + 6]
    int 0x21 ; DOS rename file
    pop di
    jae short .forward1
    mov word [errno], ax
    mov ax, 0xffff
    pop bp
    ret
.forward1:
    sub ax, ax
    pop bp
    ret
