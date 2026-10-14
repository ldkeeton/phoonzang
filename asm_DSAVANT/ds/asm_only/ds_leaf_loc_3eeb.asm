; auto-generated
; asm only
ds_leaf_loc_3eeb:
    push bp                          ; 0x3eeb
    mov bp, sp                       ; 0x3eec
    cld                              ; 0x3eee
    sub sp, byte 2                   ; 0x3eef
    push ds                          ; 0x3ef2
    push si                          ; 0x3ef3
    push es                          ; 0x3ef4
    mov ax, ds                       ; 0x3ef5
    mov es, ax                       ; 0x3ef7
    mov ax, 0xffff                   ; 0x3ef9
    mov cx, word [bp + 0x8]          ; 0x3efc
    mov ch, cl                       ; 0x3eff
    mov cl, 0x10                     ; 0x3f01
    sub cl, ch                       ; 0x3f03
    shr ax, cl                       ; 0x3f05
    mov word [bp - 0x0002], ax       ; 0x3f07
    and word [bp + 0xa], ax          ; 0x3f0a
    mov si, word [bp + 0x4]          ; 0x3f0d
    mov bx, word [bp + 0x6]          ; 0x3f10
    mov ax, word [bp + 0x8]          ; 0x3f13
    mul bx                           ; 0x3f16
    mov dx, ax                       ; 0x3f18
    mov bx, ax                       ; 0x3f1a
    mov cl, 3                        ; 0x3f1c
    shr bx, cl                       ; 0x3f1e
    mov cx, 7                        ; 0x3f20
    and cx, dx                       ; 0x3f23
    mov ax, word [bp - 0x0002]       ; 0x3f25
    shl ax, cl                       ; 0x3f28
    shl word [bp + 0xa], cl          ; 0x3f2a
    mov dx, word [bp + 0xa]          ; 0x3f2d
    not ax                           ; 0x3f30
    and word [bx + si], ax           ; 0x3f32
    or word [bx + si], dx            ; 0x3f34
    pop es                           ; 0x3f36
    pop si                           ; 0x3f37
    pop ds                           ; 0x3f38
    mov sp, bp                       ; 0x3f39
    pop bp                           ; 0x3f3b
    ret                              ; 0x3f3c
