; auto-generated
aztec_closall:
    push si                          ; 0x2cf5
    mov si, Cbuffs                   ; 0x2cf6
@..aztec_closall.l1:
    mov ax, si                       ; 0x2cf9
    add si, byte 0x0d                ; 0x2cfb
    push ax                          ; 0x2cfe
    call aztec_fclose                ; 0x2cff
    pop cx                           ; 0x2d02
    cmp si, strict word Cbuffs + 0x104 ; 0x2d03
    jb short @..aztec_closall.l1     ; 0x2d07
    pop si                           ; 0x2d09
    ret                              ; 0x2d0a
