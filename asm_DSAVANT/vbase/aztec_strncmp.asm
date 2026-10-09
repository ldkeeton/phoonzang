aztec_strncmp:
    push bp                          ; 0x9386
    mov bp, sp                       ; 0x9387
    cld                              ; 0x9389
    push si                          ; 0x938a
    push di                          ; 0x938b
    mov si, word [bp + 0x4]          ; 0x938c
    mov di, ds                       ; 0x938f
    mov es, di                       ; 0x9391
    mov di, word [bp + 0x6]          ; 0x9393
@..aztec_strncmp.l1:
    lodsw                            ; 0x9396
    scasw                            ; 0x9397
    jne short @..aztec_strncmp.l4    ; 0x9398
    test al, al                      ; 0x939a
    je short @..aztec_strncmp.l2     ; 0x939c
    test ah, ah                      ; 0x939e
    jne short @..aztec_strncmp.l1    ; 0x93a0
    jmp short @..aztec_strncmp.l2    ; 0x93a2
    push bp                          ; 0x93a4
    db 0x8b, 0xec ; mov bp, sp
    mov cx, word [bp + 0x8]          ; 0x93a7
    db 0x8b, 0xd1 ; mov dx, cx
    shr cx, 1                        ; 0x93ac
    cld                              ; 0x93ae
    push si                          ; 0x93af
    push di                          ; 0x93b0
    mov si, word [bp + 0x4]          ; 0x93b1
    mov di, ds                       ; 0x93b4
    mov es, di                       ; 0x93b6
    mov di, word [bp + 0x6]          ; 0x93b8
    jcxz loc_93cb                    ; 0x93bb
    lodsw                            ; 0x93bd
    scasw                            ; 0x93be
    jne short @..aztec_strncmp.l4    ; 0x93bf
    test al, al                      ; 0x93c1
    je short @..aztec_strncmp.l2     ; 0x93c3
    test ah, ah                      ; 0x93c5
    loopne loc_93bd                  ; 0x93c7
    je short @..aztec_strncmp.l2     ; 0x93c9
    test dl, 1                       ; 0x93cb
    je short @..aztec_strncmp.l2     ; 0x93ce
    cmpsb                            ; 0x93d0
    jne short @..aztec_strncmp.l5    ; 0x93d1
@..aztec_strncmp.l2:
    sub ax, ax                       ; 0x93d3
@..aztec_strncmp.l3:
    pop di                           ; 0x93d5
    pop si                           ; 0x93d6
    pop bp                           ; 0x93d7
    ret                              ; 0x93d8
@..aztec_strncmp.l4:
    sub di, byte 2                   ; 0x93d9
    scasb                            ; 0x93dc
    jne short @..aztec_strncmp.l5    ; 0x93dd
    test al, al                      ; 0x93df
    je short @..aztec_strncmp.l2     ; 0x93e1
    mov al, ah                       ; 0x93e3
    scasb                            ; 0x93e5
@..aztec_strncmp.l5:
    sbb ax, ax                       ; 0x93e6
    js short @..aztec_strncmp.l3     ; 0x93e8
    inc ax                           ; 0x93ea
    jmp short @..aztec_strncmp.l3    ; 0x93eb
