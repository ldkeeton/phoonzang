; auto-generated
update_treasure_frame:
    mov ax, 0                        ; 0x07de
    call aztec_csav                  ; 0x07e1
    mov ax, 0                        ; 0x07e4
    push ax                          ; 0x07e7
    push ax                          ; 0x07e8
    mov ax, word [screen_cache_index] ; 0x07e9
    shl ax, 1                        ; 0x07ec
    shl ax, 1                        ; 0x07ee
    mov bx, ax                       ; 0x07f0
    push word [bx + screen_cache + 0x2] ; 0x07f2
    push word [bx + screen_cache]    ; 0x07f6
    call gfx_restore_screen          ; 0x07fa
    add sp, byte 8                   ; 0x07fd
    cmp word [glyph_painter], byte 1 ; 0x0800
    jne short @..update_treasure_frame.l1 ; 0x0805
    call draw_animated_glyph_pair    ; 0x0807
    jmp short @..update_treasure_frame.l2 ; 0x080a
@..update_treasure_frame.l1:
    call draw_party_glyph_row        ; 0x080c
@..update_treasure_frame.l2:
    call ds_app_JKOJ                 ; 0x080f
    cmp word [pending_panel_call], byte 0 ; 0x0812
    jl short @..update_treasure_frame.l3 ; 0x0817
    push word [pending_panel_arg1]   ; 0x0819
    push word [pending_panel_arg0]   ; 0x081d
    call draw_treasure_panel         ; 0x0821
    add sp, byte 4                   ; 0x0824
    mov word [pending_panel_call], 0xffff ; 0x0827
@..update_treasure_frame.l3:
    cmp word [animation_index], byte 0 ; 0x082d
    jl short @..update_treasure_frame.l4 ; 0x0832
    push word [animation_index]      ; 0x0834
    call draw_animation_frame        ; 0x0838
    pop cx                           ; 0x083b
    mov word [animation_index], ax   ; 0x083c
@..update_treasure_frame.l4:
    push word [show_area_bottom]     ; 0x083f
    mov ax, 0xf7                     ; 0x0843
    push ax                          ; 0x0846
    mov ax, 0x20                     ; 0x0847
    push ax                          ; 0x084a
    mov ax, 0x48                     ; 0x084b
    push ax                          ; 0x084e
    call gfx_show_area               ; 0x084f
    add sp, byte 8                   ; 0x0852
    cmp word [sound_request], byte 0 ; 0x0855
    je short @..update_treasure_frame.l5 ; 0x085a
    mov ax, 5                        ; 0x085c
    push ax                          ; 0x085f
    call play_sound_effect           ; 0x0860
    pop cx                           ; 0x0863
    mov word [sound_request], 0      ; 0x0864
@..update_treasure_frame.l5:
    ret                              ; 0x086a
