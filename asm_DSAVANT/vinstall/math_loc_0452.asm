math_loc_0452:
    push bp                          ; 0x0452
    mov bp, sp                       ; 0x0453
    add sp, byte 0xfe                ; 0x0455
    call bios_video_loc_2720         ; 0x0458
    mov word [bp - 0x0002], ax       ; 0x045b
    mov ax, 7                        ; 0x045e
    push ax                          ; 0x0461
    mov ax, 0x1444                   ; 0x0462
    push ax                          ; 0x0465
    call loc_2c62                    ; 0x0466
    add sp, byte 4                   ; 0x0469
    push word [bp - 0x0002]          ; 0x046c
    call bios_video_loc_2733         ; 0x046f
    pop cx                           ; 0x0472
    mov sp, bp                       ; 0x0473
    pop bp                           ; 0x0475
    ret                              ; 0x0476
