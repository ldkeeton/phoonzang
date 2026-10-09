aztec_strcmp:
    push bp                          ; 0x9386
    mov bp, sp                       ; 0x9387
    cld                              ; 0x9389
    push si                          ; 0x938a
    push di                          ; 0x938b
    mov si, word [bp + 0x4]          ; 0x938c
    mov di, ds                       ; 0x938f
    mov es, di                       ; 0x9391
    mov di, word [bp + 0x6]          ; 0x9393
@..aztec_strcmp.l1:
    lodsw                            ; 0x9396
    scasw                            ; 0x9397
    jne short loc_93d9               ; 0x9398
    test al, al                      ; 0x939a
    je short loc_93d3                ; 0x939c
    test ah, ah                      ; 0x939e
    jne short @..aztec_strcmp.l1     ; 0x93a0
    jmp short loc_93d3               ; 0x93a2
