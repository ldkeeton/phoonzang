; auto-generated
ds_app_string_KQMO: ; Aztec csav frame=0x0100
    mov ax, 0xff00                   ; 0x0860
    call aztec_csav                  ; 0x0863
    lea ax, word [bp - 0x00ff]       ; 0x0866
    push ax                          ; 0x086a
    push word [bp + 0x4]             ; 0x086b
    call load_message_string         ; 0x086e
    add sp, byte 4                   ; 0x0871
    push word [bp + 0x6]             ; 0x0874
    lea ax, word [bp - 0x00ff]       ; 0x0877
    push ax                          ; 0x087b
    call draw_string                 ; 0x087c
    add sp, byte 4                   ; 0x087f
    ret                              ; 0x0882
