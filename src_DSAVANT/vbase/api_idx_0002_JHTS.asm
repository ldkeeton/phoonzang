; auto-generated
api_idx_0002_JHTS:
    mov ax, 0xfffe                   ; 0x8ca3
    call aztec_csav                  ; 0x8ca6
    mov ax, 0                        ; 0x8ca9
    push ax                          ; 0x8cac
    mov ax, dseg_9172                ; 0x8cad
    push ax                          ; 0x8cb0
    call load_screen_file            ; 0x8cb1
    add sp, byte 4                   ; 0x8cb4
    mov ax, 0                        ; 0x8cb7
    push ax                          ; 0x8cba
    mov ax, 2                        ; 0x8cbb
    push ax                          ; 0x8cbe
    mov ax, 0x91                     ; 0x8cbf
    push ax                          ; 0x8cc2
    mov ax, 0x13f                    ; 0x8cc3
    push ax                          ; 0x8cc6
    mov ax, 0                        ; 0x8cc7
    push ax                          ; 0x8cca
    push ax                          ; 0x8ccb
    call gfx_cache_area              ; 0x8ccc
    add sp, byte 0xc                 ; 0x8ccf
    mov word [scene_backdrop_ref_hi], dx ; 0x8cd2
    mov word [scene_backdrop_ref], ax ; 0x8cd6
    mov ax, 0xf                      ; 0x8cd9
    push ax                          ; 0x8cdc
    mov ax, 0xd                      ; 0x8cdd
    push ax                          ; 0x8ce0
    call api_idx_0016_LTLN           ; 0x8ce1
    add sp, byte 4                   ; 0x8ce4
    mov ax, word [bp + 6]            ; 0x8ce7
    mov word [scene_cue_a], ax       ; 0x8cea
    mov ax, dseg_917f                ; 0x8ced
    push ax                          ; 0x8cf0
    mov ax, scene_digit_cycle        ; 0x8cf1
    push ax                          ; 0x8cf4
    call aztec_strcpy                ; 0x8cf5
    add sp, byte 4                   ; 0x8cf8
    mov word [scene_step_a], 0       ; 0x8cfb
    mov word [scene_step_b], 0       ; 0x8d01
    mov word [scene_frame], 0        ; 0x8d07
    mov word [scene_index], 6        ; 0x8d0d
    mov word [bss_a5ae], 5           ; 0x8d13
    les bx, word [tick_counter_ptr]  ; 0x8d19
    mov ax, word [es:bx]             ; 0x8d1d
    mov dx, word [es:bx + 2]         ; 0x8d20
    mov word [party_redraw_last_tick_hi], dx ; 0x8d24
    mov word [party_redraw_last_tick], ax ; 0x8d28
    call draw_scene_frame            ; 0x8d2b
    mov ax, 0                        ; 0x8d2e
    push ax                          ; 0x8d31
    push ax                          ; 0x8d32
    push ax                          ; 0x8d33
    call gfx_reset_rgb               ; 0x8d34
    add sp, byte 6                   ; 0x8d37
    mov ax, 0xc7                     ; 0x8d3a
    push ax                          ; 0x8d3d
    mov ax, 0x13f                    ; 0x8d3e
    push ax                          ; 0x8d41
    mov ax, 0                        ; 0x8d42
    push ax                          ; 0x8d45
    push ax                          ; 0x8d46
    call gfx_show_area               ; 0x8d47
    add sp, byte 8                   ; 0x8d4a
    mov ax, 0                        ; 0x8d4d
    push ax                          ; 0x8d50
    call gfx_fade_in                 ; 0x8d51
    pop cx                           ; 0x8d54
    mov ax, 0                        ; 0x8d55
    push ax                          ; 0x8d58
    push word [bp + 4]               ; 0x8d59
    call loc_LIQV                    ; 0x8d5c
    add sp, byte 4                   ; 0x8d5f
    mov ax, 0xf                      ; 0x8d62
    push ax                          ; 0x8d65
    call loc_GUNQ                    ; 0x8d66
    pop cx                           ; 0x8d69
    mov ax, 0                        ; 0x8d6a
    push ax                          ; 0x8d6d
    mov ax, 1                        ; 0x8d6e
    push ax                          ; 0x8d71
    push word [scene_backdrop_ref_hi] ; 0x8d72
    push word [scene_backdrop_ref]   ; 0x8d76
    call gfx_restore_screen          ; 0x8d7a
    add sp, byte 8                   ; 0x8d7d
    call blank_scene_screen          ; 0x8d80
    ret                              ; 0x8d83
