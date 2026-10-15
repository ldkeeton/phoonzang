; auto-generated
; asm only
ds_loc_IMOU:
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
