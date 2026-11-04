; auto-generated
bios_fill_pixel_rect:
    push bp                          ; 0x26bd
    mov bp, sp                       ; 0x26be
    sub sp, byte 2                   ; 0x26c0
    push di                          ; 0x26c3
    push si                          ; 0x26c4
    mov si, word [bp + 0xa]          ; 0x26c5
    mov di, word [bp + 8]            ; 0x26c8
.back1:
    mov ax, word [bp + 6]            ; 0x26cb
    mov word [bp - 2], ax            ; 0x26ce
.back2:
    mov ah, 0xc                      ; 0x26d1
    mov al, byte [bp + 0xc]          ; 0x26d3
    xor bx, bx                       ; 0x26d6
    mov cx, word [bp - 2]            ; 0x26d8
    mov dx, word [bp + 4]            ; 0x26db
    int 0x10 ; BIOS video: write pixel
    inc word [bp - 2]                ; 0x26e0
    cmp si, word [bp - 2]            ; 0x26e3
    jae short .back2                 ; 0x26e6
    inc word [bp + 4]                ; 0x26e8
    cmp di, word [bp + 4]            ; 0x26eb
    jae short .back1                 ; 0x26ee
    pop si                           ; 0x26f0
    pop di                           ; 0x26f1
    mov sp, bp                       ; 0x26f2
    pop bp                           ; 0x26f4
    ret                              ; 0x26f5
