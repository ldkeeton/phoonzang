aztec_sbrk:
    push bp                          ; 0x3a05
    mov bp, sp                       ; 0x3a06
    push di                          ; 0x3a08
    mov ax, word [bp + 0x4]          ; 0x3a09
    mov di, word [data_24d4]         ; 0x3a0c
    test ax, ax                      ; 0x3a10
    jge short @..aztec_sbrk.l1       ; 0x3a12
    sub di, ax                       ; 0x3a14
    jb short @..aztec_sbrk.l4        ; 0x3a16
    jmp short @..aztec_sbrk.l2       ; 0x3a18
@..aztec_sbrk.l1:
    add ax, di                       ; 0x3a1a
    jb short @..aztec_sbrk.l4        ; 0x3a1c
@..aztec_sbrk.l2:
    push ax                          ; 0x3a1e
    call aztec_brk                   ; 0x3a1f
    pop cx                           ; 0x3a22
    test ax, ax                      ; 0x3a23
    jne short @..aztec_sbrk.l3       ; 0x3a25
    mov ax, di                       ; 0x3a27
@..aztec_sbrk.l3:
    pop di                           ; 0x3a29
    test ax, ax                      ; 0x3a2a
    pop bp                           ; 0x3a2c
    ret                              ; 0x3a2d
@..aztec_sbrk.l4:
    mov word [data_24d6], 0xfff8     ; 0x3a2e
    mov ax, 0xffff                   ; 0x3a34
    jmp short @..aztec_sbrk.l3       ; 0x3a37
