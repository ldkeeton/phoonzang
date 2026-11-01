; auto-generated
driver_slot_0:
    call music_start                 ; 0x0003
    retf                             ; 0x0006
loc_JTQK_0007:
    call configure_music_device      ; 0x0007
    retf                             ; 0x000a
loc_JTQK_000b:
    call music_set_data              ; 0x000b
    retf                             ; 0x000e
loc_JTQK_000f:
    call stop_music_playback         ; 0x000f
    retf                             ; 0x0012
loc_JTQK_0013:
    call music_set_tempo_volume      ; 0x0013
    retf                             ; 0x0016
loc_JTQK_0017:
    call play_select_device          ; 0x0017
    retf                             ; 0x001a
loc_JTQK_001b:
    call music_is_playing            ; 0x001b
    retf                             ; 0x001e
loc_JTQK_001f:
    call wait_for_music              ; 0x001f
    retf                             ; 0x0022
