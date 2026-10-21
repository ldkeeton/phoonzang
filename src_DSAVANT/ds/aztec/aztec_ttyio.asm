; auto-generated
aztec_impl_tty_rd:
    push bp                          ; 0x505c
    mov bp, sp                       ; 0x505d
    push si                          ; 0x505f
    mov si, word [_TTrem]            ; 0x5060
    test si, si                      ; 0x5064
    jne short @..aztec_impl_tty_rd.l2 ; 0x5066
    mov ax, 0x104                    ; 0x5068
    push ax                          ; 0x506b
    mov ax, bss_0d08                 ; 0x506c
    push ax                          ; 0x506f
    push word [bp + 0x4]             ; 0x5070
    call aztec_impl_read             ; 0x5073
    add sp, byte 6                   ; 0x5076
    mov si, ax                       ; 0x5079
    test si, si                      ; 0x507b
    je short @..aztec_impl_tty_rd.l1 ; 0x507d
    cmp byte [si + bss_0d08 - 0x1], 0xa ; 0x507f
    jne short @..aztec_impl_tty_rd.l1 ; 0x5084
    dec si                           ; 0x5086
    mov al, byte [_Eol]              ; 0x5087
    mov byte [si + bss_0d08 - 0x1], al ; 0x508a
@..aztec_impl_tty_rd.l1:
    mov word [bss_0e0c], bss_0d08    ; 0x508e
    mov word [_TTrem], si            ; 0x5094
@..aztec_impl_tty_rd.l2:
    cmp si, word [bp + 0x8]          ; 0x5098
    jle short @..aztec_impl_tty_rd.l3 ; 0x509b
    mov si, word [bp + 0x8]          ; 0x509d
@..aztec_impl_tty_rd.l3:
    test si, si                      ; 0x50a0
    je short @..aztec_impl_tty_rd.l4 ; 0x50a2
    push si                          ; 0x50a4
    push word [bp + 0x6]             ; 0x50a5
    push word [bss_0e0c]             ; 0x50a8
    call aztec_movmem                ; 0x50ac
    add sp, byte 6                   ; 0x50af
@..aztec_impl_tty_rd.l4:
    add word [bss_0e0c], si          ; 0x50b2
    sub word [_TTrem], si            ; 0x50b6
    mov ax, si                       ; 0x50ba
    pop si                           ; 0x50bc
    mov sp, bp                       ; 0x50bd
    pop bp                           ; 0x50bf
    ret                              ; 0x50c0
aztec_impl_tty_wr:
    push bp                          ; 0x50c1
    mov bp, sp                       ; 0x50c2
    push di                          ; 0x50c4
    push si                          ; 0x50c5
    mov di, word [bp + 0x6]          ; 0x50c6
    mov si, word [bp + 0x8]          ; 0x50c9
    jmp short @..aztec_impl_tty_wr.l2 ; 0x50cc
@..aztec_impl_tty_wr.l1:
    mov bx, di                       ; 0x50ce
    inc di                           ; 0x50d0
    cmp byte [bx], 0xa               ; 0x50d1
    jne short @..aztec_impl_tty_wr.l2 ; 0x50d4
    mov ax, di                       ; 0x50d6
    sub ax, word [bp + 0x6]          ; 0x50d8
    push ax                          ; 0x50db
    push word [bp + 0x6]             ; 0x50dc
    push word [bp + 0x4]             ; 0x50df
    call aztec_impl_write            ; 0x50e2
    add sp, byte 6                   ; 0x50e5
    mov ax, 1                        ; 0x50e8
    push ax                          ; 0x50eb
    mov ax, dseg_0cf5                ; 0x50ec
    push ax                          ; 0x50ef
    push word [bp + 0x4]             ; 0x50f0
    call aztec_impl_write            ; 0x50f3
    add sp, byte 6                   ; 0x50f6
    mov word [bp + 0x6], di          ; 0x50f9
@..aztec_impl_tty_wr.l2:
    mov ax, si                       ; 0x50fc
    dec si                           ; 0x50fe
    test ax, ax                      ; 0x50ff
    jne short @..aztec_impl_tty_wr.l1 ; 0x5101
    cmp di, word [bp + 0x6]          ; 0x5103
    je short @..aztec_impl_tty_wr.l3 ; 0x5106
    mov ax, di                       ; 0x5108
    sub ax, word [bp + 0x6]          ; 0x510a
    push ax                          ; 0x510d
    push word [bp + 0x6]             ; 0x510e
    push word [bp + 0x4]             ; 0x5111
    call aztec_impl_write            ; 0x5114
    add sp, byte 6                   ; 0x5117
@..aztec_impl_tty_wr.l3:
    mov ax, word [bp + 0x8]          ; 0x511a
    pop si                           ; 0x511d
    pop di                           ; 0x511e
    mov sp, bp                       ; 0x511f
    pop bp                           ; 0x5121
    ret                              ; 0x5122
