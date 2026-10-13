; auto-generated
aztec_fputs:
    push bp                          ; 0x2c8e
    mov bp, sp                       ; 0x2c8f
    push di                          ; 0x2c91
    push si                          ; 0x2c92
    mov si, word [bp + 0x4]          ; 0x2c93
    mov di, word [bp + 0x6]          ; 0x2c96
    cmp si, byte 0x0a                ; 0x2c99
    jne short @..aztec_fputs.l2      ; 0x2c9c
    push di                          ; 0x2c9e
    mov ax, 0xd                      ; 0x2c9f
    push ax                          ; 0x2ca2
    call aztec_putc                  ; 0x2ca3
    add sp, byte 4                   ; 0x2ca6
    cmp ax, strict word 0xffff       ; 0x2ca9
    jne short @..aztec_fputs.l2      ; 0x2cac
    mov ax, 0xffff                   ; 0x2cae
@..aztec_fputs.l1:
    pop si                           ; 0x2cb1
    pop di                           ; 0x2cb2
    mov sp, bp                       ; 0x2cb3
    pop bp                           ; 0x2cb5
    ret                              ; 0x2cb6
@..aztec_fputs.l2:
    push di                          ; 0x2cb7
    push si                          ; 0x2cb8
    call aztec_putc                  ; 0x2cb9
    add sp, byte 4                   ; 0x2cbc
    jmp short @..aztec_fputs.l1      ; 0x2cbf
