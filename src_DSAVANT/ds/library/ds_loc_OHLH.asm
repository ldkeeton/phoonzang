; auto-generated
ds_loc_OHLH:
    push bp                          ; 0x36bc
    mov bp, sp                       ; 0x36bd
    cld                              ; 0x36bf
    push word [bp + 6]               ; 0x36c0
    call delay_ms                    ; 0x36c3
    add sp, byte 2                   ; 0x36c6
    mov sp, bp                       ; 0x36c9
    pop bp                           ; 0x36cb
    retf                             ; 0x36cc
