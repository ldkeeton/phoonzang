; auto-generated
restore_base_screen:
    mov ax, 0xfffe                   ; 0x6756
    call aztec_csav                  ; 0x6759
    cmp word [saved_screen_pending], byte 0 ; 0x675c
    je short .forward1               ; 0x6761
    mov ax, 1                        ; 0x6763
    push ax                          ; 0x6766
    push word [saved_screen_slot]    ; 0x6767
    call restore_saved_screen        ; 0x676b
    add sp, byte 4                   ; 0x676e
    mov word [saved_screen_pending], 0 ; 0x6771
.forward1:
    call free_current_maze           ; 0x6777
    mov ax, 0                        ; 0x677a
    push ax                          ; 0x677d
    mov ax, 0x8f                     ; 0x677e
    push ax                          ; 0x6781
    mov ax, 0xf7                     ; 0x6782
    push ax                          ; 0x6785
    mov ax, 0x20                     ; 0x6786
    push ax                          ; 0x6789
    mov ax, 0x48                     ; 0x678a
    push ax                          ; 0x678d
    call call_fill_area              ; 0x678e
    add sp, byte 0xa                 ; 0x6791
    mov ax, 0                        ; 0x6794
    push ax                          ; 0x6797
    push word [base_screen_area_segment] ; 0x6798
    push word [base_screen_area]     ; 0x679c
    call call_restore_area           ; 0x67a0
    add sp, byte 6                   ; 0x67a3
    mov word [bp - 2], 0             ; 0x67a6
.back1:
    mov ax, 0                        ; 0x67ab
    push ax                          ; 0x67ae
    mov ax, word [bp - 2]            ; 0x67af
    shl ax, 1                        ; 0x67b2
    shl ax, 1                        ; 0x67b4
    mov bx, ax                       ; 0x67b6
    push word [bx + panel_area + 0x2] ; 0x67b8
    push word [bx + panel_area]      ; 0x67bc
    call call_restore_area           ; 0x67c0
    add sp, byte 6                   ; 0x67c3
    inc word [bp - 2]                ; 0x67c6
    mov ax, word [bp - 2]            ; 0x67c9
    cmp ax, strict word 6            ; 0x67cc
    jl short .back1                  ; 0x67cf
    cmp word [dest_alt_arg], byte 0  ; 0x67d1
    jle short .forward2              ; 0x67d6
    push word [dest_alt_arg]         ; 0x67d8
    call play_story_sequence         ; 0x67dc
    pop cx                           ; 0x67df
.forward2:
    mov ax, 0xc7                     ; 0x67e0
    push ax                          ; 0x67e3
    mov ax, 0x13f                    ; 0x67e4
    push ax                          ; 0x67e7
    mov ax, 0                        ; 0x67e8
    push ax                          ; 0x67eb
    push ax                          ; 0x67ec
    call call_show_area              ; 0x67ed
    add sp, byte 8                   ; 0x67f0
    mov word [party_char_count], 0   ; 0x67f3
    mov word [game_state], 4         ; 0x67f9
    ret                              ; 0x67ff
