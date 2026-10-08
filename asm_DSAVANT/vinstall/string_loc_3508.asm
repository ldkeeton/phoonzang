string_loc_3508:
    push bp                          ; 0x3508
    mov bp, sp                       ; 0x3509
    cld                              ; 0x350b
    push si                          ; 0x350c
    push di                          ; 0x350d
    mov si, word [bp + 0x4]          ; 0x350e
    mov di, ds                       ; 0x3511
    mov es, di                       ; 0x3513
    mov di, word [bp + 0x6]          ; 0x3515
@..string_loc_3508.l1:
    lodsw                            ; 0x3518
    scasw                            ; 0x3519
    jne short @..string_loc_3508.l4  ; 0x351a
    test al, al                      ; 0x351c
    je short @..string_loc_3508.l2   ; 0x351e
    test ah, ah                      ; 0x3520
    jne short @..string_loc_3508.l1  ; 0x3522
    jmp short @..string_loc_3508.l2  ; 0x3524

    db 0x55, 0x8b, 0xec, 0x8b, 0x4e, 0x08, 0x8b, 0xd1, 0xd1, 0xe9, 0xfc, 0x56, 0x57, 0x8b, 0x76, 0x04
    db 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06, 0xe3, 0x0e, 0xad, 0xaf, 0x75, 0x18, 0x84, 0xc0, 0x74
    db 0x0e, 0x84, 0xe4, 0xe0, 0xf4, 0x74, 0x08, 0xf6, 0xc2, 0x01, 0x74, 0x03, 0xa6, 0x75, 0x13

@..string_loc_3508.l2:
    sub ax, ax                       ; 0x3555
@..string_loc_3508.l3:
    pop di                           ; 0x3557
    pop si                           ; 0x3558
    pop bp                           ; 0x3559
    ret                              ; 0x355a
@..string_loc_3508.l4:
    sub di, byte 2                   ; 0x355b
    scasb                            ; 0x355e
    jne short @..string_loc_3508.l5  ; 0x355f
    test al, al                      ; 0x3561
    je short @..string_loc_3508.l2   ; 0x3563
    mov al, ah                       ; 0x3565
    scasb                            ; 0x3567
@..string_loc_3508.l5:
    sbb ax, ax                       ; 0x3568
    js short @..string_loc_3508.l3   ; 0x356a
    inc ax                           ; 0x356c
    jmp short @..string_loc_3508.l3  ; 0x356d
