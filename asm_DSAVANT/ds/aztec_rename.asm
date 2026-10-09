    push bp                          ; 0x503b
    db 0x8b, 0xec ; mov bp, sp
    push di                          ; 0x503e
    mov ah, 0x56                     ; 0x503f
    mov dx, word [bp + 0x4]          ; 0x5041
    mov di, ds                       ; 0x5044
    mov es, di                       ; 0x5046
    mov di, word [bp + 0x6]          ; 0x5048
    int 0x21 ; DOS rename file
    pop di                           ; 0x504d
    jae short loc_5058               ; 0x504e
    mov word [data_0c72], ax         ; 0x5050
    mov ax, 0xffff                   ; 0x5053
    pop bp                           ; 0x5056
    ret                              ; 0x5057
