; auto-generated
loc_TJHG:
    mov ax, 0                        ; 0x6c5c
    call aztec_csav                  ; 0x6c5f
    cmp word [scene_index], byte 0   ; 0x6c62
    jle short .return1               ; 0x6c67
    call advance_scene_frame         ; 0x6c69
    test ax, ax                      ; 0x6c6c
    je short .return1                ; 0x6c6e
    call draw_scene_frame            ; 0x6c70
    mov ax, 0x91                     ; 0x6c73
    push ax                          ; 0x6c76
    mov ax, 0x13f                    ; 0x6c77
    push ax                          ; 0x6c7a
    mov ax, 0                        ; 0x6c7b
    push ax                          ; 0x6c7e
    push ax                          ; 0x6c7f
    call call_show_area              ; 0x6c80
    add sp, byte 8                   ; 0x6c83
.return1:
    ret                              ; 0x6c86
