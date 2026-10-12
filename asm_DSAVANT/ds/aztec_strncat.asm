aztec_strncat:
    push bp                          ; 0x457c
    mov bp, sp                       ; 0x457d
    mov dx, word [bp + 0x8]          ; 0x457f
@..aztec_strncat.catcommon:
    cld                              ; 0x4582
    push si                          ; 0x4583
    push di                          ; 0x4584
    mov di, ds                       ; 0x4585
    mov es, di                       ; 0x4587
    mov di, word [bp + 0x4]          ; 0x4589
    sub ax, ax                       ; 0x458c
    mov cx, 0x7fff                   ; 0x458e
    repne scasb ; find end of destination string ; 0x4591
    dec di ; backup to null byte ; 0x4593
    mov si, word [bp + 0x6]          ; 0x4594
    mov cx, dx                       ; 0x4597
@..aztec_strncat.cpyloop:
    lodsb                            ; 0x4599
    stosb                            ; 0x459a
    test al, al                      ; 0x459b
    loopne @..aztec_strncat.cpyloop  ; 0x459d
    je short @..aztec_strncat.nul_ok ; 0x459f
    sub al, al ; guarantee that string is nul terminated ; 0x45a1
    stosb                            ; 0x45a3
@..aztec_strncat.nul_ok:
    pop di                           ; 0x45a4
    pop si                           ; 0x45a5
    mov ax, word [bp + 0x4]          ; 0x45a6
    pop bp                           ; 0x45a9
    ret                              ; 0x45aa
