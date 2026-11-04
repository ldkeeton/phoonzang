; auto-generated
put_text_at:
    push bp                          ; 0x040f
    mov bp, sp                       ; 0x0410
    push word [bp + 6]               ; 0x0412
    push word [bp + 4]               ; 0x0415
    call bios_set_cursor             ; 0x0418
    add sp, byte 4                   ; 0x041b
    push word [bp + 8]               ; 0x041e
    call bios_put_text               ; 0x0421
    pop cx                           ; 0x0424
    mov sp, bp                       ; 0x0425
    pop bp                           ; 0x0427
    ret                              ; 0x0428
