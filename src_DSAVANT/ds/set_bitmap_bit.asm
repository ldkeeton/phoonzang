; auto-generated
set_bitmap_bit:
    push bp                          ; 0x3e88
    mov bp, sp                       ; 0x3e89
    cld                              ; 0x3e8b
    push es                          ; 0x3e8c
    push si                          ; 0x3e8d
    mov ax, ds                       ; 0x3e8e
    mov es, ax                       ; 0x3e90
    mov si, word [bp + 0x4]          ; 0x3e92
    mov bx, word [bp + 0x6]          ; 0x3e95
    mov dx, bx                       ; 0x3e98
    mov cl, 3                        ; 0x3e9a
    shr bx, cl                       ; 0x3e9c
    mov cx, 7                        ; 0x3e9e
    and cx, dx                       ; 0x3ea1
    mov al, 1                        ; 0x3ea3
    shl al, cl                       ; 0x3ea5
    mov ah, al                       ; 0x3ea7
    not ah                           ; 0x3ea9
    and byte [bx + si], ah           ; 0x3eab
    cmp word [bp + 0x8], byte 0      ; 0x3ead
    je short @..set_bitmap_bit.l1    ; 0x3eb1
    or byte [bx + si], al            ; 0x3eb3
@..set_bitmap_bit.l1:
    pop si                           ; 0x3eb5
    pop es                           ; 0x3eb6
    mov sp, bp                       ; 0x3eb7
    pop bp                           ; 0x3eb9
    ret                              ; 0x3eba
