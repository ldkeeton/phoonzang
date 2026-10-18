; auto-generated
aztec_impl_tty_rd:
    push bp                          ; 0x38d9
    mov bp, sp                       ; 0x38da
    push si                          ; 0x38dc
    mov si, word [_TTrem]            ; 0x38dd
    test si, si                      ; 0x38e1
    jne short @..aztec_impl_tty_rd.l2 ; 0x38e3
    mov ax, 0x104                    ; 0x38e5
    push ax                          ; 0x38e8
    mov ax, bss_253e                 ; 0x38e9
    push ax                          ; 0x38ec
    push word [bp + 0x4]             ; 0x38ed
    call aztec_impl_read             ; 0x38f0
    add sp, byte 6                   ; 0x38f3
    mov si, ax                       ; 0x38f6
    test si, si                      ; 0x38f8
    je short @..aztec_impl_tty_rd.l1 ; 0x38fa
    cmp byte [si + bss_253e - 0x1], 0xa ; 0x38fc
    jne short @..aztec_impl_tty_rd.l1 ; 0x3901
    dec si                           ; 0x3903
    mov al, byte [_Eol]              ; 0x3904
    mov byte [si + bss_253e - 0x1], al ; 0x3907
@..aztec_impl_tty_rd.l1:
    mov word [bss_2642], bss_253e    ; 0x390b
    mov word [_TTrem], si            ; 0x3911
@..aztec_impl_tty_rd.l2:
    cmp si, word [bp + 0x8]          ; 0x3915
    jle short @..aztec_impl_tty_rd.l3 ; 0x3918
    mov si, word [bp + 0x8]          ; 0x391a
@..aztec_impl_tty_rd.l3:
    test si, si                      ; 0x391d
    je short @..aztec_impl_tty_rd.l4 ; 0x391f
    push si                          ; 0x3921
    push word [bp + 0x6]             ; 0x3922
    push word [bss_2642]             ; 0x3925
    call aztec_movmem                ; 0x3929
    add sp, byte 6                   ; 0x392c
@..aztec_impl_tty_rd.l4:
    add word [bss_2642], si          ; 0x392f
    sub word [_TTrem], si            ; 0x3933
    mov ax, si                       ; 0x3937
    pop si                           ; 0x3939
    mov sp, bp                       ; 0x393a
    pop bp                           ; 0x393c
    ret                              ; 0x393d
