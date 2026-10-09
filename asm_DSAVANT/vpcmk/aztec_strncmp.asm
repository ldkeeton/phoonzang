aztec_strncmp:
    push bp                          ; 0x6fca
    mov bp, sp                       ; 0x6fcb
    cld                              ; 0x6fcd
    push si                          ; 0x6fce
    push di                          ; 0x6fcf
    mov si, word [bp + 0x4]          ; 0x6fd0
    mov di, ds                       ; 0x6fd3
    mov es, di                       ; 0x6fd5
    mov di, word [bp + 0x6]          ; 0x6fd7
@..aztec_strncmp.l1:
    lodsw                            ; 0x6fda
    scasw                            ; 0x6fdb
    jne short @..aztec_strncmp.l4    ; 0x6fdc
    test al, al                      ; 0x6fde
    je short @..aztec_strncmp.l2     ; 0x6fe0
    test ah, ah                      ; 0x6fe2
    jne short @..aztec_strncmp.l1    ; 0x6fe4
    jmp short @..aztec_strncmp.l2    ; 0x6fe6
    push bp                          ; 0x6fe8
    db 0x8b, 0xec ; mov bp, sp
    mov cx, word [bp + 0x8]          ; 0x6feb
    db 0x8b, 0xd1 ; mov dx, cx
    shr cx, 1                        ; 0x6ff0
    cld                              ; 0x6ff2
    push si                          ; 0x6ff3
    push di                          ; 0x6ff4
    mov si, word [bp + 0x4]          ; 0x6ff5
    mov di, ds                       ; 0x6ff8
    mov es, di                       ; 0x6ffa
    mov di, word [bp + 0x6]          ; 0x6ffc
    jcxz loc_700f                    ; 0x6fff
    lodsw                            ; 0x7001
    scasw                            ; 0x7002
    jne short @..aztec_strncmp.l4    ; 0x7003
    test al, al                      ; 0x7005
    je short @..aztec_strncmp.l2     ; 0x7007
    test ah, ah                      ; 0x7009
    loopne loc_7001                  ; 0x700b
    je short @..aztec_strncmp.l2     ; 0x700d
    test dl, 1                       ; 0x700f
    je short @..aztec_strncmp.l2     ; 0x7012
    cmpsb                            ; 0x7014
    jne short @..aztec_strncmp.l5    ; 0x7015
@..aztec_strncmp.l2:
    sub ax, ax                       ; 0x7017
@..aztec_strncmp.l3:
    pop di                           ; 0x7019
    pop si                           ; 0x701a
    pop bp                           ; 0x701b
    ret                              ; 0x701c
@..aztec_strncmp.l4:
    sub di, byte 2                   ; 0x701d
    scasb                            ; 0x7020
    jne short @..aztec_strncmp.l5    ; 0x7021
    test al, al                      ; 0x7023
    je short @..aztec_strncmp.l2     ; 0x7025
    mov al, ah                       ; 0x7027
    scasb                            ; 0x7029
@..aztec_strncmp.l5:
    sbb ax, ax                       ; 0x702a
    js short @..aztec_strncmp.l3     ; 0x702c
    inc ax                           ; 0x702e
    jmp short @..aztec_strncmp.l3    ; 0x702f
