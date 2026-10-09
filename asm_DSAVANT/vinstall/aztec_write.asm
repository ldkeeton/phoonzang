aztec_write:
    push bp                          ; 0x383a
    mov bp, sp                       ; 0x383b
    mov ah, 0x40                     ; 0x383d
loc_383f:
    mov bx, word [bp + 0x4]          ; 0x383f
    cmp byte [bx + 0x251a], 0        ; 0x3842
    je short loc_3857                ; 0x3847
    pop bp                           ; 0x3849
    cmp ah, 0x3f                     ; 0x384a
    je short loc_3853                ; 0x384d
    jmp [data_2530]                  ; 0x384f
loc_3853:
    jmp [bios_video_loc_252e]        ; 0x3853
loc_3857:
    mov dx, word [bp + 0x6]          ; 0x3857
    mov cx, word [bp + 0x8]          ; 0x385a
    int 0x21 ; DOS function dispatcher
    jae short loc_3867               ; 0x385f
    mov word [data_24d6], ax         ; 0x3861
    mov ax, 0xffff                   ; 0x3864
loc_3867:
    pop bp                           ; 0x3867
    ret                              ; 0x3868
