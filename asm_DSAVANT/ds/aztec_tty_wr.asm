aztec_tty_wr:
    push bp                          ; 0x50c1
    mov bp, sp                       ; 0x50c2
    push di                          ; 0x50c4
    push si                          ; 0x50c5
    mov di, word [bp + 0x6]          ; 0x50c6
    mov si, word [bp + 0x8]          ; 0x50c9
    jmp short @..aztec_tty_wr.l2     ; 0x50cc
@..aztec_tty_wr.l1:
    mov bx, di                       ; 0x50ce
    inc di                           ; 0x50d0
    cmp byte [bx], 0xa               ; 0x50d1
    jne short @..aztec_tty_wr.l2     ; 0x50d4
    mov ax, di                       ; 0x50d6
    sub ax, word [bp + 0x6]          ; 0x50d8
    push ax                          ; 0x50db
    push word [bp + 0x6]             ; 0x50dc
    push word [bp + 0x4]             ; 0x50df
    call ds_leaf_loc_4fac            ; 0x50e2
    add sp, byte 6                   ; 0x50e5
    mov ax, 1                        ; 0x50e8
    push ax                          ; 0x50eb
    mov ax, 0xcf5                    ; 0x50ec
    push ax                          ; 0x50ef
    push word [bp + 0x4]             ; 0x50f0
    call ds_leaf_loc_4fac            ; 0x50f3
    add sp, byte 6                   ; 0x50f6
    mov word [bp + 0x6], di          ; 0x50f9
@..aztec_tty_wr.l2:
    mov ax, si                       ; 0x50fc
    dec si                           ; 0x50fe
    test ax, ax                      ; 0x50ff
    jne short @..aztec_tty_wr.l1     ; 0x5101
    cmp di, word [bp + 0x6]          ; 0x5103
    je short @..aztec_tty_wr.l3      ; 0x5106
    mov ax, di                       ; 0x5108
    sub ax, word [bp + 0x6]          ; 0x510a
    push ax                          ; 0x510d
    push word [bp + 0x6]             ; 0x510e
    push word [bp + 0x4]             ; 0x5111
    call ds_leaf_loc_4fac            ; 0x5114
    add sp, byte 6                   ; 0x5117
@..aztec_tty_wr.l3:
    mov ax, word [bp + 0x8]          ; 0x511a
    pop si                           ; 0x511d
    pop di                           ; 0x511e
    mov sp, bp                       ; 0x511f
    pop bp                           ; 0x5121
    ret                              ; 0x5122
