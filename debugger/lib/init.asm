; init.asm — transient initialization (freed after TSR)

msg_ok: db "GDBSRV loaded — Ctrl+F12 to break", 0x0D, 0x0A, "$"
msg_al: db "GDBSRV already installed", 0x0D, 0x0A, "$"

init:
    ; command line: byte 80h = length, 81h+ = ascii hex scancode
    mov si, 0x80
    lodsb
    cmp al, 0
    je .noarg
    xor cx, cx
    mov cl, al
.sk:lodsb
    cmp al, ' '
    jne .gk
    loop .sk
    jmp .noarg
.gk:dec si
    xor dx, dx
.pk:lodsb
    call gnib
    shl dx, 4
    or dl, al
    loop .pk
    mov [hkey], dl
.noarg:
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
    mov ax, 0x3508
    int 0x21
    mov [ov8], bx
    mov [ov8+2], es
    mov ax, 0x3509
    int 0x21
    mov [ov9], bx
    mov [ov9+2], es
    mov ax, 0x352F
    int 0x21
    mov [ov2f], bx
    mov [ov2f+2], es
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
    mov dx, int8
    mov ax, 0x2508
    int 0x21
    mov dx, int9
    mov ax, 0x2509
    int 0x21
    mov dx, int2f
    mov ax, 0x252F
    int 0x21
    pop ds

    call ser_init

    mov ah, 9
    mov dx, msg_ok
    int 0x21

    ; TSR: keep from PSP to resident_end in paragraphs
    mov dx, resident_end
    add dx, 15
    shr dx, 4
    mov ax, 0x3100
    int 0x21
