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
    jne short @..aztec_strcmp.l4     ; 0x351a
    test al, al                      ; 0x351c
    je short @..aztec_strcmp.l2      ; 0x351e
    test ah, ah                      ; 0x3520
    jne short @..aztec_strcmp.l1     ; 0x3522
    jmp short @..aztec_strcmp.l2     ; 0x3524
    push bp                          ; 0x3526
    db 0x8b, 0xec ; mov bp, sp
    mov cx, word [bp + 0x8]          ; 0x3529
    db 0x8b, 0xd1 ; mov dx, cx
    shr cx, 1                        ; 0x352e
    cld                              ; 0x3530
    push si                          ; 0x3531
    push di                          ; 0x3532
    mov si, word [bp + 0x4]          ; 0x3533
    mov di, ds                       ; 0x3536
    mov es, di                       ; 0x3538
    mov di, word [bp + 0x6]          ; 0x353a
    jcxz loc_354d                    ; 0x353d
    lodsw                            ; 0x353f
    scasw                            ; 0x3540
    jne short @..aztec_strcmp.l4     ; 0x3541
    test al, al                      ; 0x3543
    je short @..aztec_strcmp.l2      ; 0x3545
    test ah, ah                      ; 0x3547
    loopne loc_353f                  ; 0x3549
    je short @..aztec_strcmp.l2      ; 0x354b
    test dl, 1                       ; 0x354d
    je short @..aztec_strcmp.l2      ; 0x3550
    cmpsb                            ; 0x3552
    jne short @..aztec_strcmp.l5     ; 0x3553
@..aztec_strcmp.l2:
    sub ax, ax                       ; 0x3555
@..aztec_strcmp.l3:
    pop di                           ; 0x3557
    pop si                           ; 0x3558
    pop bp                           ; 0x3559
    ret                              ; 0x355a
@..aztec_strcmp.l4:
    sub di, byte 2                   ; 0x355b
    scasb                            ; 0x355e
    jne short @..aztec_strcmp.l5     ; 0x355f
    test al, al                      ; 0x3561
    je short @..aztec_strcmp.l2      ; 0x3563
    mov al, ah                       ; 0x3565
    scasb                            ; 0x3567
@..aztec_strcmp.l5:
    sbb ax, ax                       ; 0x3568
    js short @..aztec_strcmp.l3      ; 0x356a
    inc ax                           ; 0x356c
    jmp short @..aztec_strcmp.l3     ; 0x356d
