; auto-generated
loc_STSN:
    push bp                          ; 0x0429
    mov bp, sp                       ; 0x042a
    push word [bp + 6]               ; 0x042c
    push word [bp + 4]               ; 0x042f
    call bios_set_cursor             ; 0x0432
    add sp, byte 4                   ; 0x0435
    push word [bp + 8]               ; 0x0438
    call bios_video_loc_HMPN         ; 0x043b
    pop cx                           ; 0x043e
    mov sp, bp                       ; 0x043f
    pop bp                           ; 0x0441
    ret                              ; 0x0442
