; auto-generated
loc_PMOR:
    push si                          ; 0x2cf5
    mov si, 0x234a                   ; 0x2cf6
@..loc_PMOR.l1:
    mov ax, si                       ; 0x2cf9
    add si, byte 0x0d                ; 0x2cfb
    push ax                          ; 0x2cfe
    call aztec_fclose                ; 0x2cff
    pop cx                           ; 0x2d02
    cmp si, strict word 0x244e       ; 0x2d03
    jb short @..loc_PMOR.l1          ; 0x2d07
    pop si                           ; 0x2d09
    ret                              ; 0x2d0a
