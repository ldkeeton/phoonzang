; auto-generated
aztec_movblock:
    push bp                          ; 0x4517
    mov bp, sp                       ; 0x4518
    push di                          ; 0x451a
    push si                          ; 0x451b
    push ds                          ; 0x451c
    push es                          ; 0x451d
    pushf                            ; 0x451e
    cld                              ; 0x451f
    mov cx, word [bp + 0xc]          ; 0x4520
    les di, word [bp + 8]            ; 0x4523
    lds si, word [bp + 4]            ; 0x4526
    cmp cx, byte 4                   ; 0x4529
    jne short .forward1              ; 0x452c
    cli                              ; 0x452e
.forward1:
    test cx, cx                      ; 0x452f
    jne short .forward2              ; 0x4531
    mov cx, 0x8000                   ; 0x4533
    jmp short .forward3              ; 0x4536
.forward2:
    mov dx, cx                       ; 0x4538
    shr cx, 1                        ; 0x453a
    je short .forward4               ; 0x453c
.forward3:
    rep movsw                        ; 0x453e
.forward4:
    test dl, 1                       ; 0x4540
    je short .forward5               ; 0x4543
    movsb                            ; 0x4545
.forward5:
    popf                             ; 0x4546
    pop es                           ; 0x4547
    pop ds                           ; 0x4548
    pop si                           ; 0x4549
    pop di                           ; 0x454a
    pop bp                           ; 0x454b
    ret                              ; 0x454c
