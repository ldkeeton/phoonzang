; auto-generated
loc_0969:
    call sound_stop_and_restore_timer ; 0x0969
    mov al, 0x20                     ; 0x096c
    out 0x20, al                     ; 0x096e
    pop bx                           ; 0x0970
    pop dx                           ; 0x0971
    pop ds                           ; 0x0972
    pop ax                           ; 0x0973
    iret                             ; 0x0974
