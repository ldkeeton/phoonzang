; init.asm — transient initialization (freed after TSR)

msg_ok: db "GDBSRV loaded", 0x0D, 0x0A, "$"
msg_al: db "GDBSRV already installed", 0x0D, 0x0A, "$"

init:
    ; check already installed
    mov ax, 0x3503
    int 0x21
    cmp bx, int3
    jne .go
    mov ah, 9
    mov dx, msg_al
    int 0x21
    ret
.go:
    ; save original interrupt vectors
    mov ax, 0x3503
    int 0x21
    mov [ov3], bx
    mov [ov3+2], es
    mov ax, 0x3501
    int 0x21
    mov [ov1], bx
    mov [ov1+2], es
    mov ax, 0x352F
    int 0x21
    mov [ov2f], bx
    mov [ov2f+2], es
    mov ax, 0x350C
    int 0x21
    mov [ov4], bx
    mov [ov4+2], es
    ; install our vectors
    push ds
    mov ax, cs
    mov ds, ax
    mov dx, int3
    mov ax, 0x2503
    int 0x21
    mov dx, int1
    mov ax, 0x2501
    int 0x21
    mov dx, int2f
    mov ax, 0x252F
    int 0x21
    mov dx, int4
    mov ax, 0x250C
    int 0x21
    pop ds

    ; Unmask COM1's IRQ4, preserving the prior PIC mask for detach.
    in al, 0x21
    mov [cs:pic_mask], al
    and al, 0xEF
    out 0x21, al

    call ser_init

    mov ah, 9
    mov dx, msg_ok
    int 0x21

    call ser_irq_enable

    ; TSR: keep from PSP to resident_end in paragraphs
    mov dx, resident_end
    add dx, 15
    shr dx, 4
    mov ax, 0x3100
    int 0x21
