; auto-generated
leaf_loc_TKRV:
    push bp                          ; 0x0496
    mov bp, sp                       ; 0x0497
    push es                          ; 0x0499
    push di                          ; 0x049a
    mov ax, ds                       ; 0x049b
    mov es, ax                       ; 0x049d
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x049f
    mov es, ax                       ; 0x04a3
    xor di, di                       ; 0x04a5
    mov ax, word [bp + 0xc]          ; 0x04a7
    mov cx, 0xfa00                   ; 0x04aa
    rep stosb                        ; 0x04ad
    pop di                           ; 0x04af
    pop es                           ; 0x04b0
    mov sp, bp                       ; 0x04b1
    pop bp                           ; 0x04b3
    ret                              ; 0x04b4
