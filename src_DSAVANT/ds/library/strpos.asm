; auto-generated
strpos:
    push bp                          ; 0x4091
    mov bp, sp                       ; 0x4092
    cld                              ; 0x4094
    push es                          ; 0x4095
    push di                          ; 0x4096
    mov ax, ds                       ; 0x4097
    mov es, ax                       ; 0x4099
    cld                              ; 0x409b
    mov di, word [bp + 4]            ; 0x409c
    mov bx, di                       ; 0x409f
    mov al, 0                        ; 0x40a1
    mov cx, 0xffff                   ; 0x40a3
    repne scasb                      ; 0x40a6
    mov cx, di                       ; 0x40a8
    sub cx, bx                       ; 0x40aa
    dec cx                           ; 0x40ac
    mov di, bx                       ; 0x40ad
    mov al, byte [bp + 6]            ; 0x40af
    repne scasb                      ; 0x40b2
    dec di                           ; 0x40b4
    cmp al, byte [es:di]             ; 0x40b5
    jne short @..strpos.l1           ; 0x40b8
    mov ax, di                       ; 0x40ba
    sub ax, bx                       ; 0x40bc
    jmp near @..strpos.l2            ; 0x40be
@..strpos.l1:
    mov ax, 0xffff                   ; 0x40c1
@..strpos.l2:
    pop di                           ; 0x40c4
    pop es                           ; 0x40c5
    mov sp, bp                       ; 0x40c6
    pop bp                           ; 0x40c8
    ret                              ; 0x40c9
