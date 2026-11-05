; auto-generated
run_region_puzzle_scene:
    mov ax, 0                        ; 0x81b6
    call aztec_csav                  ; 0x81b9
    mov ax, MSG_PARTY_OPTIONS_2038   ; 0x81bc
    push ax                          ; 0x81bf
    call prepare_treasure_scene      ; 0x81c0
    pop cx                           ; 0x81c3
    mov ax, 0                        ; 0x81c4
    push ax                          ; 0x81c7
    call redraw_treasure_caption     ; 0x81c8
    pop cx                           ; 0x81cb
    call run_region_choice_puzzle    ; 0x81cc
    mov ax, 1                        ; 0x81cf
    push ax                          ; 0x81d2
    call redraw_treasure_caption     ; 0x81d3
    pop cx                           ; 0x81d6
    call restore_treasure_scene      ; 0x81d7
    ret                              ; 0x81da
