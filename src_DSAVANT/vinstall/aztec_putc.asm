; auto-generated
aztec_putc:
    push bp                          ; 0x2cc1
    mov bp, sp                       ; 0x2cc2
    push si                          ; 0x2cc4
    mov si, word [bp + 6]            ; 0x2cc5
    mov ax, word [si]                ; 0x2cc8
    cmp ax, word [si + 2]            ; 0x2cca
    jb short .forward1               ; 0x2ccd
    mov ax, word [bp + 4]            ; 0x2ccf
    and ax, 0xff                     ; 0x2cd2
    push ax                          ; 0x2cd5
    push si                          ; 0x2cd6
    call aztec_flsh_                 ; 0x2cd7
    add sp, byte 4                   ; 0x2cda
.back1:
    pop si                           ; 0x2cdd
    mov sp, bp                       ; 0x2cde
    pop bp                           ; 0x2ce0
    ret                              ; 0x2ce1
.forward1:
    mov al, byte [bp + 4]            ; 0x2ce2
    push ax                          ; 0x2ce5
    mov ax, word [si]                ; 0x2ce6
    inc word [si]                    ; 0x2ce8
    mov bx, ax                       ; 0x2cea
    pop ax                           ; 0x2cec
    mov byte [bx], al                ; 0x2ced
    cbw                              ; 0x2cef
    and ax, 0xff                     ; 0x2cf0
    jmp short .back1                 ; 0x2cf3
