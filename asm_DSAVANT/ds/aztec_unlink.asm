    push bp                          ; 0x5023
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x41                     ; 0x5026
    mov dx, word [bp + 0x4]          ; 0x5028
    int 0x21 ; DOS delete file (handle)
    jae short loc_5037               ; 0x502d
    mov word [data_0c72], ax         ; 0x502f
    mov ax, 0xffff                   ; 0x5032
    pop bp                           ; 0x5035
    ret                              ; 0x5036
