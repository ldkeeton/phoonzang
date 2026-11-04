; auto-generated
bios_restore_text_rect:
    push bp                          ; 0x27a9
    mov bp, sp                       ; 0x27aa
    sub sp, byte 2                   ; 0x27ac
    push di                          ; 0x27af
    push si                          ; 0x27b0
    mov bx, word [bp + 4]            ; 0x27b1
    mov dx, word [bx]                ; 0x27b4
    push dx                          ; 0x27b6
    mov word [bp + 4], dx            ; 0x27b7
    add bx, byte 2                   ; 0x27ba
    mov cx, word [bx]                ; 0x27bd
    mov word [bp - 2], cx            ; 0x27bf
    add bx, byte 2                   ; 0x27c2
    mov cx, word [bx]                ; 0x27c5
    add bx, byte 2                   ; 0x27c7
    push cx                          ; 0x27ca
.back1:
    mov si, cx                       ; 0x27cb
    mov di, bx                       ; 0x27cd
    mov dx, word [bp + 4]            ; 0x27cf
    inc word [bp + 4]                ; 0x27d2
    xor bx, bx                       ; 0x27d5
    mov ah, 2                        ; 0x27d7
    int 0x10 ; BIOS video: set cursor position
    mov bx, di                       ; 0x27db
    mov ax, word [bx]                ; 0x27dd
    mov bl, ah                       ; 0x27df
    mov bh, 0                        ; 0x27e1
    mov cx, 1                        ; 0x27e3
    mov ah, 9                        ; 0x27e6
    int 0x10 ; BIOS video: write char/attribute
    mov bx, di                       ; 0x27ea
    add bx, byte 2                   ; 0x27ec
    mov cx, si                       ; 0x27ef
    loop .back1                      ; 0x27f1
    pop cx                           ; 0x27f3
    pop dx                           ; 0x27f4
    inc dh                           ; 0x27f5
    dec word [bp - 2]                ; 0x27f7
    je short .forward1               ; 0x27fa
    push dx                          ; 0x27fc
    push cx                          ; 0x27fd
    jmp short .back1                 ; 0x27fe
.forward1:
    pop si                           ; 0x2800
    pop di                           ; 0x2801
    mov sp, bp                       ; 0x2802
    pop bp                           ; 0x2804
    ret                              ; 0x2805
