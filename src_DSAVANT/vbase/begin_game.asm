; auto-generated
begin_game:
    mov ax, 0xfffc                   ; 0x6665
    call aztec_csav                  ; 0x6668
    mov word [intro_screen_number], 0 ; 0x666b
    cmp word [startup_check_stage], byte 0 ; 0x6671
    jne short .forward3              ; 0x6676
    call copy_protection_prompt      ; 0x6678
    call verify_answer_word          ; 0x667b
    mov word [copy_protection_result], ax ; 0x667e
    test ax, ax                      ; 0x6681
    jne short .forward1              ; 0x6683
    mov word [bp - 2], 0xffff        ; 0x6685
    jmp short .forward2              ; 0x668a
.forward1:
    mov ax, 0xc                      ; 0x668c
    push ax                          ; 0x668f
    call wait_for_hotspot_timeout    ; 0x6690
    pop cx                           ; 0x6693
    push word [bp + 4]               ; 0x6694
    call load_game_data              ; 0x6697
    pop cx                           ; 0x669a
    mov word [bp - 2], ax            ; 0x669b
.forward2:
    mov word [startup_check_stage], 1 ; 0x669e
    jmp short .forward4              ; 0x66a4
.forward3:
    push word [bp + 4]               ; 0x66a6
    call load_game_data              ; 0x66a9
    pop cx                           ; 0x66ac
    mov word [bp - 2], ax            ; 0x66ad
.forward4:
    cmp word [bp - 2], byte -1       ; 0x66b0
    jne short .forward5              ; 0x66b4
    mov ax, 0xc6                     ; 0x66b6
    push ax                          ; 0x66b9
    mov ax, 0x109                    ; 0x66ba
    push ax                          ; 0x66bd
    mov ax, 0x8e                     ; 0x66be
    push ax                          ; 0x66c1
    mov ax, 0x36                     ; 0x66c2
    push ax                          ; 0x66c5
    call call_show_area              ; 0x66c6
    add sp, byte 8                   ; 0x66c9
    ret                              ; 0x66cc
.forward5:
    push word [game_state_arg]       ; 0x66cd
    mov ax, 0                        ; 0x66d1
    push ax                          ; 0x66d4
    call ensure_game_disk            ; 0x66d5
    add sp, byte 4                   ; 0x66d8
    mov ax, 0                        ; 0x66db
    push ax                          ; 0x66de
    mov ax, 8                        ; 0x66df
    push ax                          ; 0x66e2
    mov ax, adjacent_object_type     ; 0x66e3
    push ax                          ; 0x66e6
    call aztec_setmem                ; 0x66e7
    add sp, byte 6                   ; 0x66ea
    mov word [party_status_frame_step], 0 ; 0x66ed
    mov ax, word [party_tag]         ; 0x66f3
    shl ax, 1                        ; 0x66f6
    mov word [party_status_heading], ax ; 0x66f8
    mov word [party_status_frame_seen], 0 ; 0x66fb
    mov word [bp - 4], 0xf           ; 0x6701
.back1:
    mov bx, word [bp - 4]            ; 0x6706
    mov byte [bx + picture_slot_number], 0xff ; 0x6709
    mov byte [bx + picture_slot_used], 0 ; 0x670e
    inc word [bp - 4]                ; 0x6713
    mov ax, word [bp - 4]            ; 0x6716
    cmp ax, strict word 0x12         ; 0x6719
    jl short .back1                  ; 0x671c
    mov word [maze_state], 0         ; 0x671e
    mov word [maze_variant], 0       ; 0x6724
    mov word [current_maze], 0xffff  ; 0x672a
    cmp word [startup_check_stage], byte 2 ; 0x6730
    je short .forward6               ; 0x6735
    call ds_app_string_MPHP          ; 0x6737
    mov word [startup_check_stage], 2 ; 0x673a
.forward6:
    cmp word [intro_screen_number], byte 0 ; 0x6740
    jle short .forward7              ; 0x6745
    push word [intro_screen_number]  ; 0x6747
    call show_intro_screen           ; 0x674b
    pop cx                           ; 0x674e
.forward7:
    mov word [game_state], 6         ; 0x674f
    ret                              ; 0x6755
