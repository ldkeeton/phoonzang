; auto-generated
; asm only
bios_video_loc_KLVI:
    push bp                          ; 0x2720
    mov bp, sp                       ; 0x2721
    push di                          ; 0x2723
    push si                          ; 0x2724
    mov bh, 0                        ; 0x2725
    mov ah, 3                        ; 0x2727
    int 0x10 ; BIOS video: get cursor position
    mov ax, dx                       ; 0x272b
    pop si                           ; 0x272d
    pop di                           ; 0x272e
    mov sp, bp                       ; 0x272f
    pop bp                           ; 0x2731
    ret                              ; 0x2732
