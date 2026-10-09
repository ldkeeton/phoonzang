    push bp                          ; 0x4625
    db 0x8b, 0xec ; mov bp, sp
    mov ax, word [bp + 0x8]          ; 0x4628
    mov dx, word [bp + 0xa]          ; 0x462b
    mov cx, 4                        ; 0x462e
    shr dx, 1                        ; 0x4631
    rcr ax, 1                        ; 0x4633
    loop loc_4631                    ; 0x4635
    db 0x8b, 0xd8 ; mov bx, ax
    mov ah, 0x4a                     ; 0x4639
    mov es, word [bp + 0x6]          ; 0x463b
    int 0x21 ; DOS resize memory block
    jb short loc_464a                ; 0x4640
    mov ax, word [bp + 0x4]          ; 0x4642
    mov dx, word [bp + 0x6]          ; 0x4645
    pop bp                           ; 0x4648
    ret                              ; 0x4649
