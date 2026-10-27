; auto-generated
loc_UVLK_0841:
    mov al, byte [di]                ; 0x0841
    cs xlatb                         ; 0x0843
    out dx, al                       ; 0x0845
__zinsn_0846:
    add ah, 0x80                     ; 0x0846
    adc di, byte 0                   ; 0x0849
    jb short loc_UVLK_0841.forward2  ; 0x084c
    dec si                           ; 0x084e
    je short loc_UVLK_0841.forward1  ; 0x084f
    mov al, 0x20                     ; 0x0851
    out 0x20, al                     ; 0x0853
    iret                             ; 0x0855
loc_UVLK_0841.forward1:
    call music_player_tick           ; 0x0856
    mov si, word [cs:tick_divider - IMAGE_BASE] ; 0x0859
    mov al, 0x20                     ; 0x085e
    out 0x20, al                     ; 0x0860
    iret                             ; 0x0862
loc_UVLK_0841.forward2:
    call sound_stop_and_restore_timer ; 0x0863
    mov al, 0x20                     ; 0x0866
    out 0x20, al                     ; 0x0868
    iret                             ; 0x086a
