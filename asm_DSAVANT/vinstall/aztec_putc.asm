aztec_putc:
    mov al, byte [bp + 0x4]          ; 0x2ce2
    push ax                          ; 0x2ce5
    mov ax, word [si]                ; 0x2ce6
    inc word [si]                    ; 0x2ce8
    mov bx, ax                       ; 0x2cea
    pop ax                           ; 0x2cec
    mov byte [bx], al                ; 0x2ced
    cbw                              ; 0x2cef
    and ax, 0xff                     ; 0x2cf0
    jmp short loc_2cdd               ; 0x2cf3
loc_2cf5:
    push si                          ; 0x2cf5
    mov si, 0x234a                   ; 0x2cf6
@..local.l110:
    mov ax, si                       ; 0x2cf9
    add si, byte 0x0d                ; 0x2cfb
    push ax                          ; 0x2cfe
    call aztec_fclose                ; 0x2cff
    pop cx                           ; 0x2d02
    cmp si, strict word 0x244e       ; 0x2d03
    jb short @..local.l110           ; 0x2d07
    pop si                           ; 0x2d09
    ret                              ; 0x2d0a
