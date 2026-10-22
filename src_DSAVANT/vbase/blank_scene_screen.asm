; auto-generated
blank_scene_screen:
    mov ax, 0                        ; 0x85f0
    call aztec_csav                  ; 0x85f3
    mov word [scene_tick], 1         ; 0x85f6
    mov ax, 0                        ; 0x85fc
    push ax                          ; 0x85ff
    push ax                          ; 0x8600
    push ax                          ; 0x8601
    push ax                          ; 0x8602
    call gfx_fade_out                ; 0x8603
    add sp, byte 8                   ; 0x8606
    mov ax, 0                        ; 0x8609
    push ax                          ; 0x860c
    mov ax, 0xc7                     ; 0x860d
    push ax                          ; 0x8610
    mov ax, 0x13f                    ; 0x8611
    push ax                          ; 0x8614
    mov ax, 0                        ; 0x8615
    push ax                          ; 0x8618
    push ax                          ; 0x8619
    call gfx_fill_area               ; 0x861a
    add sp, byte 0x0a                ; 0x861d
    mov ax, 0xc7                     ; 0x8620
    push ax                          ; 0x8623
    mov ax, 0x13f                    ; 0x8624
    push ax                          ; 0x8627
    mov ax, 0                        ; 0x8628
    push ax                          ; 0x862b
    push ax                          ; 0x862c
    call gfx_show_area               ; 0x862d
    add sp, byte 8                   ; 0x8630
    ret                              ; 0x8633
