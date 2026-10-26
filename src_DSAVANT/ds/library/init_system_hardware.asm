; auto-generated
init_system_hardware:
    push bp                          ; 0x3067
    mov bp, sp                       ; 0x3068
    cld                              ; 0x306a
    sub sp, byte 4                   ; 0x306b
    push ds                          ; 0x306e
    push es                          ; 0x306f
    push si                          ; 0x3070
    push di                          ; 0x3071
    mov ax, ds                       ; 0x3072
    mov es, ax                       ; 0x3074
    call seed_random_from_timer      ; 0x3076
    call calibrate_loops_per_ms      ; 0x3079
    call detect_video_adapter        ; 0x307c
    call allocate_driver_blocks      ; 0x307f
    call detect_mouse                ; 0x3082
    call detect_expanded_memory      ; 0x3085
    call load_play_driver            ; 0x3088
    call load_video_driver           ; 0x308b
    mov ax, 0                        ; 0x308e
    push ax                          ; 0x3091
    call gfx_fill_screen_buffer      ; 0x3092
    add sp, byte 2                   ; 0x3095
    mov ax, word [bp - 2]            ; 0x3098
    pop di                           ; 0x309b
    pop si                           ; 0x309c
    pop es                           ; 0x309d
    pop ds                           ; 0x309e
    mov sp, bp                       ; 0x309f
    pop bp                           ; 0x30a1
    ret                              ; 0x30a2
