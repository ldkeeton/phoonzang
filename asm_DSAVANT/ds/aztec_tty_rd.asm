aztec_tty_rd:
    push bp                          ; 0x505c
    mov bp, sp                       ; 0x505d
    push si                          ; 0x505f
    mov si, word [0x9096]            ; 0x5060
    test si, si                      ; 0x5064
    jne short @..aztec_tty_rd.l2     ; 0x5066
    mov ax, 0x104                    ; 0x5068
    push ax                          ; 0x506b
    mov ax, 0xd08                    ; 0x506c
    push ax                          ; 0x506f
    push word [bp + 0x4]             ; 0x5070
    call aztec_read                  ; 0x5073
    add sp, byte 6                   ; 0x5076
    mov si, ax                       ; 0x5079
    test si, si                      ; 0x507b
    je short @..aztec_tty_rd.l1      ; 0x507d
    cmp byte [si + 0xd07], 0xa       ; 0x507f
    jne short @..aztec_tty_rd.l1     ; 0x5084
    dec si                           ; 0x5086
    mov al, byte [0x0cf4]            ; 0x5087
    mov byte [si + 0xd07], al        ; 0x508a
@..aztec_tty_rd.l1:
    mov word [0x0e0c], 0xd08         ; 0x508e
    mov word [0x9096], si            ; 0x5094
@..aztec_tty_rd.l2:
    cmp si, word [bp + 0x8]          ; 0x5098
    jle short @..aztec_tty_rd.l3     ; 0x509b
    mov si, word [bp + 0x8]          ; 0x509d
@..aztec_tty_rd.l3:
    test si, si                      ; 0x50a0
    je short @..aztec_tty_rd.l4      ; 0x50a2
    push si                          ; 0x50a4
    push word [bp + 0x6]             ; 0x50a5
    push word [0x0e0c]               ; 0x50a8
    call aztec_movmem                ; 0x50ac
    add sp, byte 6                   ; 0x50af
@..aztec_tty_rd.l4:
    add word [0x0e0c], si            ; 0x50b2
    sub word [0x9096], si            ; 0x50b6
    mov ax, si                       ; 0x50ba
    pop si                           ; 0x50bc
    mov sp, bp                       ; 0x50bd
    pop bp                           ; 0x50bf
    ret                              ; 0x50c0
