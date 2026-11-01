; auto-generated
driver_slot_0:
    call mouse_init                  ; 0x0003
    retf                             ; 0x0006
loc_JTQK_0007:
    call mouse_off                   ; 0x0007
    retf                             ; 0x000a
loc_JTQK_000b:
    call mouse_hit_test              ; 0x000b
    retf                             ; 0x000e
loc_JTQK_000f:
    call request_mouse_redraw        ; 0x000f
    retf                             ; 0x0012
loc_JTQK_0013:
    call update_mouse_pointer        ; 0x0013
    retf                             ; 0x0016
loc_JTQK_0017:
    call load_picture                ; 0x0017
    retf                             ; 0x001a
loc_JTQK_001b:
    call draw_text                   ; 0x001b
    retf                             ; 0x001e
loc_JTQK_001f:
    call load_screen                 ; 0x001f
    retf                             ; 0x0022
loc_JTQK_0023:
    call load_maze                   ; 0x0023
    retf                             ; 0x0026
loc_JTQK_0027:
    call draw_maze_piece             ; 0x0027
    retf                             ; 0x002a
loc_JTQK_002b:
    call clear_mouse_click           ; 0x002b
    retf                             ; 0x002e
loc_JTQK_002f:
    call draw_glyph                  ; 0x002f
    retf                             ; 0x0032
loc_JTQK_0033:
    call set_text_color              ; 0x0033
    retf                             ; 0x0036
loc_JTQK_0037:
    call set_text_pos                ; 0x0037
    retf                             ; 0x003a
loc_JTQK_003b:
    call get_text_pos                ; 0x003b
    retf                             ; 0x003e
loc_JTQK_003f:
    call fill_screen_buffer          ; 0x003f
    retf                             ; 0x0042
loc_JTQK_0043:
    call show_area                   ; 0x0043
    retf                             ; 0x0046
loc_JTQK_0047:
    call put_pixel                   ; 0x0047
    retf                             ; 0x004a
loc_JTQK_004b:
    call fill_area                   ; 0x004b
    retf                             ; 0x004e
loc_JTQK_004f:
    call invert_area                 ; 0x004f
    retf                             ; 0x0052
loc_JTQK_0053:
    call save_area                   ; 0x0053
    retf                             ; 0x0056
loc_JTQK_0057:
    call restore_area                ; 0x0057
    retf                             ; 0x005a
loc_JTQK_005b:
    call free_picture                ; 0x005b
    retf                             ; 0x005e
loc_JTQK_005f:
    call get_mouse                   ; 0x005f
    retf                             ; 0x0062
loc_JTQK_0063:
    call set_mouse_pointer           ; 0x0063
    retf                             ; 0x0066
loc_JTQK_0067:
    call set_text_opaque             ; 0x0067
    retf                             ; 0x006a
loc_JTQK_006b:
    call save_screen                 ; 0x006b
    retf                             ; 0x006e
loc_JTQK_006f:
    call dissolve_area               ; 0x006f
    retf                             ; 0x0072
loc_JTQK_0073:
    call set_rgb                     ; 0x0073
    retf                             ; 0x0076
loc_JTQK_0077:
    call get_rgb                     ; 0x0077
    retf                             ; 0x007a
loc_JTQK_007b:
    call fade_in                     ; 0x007b
    retf                             ; 0x007e
loc_JTQK_007f:
    call fade_out                    ; 0x007f
    retf                             ; 0x0082
loc_JTQK_0083:
    call reset_rgb                   ; 0x0083
    retf                             ; 0x0086
loc_JTQK_0087:
    call mouse_glide_to              ; 0x0087
    retf                             ; 0x008a
loc_JTQK_008b:
    call mouse_glide_back            ; 0x008b
    retf                             ; 0x008e
loc_JTQK_008f:
    call free_maze                   ; 0x008f
    retf                             ; 0x0092
loc_JTQK_0093:
    call free_screen                 ; 0x0093
    retf                             ; 0x0096
loc_JTQK_0097:
    call get_palette                 ; 0x0097
    retf                             ; 0x009a
loc_JTQK_009b:
    call set_palette                 ; 0x009b
    retf                             ; 0x009e
loc_JTQK_009f:
    call cache_area                  ; 0x009f
    retf                             ; 0x00a2
loc_JTQK_00a3:
    call get_free_space              ; 0x00a3
    retf                             ; 0x00a6
loc_JTQK_00a7:
    call restore_screen              ; 0x00a7
    retf                             ; 0x00aa
loc_JTQK_00ab:
    call cache_maze                  ; 0x00ab
    retf                             ; 0x00ae
loc_JTQK_00af:
    call cache_screen_to_storage     ; 0x00af
    retf                             ; 0x00b2
loc_JTQK_00b3:
    call load_sound                  ; 0x00b3
    retf                             ; 0x00b6
loc_JTQK_00b7:
    call free_sound                  ; 0x00b7
    retf                             ; 0x00ba
loc_JTQK_00bb:
    call play_sound                  ; 0x00bb
    retf                             ; 0x00be
loc_JTQK_00bf:
    call wait_sound                  ; 0x00bf
    retf                             ; 0x00c2
loc_JTQK_00c3:
    call stop_sound                  ; 0x00c3
    retf                             ; 0x00c6
loc_JTQK_00c7:
    call load_score                  ; 0x00c7
    retf                             ; 0x00ca
loc_JTQK_00cb:
    call play_score                  ; 0x00cb
    retf                             ; 0x00ce
loc_JTQK_00cf:
    call free_score                  ; 0x00cf
    retf                             ; 0x00d2
loc_JTQK_00d3:
    call is_music_playing            ; 0x00d3
    retf                             ; 0x00d6
loc_JTQK_00d7:
    call stop_music                  ; 0x00d7
    retf                             ; 0x00da
thunk_loc_JULP:
    call set_music_tempo_volume      ; 0x00db
    retf                             ; 0x00de
    db 0x80, 0x41
