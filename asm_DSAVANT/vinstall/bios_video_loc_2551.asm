bios_video_loc_2551:
    push bp                          ; 0x2551
    mov bp, sp                       ; 0x2552
    push di                          ; 0x2554
    push si                          ; 0x2555
    mov bx, word [bp + 0x4]          ; 0x2556
    mov dx, word [bp + 0x6]          ; 0x2559
    mov dh, bl                       ; 0x255c
    mov bh, 0                        ; 0x255e
    mov ah, data_0002                ; 0x2560
    int 0x10 ; BIOS video: set cursor position
    pop si                           ; 0x2564
    pop di                           ; 0x2565
    mov sp, bp                       ; 0x2566
    pop bp                           ; 0x2568
    ret                              ; 0x2569
