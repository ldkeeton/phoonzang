aztec_unlink:
    push bp                          ; 0x38a0
    mov bp, sp                       ; 0x38a1
    mov ah, 0x41                     ; 0x38a3
    mov dx, word [bp + 0x4]          ; 0x38a5
    int 0x21 ; DOS delete file (handle)
    jae short @..aztec_unlink.l1     ; 0x38aa
    mov word [data_24d6], ax         ; 0x38ac
    mov ax, 0xffff                   ; 0x38af
    pop bp                           ; 0x38b2
    ret                              ; 0x38b3
@..aztec_unlink.l1:
    sub ax, ax                       ; 0x38b4
    pop bp                           ; 0x38b6
    ret                              ; 0x38b7
