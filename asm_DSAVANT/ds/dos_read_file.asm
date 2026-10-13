; auto-generated
dos_read_file:
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
    mov ax, word [bp + 0x6]          ; 0x399d
    mov bx, 0x364a                   ; 0x39a0
    shl ax, 1                        ; 0x39a3
    add bx, ax                       ; 0x39a5
    mov ax, word [bx]                ; 0x39a7
    mov ds, ax                       ; 0x39a9
    xor bx, bx                       ; 0x39ab
    xor ah, ah                       ; 0x39ad
    mov al, byte [bp + 0x8]          ; 0x39af
    mov cx, word [bx + 0xa]          ; 0x39b2
    mul cx                           ; 0x39b5
    mov cx, dx                       ; 0x39b7
    mov dx, ax                       ; 0x39b9
    mov ah, 0x42                     ; 0x39bb
    mov al, 0                        ; 0x39bd
    mov bx, word [bp + 0x4]          ; 0x39bf
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
    add ax, 0x110                    ; 0x39dd
    mov dx, ax                       ; 0x39e0
    mov cx, word [bx + 0xa]          ; 0x39e2
    mov bx, word [bp + 0x4]          ; 0x39e5
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
ds_loc_39f6:
    push bp                          ; 0x39f6
    mov bp, sp                       ; 0x39f7
    cld                              ; 0x39f9
    sub sp, byte 8                   ; 0x39fa
    push si                          ; 0x39fd
    push di                          ; 0x39fe
    push ds                          ; 0x39ff
    push es                          ; 0x3a00
    mov ax, ds                       ; 0x3a01
    mov es, ax                       ; 0x3a03
    mov ax, cs                       ; 0x3a05
    mov ds, ax                       ; 0x3a07
    mov ax, word [bp + 0x4]          ; 0x3a09
    mov bx, 0x364a                   ; 0x3a0c
    shl ax, 1                        ; 0x3a0f
    add bx, ax                       ; 0x3a11
    mov ax, word [bx]                ; 0x3a13
    mov ds, ax                       ; 0x3a15
    xor bx, bx                       ; 0x3a17
    mov di, word [bp + 0x8]          ; 0x3a19
    xor ax, ax                       ; 0x3a1c
    mov al, byte [bx]                ; 0x3a1e
    mov word [es:di], ax             ; 0x3a20
    mov di, word [bp + 0xa]          ; 0x3a23
    mov al, byte [bx + 0x1]          ; 0x3a26
    mov word [es:di], ax             ; 0x3a29
    xor ah, ah                       ; 0x3a2c
    mov al, byte [bp + 0x6]          ; 0x3a2e
    shl al, 1                        ; 0x3a31
    add bx, byte 0x10                ; 0x3a33
    add bx, ax                       ; 0x3a36
    xor ah, ah                       ; 0x3a38
    mov al, byte [bx]                ; 0x3a3a
    xor bx, bx                       ; 0x3a3c
    mov cx, word [bx + 0xa]          ; 0x3a3e
    mul cx                           ; 0x3a41
    add ax, 0x110                    ; 0x3a43
    mov dx, ds                       ; 0x3a46
    pop es                           ; 0x3a48
    pop ds                           ; 0x3a49
    pop di                           ; 0x3a4a
    pop si                           ; 0x3a4b
    mov sp, bp                       ; 0x3a4c
    pop bp                           ; 0x3a4e
    ret                              ; 0x3a4f
ds_loc_3a50:
    push bp                          ; 0x3a50
    mov bp, sp                       ; 0x3a51
    cld                              ; 0x3a53
    call far [cs:cseg_2fbb - IMAGE_BASE] ; 0x3a54
    mov sp, bp                       ; 0x3a59
    pop bp                           ; 0x3a5b
    ret                              ; 0x3a5c
