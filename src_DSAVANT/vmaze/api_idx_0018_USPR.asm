; auto-generated
api_idx_0018_USPR:
    mov ax, 0xffe8                   ; 0x1c94
    call aztec_csav                  ; 0x1c97
    call stop_and_clear_maze_sounds  ; 0x1c9a
    call score_music_enabled         ; 0x1c9d
    mov word [story_music_enabled], ax ; 0x1ca0
    test ax, ax                      ; 0x1ca3
    je short .forward1               ; 0x1ca5
    mov ax, 0                        ; 0x1ca7
    push ax                          ; 0x1caa
    mov ax, 1                        ; 0x1cab
    push ax                          ; 0x1cae
    call load_score_files            ; 0x1caf
    add sp, byte 4                   ; 0x1cb2
    mov ax, word [dseg_010e]         ; 0x1cb5
    mov word [story_score_number], ax ; 0x1cb8
    mov ax, 0                        ; 0x1cbb
    push ax                          ; 0x1cbe
    push word [story_score_number]   ; 0x1cbf
    push ax                          ; 0x1cc3
    call play_score_at_volume        ; 0x1cc4
    add sp, byte 6                   ; 0x1cc7
    mov word [story_score_volume], ax ; 0x1cca
.forward1:
    mov ax, MSG_RESTING              ; 0x1ccd
    push ax                          ; 0x1cd0
    call show_message                ; 0x1cd1
    pop cx                           ; 0x1cd4
    mov word [bss_91ae], 0           ; 0x1cd5
    mov ax, word [game_time]         ; 0x1cdb
    mov dx, word [game_time_hi]      ; 0x1cde
    sub ax, word [game_time_aux_a]   ; 0x1ce2
    sbb dx, word [game_time_aux_a_hi] ; 0x1ce6
    add word [game_time_aux_b], ax   ; 0x1cea
    adc word [game_time_aux_b_hi], dx ; 0x1cee
    mov ax, word [game_time_aux_b]   ; 0x1cf2
    mov dx, word [game_time_aux_b_hi] ; 0x1cf5
    mov cx, 0x3c                     ; 0x1cf9
    mov bx, 0                        ; 0x1cfc
    call aztec_ldv                   ; 0x1cff
    mov word [bp - 0xc], ax          ; 0x1d02
    mov word [bp - 0xe], 0           ; 0x1d05
.back1:
    cmp word [bp - 0xc], byte 4      ; 0x1d0a
    jl short .forward2               ; 0x1d0e
    inc word [bp - 0xe]              ; 0x1d10
    add word [bp - 0xc], byte -4     ; 0x1d13
    add word [game_time_aux_b], strict word 0xff10 ; 0x1d17
    adc word [game_time_aux_b_hi], byte -1 ; 0x1d1d
    jmp short .back1                 ; 0x1d22
.forward2:
    mov ax, word [game_time]         ; 0x1d24
    mov dx, word [game_time_hi]      ; 0x1d27
    mov word [game_time_aux_a_hi], dx ; 0x1d2b
    mov word [game_time_aux_a], ax   ; 0x1d2f
    cmp word [story_music_enabled], byte 0 ; 0x1d32
    jne short .forward3              ; 0x1d37
    mov ax, 0x30                     ; 0x1d39
    jmp short .forward4              ; 0x1d3c
.forward3:
    mov ax, 0                        ; 0x1d3e
.forward4:
    mov word [bp - 0x12], ax         ; 0x1d41
    mov word [bp - 8], 0             ; 0x1d44
    mov word [bp - 0x14], 0          ; 0x1d49
    mov word [bp - 0x16], 0          ; 0x1d4e
    cmp word [game_state_arg], byte 0 ; 0x1d53
    jne short .back2                 ; 0x1d58
    mov ax, word [party_map_piece]   ; 0x1d5a
    mov cx, 6                        ; 0x1d5d
    shl ax, cl                       ; 0x1d60
    mov cx, word [party_cell_y]      ; 0x1d62
    shl cx, 1                        ; 0x1d66
    shl cx, 1                        ; 0x1d68
    shl cx, 1                        ; 0x1d6a
    add ax, cx                       ; 0x1d6c
    add ax, word [party_cell_x]      ; 0x1d6e
    mov word [bp - 0x18], ax         ; 0x1d72
    push ax                          ; 0x1d75
    mov ax, word [maze_data]         ; 0x1d76
    add ax, 0x930                    ; 0x1d79
    push ax                          ; 0x1d7c
    call test_bit                    ; 0x1d7d
    add sp, byte 4                   ; 0x1d80
    mov word [bp - 0x14], ax         ; 0x1d83
.back2:
    mov ax, word [bp - 8]            ; 0x1d86
    cmp ax, word [bp - 0x12]         ; 0x1d89
    jl short .forward5               ; 0x1d8c
    call call_is_music_playing       ; 0x1d8e
    test ax, ax                      ; 0x1d91
    jne short .forward5              ; 0x1d93
    jmp near .forward27              ; 0x1d95
.forward5:
    cmp word [bss_91ae], byte 0      ; 0x1d98
    je short .forward6               ; 0x1d9d
    jmp near .forward27              ; 0x1d9f
.forward6:
    cmp word [game_state], byte 5    ; 0x1da2
    je short .back3                  ; 0x1da7
    jmp near .forward27              ; 0x1da9
.back3:
    call advance_party_redraw_frame  ; 0x1dac
    test ax, ax                      ; 0x1daf
    jne short .forward7              ; 0x1db1
    jmp short .back3                 ; 0x1db3
.forward7:
    mov word [bp - 2], 0             ; 0x1db5
    jmp short .forward8              ; 0x1dba
.back4:
    mov ax, 0x248                    ; 0x1dbc
    imul word [bp - 2]               ; 0x1dbf
    mov bx, ax                       ; 0x1dc2
    mov byte [bx + party_records + pc_rec.status + 0x2], 0xa ; 0x1dc4
    mov ax, 1                        ; 0x1dc9
    push ax                          ; 0x1dcc
    push word [bp - 2]               ; 0x1dcd
    call draw_party_member_panel     ; 0x1dd0
    add sp, byte 4                   ; 0x1dd3
    inc word [bp - 2]                ; 0x1dd6
.forward8:
    mov ax, word [bp - 2]            ; 0x1dd9
    cmp ax, word [party_char_count]  ; 0x1ddc
    jl short .back4                  ; 0x1de0
    cmp word [bp - 0x14], byte 0     ; 0x1de2
    je short .forward9               ; 0x1de6
    cmp word [bp - 0x16], byte 0     ; 0x1de8
    jne short .forward9              ; 0x1dec
    mov word [bp - 0x16], 1          ; 0x1dee
    call api_idx_0004_IKPN           ; 0x1df3
    test ax, ax                      ; 0x1df6
    je short .forward9               ; 0x1df8
    mov bx, word [maze_tables]       ; 0x1dfa
    mov si, word [party_map_piece]   ; 0x1dfe
    mov al, byte [bx + si + spell_table + spell_table_rec_size*218 + spell_table_rec.f_0004] ; 0x1e02
    sub ah, ah                       ; 0x1e06
    mov word [party_region], ax      ; 0x1e08
.forward9:
    call poll_fullscreen_hotspot     ; 0x1e0b
    test ax, ax                      ; 0x1e0e
    je short .forward10              ; 0x1e10
    mov word [bss_91ae], 1           ; 0x1e12
.forward10:
    call advance_party_redraw_frame  ; 0x1e18
    test ax, ax                      ; 0x1e1b
    jne short .forward11             ; 0x1e1d
    mov ax, 0xa                      ; 0x1e1f
    push ax                          ; 0x1e22
    call delay_ms                    ; 0x1e23
    pop cx                           ; 0x1e26
.forward11:
    cmp word [bp - 0x14], byte 0     ; 0x1e27
    je short .forward12              ; 0x1e2b
    mov word [bss_91ae], 0           ; 0x1e2d
.forward12:
    cmp word [bss_91ae], byte 0      ; 0x1e33
    je short .forward13              ; 0x1e38
    jmp near .forward26              ; 0x1e3a
.forward13:
    inc word [bp - 8]                ; 0x1e3d
    add word [game_time], byte 0xa   ; 0x1e40
    adc word [game_time_hi], byte 0  ; 0x1e45
    call api_idx_0002_GSIL           ; 0x1e4a
    mov ax, 0xa                      ; 0x1e4d
    push ax                          ; 0x1e50
    call api_idx_0002_RRIU           ; 0x1e51
    pop cx                           ; 0x1e54
    cmp word [bp - 8], byte 0x18     ; 0x1e55
    jne short .forward14             ; 0x1e59
    mov ax, 0x64                     ; 0x1e5b
    push ax                          ; 0x1e5e
    call random_below                ; 0x1e5f
    pop cx                           ; 0x1e62
    mov word [bp - 2], ax            ; 0x1e63
    mov ax, 0x64                     ; 0x1e66
    push ax                          ; 0x1e69
    call random_below                ; 0x1e6a
    pop cx                           ; 0x1e6d
    mov bx, word [bp - 2]            ; 0x1e6e
    mov byte [bx + code_characters], al ; 0x1e71
.forward14:
    mov word [bp - 2], 0             ; 0x1e75
    jmp near .forward22              ; 0x1e7a
.back5:
    mov ax, word [bp - 8]            ; 0x1e7d
    mov cx, 6                        ; 0x1e80
    cwd                              ; 0x1e83
    idiv cx                          ; 0x1e84
    mov ax, dx                       ; 0x1e86
    test ax, ax                      ; 0x1e88
    jne short .forward15             ; 0x1e8a
    mov ax, 1                        ; 0x1e8c
    jmp short .forward16             ; 0x1e8f
.forward15:
    mov ax, 0                        ; 0x1e91
.forward16:
    push ax                          ; 0x1e94
    mov ax, 1                        ; 0x1e95
    push ax                          ; 0x1e98
    test dx, dx                      ; 0x1e99
    jne short .forward17             ; 0x1e9b
    mov ax, 0x248                    ; 0x1e9d
    imul word [bp - 2]               ; 0x1ea0
    mov bx, ax                       ; 0x1ea3
    mov al, byte [bx + party_records + pc_rec.f_0241] ; 0x1ea5
    sub ah, ah                       ; 0x1ea9
    jmp short .forward18             ; 0x1eab
.forward17:
    mov ax, 0                        ; 0x1ead
.forward18:
    push ax                          ; 0x1eb0
    mov ax, word [bp - 8]            ; 0x1eb1
    cwd                              ; 0x1eb4
    idiv cx                          ; 0x1eb5
    mov ax, dx                       ; 0x1eb7
    test ax, ax                      ; 0x1eb9
    jne short .forward19             ; 0x1ebb
    cmp word [bp - 0xe], byte 0      ; 0x1ebd
    jle short .forward19             ; 0x1ec1
    mov ax, 0x248                    ; 0x1ec3
    imul word [bp - 2]               ; 0x1ec6
    mov bx, ax                       ; 0x1ec9
    mov al, byte [bx + party_records + pc_rec.f_0240] ; 0x1ecb
    sub ah, ah                       ; 0x1ecf
    inc ax                           ; 0x1ed1
    jmp short .forward20             ; 0x1ed2
.forward19:
    mov ax, 0                        ; 0x1ed4
.forward20:
    push ax                          ; 0x1ed7
    push word [bp - 2]               ; 0x1ed8
    call api_idx_000a_URTS           ; 0x1edb
    add sp, byte 0xa                 ; 0x1ede
    mov ax, 5                        ; 0x1ee1
    push ax                          ; 0x1ee4
    call random_below                ; 0x1ee5
    pop cx                           ; 0x1ee8
    push ax                          ; 0x1ee9
    mov ax, 0x248                    ; 0x1eea
    imul word [bp - 2]               ; 0x1eed
    mov bx, ax                       ; 0x1ef0
    pop ax                           ; 0x1ef2
    mov byte [bx + party_records + pc_rec.status + 0x2], al ; 0x1ef3
    mov ax, word [bp - 8]            ; 0x1ef7
    mov cx, 6                        ; 0x1efa
    cwd                              ; 0x1efd
    idiv cx                          ; 0x1efe
    mov ax, dx                       ; 0x1f00
    test ax, ax                      ; 0x1f02
    jne short .forward21             ; 0x1f04
    cmp byte [bx + party_records + pc_rec.f_023e], 0 ; 0x1f06
    jbe short .forward21             ; 0x1f0b
    dec byte [bx + party_records + pc_rec.f_023e] ; 0x1f0d
.forward21:
    inc word [bp - 2]                ; 0x1f11
.forward22:
    mov ax, word [bp - 2]            ; 0x1f14
    cmp ax, word [party_char_count]  ; 0x1f17
    jge short .forward23             ; 0x1f1b
    jmp near .back5                  ; 0x1f1d
.forward23:
    push word [party_char_count]     ; 0x1f20
    call random_below                ; 0x1f24
    pop cx                           ; 0x1f27
    mov cx, 0x248                    ; 0x1f28
    imul cx                          ; 0x1f2b
    mov bx, ax                       ; 0x1f2d
    mov byte [bx + party_records + pc_rec.status + 0x2], 0 ; 0x1f2f
    mov ax, word [bp - 8]            ; 0x1f34
    mov cx, 6                        ; 0x1f37
    cwd                              ; 0x1f3a
    idiv cx                          ; 0x1f3b
    mov ax, dx                       ; 0x1f3d
    test ax, ax                      ; 0x1f3f
    jne short .forward26             ; 0x1f41
    call api_idx_0032_TNQM           ; 0x1f43
    dec word [bp - 0xe]              ; 0x1f46
    mov ax, 0x3cf                    ; 0x1f49
    cmp byte [startup_aux_option_a], 1 ; 0x1f4c
    jne short .forward24             ; 0x1f51
    mov ax, 0x3de                    ; 0x1f53
.forward24:
    mov word [bp - 0x10], ax         ; 0x1f56
    cmp word [party_region_level_saved], byte 0 ; 0x1f59
    jne short .forward26             ; 0x1f5e
    cmp word [bp - 0x14], byte 0     ; 0x1f60
    jne short .forward26             ; 0x1f64
    mov ax, 0x3e8                    ; 0x1f66
    push ax                          ; 0x1f69
    call random_below                ; 0x1f6a
    pop cx                           ; 0x1f6d
    mov cx, ax                       ; 0x1f6e
    mov ax, word [bp - 0x10]         ; 0x1f70
    cmp cx, ax                       ; 0x1f73
    jl short .forward26              ; 0x1f75
    cmp word [story_music_enabled], byte 0 ; 0x1f77
    je short .forward25              ; 0x1f7c
    call call_stop_music             ; 0x1f7e
    mov ax, 0                        ; 0x1f81
    push ax                          ; 0x1f84
    call free_loaded_score           ; 0x1f85
    pop cx                           ; 0x1f88
.forward25:
    mov ax, 1                        ; 0x1f89
    ret                              ; 0x1f8c
.forward26:
    jmp near .back2                  ; 0x1f8d
.forward27:
    mov ax, 0x98                     ; 0x1f90
    push ax                          ; 0x1f93
    mov ax, 0x13f                    ; 0x1f94
    push ax                          ; 0x1f97
    mov ax, 0x92                     ; 0x1f98
    push ax                          ; 0x1f9b
    mov ax, 0                        ; 0x1f9c
    push ax                          ; 0x1f9f
    call call_show_area              ; 0x1fa0
    add sp, byte 8                   ; 0x1fa3
    mov ax, 2                        ; 0x1fa6
    push ax                          ; 0x1fa9
    call random_below                ; 0x1faa
    pop cx                           ; 0x1fad
    mov word [bp - 4], ax            ; 0x1fae
    mov word [bp - 2], 0             ; 0x1fb1
    jmp short .forward30             ; 0x1fb6
.back6:
    cmp word [bp - 4], byte 0        ; 0x1fb8
    je short .forward28              ; 0x1fbc
    mov ax, 0x248                    ; 0x1fbe
    imul word [bp - 2]               ; 0x1fc1
    mov bx, ax                       ; 0x1fc4
    add word [bx + party_records + pc_rec.f_0008], byte 1 ; 0x1fc6
    adc word [bx + party_records + pc_rec.f_000a], byte 0 ; 0x1fcb
.forward28:
    mov ax, 0x248                    ; 0x1fd0
    imul word [bp - 2]               ; 0x1fd3
    mov bx, ax                       ; 0x1fd6
    mov ax, word [bx + party_records + pc_rec.pair_b] ; 0x1fd8
    push ax                          ; 0x1fdc
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x1fdd
    mov cx, 2                        ; 0x1fe1
    cwd                              ; 0x1fe4
    idiv cx                          ; 0x1fe5
    mov cx, ax                       ; 0x1fe7
    pop ax                           ; 0x1fe9
    cmp ax, cx                       ; 0x1fea
    jle short .forward29             ; 0x1fec
    mov byte [bx + party_records + pc_rec.status + 0x2], 0 ; 0x1fee
.forward29:
    mov ax, 1                        ; 0x1ff3
    push ax                          ; 0x1ff6
    push word [bp - 2]               ; 0x1ff7
    call draw_party_member_panel     ; 0x1ffa
    add sp, byte 4                   ; 0x1ffd
    inc word [bp - 2]                ; 0x2000
.forward30:
    mov ax, word [bp - 2]            ; 0x2003
    cmp ax, word [party_char_count]  ; 0x2006
    jl short .back6                  ; 0x200a
    call advance_party_redraw_frame  ; 0x200c
    cmp word [story_music_enabled], byte 0 ; 0x200f
    je short .forward31              ; 0x2014
    push word [story_score_volume]   ; 0x2016
    push word [story_score_number]   ; 0x201a
    call fade_out_music              ; 0x201e
    add sp, byte 4                   ; 0x2021
    mov ax, 0                        ; 0x2024
    push ax                          ; 0x2027
    call free_loaded_score           ; 0x2028
    pop cx                           ; 0x202b
.forward31:
    call load_maze_variant_resources ; 0x202c
    mov ax, 0                        ; 0x202f
    ret                              ; 0x2032
