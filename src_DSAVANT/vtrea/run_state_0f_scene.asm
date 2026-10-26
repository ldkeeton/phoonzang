; auto-generated
run_state_0f_scene:
    mov ax, 0xffb0                   ; 0x7f5a
    call aztec_csav                  ; 0x7f5d
    mov ax, MSG_A_CHEST              ; 0x7f60
    push ax                          ; 0x7f63
    call loc_SNOI                    ; 0x7f64
    pop cx                           ; 0x7f67
    mov ax, 1                        ; 0x7f68
    push ax                          ; 0x7f6b
    call redraw_treasure_caption     ; 0x7f6c
    pop cx                           ; 0x7f6f
    push word [mouse_pointer_shape_seg] ; 0x7f70
    push word [mouse_pointer_shape]  ; 0x7f74
    call set_mouse_pointer_shape     ; 0x7f78
    add sp, byte 4                   ; 0x7f7b
    mov ax, 0                        ; 0x7f7e
    push ax                          ; 0x7f81
    mov ax, 0xa4                     ; 0x7f82
    push ax                          ; 0x7f85
    mov ax, 0x12e                    ; 0x7f86
    push ax                          ; 0x7f89
    call gfx_mouse_glide_to          ; 0x7f8a
    add sp, byte 6                   ; 0x7f8d
    call score_music_enabled         ; 0x7f90
    mov word [bss_8450], ax          ; 0x7f93
    test ax, ax                      ; 0x7f96
    je short @..run_state_0f_scene.l1 ; 0x7f98
    mov ax, 0                        ; 0x7f9a
    push ax                          ; 0x7f9d
    mov ax, 3                        ; 0x7f9e
    push ax                          ; 0x7fa1
    call load_score_files            ; 0x7fa2
    add sp, byte 4                   ; 0x7fa5
    mov ax, 1                        ; 0x7fa8
    push ax                          ; 0x7fab
    mov ax, 2                        ; 0x7fac
    push ax                          ; 0x7faf
    call load_score_files            ; 0x7fb0
    add sp, byte 4                   ; 0x7fb3
    mov ax, word [dseg_0112]         ; 0x7fb6
    mov word [bss_844e], ax          ; 0x7fb9
    mov ax, 0                        ; 0x7fbc
    push ax                          ; 0x7fbf
    push word [bss_844e]             ; 0x7fc0
    push ax                          ; 0x7fc4
    call ds_app_UKGP                 ; 0x7fc5
    add sp, byte 6                   ; 0x7fc8
    mov word [bss_844c], ax          ; 0x7fcb
@..run_state_0f_scene.l1:
    lea ax, word [bp - 0x0050]       ; 0x7fce
    push ax                          ; 0x7fd1
    mov ax, MSG_YOU_DEFEATED_THE_MONSTERS ; 0x7fd2
    push ax                          ; 0x7fd5
    call load_message_string         ; 0x7fd6
    add sp, byte 4                   ; 0x7fd9
    mov ax, 0xa9                     ; 0x7fdc
    push ax                          ; 0x7fdf
    mov ax, 0xffff                   ; 0x7fe0
    push ax                          ; 0x7fe3
    push word [treasure_message_row] ; 0x7fe4
    lea ax, word [bp - 0x0050]       ; 0x7fe8
    push ax                          ; 0x7feb
    call show_treasure_message       ; 0x7fec
    add sp, byte 8                   ; 0x7fef
    cmp word [bss_8450], byte 0      ; 0x7ff2
    je short @..run_state_0f_scene.l4 ; 0x7ff7
@..run_state_0f_scene.l2:
    call gfx_is_music_playing        ; 0x7ff9
    test ax, ax                      ; 0x7ffc
    je short @..run_state_0f_scene.l3 ; 0x7ffe
    jmp short @..run_state_0f_scene.l2 ; 0x8000
@..run_state_0f_scene.l3:
    mov ax, 0x190                    ; 0x8002
    push ax                          ; 0x8005
    call delay_ms                    ; 0x8006
    pop cx                           ; 0x8009
    push word [treasure_message_row] ; 0x800a
    push word [treasure_message_row] ; 0x800e
    call api_idx_0004_VQUG           ; 0x8012
    add sp, byte 4                   ; 0x8015
    mov ax, word [file_param_word]   ; 0x8018
    mov word [bss_844e], ax          ; 0x801b
    mov ax, 1                        ; 0x801e
    push ax                          ; 0x8021
    push word [bss_844e]             ; 0x8022
    push ax                          ; 0x8026
    call ds_app_UKGP                 ; 0x8027
    add sp, byte 6                   ; 0x802a
    mov word [bss_844c], ax          ; 0x802d
@..run_state_0f_scene.l4:
    cmp word [item_action_reward_hi], byte 0 ; 0x8030
    jl short @..run_state_0f_scene.l5 ; 0x8035
    jne short @..run_state_0f_scene.l6 ; 0x8037
    cmp word [item_action_reward], byte 0 ; 0x8039
    ja short @..run_state_0f_scene.l6 ; 0x803e
@..run_state_0f_scene.l5:
    jmp short @..run_state_0f_scene.l7 ; 0x8040
@..run_state_0f_scene.l6:
    call distribute_survivor_experience ; 0x8042
@..run_state_0f_scene.l7:
    mov ax, 0                        ; 0x8045
    push ax                          ; 0x8048
    mov ax, 0xa4                     ; 0x8049
    push ax                          ; 0x804c
    mov ax, 0x12e                    ; 0x804d
    push ax                          ; 0x8050
    call gfx_mouse_glide_back        ; 0x8051
    add sp, byte 6                   ; 0x8054
    mov ax, 0                        ; 0x8057
    mov dx, 0                        ; 0x805a
    push dx                          ; 0x805d
    push ax                          ; 0x805e
    call set_mouse_pointer_shape     ; 0x805f
    add sp, byte 4                   ; 0x8062
    cmp word [selected_item_record], byte 0xff ; 0x8065
    je short @..run_state_0f_scene.l8 ; 0x806a
    mov word [party_return_state], 0xf ; 0x806c
    call loc_HUIS                    ; 0x8072
@..run_state_0f_scene.l8:
    cmp word [bss_8450], byte 0      ; 0x8075
    je short @..run_state_0f_scene.l9 ; 0x807a
    push word [bss_844c]             ; 0x807c
    push word [bss_844e]             ; 0x8080
    call fade_out_music              ; 0x8084
    add sp, byte 4                   ; 0x8087
    mov ax, 1                        ; 0x808a
    push ax                          ; 0x808d
    call app_gfx_free_score          ; 0x808e
    pop cx                           ; 0x8091
    mov ax, 0                        ; 0x8092
    push ax                          ; 0x8095
    call app_gfx_free_score          ; 0x8096
    pop cx                           ; 0x8099
@..run_state_0f_scene.l9:
    call loc_VSIT                    ; 0x809a
    ret                              ; 0x809d
