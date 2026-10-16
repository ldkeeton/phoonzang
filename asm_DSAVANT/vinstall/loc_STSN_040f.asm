; auto-generated
loc_STSN_040f:
    push bp                          ; 0x040f
    mov bp, sp                       ; 0x0410
    push word [bp + 0x6]             ; 0x0412
    push word [bp + 0x4]             ; 0x0415
    call bios_video_loc_RRQH         ; 0x0418
    add sp, byte 4                   ; 0x041b
    push word [bp + 0x8]             ; 0x041e
    call bios_video_loc_QTQU         ; 0x0421
    pop cx                           ; 0x0424
    mov sp, bp                       ; 0x0425
    pop bp                           ; 0x0427
    ret                              ; 0x0428
