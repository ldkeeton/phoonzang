; auto-generated
run_region_event_scene:
    mov ax, 0                        ; 0x81db
    call $csav                  ; 0x81de
    mov ax, 0                        ; 0x81e1
    push ax                          ; 0x81e4
    call prepare_treasure_scene      ; 0x81e5
    pop cx                           ; 0x81e8
    mov ax, 0                        ; 0x81e9
    push ax                          ; 0x81ec
    call redraw_treasure_caption     ; 0x81ed
    pop cx                           ; 0x81f0
    call apply_region_event_to_party ; 0x81f1
    mov ax, 1                        ; 0x81f4
    push ax                          ; 0x81f7
    call redraw_treasure_caption     ; 0x81f8
    pop cx                           ; 0x81fb
    call restore_treasure_scene      ; 0x81fc
    ret                              ; 0x81ff
