; auto-generated
run_resume_play_menu:
    mov ax, 0xffb6                   ; 0x68bd
    call aztec_csav                  ; 0x68c0
    mov word [game_state], 0x19      ; 0x68c3
    mov ax, 0                        ; 0x68c9
    push ax                          ; 0x68cc
    mov ax, 0x8f                     ; 0x68cd
    push ax                          ; 0x68d0
    mov ax, 0xf7                     ; 0x68d1
    push ax                          ; 0x68d4
    mov ax, 0x20                     ; 0x68d5
    push ax                          ; 0x68d8
    mov ax, 0x48                     ; 0x68d9
    push ax                          ; 0x68dc
    call call_fill_area              ; 0x68dd
    add sp, byte 0xa                 ; 0x68e0
    mov ax, 0x8f                     ; 0x68e3
    push ax                          ; 0x68e6
    mov ax, 0xf7                     ; 0x68e7
    push ax                          ; 0x68ea
    mov ax, 0x20                     ; 0x68eb
    push ax                          ; 0x68ee
    mov ax, 0x48                     ; 0x68ef
    push ax                          ; 0x68f2
    call call_show_area              ; 0x68f3
    add sp, byte 8                   ; 0x68f6
    mov word [bp - 2], 0             ; 0x68f9
.back1:
    mov ax, word [bp - 2]            ; 0x68fe
    shl ax, 1                        ; 0x6901
    mov bx, ax                       ; 0x6903
    add bx, bp                       ; 0x6905
    mov word [bx - 0x22], 1          ; 0x6907
    inc word [bp - 2]                ; 0x690c
    mov ax, word [bp - 2]            ; 0x690f
    cmp ax, strict word 5            ; 0x6912
    jle short .back1                 ; 0x6915
    mov word [bp - 0x1e], 0          ; 0x6917
    mov word [bp - 0x16], 0xffff     ; 0x691c
    mov word [bp - 4], 1             ; 0x6921
.back2:
    lea ax, word [bp - 0x22]         ; 0x6926
    push ax                          ; 0x6929
    mov ax, 1                        ; 0x692a
    push ax                          ; 0x692d
    mov ax, 6                        ; 0x692e
    push ax                          ; 0x6931
    mov ax, 0xd                      ; 0x6932
    push ax                          ; 0x6935
    mov ax, 0x12                     ; 0x6936
    push ax                          ; 0x6939
    mov ax, 0x24                     ; 0x693a
    push ax                          ; 0x693d
    mov ax, 0x61                     ; 0x693e
    push ax                          ; 0x6941
    mov ax, 0x898                    ; 0x6942
    push ax                          ; 0x6945
    call select_message_list_entry   ; 0x6946
    add sp, byte 0x10                ; 0x6949
    mov word [bp - 2], ax            ; 0x694c
    lea ax, word [bp - 0x4a]         ; 0x694f
    push ax                          ; 0x6952
    mov ax, word [bp - 2]            ; 0x6953
    add ax, MSG_RESUME_PLAY          ; 0x6956
    push ax                          ; 0x6959
    call load_message_string         ; 0x695a
    add sp, byte 4                   ; 0x695d
    mov ax, 0x1a                     ; 0x6960
    push ax                          ; 0x6963
    mov ax, 0xd                      ; 0x6964
    push ax                          ; 0x6967
    mov ax, 0x12                     ; 0x6968
    push ax                          ; 0x696b
    mov ax, 0x24                     ; 0x696c
    push ax                          ; 0x696f
    mov ax, 0x61                     ; 0x6970
    push ax                          ; 0x6973
    push word [menu_selection_index] ; 0x6974
    lea ax, word [bp - 0x4a]         ; 0x6978
    push ax                          ; 0x697b
    call draw_message_box            ; 0x697c
    add sp, byte 0xe                 ; 0x697f
    mov ax, word [bp - 2]            ; 0x6982
    jmp short .forward4              ; 0x6985
jumptable_69ec_case_0:
    mov word [bp - 4], 0             ; 0x6987
    jmp near run_resume_play_menu.forward5 ; 0x698c
jumptable_69ec_case_1:
    mov ax, 1                        ; 0x698f
    push ax                          ; 0x6992
    call run_configuration_menu      ; 0x6993
    pop cx                           ; 0x6996
    jmp short run_resume_play_menu.forward5 ; 0x6997
jumptable_69ec_case_2:
    jmp short run_resume_play_menu.forward5 ; 0x6999
jumptable_69ec_case_3:
    mov ax, 0                        ; 0x699b
    push ax                          ; 0x699e
    call save_game_data              ; 0x699f
    pop cx                           ; 0x69a2
    cmp ax, strict word 0xffff       ; 0x69a3
    jne short run_resume_play_menu.forward1 ; 0x69a6
    mov ax, 0xc6                     ; 0x69a8
    push ax                          ; 0x69ab
    mov ax, 0x109                    ; 0x69ac
    push ax                          ; 0x69af
    mov ax, 0x8e                     ; 0x69b0
    push ax                          ; 0x69b3
    mov ax, 0x36                     ; 0x69b4
    push ax                          ; 0x69b7
    call call_show_area              ; 0x69b8
    add sp, byte 8                   ; 0x69bb
    jmp short run_resume_play_menu.forward3 ; 0x69be
run_resume_play_menu.forward1:
    cmp word [bp - 2], byte 4        ; 0x69c0
    jne short run_resume_play_menu.forward2 ; 0x69c4
    mov word [dest_alt_arg], 0       ; 0x69c6
    mov word [game_state], 7         ; 0x69cc
run_resume_play_menu.forward2:
    mov word [bp - 4], 0             ; 0x69d2
run_resume_play_menu.forward3:
    jmp short run_resume_play_menu.forward5 ; 0x69d7
jumptable_69ec_case_5:
    mov word [dest_alt_arg], 0       ; 0x69d9
    mov word [game_state], 7         ; 0x69df
    mov word [bp - 4], 0             ; 0x69e5
    jmp short run_resume_play_menu.forward5 ; 0x69ea
jumptable_69ec:
    dw jumptable_69ec_case_0 - IMAGE_BASE + __zres_end ; 0x69ec
    dw jumptable_69ec_case_1 - IMAGE_BASE + __zres_end ; 0x69ee
    dw jumptable_69ec_case_2 - IMAGE_BASE + __zres_end ; 0x69f0
    dw jumptable_69ec_case_3 - IMAGE_BASE + __zres_end ; 0x69f2
    dw jumptable_69ec_case_3 - IMAGE_BASE + __zres_end ; 0x69f4
    dw jumptable_69ec_case_5 - IMAGE_BASE + __zres_end ; 0x69f6
run_resume_play_menu.forward4:
    cmp ax, strict word 6            ; 0x69f8
    jae short run_resume_play_menu.forward5 ; 0x69fb
    xchg bx, ax                      ; 0x69fd
    shl bx, 1                        ; 0x69fe
    jmp [cs:bx + jumptable_69ec - IMAGE_BASE + __zres_end] ; 0x6a00
run_resume_play_menu.forward5:
    cmp word [bp - 4], byte 0        ; 0x6a05
    je short run_resume_play_menu.return1 ; 0x6a09
    jmp near run_resume_play_menu.back2 ; 0x6a0b
run_resume_play_menu.return1:
    ret                              ; 0x6a0e
