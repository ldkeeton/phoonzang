; auto-generated
aztec_newstream:
    push si                          ; 0x2e45
    mov si, Cbuffs                   ; 0x2e46
@..aztec_newstream.l1:
    cmp byte [si + 0x6], 0           ; 0x2e49
    je short @..aztec_newstream.l4   ; 0x2e4d
    add si, byte 0x0d                ; 0x2e4f
    cmp si, strict word Cbuffs + 0x104 ; 0x2e52
    jb short @..aztec_newstream.l3   ; 0x2e56
    mov ax, 0                        ; 0x2e58
@..aztec_newstream.l2:
    pop si                           ; 0x2e5b
    ret                              ; 0x2e5c
@..aztec_newstream.l3:
    jmp short @..aztec_newstream.l1  ; 0x2e5d
@..aztec_newstream.l4:
    mov ax, si                       ; 0x2e5f
    jmp short @..aztec_newstream.l2  ; 0x2e61
