aztec_strcpy:
    push bp                          ; 0x45ab
    mov bp, sp                       ; 0x45ac
    cld                              ; 0x45ae
    push si                          ; 0x45af
    push di                          ; 0x45b0
    mov di, ds                       ; 0x45b1
    mov es, di                       ; 0x45b3
    mov di, word [bp + 0x6]          ; 0x45b5
    mov cx, 0xffff                   ; 0x45b8
    mov al, 0                        ; 0x45bb
    repne scasb                      ; 0x45bd
    not cx                           ; 0x45bf
    mov di, word [bp + 0x4]          ; 0x45c1
    mov si, word [bp + 0x6]          ; 0x45c4
    shr cx, 1                        ; 0x45c7
    jcxz @..aztec_strcpy.l1          ; 0x45c9
    rep movsw                        ; 0x45cb
@..aztec_strcpy.l1:
    jae short @..aztec_strcpy.l2     ; 0x45cd
    movsb                            ; 0x45cf
@..aztec_strcpy.l2:
    pop di                           ; 0x45d0
    pop si                           ; 0x45d1
    mov ax, word [bp + 0x4]          ; 0x45d2
    pop bp                           ; 0x45d5
    ret                              ; 0x45d6
