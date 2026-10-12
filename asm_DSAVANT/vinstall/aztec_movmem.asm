aztec_movmem:
    push bp                          ; 0x39a0
    mov bp, sp                       ; 0x39a1
    pushf                            ; 0x39a3
    cld                              ; 0x39a4
    push si                          ; 0x39a5
    push di                          ; 0x39a6
    mov di, ds                       ; 0x39a7
    mov es, di                       ; 0x39a9
    mov si, word [bp + 0x4]          ; 0x39ab
    mov di, word [bp + 0x6]          ; 0x39ae
    mov cx, word [bp + 0x8]          ; 0x39b1
    mov ax, es                       ; 0x39b4
    mov dx, ds                       ; 0x39b6
    cmp ax, dx                       ; 0x39b8
    jne short @..aztec_movmem.move_forward ; 0x39ba
    cmp di, si                       ; 0x39bc
    je short @..aztec_movmem.done    ; 0x39be
    jb short @..aztec_movmem.move_forward ; 0x39c0
    std                              ; 0x39c2
    add di, cx                       ; 0x39c3
    add si, cx                       ; 0x39c5
    dec di                           ; 0x39c7
    dec si                           ; 0x39c8
    test cl, 1                       ; 0x39c9
    je short @..aztec_movmem.nobyte  ; 0x39cc
    movsb                            ; 0x39ce
@..aztec_movmem.nobyte:
    dec di                           ; 0x39cf
    dec si                           ; 0x39d0
    jmp short @..aztec_movmem.domove ; 0x39d1
@..aztec_movmem.move_forward:
    test cl, 1                       ; 0x39d3
    je short @..aztec_movmem.domove  ; 0x39d6
    movsb                            ; 0x39d8
@..aztec_movmem.domove:
    shr cx, 1                        ; 0x39d9
    je short @..aztec_movmem.done    ; 0x39db
    rep movsw                        ; 0x39dd
@..aztec_movmem.done:
    cld                              ; 0x39df
    pop di                           ; 0x39e0
    pop si                           ; 0x39e1
    popf                             ; 0x39e2
    pop bp                           ; 0x39e3
    ret                              ; 0x39e4
