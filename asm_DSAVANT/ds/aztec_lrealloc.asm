; auto-generated
aztec_lrealloc:
    push bp                          ; 0x4625
    mov bp, sp                       ; 0x4626
    mov ax, word [bp + 0x8]          ; 0x4628
    mov dx, word [bp + 0xa]          ; 0x462b
    mov cx, 4                        ; 0x462e
@..aztec_lrealloc.right_shift:
    shr dx, 1                        ; 0x4631
    rcr ax, 1                        ; 0x4633
    loop @..aztec_lrealloc.right_shift ; 0x4635
    mov bx, ax                       ; 0x4637
    mov ah, 0x4a                     ; 0x4639
    mov es, word [bp + 0x6]          ; 0x463b
    int 0x21 ; DOS resize memory block
    jb short @..aztec_lrealloc.failure ; 0x4640
    mov ax, word [bp + 0x4]          ; 0x4642
    mov dx, word [bp + 0x6]          ; 0x4645
@..aztec_lrealloc.return:
    pop bp                           ; 0x4648
    ret                              ; 0x4649
@..aztec_lrealloc.failure:
    xor ax, ax                       ; 0x464a
    xor dx, dx                       ; 0x464c
    jmp short @..aztec_lrealloc.return ; 0x464e
    db 0x3a, 0x4b
