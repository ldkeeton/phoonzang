aztec_close:
    push bp                          ; 0x3869
    mov bp, sp                       ; 0x386a
    mov ah, 0x3e                     ; 0x386c
    mov bx, word [bp + 0x4]          ; 0x386e
    int 0x21 ; DOS close file handle
    jae short @..aztec_close.l1      ; 0x3873
    mov word [dseg_24d6], ax         ; 0x3875
    mov ax, 0xffff                   ; 0x3878
    pop bp                           ; 0x387b
    ret                              ; 0x387c
@..aztec_close.l1:
    sub ax, ax                       ; 0x387d
    pop bp                           ; 0x387f
    ret                              ; 0x3880
