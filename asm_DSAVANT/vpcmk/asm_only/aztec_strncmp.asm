; auto-generated
; asm only
aztec_strncmp:
    push bp                          ; 0x6fe8
    mov bp, sp                       ; 0x6fe9
    mov cx, word [bp + 0x8]          ; 0x6feb
    mov dx, cx                       ; 0x6fee
    shr cx, 1                        ; 0x6ff0
    cld                              ; 0x6ff2
    push si                          ; 0x6ff3
    push di                          ; 0x6ff4
    mov si, word [bp + 0x4]          ; 0x6ff5
    mov di, ds                       ; 0x6ff8
    mov es, di                       ; 0x6ffa
    mov di, word [bp + 0x6]          ; 0x6ffc
    jcxz @..aztec_strncmp.l2         ; 0x6fff
@..aztec_strncmp.l1:
    lodsw                            ; 0x7001
    scasw                            ; 0x7002
    jne short loc_701d               ; 0x7003
    test al, al                      ; 0x7005
    je short loc_7017                ; 0x7007
    test ah, ah                      ; 0x7009
    loopne @..aztec_strncmp.l1       ; 0x700b
    je short loc_7017                ; 0x700d
@..aztec_strncmp.l2:
    test dl, 1                       ; 0x700f
    je short loc_7017                ; 0x7012
    cmpsb                            ; 0x7014
    jne short loc_702a               ; 0x7015
loc_7017:
    sub ax, ax                       ; 0x7017
loc_7019:
    pop di                           ; 0x7019
    pop si                           ; 0x701a
    pop bp                           ; 0x701b
    ret                              ; 0x701c
