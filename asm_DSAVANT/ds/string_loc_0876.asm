string_loc_0876:
    push es                          ; 0x0876
    lea ax, word [bp - 0x00ff]       ; 0x0877
    push ax                          ; 0x087b
    call string_loc_3a95             ; 0x087c
    add sp, byte 4                   ; 0x087f
    ret                              ; 0x0882
