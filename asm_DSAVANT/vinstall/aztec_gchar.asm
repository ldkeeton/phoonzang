aztec_gchar:
    push bp                          ; 0x06a6
    mov bp, sp                       ; 0x06a7
    add sp, byte 0xfe                ; 0x06a9
    cmp word [bp + 0x4], byte 0      ; 0x06ac
    jne short @..aztec_gchar.l7      ; 0x06b0
    call dos_con_in_noecho           ; 0x06b2
    mov word [bp - 0x0002], ax       ; 0x06b5
    jmp short @..aztec_gchar.l6      ; 0x06b8
@..aztec_gchar.l1:
    mov ax, 8                        ; 0x06ba
@..aztec_gchar.l2:
    mov sp, bp                       ; 0x06bd
    pop bp                           ; 0x06bf
    ret                              ; 0x06c0
