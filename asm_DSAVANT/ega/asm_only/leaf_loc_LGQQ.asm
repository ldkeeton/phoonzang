; auto-generated
; asm only
leaf_loc_LGQQ:
    push bp                          ; 0x0496
    mov bp, sp                       ; 0x0497
    push es                          ; 0x0499
    push di                          ; 0x049a
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x049b
    mov es, ax                       ; 0x049f
    xor di, di                       ; 0x04a1
    mov ax, word [bp + 0xc]          ; 0x04a3
    mov cx, 0xfa00                   ; 0x04a6
    rep stosb                        ; 0x04a9
    pop di                           ; 0x04ab
    pop es                           ; 0x04ac
    mov sp, bp                       ; 0x04ad
    pop bp                           ; 0x04af
    ret                              ; 0x04b0
