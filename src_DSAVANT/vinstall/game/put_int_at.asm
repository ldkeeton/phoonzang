; auto-generated
put_int_at:
    push bp                          ; 0x03b3
    mov bp, sp                       ; 0x03b4
    add sp, strict word 0xff00       ; 0x03b6
    push word [bp + 6]               ; 0x03ba
    push word [bp + 4]               ; 0x03bd
    call bios_set_cursor             ; 0x03c0
    add sp, byte 4                   ; 0x03c3
    lea ax, word [bp - 0xff]         ; 0x03c6
    push ax                          ; 0x03ca
    push word [bp + 8]               ; 0x03cb
    call int_to_str                  ; 0x03ce
    add sp, byte 4                   ; 0x03d1
    lea ax, word [bp - 0xff]         ; 0x03d4
    push ax                          ; 0x03d8
    call bios_put_text               ; 0x03d9
    pop cx                           ; 0x03dc
    mov sp, bp                       ; 0x03dd
    pop bp                           ; 0x03df
    ret                              ; 0x03e0
