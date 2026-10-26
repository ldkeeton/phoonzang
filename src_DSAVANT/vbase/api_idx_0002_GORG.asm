; auto-generated
api_idx_0002_GORG:
    mov ax, 0xfffe                   ; 0x8b69
    call aztec_csav                  ; 0x8b6c
    mov ax, 0                        ; 0x8b6f
    push ax                          ; 0x8b72
    mov ax, dseg_9165                ; 0x8b73
    push ax                          ; 0x8b76
    call load_screen_file            ; 0x8b77
    add sp, byte 4                   ; 0x8b7a
    mov ax, 0                        ; 0x8b7d
    push ax                          ; 0x8b80
    mov ax, 2                        ; 0x8b81
    push ax                          ; 0x8b84
    mov ax, 0x91                     ; 0x8b85
    push ax                          ; 0x8b88
    mov ax, 0x13f                    ; 0x8b89
    push ax                          ; 0x8b8c
    mov ax, 0                        ; 0x8b8d
    push ax                          ; 0x8b90
    push ax                          ; 0x8b91
    call gfx_cache_area              ; 0x8b92
    add sp, byte 0xc                 ; 0x8b95
    mov word [scene_backdrop_ref_hi], dx ; 0x8b98
    mov word [scene_backdrop_ref], ax ; 0x8b9c
    mov ax, 0xf                      ; 0x8b9f
    push ax                          ; 0x8ba2
    mov ax, 0xa                      ; 0x8ba3
    push ax                          ; 0x8ba6
    call api_idx_0016_LTLN           ; 0x8ba7
    add sp, byte 4                   ; 0x8baa
    mov ax, 0x11                     ; 0x8bad
    push ax                          ; 0x8bb0
    mov ax, 6                        ; 0x8bb1
    push ax                          ; 0x8bb4
    call api_idx_0016_LTLN           ; 0x8bb5
    add sp, byte 4                   ; 0x8bb8
    mov ax, word [bp + 6]            ; 0x8bbb
    mov word [scene_cue_b], ax       ; 0x8bbe
    mov word [scene_frame], 0        ; 0x8bc1
    mov word [scene_index], 5        ; 0x8bc7
    mov word [scroll_x], 0           ; 0x8bcd
    mov word [scroll_x_1], 0xa0      ; 0x8bd3
    mov word [scroll_x_2], 0x140     ; 0x8bd9
    mov word [scroll_x_3], 0x1e0     ; 0x8bdf
    mov word [bp - 2], 0             ; 0x8be5
.back1:
    mov ax, word [bp - 2]            ; 0x8bea
    shl ax, 1                        ; 0x8bed
    mov bx, ax                       ; 0x8bef
    mov word [bx + sprite_pos], 0x140 ; 0x8bf1
    mov ax, 0x10                     ; 0x8bf7
    push ax                          ; 0x8bfa
    call random_below                ; 0x8bfb
    pop cx                           ; 0x8bfe
    add ax, strict word 4            ; 0x8bff
    mov cx, word [bp - 2]            ; 0x8c02
    shl cx, 1                        ; 0x8c05
    mov bx, cx                       ; 0x8c07
    mov word [bx + bss_a5ea], ax     ; 0x8c09
    inc word [bp - 2]                ; 0x8c0d
    mov ax, word [bp - 2]            ; 0x8c10
    cmp ax, strict word 8            ; 0x8c13
    jl short .back1                  ; 0x8c16
    mov word [actor_x], 0xff9c       ; 0x8c18
    mov word [actor_y], 0x6e         ; 0x8c1e
    mov word [scene_clip_arg], 0     ; 0x8c24
    mov word [bss_a5ae], 5           ; 0x8c2a
    les bx, word [tick_counter_ptr]  ; 0x8c30
    mov ax, word [es:bx]             ; 0x8c34
    mov dx, word [es:bx + 2]         ; 0x8c37
    mov word [party_redraw_last_tick_hi], dx ; 0x8c3b
    mov word [party_redraw_last_tick], ax ; 0x8c3f
    call draw_scene_frame            ; 0x8c42
    mov ax, 0                        ; 0x8c45
    push ax                          ; 0x8c48
    push ax                          ; 0x8c49
    push ax                          ; 0x8c4a
    call gfx_reset_rgb               ; 0x8c4b
    add sp, byte 6                   ; 0x8c4e
    mov ax, 0xc7                     ; 0x8c51
    push ax                          ; 0x8c54
    mov ax, 0x13f                    ; 0x8c55
    push ax                          ; 0x8c58
    mov ax, 0                        ; 0x8c59
    push ax                          ; 0x8c5c
    push ax                          ; 0x8c5d
    call gfx_show_area               ; 0x8c5e
    add sp, byte 8                   ; 0x8c61
    mov ax, 0                        ; 0x8c64
    push ax                          ; 0x8c67
    call gfx_fade_in                 ; 0x8c68
    pop cx                           ; 0x8c6b
    mov ax, 0                        ; 0x8c6c
    push ax                          ; 0x8c6f
    push word [bp + 4]               ; 0x8c70
    call loc_LIQV                    ; 0x8c73
    add sp, byte 4                   ; 0x8c76
    mov ax, 0x11                     ; 0x8c79
    push ax                          ; 0x8c7c
    call loc_GUNQ                    ; 0x8c7d
    pop cx                           ; 0x8c80
    mov ax, 0xf                      ; 0x8c81
    push ax                          ; 0x8c84
    call loc_GUNQ                    ; 0x8c85
    pop cx                           ; 0x8c88
    mov ax, 0                        ; 0x8c89
    push ax                          ; 0x8c8c
    mov ax, 1                        ; 0x8c8d
    push ax                          ; 0x8c90
    push word [scene_backdrop_ref_hi] ; 0x8c91
    push word [scene_backdrop_ref]   ; 0x8c95
    call gfx_restore_screen          ; 0x8c99
    add sp, byte 8                   ; 0x8c9c
    call blank_scene_screen          ; 0x8c9f
    ret                              ; 0x8ca2
