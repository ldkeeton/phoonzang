; auto-generated
aztec_utime:
    push bp                          ; 0x2bfe
    mov bp, sp                       ; 0x2bff
    push di                          ; 0x2c01
    push si                          ; 0x2c02
    push word [bp + 0x8]             ; 0x2c03
    call aztec_fclose                ; 0x2c06
    pop cx                           ; 0x2c09
    mov si, dseg_231c                ; 0x2c0a
@..aztec_utime.l1:
    cmp byte [si], 0                 ; 0x2c0d
    jne short @..aztec_utime.l3      ; 0x2c10
    mov word [dseg_24d6], 1          ; 0x2c12
    mov ax, 0                        ; 0x2c18
@..aztec_utime.l2:
    pop si                           ; 0x2c1b
    pop di                           ; 0x2c1c
    mov sp, bp                       ; 0x2c1d
    pop bp                           ; 0x2c1f
    ret                              ; 0x2c20
@..aztec_utime.l3:
    push word [bp + 0x6]             ; 0x2c21
    push si                          ; 0x2c24
    call aztec_strcmp                ; 0x2c25
    add sp, byte 4                   ; 0x2c28
    test ax, ax                      ; 0x2c2b
    je short @..aztec_utime.l4       ; 0x2c2d
    add si, byte 5                   ; 0x2c2f
    jmp short @..aztec_utime.l1      ; 0x2c32
@..aztec_utime.l4:
    push word [si + 0x3]             ; 0x2c34
    push word [bp + 0x4]             ; 0x2c37
    call aztec_open                  ; 0x2c3a
    add sp, byte 4                   ; 0x2c3d
    mov di, ax                       ; 0x2c40
    mov ax, di                       ; 0x2c42
    cmp ax, strict word 0xffff       ; 0x2c44
    jne short @..aztec_utime.l5      ; 0x2c47
    mov ax, 0                        ; 0x2c49
    jmp short @..aztec_utime.l2      ; 0x2c4c
@..aztec_utime.l5:
    mov ax, di                       ; 0x2c4e
    mov bx, word [bp + 0x8]          ; 0x2c50
    mov byte [bx + 0x7], al          ; 0x2c53
    mov bx, word [bp + 0x8]          ; 0x2c56
    mov byte [bx + 0x6], 1           ; 0x2c59
    mov ax, word [bp + 0x8]          ; 0x2c5d
    jmp short @..aztec_utime.l2      ; 0x2c60
loc_2c62:
    push bp                          ; 0x2c62
    mov bp, sp                       ; 0x2c63
    lea ax, word [bp + 0x6]          ; 0x2c65
    push ax                          ; 0x2c68
    push word [bp + 0x4]             ; 0x2c69
    mov ax, 0x2a7a                   ; 0x2c6c
    push ax                          ; 0x2c6f
    call sprintf                     ; 0x2c70
    add sp, byte 6                   ; 0x2c73
    mov sp, bp                       ; 0x2c76
    pop bp                           ; 0x2c78
    ret                              ; 0x2c79
loc_2c7a:
    push bp                          ; 0x2c7a
    mov bp, sp                       ; 0x2c7b
    mov ax, 0x2357                   ; 0x2c7d
    push ax                          ; 0x2c80
    push word [bp + 0x4]             ; 0x2c81
    call aztec_fputs                 ; 0x2c84
    add sp, byte 4                   ; 0x2c87
    mov sp, bp                       ; 0x2c8a
    pop bp                           ; 0x2c8c
    ret                              ; 0x2c8d
