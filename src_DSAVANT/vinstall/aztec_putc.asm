; auto-generated
aztec_putc:
    push bp                          ; 0x2cc1
    mov bp, sp                       ; 0x2cc2
    push si                          ; 0x2cc4
    mov si, word [bp + 6]            ; 0x2cc5
    mov ax, word [si]                ; 0x2cc8
    cmp ax, word [si + 2]            ; 0x2cca
    jb short @..aztec_putc.l2        ; 0x2ccd
    mov ax, word [bp + 4]            ; 0x2ccf
    and ax, 0xff                     ; 0x2cd2
    push ax                          ; 0x2cd5
    push si                          ; 0x2cd6
    call aztec_flsh_                 ; 0x2cd7
    add sp, byte 4                   ; 0x2cda
@..aztec_putc.l1:
    pop si                           ; 0x2cdd
    mov sp, bp                       ; 0x2cde
    pop bp                           ; 0x2ce0
    ret                              ; 0x2ce1
@..aztec_putc.l2:
    mov al, byte [bp + 4]            ; 0x2ce2
    push ax                          ; 0x2ce5
    mov ax, word [si]                ; 0x2ce6
    inc word [si]                    ; 0x2ce8
    mov bx, ax                       ; 0x2cea
    pop ax                           ; 0x2cec
    mov byte [bx], al                ; 0x2ced
    cbw                              ; 0x2cef
    and ax, 0xff                     ; 0x2cf0
    jmp short @..aztec_putc.l1       ; 0x2cf3
aztec_closall:
    push si                          ; 0x2cf5
    mov si, Cbuffs                   ; 0x2cf6
@..aztec_closall.l1:
    mov ax, si                       ; 0x2cf9
    add si, byte 0xd                 ; 0x2cfb
    push ax                          ; 0x2cfe
    call aztec_fclose                ; 0x2cff
    pop cx                           ; 0x2d02
    cmp si, Cbuffs + 0x104           ; 0x2d03
    jb short @..aztec_closall.l1     ; 0x2d07
    pop si                           ; 0x2d09
    ret                              ; 0x2d0a
aztec_fclose:
    push bp                          ; 0x2d0b
    mov bp, sp                       ; 0x2d0c
    push di                          ; 0x2d0e
    push si                          ; 0x2d0f
    mov si, word [bp + 4]            ; 0x2d10
    mov di, 0                        ; 0x2d13
    test si, si                      ; 0x2d16
    jne short @..aztec_fclose.l2     ; 0x2d18
    mov ax, 0xffff                   ; 0x2d1a
@..aztec_fclose.l1:
    pop si                           ; 0x2d1d
    pop di                           ; 0x2d1e
    mov sp, bp                       ; 0x2d1f
    pop bp                           ; 0x2d21
    ret                              ; 0x2d22
@..aztec_fclose.l2:
    cmp byte [si + 6], 0             ; 0x2d23
    je short @..aztec_fclose.l5      ; 0x2d27
    mov al, byte [si + 6]            ; 0x2d29
    cbw                              ; 0x2d2c
    test ax, 4                       ; 0x2d2d
    je short @..aztec_fclose.l3      ; 0x2d30
    mov ax, 0xffff                   ; 0x2d32
    push ax                          ; 0x2d35
    push si                          ; 0x2d36
    call aztec_flsh_                 ; 0x2d37
    add sp, byte 4                   ; 0x2d3a
    mov di, ax                       ; 0x2d3d
@..aztec_fclose.l3:
    mov al, byte [si + 7]            ; 0x2d3f
    cbw                              ; 0x2d42
    push ax                          ; 0x2d43
    call aztec_close                 ; 0x2d44
    pop cx                           ; 0x2d47
    or di, ax                        ; 0x2d48
    mov al, byte [si + 6]            ; 0x2d4a
    cbw                              ; 0x2d4d
    test ax, 2                       ; 0x2d4e
    je short @..aztec_fclose.l4      ; 0x2d51
    push word [si + 4]               ; 0x2d53
    call aztec_free                  ; 0x2d56
    pop cx                           ; 0x2d59
@..aztec_fclose.l4:
    mov al, byte [si + 6]            ; 0x2d5a
    cbw                              ; 0x2d5d
    test ax, 0x20                    ; 0x2d5e
    je short @..aztec_fclose.l5      ; 0x2d61
    push word [si + 0xb]             ; 0x2d63
    call aztec_unlink                ; 0x2d66
    pop cx                           ; 0x2d69
    push word [si + 0xb]             ; 0x2d6a
    call aztec_free                  ; 0x2d6d
    pop cx                           ; 0x2d70
@..aztec_fclose.l5:
    mov ax, 0                        ; 0x2d71
    mov word [si], 0                 ; 0x2d74
    mov word [si + 2], ax            ; 0x2d78
    mov word [si + 4], ax            ; 0x2d7b
    mov byte [si + 6], 0             ; 0x2d7e
    mov ax, di                       ; 0x2d82
    jmp short @..aztec_fclose.l1     ; 0x2d84
aztec_flsh_:
    push bp                          ; 0x2d86
    mov bp, sp                       ; 0x2d87
    push di                          ; 0x2d89
    push si                          ; 0x2d8a
    mov si, word [bp + 4]            ; 0x2d8b
    mov word [cls_], aztec_closall - IMAGE_BASE ; 0x2d8e
    mov al, byte [si + 6]            ; 0x2d94
    cbw                              ; 0x2d97
    test ax, 0x10                    ; 0x2d98
    je short @..aztec_flsh_.l2       ; 0x2d9b
    mov ax, 0xffff                   ; 0x2d9d
@..aztec_flsh_.l1:
    pop si                           ; 0x2da0
    pop di                           ; 0x2da1
    mov sp, bp                       ; 0x2da2
    pop bp                           ; 0x2da4
    ret                              ; 0x2da5
@..aztec_flsh_.l2:
    mov al, byte [si + 6]            ; 0x2da6
    cbw                              ; 0x2da9
    test ax, 4                       ; 0x2daa
    je short @..aztec_flsh_.l4       ; 0x2dad
    mov di, word [si]                ; 0x2daf
    sub di, word [si + 4]            ; 0x2db1
    push di                          ; 0x2db4
    push word [si + 4]               ; 0x2db5
    mov al, byte [si + 7]            ; 0x2db8
    cbw                              ; 0x2dbb
    push ax                          ; 0x2dbc
    call aztec_write                 ; 0x2dbd
    add sp, byte 6                   ; 0x2dc0
    cmp ax, di                       ; 0x2dc3
    je short @..aztec_flsh_.l4       ; 0x2dc5
@..aztec_flsh_.l3:
    or byte [si + 6], 0x10           ; 0x2dc7
    mov ax, 0                        ; 0x2dcb
    mov word [si], 0                 ; 0x2dce
    mov word [si + 2], ax            ; 0x2dd2
    mov ax, 0xffff                   ; 0x2dd5
    jmp short @..aztec_flsh_.l1      ; 0x2dd8
@..aztec_flsh_.l4:
    cmp word [bp + 6], byte 0xff     ; 0x2dda
    jne short @..aztec_flsh_.l5      ; 0x2dde
    and byte [si + 6], 0xfb          ; 0x2de0
    mov ax, 0                        ; 0x2de4
    mov word [si], 0                 ; 0x2de7
    mov word [si + 2], ax            ; 0x2deb
    mov ax, 0                        ; 0x2dee
    jmp short @..aztec_flsh_.l1      ; 0x2df1
@..aztec_flsh_.l5:
    cmp word [si + 4], byte 0        ; 0x2df3
    jne short @..aztec_flsh_.l6      ; 0x2df7
    push si                          ; 0x2df9
    call aztec_getbuff               ; 0x2dfa
    pop cx                           ; 0x2dfd
@..aztec_flsh_.l6:
    cmp word [si + 9], byte 1        ; 0x2dfe
    jne short @..aztec_flsh_.l7      ; 0x2e02
    mov ax, 1                        ; 0x2e04
    push ax                          ; 0x2e07
    lea ax, word [bp + 6]            ; 0x2e08
    push ax                          ; 0x2e0b
    mov al, byte [si + 7]            ; 0x2e0c
    cbw                              ; 0x2e0f
    push ax                          ; 0x2e10
    call aztec_write                 ; 0x2e11
    add sp, byte 6                   ; 0x2e14
    cmp ax, strict word 1            ; 0x2e17
    jne short @..aztec_flsh_.l3      ; 0x2e1a
    mov ax, word [bp + 6]            ; 0x2e1c
    jmp near @..aztec_flsh_.l1       ; 0x2e1f
@..aztec_flsh_.l7:
    mov ax, word [si + 4]            ; 0x2e22
    mov word [si], ax                ; 0x2e25
    add ax, word [si + 9]            ; 0x2e27
    mov word [si + 2], ax            ; 0x2e2a
    or byte [si + 6], 4              ; 0x2e2d
    mov al, byte [bp + 6]            ; 0x2e31
    push ax                          ; 0x2e34
    mov ax, word [si]                ; 0x2e35
    inc word [si]                    ; 0x2e37
    mov bx, ax                       ; 0x2e39
    pop ax                           ; 0x2e3b
    mov byte [bx], al                ; 0x2e3c
    cbw                              ; 0x2e3e
    and ax, 0xff                     ; 0x2e3f
    jmp near @..aztec_flsh_.l1       ; 0x2e42
