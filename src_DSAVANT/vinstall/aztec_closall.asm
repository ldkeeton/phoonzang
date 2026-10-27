; auto-generated
aztec_closall:
    push si                          ; 0x2cf5
    mov si, 0x234a                   ; 0x2cf6
.back1:
    mov ax, si                       ; 0x2cf9
    add si, byte 0xd                 ; 0x2cfb
    push ax                          ; 0x2cfe
    call aztec_fclose                ; 0x2cff
    pop cx                           ; 0x2d02
    cmp si, strict word 0x244e       ; 0x2d03
    jb short .back1                  ; 0x2d07
    pop si                           ; 0x2d09
    ret                              ; 0x2d0a
