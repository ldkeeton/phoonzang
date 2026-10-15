; auto-generated
; asm only
aztec_strcmp:
    push bp                          ; 0x3508
    mov bp, sp                       ; 0x3509
    cld                              ; 0x350b
    push si                          ; 0x350c
    push di                          ; 0x350d
    mov si, word [bp + 0x4]          ; 0x350e
    mov di, ds                       ; 0x3511
    mov es, di                       ; 0x3513
    mov di, word [bp + 0x6]          ; 0x3515
@..aztec_strcmp.l1:
    lodsw                            ; 0x3518
    scasw                            ; 0x3519
    jne short loc_OGRR               ; 0x351a
    test al, al                      ; 0x351c
    je short loc_TSVL                ; 0x351e
    test ah, ah                      ; 0x3520
    jne short @..aztec_strcmp.l1     ; 0x3522
    jmp short loc_TSVL               ; 0x3524
