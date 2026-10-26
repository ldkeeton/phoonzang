; auto-generated
loc_JTRN:
    push bp                          ; 0x03e1
    mov bp, sp                       ; 0x03e2
    add sp, strict word 0xff00       ; 0x03e4
    push word [bp + 6]               ; 0x03e8
    push word [bp + 4]               ; 0x03eb
    call bios_set_cursor             ; 0x03ee
    add sp, byte 4                   ; 0x03f1
    lea ax, word [bp - 0xff]         ; 0x03f4
    push ax                          ; 0x03f8
    push word [bp + 8]               ; 0x03f9
    call int_to_str                  ; 0x03fc
    add sp, byte 4                   ; 0x03ff
    lea ax, word [bp - 0xff]         ; 0x0402
    push ax                          ; 0x0406
    call bios_video_loc_HMPN         ; 0x0407
    pop cx                           ; 0x040a
    mov sp, bp                       ; 0x040b
    pop bp                           ; 0x040d
    ret                              ; 0x040e
