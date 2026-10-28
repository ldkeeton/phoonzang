; auto-generated
restore_area:
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    mov ds, ax
    mov si, word [bp + 0xc]
    or ax, si
    je short .forward1
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov es, ax
    lodsw
    mov word [bp - 2], ax
    add si, byte 2
    lodsw
    mov word [bp - 4], ax
    lodsw
    mov word [bp - 6], ax
    add si, byte 4
.back1:
    mov di, word [bp - 2]
    add word [bp - 2], strict word 0x140
    mov cx, word [bp - 6]
    rep movsb
    dec word [bp - 4]
    jne short .back1
    mov ax, word [bp + 0x10]
    or ax, ax
    je short .forward2
    mov ax, ds
    or ax, ax
    je short .forward2
    mov es, ax
    mov ah, 0x49
    int 0x21 ; DOS free memory
    jmp short .forward2
.forward1:
    mov ax, cs
    mov ds, ax
    mov dx, restore_area.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
restore_area.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'RESTOREAREA called with NULL pointer.', 0
    db 0x0a, 0x24

restore_area.forward2:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
