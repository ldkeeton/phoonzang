; auto-generated
api_idx_0002_GLIS:
    mov ax, 0xfffe                   ; 0x8756
    call aztec_csav                  ; 0x8759
    mov ax, 0xf                      ; 0x875c
    push ax                          ; 0x875f
    mov ax, 4                        ; 0x8760
    push ax                          ; 0x8763
    call api_idx_0016_LTLN           ; 0x8764
    add sp, byte 4                   ; 0x8767
    mov ax, 0x10                     ; 0x876a
    push ax                          ; 0x876d
    mov ax, 5                        ; 0x876e
    push ax                          ; 0x8771
    call api_idx_0016_LTLN           ; 0x8772
    add sp, byte 4                   ; 0x8775
    mov ax, 0x11                     ; 0x8778
    push ax                          ; 0x877b
    mov ax, 6                        ; 0x877c
    push ax                          ; 0x877f
    call api_idx_0016_LTLN           ; 0x8780
    add sp, byte 4                   ; 0x8783
    mov ax, word [bp + 6]            ; 0x8786
    mov word [scene_cue_a], ax       ; 0x8789
    mov ax, word [bp + 8]            ; 0x878c
    mov word [scene_cue_b], ax       ; 0x878f
    mov ax, word [bp + 0xa]          ; 0x8792
    mov word [scene_cue_c], ax       ; 0x8795
    mov word [bp - 2], 0             ; 0x8798
.back1:
    mov ax, 0x50                     ; 0x879d
    imul word [bp - 2]               ; 0x87a0
    mov cx, word [bp - 2]            ; 0x87a3
    shl cx, 1                        ; 0x87a6
    mov bx, cx                       ; 0x87a8
    mov word [bx + scroll_x], ax     ; 0x87aa
    inc word [bp - 2]                ; 0x87ae
    mov ax, word [bp - 2]            ; 0x87b1
    cmp ax, strict word 5            ; 0x87b4
    jl short .back1                  ; 0x87b7
    mov word [bp - 2], 0             ; 0x87b9
.back2:
    mov ax, word [bp - 2]            ; 0x87be
    shl ax, 1                        ; 0x87c1
    mov bx, ax                       ; 0x87c3
    mov word [bx + sprite_pos], 0x140 ; 0x87c5
    mov ax, 0x3c                     ; 0x87cb
    push ax                          ; 0x87ce
    call random_below                ; 0x87cf
    pop cx                           ; 0x87d2
    add ax, strict word 0x28         ; 0x87d3
    mov cx, word [bp - 2]            ; 0x87d6
    shl cx, 1                        ; 0x87d9
    mov bx, cx                       ; 0x87db
    mov word [bx + bss_a5ea], ax     ; 0x87dd
    inc word [bp - 2]                ; 0x87e1
    mov ax, word [bp - 2]            ; 0x87e4
    cmp ax, strict word 8            ; 0x87e7
    jl short .back2                  ; 0x87ea
    mov word [bss_a5e0], 0x13e       ; 0x87ec
    mov word [bss_a5f0], 0x2a        ; 0x87f2
    mov word [actor_x], 0xff50       ; 0x87f8
    mov word [actor_y], 0x3c         ; 0x87fe
    mov word [scene_frame], 0        ; 0x8804
    mov word [scene_index], 2        ; 0x880a
    mov word [scene_step_b], 1       ; 0x8810
    mov word [bss_a5ae], 3           ; 0x8816
    les bx, word [tick_counter_ptr]  ; 0x881c
    mov ax, word [es:bx]             ; 0x8820
    mov dx, word [es:bx + 2]         ; 0x8823
    mov word [party_redraw_last_tick_hi], dx ; 0x8827
    mov word [party_redraw_last_tick], ax ; 0x882b
    call draw_scene_frame            ; 0x882e
    mov ax, 0                        ; 0x8831
    push ax                          ; 0x8834
    push ax                          ; 0x8835
    push ax                          ; 0x8836
    call gfx_reset_rgb               ; 0x8837
    add sp, byte 6                   ; 0x883a
    mov ax, 0xc7                     ; 0x883d
    push ax                          ; 0x8840
    mov ax, 0x13f                    ; 0x8841
    push ax                          ; 0x8844
    mov ax, 0                        ; 0x8845
    push ax                          ; 0x8848
    push ax                          ; 0x8849
    call gfx_show_area               ; 0x884a
    add sp, byte 8                   ; 0x884d
    mov ax, 0                        ; 0x8850
    push ax                          ; 0x8853
    call gfx_fade_in                 ; 0x8854
    pop cx                           ; 0x8857
    mov ax, 0                        ; 0x8858
    push ax                          ; 0x885b
    push word [bp + 4]               ; 0x885c
    call loc_LIQV                    ; 0x885f
    add sp, byte 4                   ; 0x8862
    mov ax, 0x11                     ; 0x8865
    push ax                          ; 0x8868
    call loc_GUNQ                    ; 0x8869
    pop cx                           ; 0x886c
    mov ax, 0x10                     ; 0x886d
    push ax                          ; 0x8870
    call loc_GUNQ                    ; 0x8871
    pop cx                           ; 0x8874
    mov ax, 0xf                      ; 0x8875
    push ax                          ; 0x8878
    call loc_GUNQ                    ; 0x8879
    pop cx                           ; 0x887c
    call blank_scene_screen          ; 0x887d
    ret                              ; 0x8880
