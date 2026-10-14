; auto-generated
leaf_loc_35ba:
    push bp                          ; 0x35ba
    mov bp, sp                       ; 0x35bb
    sub sp, byte 8                   ; 0x35bd
    push ds                          ; 0x35c0
    push es                          ; 0x35c1
    push di                          ; 0x35c2
    push si                          ; 0x35c3
    mov ax, ds                       ; 0x35c4
    mov es, ax                       ; 0x35c6
    lds si, word [cs:cseg_01f7 - IMAGE_BASE] ; 0x35c8
    mov di, word [bp + 0xc]          ; 0x35cd
    mov cx, 0x300                    ; 0x35d0
    rep movsb                        ; 0x35d3
    pop si                           ; 0x35d5
    pop di                           ; 0x35d6
    pop es                           ; 0x35d7
    pop ds                           ; 0x35d8
    mov sp, bp                       ; 0x35d9
    pop bp                           ; 0x35db
    ret                              ; 0x35dc

    times 65 db 0

