; auto-generated
; asm only
string_loc_SJPQ:
    push bp                          ; 0x374e
    mov bp, sp                       ; 0x374f
    push si                          ; 0x3751
    push di                          ; 0x3752
    mov di, ds                       ; 0x3753
    mov es, di                       ; 0x3755
    mov si, word [bp + 0x4]          ; 0x3757
    mov di, word [bp + 0x6]          ; 0x375a
    mov cx, word [bp + 0x8]          ; 0x375d
    jcxz @..string_loc_SJPQ.l2       ; 0x3760
    cmp di, si                       ; 0x3762
    je short @..string_loc_SJPQ.l2   ; 0x3764
@..string_loc_SJPQ.l1:
    mov al, byte [es:di]             ; 0x3766
    xchg byte [si], al               ; 0x3769
    stosb                            ; 0x376b
    inc si                           ; 0x376c
    loop @..string_loc_SJPQ.l1       ; 0x376d
@..string_loc_SJPQ.l2:
    pop di                           ; 0x376f
    pop si                           ; 0x3770
    pop bp                           ; 0x3771
    ret                              ; 0x3772
