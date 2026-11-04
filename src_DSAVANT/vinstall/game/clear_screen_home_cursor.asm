; auto-generated
clear_screen_home_cursor:
    call bios_clear_screen_home_cursor ; 0x0443
    mov ax, 0                        ; 0x0446
    push ax                          ; 0x0449
    push ax                          ; 0x044a
    call bios_set_cursor             ; 0x044b
    add sp, byte 4                   ; 0x044e
    ret                              ; 0x0451
