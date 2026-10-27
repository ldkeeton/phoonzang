; auto-generated
aztec_setmem:
    push bp                          ; 0x454d
    mov bp, sp                       ; 0x454e
    pushf                            ; 0x4550
    cld                              ; 0x4551
    push di                          ; 0x4552
    mov di, ds                       ; 0x4553
    mov es, di                       ; 0x4555
    mov di, word [bp + 4]            ; 0x4557
    mov cx, word [bp + 6]            ; 0x455a
    mov al, byte [bp + 8]            ; 0x455d
    mov ah, al                       ; 0x4560
    mov dx, cx                       ; 0x4562
    shr cx, 1                        ; 0x4564
    je short .forward1               ; 0x4566
    rep stosw                        ; 0x4568
.forward1:
    test dl, 1                       ; 0x456a
    je short .forward2               ; 0x456d
    stosb                            ; 0x456f
.forward2:
    pop di                           ; 0x4570
    popf                             ; 0x4571
    pop bp                           ; 0x4572
    ret                              ; 0x4573
