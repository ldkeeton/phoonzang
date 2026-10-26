; auto-generated
loc_LPNP:
    mov ax, 0                        ; 0x12d3
    call aztec_csav                  ; 0x12d6
    push word [bp + 4]               ; 0x12d9
    call show_message                ; 0x12dc
    pop cx                           ; 0x12df
    call flush_keyboard              ; 0x12e0
    push word [bp + 6]               ; 0x12e3
    call play_sound_effect           ; 0x12e6
    pop cx                           ; 0x12e9
    push word [bp + 8]               ; 0x12ea
    call wait_ticks_or_key           ; 0x12ed
    pop cx                           ; 0x12f0
    mov ax, 0x98                     ; 0x12f1
    push ax                          ; 0x12f4
    mov ax, 0x13f                    ; 0x12f5
    push ax                          ; 0x12f8
    mov ax, 0x92                     ; 0x12f9
    push ax                          ; 0x12fc
    mov ax, 0                        ; 0x12fd
    push ax                          ; 0x1300
    call gfx_show_area               ; 0x1301
    add sp, byte 8                   ; 0x1304
    ret                              ; 0x1307
