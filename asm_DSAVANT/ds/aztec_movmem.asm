aztec_movmem:
    push bp                          ; 0x5123
    mov bp, sp                       ; 0x5124
    pushf                            ; 0x5126
    cld                              ; 0x5127
    push si                          ; 0x5128
    push di                          ; 0x5129
    mov di, ds                       ; 0x512a
    mov es, di                       ; 0x512c
    mov si, word [bp + 0x4]          ; 0x512e
    mov di, word [bp + 0x6]          ; 0x5131
    mov cx, word [bp + 0x8]          ; 0x5134
    mov ax, es                       ; 0x5137
    mov dx, ds                       ; 0x5139
    cmp ax, dx                       ; 0x513b
    jne short @..aztec_movmem.l2     ; 0x513d
    cmp di, si                       ; 0x513f
    je short @..aztec_movmem.l4      ; 0x5141
    jb short @..aztec_movmem.l2      ; 0x5143
    std                              ; 0x5145
    add di, cx                       ; 0x5146
    add si, cx                       ; 0x5148
    dec di                           ; 0x514a
    dec si                           ; 0x514b
    test cl, 1                       ; 0x514c
    je short @..aztec_movmem.l1      ; 0x514f
    movsb                            ; 0x5151
@..aztec_movmem.l1:
    dec di                           ; 0x5152
    dec si                           ; 0x5153
    jmp short @..aztec_movmem.l3     ; 0x5154
@..aztec_movmem.l2:
    test cl, 1                       ; 0x5156
    je short @..aztec_movmem.l3      ; 0x5159
    movsb                            ; 0x515b
@..aztec_movmem.l3:
    shr cx, 1                        ; 0x515c
    je short @..aztec_movmem.l4      ; 0x515e
    rep movsw                        ; 0x5160
@..aztec_movmem.l4:
    cld                              ; 0x5162
    pop di                           ; 0x5163
    pop si                           ; 0x5164
    popf                             ; 0x5165
    pop bp                           ; 0x5166
    ret                              ; 0x5167
