; auto-generated
run_state_1c_scene:
    mov ax, 0                        ; 0x81b6
    call aztec_csav                  ; 0x81b9
    mov ax, MSG_PARTY_OPTIONS_2038   ; 0x81bc
    push ax                          ; 0x81bf
    call loc_SNOI                    ; 0x81c0
    pop cx                           ; 0x81c3
    mov ax, 0                        ; 0x81c4
    push ax                          ; 0x81c7
    call redraw_treasure_caption     ; 0x81c8
    pop cx                           ; 0x81cb
    call api_idx_00e6_QHNU           ; 0x81cc
    mov ax, 1                        ; 0x81cf
    push ax                          ; 0x81d2
    call redraw_treasure_caption     ; 0x81d3
    pop cx                           ; 0x81d6
    call loc_VSIT                    ; 0x81d7
    ret                              ; 0x81da
