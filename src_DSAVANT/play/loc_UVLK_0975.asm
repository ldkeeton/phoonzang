; auto-generated
loc_UVLK_0975:
    mov al, byte [di]                ; 0x0975
    cs xlatb                         ; 0x0977
    out dx, al                       ; 0x0979
__zinsn_097a:
    add ah, 0x80                     ; 0x097a
    adc di, byte 0                   ; 0x097d
    jb short loc_UVLK_0975.forward2  ; 0x0980
    dec si                           ; 0x0982
    je short loc_UVLK_0975.forward1  ; 0x0983
    mov al, 0x20                     ; 0x0985
    out 0x20, al                     ; 0x0987
    iret                             ; 0x0989
loc_UVLK_0975.forward1:
    call music_player_tick           ; 0x098a
    mov si, word [cs:tick_divider - IMAGE_BASE] ; 0x098d
    mov al, 0x20                     ; 0x0992
    out 0x20, al                     ; 0x0994
    iret                             ; 0x0996
loc_UVLK_0975.forward2:
    call sound_stop_and_restore_timer ; 0x0997
    mov al, 0x20                     ; 0x099a
    out 0x20, al                     ; 0x099c
    iret                             ; 0x099e
