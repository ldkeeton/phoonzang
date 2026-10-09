aztec_strncmp:
    push bp                          ; 0x93a4
    mov bp, sp                       ; 0x93a5
    mov cx, word [bp + 0x8]          ; 0x93a7
    mov dx, cx                       ; 0x93aa
    shr cx, 1                        ; 0x93ac
    cld                              ; 0x93ae
    push si                          ; 0x93af
    push di                          ; 0x93b0
    mov si, word [bp + 0x4]          ; 0x93b1
    mov di, ds                       ; 0x93b4
    mov es, di                       ; 0x93b6
    mov di, word [bp + 0x6]          ; 0x93b8
    jcxz @..aztec_strncmp.l2         ; 0x93bb
@..aztec_strncmp.l1:
    lodsw                            ; 0x93bd
    scasw                            ; 0x93be
    jne short loc_93d9               ; 0x93bf
    test al, al                      ; 0x93c1
    je short loc_93d3                ; 0x93c3
    test ah, ah                      ; 0x93c5
    loopne @..aztec_strncmp.l1       ; 0x93c7
    je short loc_93d3                ; 0x93c9
@..aztec_strncmp.l2:
    test dl, 1                       ; 0x93cb
    je short loc_93d3                ; 0x93ce
    cmpsb                            ; 0x93d0
    jne short loc_93e6               ; 0x93d1
loc_93d3:
    sub ax, ax                       ; 0x93d3
loc_93d5:
    pop di                           ; 0x93d5
    pop si                           ; 0x93d6
    pop bp                           ; 0x93d7
    ret                              ; 0x93d8
