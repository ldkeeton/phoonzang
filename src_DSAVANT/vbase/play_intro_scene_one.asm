; auto-generated
play_intro_scene_one:
    mov ax, 0                        ; 0x8634
    call aztec_csav                  ; 0x8637
    mov ax, 0                        ; 0x863a
    push ax                          ; 0x863d
    mov ax, scene_one_screen_filename ; 0x863e
    push ax                          ; 0x8641
    call load_screen_file            ; 0x8642
    add sp, byte 4                   ; 0x8645
    mov ax, 0                        ; 0x8648
    push ax                          ; 0x864b
    mov ax, 2                        ; 0x864c
    push ax                          ; 0x864f
    mov ax, 0x91                     ; 0x8650
    push ax                          ; 0x8653
    mov ax, 0x13f                    ; 0x8654
    push ax                          ; 0x8657
    mov ax, 0                        ; 0x8658
    push ax                          ; 0x865b
    push ax                          ; 0x865c
    call call_cache_area             ; 0x865d
    add sp, byte 0xc                 ; 0x8660
    mov word [scene_backdrop_ref_hi], dx ; 0x8663
    mov word [scene_backdrop_ref], ax ; 0x8667
    mov ax, 0xf                      ; 0x866a
    push ax                          ; 0x866d
    mov ax, 1                        ; 0x866e
    push ax                          ; 0x8671
    call load_numbered_scene_picture ; 0x8672
    add sp, byte 4                   ; 0x8675
    mov ax, 0x10                     ; 0x8678
    push ax                          ; 0x867b
    mov ax, 2                        ; 0x867c
    push ax                          ; 0x867f
    call load_numbered_scene_picture ; 0x8680
    add sp, byte 4                   ; 0x8683
    mov ax, 0x11                     ; 0x8686
    push ax                          ; 0x8689
    mov ax, 3                        ; 0x868a
    push ax                          ; 0x868d
    call load_numbered_scene_picture ; 0x868e
    add sp, byte 4                   ; 0x8691
    mov ax, word [bp + 6]            ; 0x8694
    mov word [scene_cue_a], ax       ; 0x8697
    mov ax, word [bp + 8]            ; 0x869a
    mov word [scene_cue_b], ax       ; 0x869d
    mov ax, word [bp + 0xa]          ; 0x86a0
    mov word [scene_cue_c], ax       ; 0x86a3
    mov ax, word [bp + 0xc]          ; 0x86a6
    mov word [scene_cue_d], ax       ; 0x86a9
    mov word [scene_frame], 0        ; 0x86ac
    mov word [scene_index], 1        ; 0x86b2
    mov ax, 0                        ; 0x86b8
    cmp word [bp + 8], byte 0        ; 0x86bb
    jne short .forward1              ; 0x86bf
    mov ax, 0x14                     ; 0x86c1
.forward1:
    mov word [scene_step_a], ax      ; 0x86c4
    mov ax, scene_one_digit_cycle    ; 0x86c7
    push ax                          ; 0x86ca
    mov ax, scene_digit_cycle        ; 0x86cb
    push ax                          ; 0x86ce
    call aztec_strcpy                ; 0x86cf
    add sp, byte 4                   ; 0x86d2
    mov word [scene_frame_delay_ticks], 5 ; 0x86d5
    les bx, word [tick_counter_ptr]  ; 0x86db
    mov ax, word [es:bx]             ; 0x86df
    mov dx, word [es:bx + 2]         ; 0x86e2
    mov word [party_redraw_last_tick_hi], dx ; 0x86e6
    mov word [party_redraw_last_tick], ax ; 0x86ea
    call draw_scene_frame            ; 0x86ed
    mov ax, 0                        ; 0x86f0
    push ax                          ; 0x86f3
    push ax                          ; 0x86f4
    push ax                          ; 0x86f5
    call call_reset_rgb              ; 0x86f6
    add sp, byte 6                   ; 0x86f9
    mov ax, 0xc7                     ; 0x86fc
    push ax                          ; 0x86ff
    mov ax, 0x13f                    ; 0x8700
    push ax                          ; 0x8703
    mov ax, 0                        ; 0x8704
    push ax                          ; 0x8707
    push ax                          ; 0x8708
    call call_show_area              ; 0x8709
    add sp, byte 8                   ; 0x870c
    mov ax, 0                        ; 0x870f
    push ax                          ; 0x8712
    call call_fade_in                ; 0x8713
    pop cx                           ; 0x8716
    mov ax, 0                        ; 0x8717
    push ax                          ; 0x871a
    push word [bp + 4]               ; 0x871b
    call play_scene_message_sequence ; 0x871e
    add sp, byte 4                   ; 0x8721
    mov ax, 0x11                     ; 0x8724
    push ax                          ; 0x8727
    call free_scene_picture          ; 0x8728
    pop cx                           ; 0x872b
    mov ax, 0x10                     ; 0x872c
    push ax                          ; 0x872f
    call free_scene_picture          ; 0x8730
    pop cx                           ; 0x8733
    mov ax, 0xf                      ; 0x8734
    push ax                          ; 0x8737
    call free_scene_picture          ; 0x8738
    pop cx                           ; 0x873b
    mov ax, 0                        ; 0x873c
    push ax                          ; 0x873f
    mov ax, 1                        ; 0x8740
    push ax                          ; 0x8743
    push word [scene_backdrop_ref_hi] ; 0x8744
    push word [scene_backdrop_ref]   ; 0x8748
    call call_restore_screen         ; 0x874c
    add sp, byte 8                   ; 0x874f
    call blank_scene_screen          ; 0x8752
    ret                              ; 0x8755
