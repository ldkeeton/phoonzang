ds_dos_con_loc_3f81:
    push bp                          ; 0x3f81
    mov bp, sp                       ; 0x3f82
    cld                              ; 0x3f84
    push es                          ; 0x3f85
    push si                          ; 0x3f86
    mov ax, ds                       ; 0x3f87
    mov es, ax                       ; 0x3f89
    mov bx, word [bp + 0x4]          ; 0x3f8b
    mov cx, word [bp + 0x6]          ; 0x3f8e
    shr bx, cl                       ; 0x3f91
    mov cx, word [bp + 0x8]          ; 0x3f93
    mov ch, cl                       ; 0x3f96
    mov cl, 0x10                     ; 0x3f98
    sub cl, ch                       ; 0x3f9a
    mov ax, 0xffff                   ; 0x3f9c
    shr ax, cl                       ; 0x3f9f
    and ax, bx                       ; 0x3fa1
    pop si                           ; 0x3fa3
    pop es                           ; 0x3fa4
    mov sp, bp                       ; 0x3fa5
    pop bp                           ; 0x3fa7
    ret                              ; 0x3fa8
