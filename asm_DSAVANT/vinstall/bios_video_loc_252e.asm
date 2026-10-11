bios_video_loc_252e:
    push bp                          ; 0x252e
    mov bp, sp                       ; 0x252f
    push di                          ; 0x2531
    push si                          ; 0x2532
    mov ax, 0x600                    ; 0x2533
    mov bh, byte [bss_2647]          ; 0x2536
    xor cx, cx                       ; 0x253a
    mov dx, 0x184f                   ; 0x253c
    push bp                          ; 0x253f
    int 0x10 ; BIOS video
    pop bp                           ; 0x2542
    mov ah, 2                        ; 0x2543
    xor dx, dx                       ; 0x2545
    mov bx, dx                       ; 0x2547
    int 0x10 ; BIOS video: set cursor position
    pop si                           ; 0x254b
    pop di                           ; 0x254c
    mov sp, bp                       ; 0x254d
    pop bp                           ; 0x254f
    ret                              ; 0x2550
