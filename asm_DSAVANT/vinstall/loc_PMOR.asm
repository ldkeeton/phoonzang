; auto-generated
loc_PMOR:
    push si                          ; 0x2cf5
    mov si, dseg_234a                ; 0x2cf6
@..aztec_putc.l3:
    mov ax, si                       ; 0x2cf9
    add si, byte 0x0d                ; 0x2cfb
    push ax                          ; 0x2cfe
    call aztec_fclose                ; 0x2cff
    pop cx                           ; 0x2d02
    cmp si, strict word dseg_234a + 0x104 ; 0x2d03
    jb short @..aztec_putc.l3        ; 0x2d07
    pop si                           ; 0x2d09
    ret                              ; 0x2d0a
