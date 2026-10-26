; auto-generated
read_font_glyph:
    push bp                          ; 0x398a
    mov bp, sp                       ; 0x398b
    cld                              ; 0x398d
    sub sp, byte 8                   ; 0x398e
    push si                          ; 0x3991
    push di                          ; 0x3992
    push ds                          ; 0x3993
    push es                          ; 0x3994
    mov ax, ds                       ; 0x3995
    mov es, ax                       ; 0x3997
    mov ax, cs                       ; 0x3999
    mov ds, ax                       ; 0x399b
    mov ax, word [bp + 6]            ; 0x399d
    mov bx, font_seg_table - IMAGE_BASE ; 0x39a0
    shl ax, 1                        ; 0x39a3
    add bx, ax                       ; 0x39a5
    mov ax, word [bx]                ; 0x39a7
    mov ds, ax                       ; 0x39a9
    xor bx, bx                       ; 0x39ab
    xor ah, ah                       ; 0x39ad
    mov al, byte [bp + 8]            ; 0x39af
    mov cx, word [bx + 0xa]          ; 0x39b2
    mul cx                           ; 0x39b5
    mov cx, dx                       ; 0x39b7
    mov dx, ax                       ; 0x39b9
    mov ah, 0x42                     ; 0x39bb
    mov al, 0                        ; 0x39bd
    mov bx, word [bp + 4]            ; 0x39bf
    int 0x21 ; DOS seek file (lseek)
    xor bx, bx                       ; 0x39c4
    xor ah, ah                       ; 0x39c6
    mov al, byte [bp + 0xa]          ; 0x39c8
    shl al, 1                        ; 0x39cb
    add bx, byte 0x10                ; 0x39cd
    add bx, ax                       ; 0x39d0
    xor ah, ah                       ; 0x39d2
    mov al, byte [bx]                ; 0x39d4
    xor bx, bx                       ; 0x39d6
    mov cx, word [bx + 0xa]          ; 0x39d8
    mul cx                           ; 0x39db
    add ax, file_param_word          ; 0x39dd
    mov dx, ax                       ; 0x39e0
    mov cx, word [bx + 0xa]          ; 0x39e2
    mov bx, word [bp + 4]            ; 0x39e5
    mov ah, 0x3f                     ; 0x39e8
    int 0x21 ; DOS read file (handle)
    xor bx, bx                       ; 0x39ec
    pop es                           ; 0x39ee
    pop ds                           ; 0x39ef
    pop di                           ; 0x39f0
    pop si                           ; 0x39f1
    mov sp, bp                       ; 0x39f2
    pop bp                           ; 0x39f4
    ret                              ; 0x39f5
