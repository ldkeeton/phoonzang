app_0860: ; Aztec csav frame=0x0100
    mov ax, 0xff00                   ; 0x0860
    call aztec_csav                  ; 0x0863
    lea ax, word [bp - 0x00ff]       ; 0x0866
    push ax                          ; 0x086a
    push word [bp + 0x4]             ; 0x086b
    call app_mem_0782                ; 0x086e
    add sp, byte 4                   ; 0x0871
    push word [bp + 0x6]             ; 0x0874
    lea ax, word [bp - 0x00ff]       ; 0x0877
    push ax                          ; 0x087b
    call string_loc_3a95             ; 0x087c
    add sp, byte 4                   ; 0x087f
    ret                              ; 0x0882
