; auto-generated
loc_JTRN_03b3:
    push bp                          ; 0x03b3
    mov bp, sp                       ; 0x03b4
    add sp, strict word 0xff00       ; 0x03b6
    push word [bp + 0x6]             ; 0x03ba
    push word [bp + 0x4]             ; 0x03bd
    call bios_video_loc_RRQH         ; 0x03c0
    add sp, byte 4                   ; 0x03c3
    lea ax, word [bp - 0x00ff]       ; 0x03c6
    push ax                          ; 0x03ca
    push word [bp + 0x8]             ; 0x03cb
    call aztec_raise                 ; 0x03ce
    add sp, byte 4                   ; 0x03d1
    lea ax, word [bp - 0x00ff]       ; 0x03d4
    push ax                          ; 0x03d8
    call bios_video_loc_QTQU         ; 0x03d9
    pop cx                           ; 0x03dc
    mov sp, bp                       ; 0x03dd
    pop bp                           ; 0x03df
    ret                              ; 0x03e0
