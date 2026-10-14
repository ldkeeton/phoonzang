; auto-generated
; asm only
ds_bios_video_loc_PRGN:
    push es                          ; 0x30c3
    sub ax, ax                       ; 0x30c4
    mov es, ax                       ; 0x30c6
    mov dl, byte [cs:cseg_2f37 - IMAGE_BASE] ; 0x30c8
    mov byte [es:bios_data_0410], dl ; 0x30cd
    pop es                           ; 0x30d2
    mov al, byte [cs:cseg_2f36 - IMAGE_BASE] ; 0x30d3
    xor ah, ah                       ; 0x30d7
    int 0x10 ; BIOS video
    ret                              ; 0x30db
cseg_30dc:
    db 0xb8, 0x0b
cseg_30de:
    db 0x01, 0x00
cseg_30e0:
    db 0x2f, 0x75
