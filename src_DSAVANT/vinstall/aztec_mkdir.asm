; auto-generated
aztec_mkdir:
    push bp                          ; 0x29fe
    mov bp, sp                       ; 0x29ff
    mov ah, 0x39                     ; 0x2a01
loc_SGGJ:
    mov dx, word [bp + 4]            ; 0x2a03
    int 0x21 ; DOS create directory
    mov ax, 0                        ; 0x2a08
    jae short loc_USUN_2a13          ; 0x2a0b
    mov word [errno], ax             ; 0x2a0d
    mov ax, 0xffff                   ; 0x2a10
loc_USUN_2a13:
    pop bp                           ; 0x2a13
    ret                              ; 0x2a14
