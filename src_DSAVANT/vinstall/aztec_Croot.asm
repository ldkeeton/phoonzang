; auto-generated
aztec_Croot:
    push bp                          ; 0x373f
    mov bp, sp                       ; 0x3740
    push di                          ; 0x3742
    push si                          ; 0x3743
    mov si, word [bp + 0x4]          ; 0x3744
    mov ax, 0                        ; 0x3747
    push ax                          ; 0x374a
    call aztec_isatty                ; 0x374b
    pop cx                           ; 0x374e
    mov byte [_ioflg], al            ; 0x374f
    mov ax, 1                        ; 0x3752
    push ax                          ; 0x3755
    call aztec_isatty                ; 0x3756
    pop cx                           ; 0x3759
    mov byte [_ioflg + 0x1], al      ; 0x375a
    mov ax, 2                        ; 0x375d
    push ax                          ; 0x3760
    call aztec_isatty                ; 0x3761
    pop cx                           ; 0x3764
    mov byte [_ioflg + 0x2], al      ; 0x3765
    mov ax, word [bp + 0x6]          ; 0x3768
    shl ax, 1                        ; 0x376b
    inc ax                           ; 0x376d
    inc ax                           ; 0x376e
    push ax                          ; 0x376f
    call aztec_sbrk                  ; 0x3770
    pop cx                           ; 0x3773
    mov word [Argv], ax              ; 0x3774
    mov ax, dseg_2502                ; 0x3777
    mov bx, word [Argv]              ; 0x377a
    mov word [bx], dseg_2502         ; 0x377e
    mov ax, word [bp + 0x6]          ; 0x3782
    mov word [Argc], ax              ; 0x3785
    shl ax, 1                        ; 0x3788
    mov di, word [Argv]              ; 0x378a
    add di, ax                       ; 0x378e
@..aztec_Croot.l1:
    cmp byte [si], 0x20              ; 0x3790
    je short @..aztec_Croot.l2       ; 0x3793
    cmp byte [si], 9                 ; 0x3795
    jne short @..aztec_Croot.l3      ; 0x3798
@..aztec_Croot.l2:
    inc si                           ; 0x379a
    jmp short @..aztec_Croot.l1      ; 0x379b
@..aztec_Croot.l3:
    cmp byte [si], 0                 ; 0x379d
    je short @..aztec_Croot.l8       ; 0x37a0
    mov word [di], si                ; 0x37a2
    inc di                           ; 0x37a4
    inc di                           ; 0x37a5
    inc word [Argc]                  ; 0x37a6
    mov ax, 2                        ; 0x37aa
    push ax                          ; 0x37ad
    call aztec_sbrk                  ; 0x37ae
    pop cx                           ; 0x37b1
    cmp ax, strict word 0xffff       ; 0x37b2
    jne short @..aztec_Croot.l4      ; 0x37b5
    mov ax, 0xe                      ; 0x37b7
    push ax                          ; 0x37ba
    mov ax, dseg_2502 + 0x1          ; 0x37bb
    push ax                          ; 0x37be
    mov ax, 2                        ; 0x37bf
    push ax                          ; 0x37c2
    call aztec_write                 ; 0x37c3
    add sp, byte 6                   ; 0x37c6
    mov ax, 0xc8                     ; 0x37c9
    push ax                          ; 0x37cc
    call aztec_impl_exit             ; 0x37cd
    pop cx                           ; 0x37d0
@..aztec_Croot.l4:
    inc si                           ; 0x37d1
    cmp byte [si], 0                 ; 0x37d2
    je short @..aztec_Croot.l7       ; 0x37d5
    mov al, byte [si]                ; 0x37d7
    cmp al, 0x20                     ; 0x37d9
    je short @..aztec_Croot.l5       ; 0x37db
    cmp al, 9                        ; 0x37dd
    jne short @..aztec_Croot.l6      ; 0x37df
@..aztec_Croot.l5:
    mov byte [si], 0                 ; 0x37e1
    inc si                           ; 0x37e4
    jmp short @..aztec_Croot.l7      ; 0x37e5
@..aztec_Croot.l6:
    jmp short @..aztec_Croot.l4      ; 0x37e7
@..aztec_Croot.l7:
    jmp short @..aztec_Croot.l1      ; 0x37e9
@..aztec_Croot.l8:
    mov word [di], 0                 ; 0x37eb
    push word [Argv]                 ; 0x37ef
    push word [Argc]                 ; 0x37f3
    call main                        ; 0x37f7
    add sp, byte 4                   ; 0x37fa
    mov ax, 0                        ; 0x37fd
    push ax                          ; 0x3800
    call aztec_exit                  ; 0x3801
    pop cx                           ; 0x3804
    pop si                           ; 0x3805
    pop di                           ; 0x3806
    mov sp, bp                       ; 0x3807
    pop bp                           ; 0x3809
    ret                              ; 0x380a
