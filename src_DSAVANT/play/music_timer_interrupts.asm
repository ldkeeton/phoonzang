; auto-generated
music_timer_interrupt:
    push ax                          ; 0x0ab4
    push bx                          ; 0x0ab5
    push ds                          ; 0x0ab6
    call music_player_tick           ; 0x0ab7
    mov al, 0x20                     ; 0x0aba
    out 0x20, al                     ; 0x0abc
    pop ds                           ; 0x0abe
    pop bx                           ; 0x0abf
    pop ax                           ; 0x0ac0
    iret                             ; 0x0ac1
music_timer_interrupt_divided:
    push ax                          ; 0x0ac2
    push bx                          ; 0x0ac3
    push ds                          ; 0x0ac4
    dec word [cs:tick_divider - IMAGE_BASE] ; 0x0ac5
    jg short .forward1               ; 0x0aca
    call music_player_tick           ; 0x0acc
.forward1:
    mov al, 0x20                     ; 0x0acf
    out 0x20, al                     ; 0x0ad1
    pop ds                           ; 0x0ad3
    pop bx                           ; 0x0ad4
    pop ax                           ; 0x0ad5
    iret                             ; 0x0ad6
