; auto-generated
loc_095d:
    call music_player_tick           ; 0x095d
    mov al, 0x20                     ; 0x0960
    out 0x20, al                     ; 0x0962
    pop bx                           ; 0x0964
    pop dx                           ; 0x0965
    pop ds                           ; 0x0966
    pop ax                           ; 0x0967
    iret                             ; 0x0968
