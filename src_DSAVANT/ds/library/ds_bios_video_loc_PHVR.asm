; auto-generated
; asm only
ds_bios_video_loc_PHVR:
    push es                          ; 0x30c3
    sub ax, ax                       ; 0x30c4
    mov es, ax                       ; 0x30c6
    mov dl, byte [cs:saved_equip_byte - IMAGE_BASE] ; 0x30c8
    mov byte [es:bios_data_0410], dl ; 0x30cd
    pop es                           ; 0x30d2
    mov al, byte [cs:saved_video_mode - IMAGE_BASE] ; 0x30d3
    xor ah, ah                       ; 0x30d7
    int 0x10 ; BIOS video
    ret                              ; 0x30db
