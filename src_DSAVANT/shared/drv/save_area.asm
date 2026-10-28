; auto-generated
save_area:
    push bp
    mov bp, sp
    sub sp, byte 0xa
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 6], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 4], bx
    mul bx
    mov word [bp - 8], ax
    mov word [bp - 0xa], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov bx, ax
    mov ah, 0x48
    int 0x21 ; DOS allocate memory
    jae short .forward1
    jmp near save_area_out_of_memory
.forward1:
    mov es, ax
    xor di, di
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 2], ax
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 4]
    stosw
    mov ax, word [bp - 6]
    stosw
    mov ax, word [bp - 8]
    stosw
    mov ax, word [bp - 0xa]
    stosw
.back1:
    mov si, word [bp - 2]
    add word [bp - 2], strict word 0x140
    mov cx, word [bp - 6]
    rep movsb
    dec word [bp - 4]
    jne short .back1
    mov dx, es
    xor ax, ax
    jmp short area_restore_and_return
save_area_out_of_memory:
    mov ax, cs
    mov ds, ax
    mov dx, save_area.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
save_area.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'SAVEAREA out of memory.', 0
    db 0x0a, 0x24

save_area_clear_result:
    xor dx, dx
    mov ax, dx
area_restore_and_return:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
