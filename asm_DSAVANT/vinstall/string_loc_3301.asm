string_loc_3301:
    inc word [bp - 0x0002]           ; 0x3301
    test byte [bp - 0x000b], 0x20    ; 0x3304
    je short @..string_loc_3301.l1   ; 0x3308
    cmp al, 0x61                     ; 0x330a
    jb short @..string_loc_3301.l1   ; 0x330c
    cmp al, 0x7a                     ; 0x330e
    ja short @..string_loc_3301.l1   ; 0x3310
    sub al, 0x20                     ; 0x3312
@..string_loc_3301.l1:
    push es                          ; 0x3314
    sub ah, ah                       ; 0x3315
    push ax                          ; 0x3317
    call [bp + 0x4]                  ; 0x3318
    pop ax                           ; 0x331b
    pop es                           ; 0x331c
loc_331d:
    ret                              ; 0x331d
