aztec_strncmp:
    push bp                          ; 0x3526
    mov bp, sp                       ; 0x3527
    mov cx, word [bp + 0x8]          ; 0x3529
    mov dx, cx                       ; 0x352c
    shr cx, 1                        ; 0x352e
    cld                              ; 0x3530
    push si                          ; 0x3531
    push di                          ; 0x3532
    mov si, word [bp + 0x4]          ; 0x3533
    mov di, ds                       ; 0x3536
    mov es, di                       ; 0x3538
    mov di, word [bp + 0x6]          ; 0x353a
    jcxz @..aztec_strncmp.l2         ; 0x353d
@..aztec_strncmp.l1:
    lodsw                            ; 0x353f
    scasw                            ; 0x3540
    jne short loc_355b               ; 0x3541
    test al, al                      ; 0x3543
    je short loc_3555                ; 0x3545
    test ah, ah                      ; 0x3547
    loopne @..aztec_strncmp.l1       ; 0x3549
    je short loc_3555                ; 0x354b
@..aztec_strncmp.l2:
    test dl, 1                       ; 0x354d
    je short loc_3555                ; 0x3550
    cmpsb                            ; 0x3552
    jne short loc_3568               ; 0x3553
loc_3555:
    sub ax, ax                       ; 0x3555
loc_3557:
    pop di                           ; 0x3557
    pop si                           ; 0x3558
    pop bp                           ; 0x3559
    ret                              ; 0x355a
loc_355b:
    sub di, byte 2                   ; 0x355b
    scasb                            ; 0x355e
    jne short loc_3568               ; 0x355f
    test al, al                      ; 0x3561
    je short loc_3555                ; 0x3563
    mov al, ah                       ; 0x3565
    scasb                            ; 0x3567
loc_3568:
    sbb ax, ax                       ; 0x3568
    js short loc_3557                ; 0x356a
    inc ax                           ; 0x356c
    jmp short loc_3557               ; 0x356d
