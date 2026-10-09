aztec_rename:
    push bp                          ; 0x38b8
    mov bp, sp                       ; 0x38b9
    push di                          ; 0x38bb
    mov ah, 0x56                     ; 0x38bc
    mov dx, word [bp + 0x4]          ; 0x38be
    mov di, ds                       ; 0x38c1
    mov es, di                       ; 0x38c3
    mov di, word [bp + 0x6]          ; 0x38c5
    int 0x21 ; DOS rename file
    pop di                           ; 0x38ca
    jae short @..aztec_rename.l1     ; 0x38cb
    mov word [data_24d6], ax         ; 0x38cd
    mov ax, 0xffff                   ; 0x38d0
    pop bp                           ; 0x38d3
    ret                              ; 0x38d4
@..aztec_rename.l1:
    sub ax, ax                       ; 0x38d5
    pop bp                           ; 0x38d7
    ret                              ; 0x38d8
