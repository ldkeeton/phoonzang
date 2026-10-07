string_loc_4517:
    push bp                          ; 0x4517
    mov bp, sp                       ; 0x4518
    push di                          ; 0x451a
    push si                          ; 0x451b
    push ds                          ; 0x451c
    push es                          ; 0x451d
    pushf                            ; 0x451e
    cld                              ; 0x451f
    mov cx, word [bp + 0xc]          ; 0x4520
    les di, word [bp + 0x8]          ; 0x4523
    lds si, word [bp + 0x4]          ; 0x4526
    cmp cx, byte 4                   ; 0x4529
    jne short @..string_loc_4517.l1  ; 0x452c
    cli                              ; 0x452e
@..string_loc_4517.l1:
    test cx, cx                      ; 0x452f
    jne short @..string_loc_4517.l2  ; 0x4531
    mov cx, 0x8000                   ; 0x4533
    jmp short @..string_loc_4517.l3  ; 0x4536
@..string_loc_4517.l2:
    mov dx, cx                       ; 0x4538
    shr cx, 1                        ; 0x453a
    je short @..string_loc_4517.l4   ; 0x453c
@..string_loc_4517.l3:
    rep movsw                        ; 0x453e
@..string_loc_4517.l4:
    test dl, 1                       ; 0x4540
    je short @..string_loc_4517.l5   ; 0x4543
    movsb                            ; 0x4545
@..string_loc_4517.l5:
    popf                             ; 0x4546
    pop es                           ; 0x4547
    pop ds                           ; 0x4548
    pop si                           ; 0x4549
    pop di                           ; 0x454a
    pop bp                           ; 0x454b
    ret                              ; 0x454c
