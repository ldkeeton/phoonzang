; auto-generated
aztec_newstream:
    push si                          ; 0x2e45
    mov si, Cbuffs                   ; 0x2e46
.back1:
    cmp byte [si + 6], 0             ; 0x2e49
    je short .forward2               ; 0x2e4d
    add si, byte 0xd                 ; 0x2e4f
    cmp si, strict word 0x244e       ; 0x2e52
    jb short .forward1               ; 0x2e56
    mov ax, 0                        ; 0x2e58
.back2:
    pop si                           ; 0x2e5b
    ret                              ; 0x2e5c
.forward1:
    jmp short .back1                 ; 0x2e5d
.forward2:
    mov ax, si                       ; 0x2e5f
    jmp short .back2                 ; 0x2e61
