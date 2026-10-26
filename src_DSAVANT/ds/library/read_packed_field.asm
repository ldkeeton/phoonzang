; auto-generated
read_packed_field:
    push bp                          ; 0x3f3d
    mov bp, sp                       ; 0x3f3e
    cld                              ; 0x3f40
    push ds                          ; 0x3f41
    push di                          ; 0x3f42
    push si                          ; 0x3f43
    push es                          ; 0x3f44
    mov ax, ds                       ; 0x3f45
    mov es, ax                       ; 0x3f47
    mov ax, 0xffff                   ; 0x3f49
    mov cx, word [bp + 0x8]          ; 0x3f4c
    mov ch, cl                       ; 0x3f4f
    mov cl, 0x10                     ; 0x3f51
    sub cl, ch                       ; 0x3f53
    shr ax, cl                       ; 0x3f55
    mov di, ax                       ; 0x3f57
    mov si, word [bp + 0x4]          ; 0x3f59
    mov bx, word [bp + 0x6]          ; 0x3f5c
    mov ax, word [bp + 0x8]          ; 0x3f5f
    mul bx                           ; 0x3f62
    mov dx, ax                       ; 0x3f64
    mov bx, ax                       ; 0x3f66
    mov cl, 3                        ; 0x3f68
    shr bx, cl                       ; 0x3f6a
    mov cx, 7                        ; 0x3f6c
    and cx, dx                       ; 0x3f6f
    mov ax, di                       ; 0x3f71
    mov dx, word [bx + si]           ; 0x3f73
    shr dx, cl                       ; 0x3f75
    and ax, dx                       ; 0x3f77
    pop es                           ; 0x3f79
    pop si                           ; 0x3f7a
    pop di                           ; 0x3f7b
    pop ds                           ; 0x3f7c
    mov sp, bp                       ; 0x3f7d
    pop bp                           ; 0x3f7f
    ret                              ; 0x3f80
