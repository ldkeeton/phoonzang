; auto-generated
loc_JTRN_03e1:
    push bp                          ; 0x03e1
    mov bp, sp                       ; 0x03e2
    add sp, strict word 0xff00       ; 0x03e4
    push word [bp + 0x6]             ; 0x03e8
    push word [bp + 0x4]             ; 0x03eb
    call bios_video_loc_RRQH         ; 0x03ee
    add sp, byte 4                   ; 0x03f1
    lea ax, word [bp - 0x00ff]       ; 0x03f4
    push ax                          ; 0x03f8
    push word [bp + 0x8]             ; 0x03f9
    call aztec_raise                 ; 0x03fc
    add sp, byte 4                   ; 0x03ff
    lea ax, word [bp - 0x00ff]       ; 0x0402
    push ax                          ; 0x0406
    call bios_video_loc_HMPN         ; 0x0407
    pop cx                           ; 0x040a
    mov sp, bp                       ; 0x040b
    pop bp                           ; 0x040d
    ret                              ; 0x040e
