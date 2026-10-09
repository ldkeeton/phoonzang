aztec_sbrk:
    push bp                          ; 0x5188
    mov bp, sp                       ; 0x5189
    push di                          ; 0x518b
    mov ax, word [bp + 0x4]          ; 0x518c
    mov di, word [data_0c70]         ; 0x518f
    test ax, ax                      ; 0x5193
    jge short @..aztec_sbrk.l1       ; 0x5195
    sub di, ax                       ; 0x5197
    jb short @..aztec_sbrk.l4        ; 0x5199
    jmp short @..aztec_sbrk.l2       ; 0x519b
@..aztec_sbrk.l1:
    add ax, di                       ; 0x519d
    jb short @..aztec_sbrk.l4        ; 0x519f
@..aztec_sbrk.l2:
    push ax                          ; 0x51a1
    call aztec_brk                   ; 0x51a2
    pop cx                           ; 0x51a5
    test ax, ax                      ; 0x51a6
    jne short @..aztec_sbrk.l3       ; 0x51a8
    mov ax, di                       ; 0x51aa
@..aztec_sbrk.l3:
    pop di                           ; 0x51ac
    test ax, ax                      ; 0x51ad
    pop bp                           ; 0x51af
    ret                              ; 0x51b0
@..aztec_sbrk.l4:
    mov word [data_0c72], 0xfff8     ; 0x51b1
    mov ax, 0xffff                   ; 0x51b7
    jmp short @..aztec_sbrk.l3       ; 0x51ba
