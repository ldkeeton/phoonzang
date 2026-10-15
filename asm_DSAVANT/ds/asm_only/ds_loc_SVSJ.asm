; auto-generated
; asm only
ds_loc_SVSJ:
    push bp                          ; 0x3ba3
    mov bp, sp                       ; 0x3ba4
    cld                              ; 0x3ba6
    push di                          ; 0x3ba7
    push si                          ; 0x3ba8
    push es                          ; 0x3ba9
    mov ax, ds                       ; 0x3baa
    mov es, ax                       ; 0x3bac
    call ds_leaf_loc_RJOL            ; 0x3bae
    mov ax, word [cs:cseg_30dc - IMAGE_BASE] ; 0x3bb1
    xor dx, dx                       ; 0x3bb5
    mov bx, 0x763d                   ; 0x3bb7
    div bx                           ; 0x3bba
    mov ax, 0x2710                   ; 0x3bbc
    mul dx                           ; 0x3bbf
    mov bx, 0x763d                   ; 0x3bc1
    div bx                           ; 0x3bc4
    and ax, 0x7fff                   ; 0x3bc6
    mov cx, ax                       ; 0x3bc9
    mov ax, word [cs:cseg_30de - IMAGE_BASE] ; 0x3bcb
    xor dx, dx                       ; 0x3bcf
    mov bx, 0x7663                   ; 0x3bd1
    div bx                           ; 0x3bd4
    mov ax, 0x2710                   ; 0x3bd6
    mul dx                           ; 0x3bd9
    mov bx, 0x7663                   ; 0x3bdb
    div bx                           ; 0x3bde
    and ax, 0x7fff                   ; 0x3be0
    add cx, ax                       ; 0x3be3
    and cx, strict word 0x7fff       ; 0x3be5
    mov ax, word [cs:cseg_30e0 - IMAGE_BASE] ; 0x3be9
    xor dx, dx                       ; 0x3bed
    mov bx, 0x7673                   ; 0x3bef
    div bx                           ; 0x3bf2
    mov ax, 0x2710                   ; 0x3bf4
    mul dx                           ; 0x3bf7
    mov bx, 0x7673                   ; 0x3bf9
    div bx                           ; 0x3bfc
    and ax, 0x7fff                   ; 0x3bfe
    add ax, cx                       ; 0x3c01
    and ax, 0x7fff                   ; 0x3c03
    pop es                           ; 0x3c06
    pop si                           ; 0x3c07
    pop di                           ; 0x3c08
    mov sp, bp                       ; 0x3c09
    pop bp                           ; 0x3c0b
    ret                              ; 0x3c0c
