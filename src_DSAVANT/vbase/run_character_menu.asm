; auto-generated
run_character_menu:
    mov ax, 0xffb6                   ; 0x6a0f
    call aztec_csav                  ; 0x6a12
    mov word [party_status_frame], 0 ; 0x6a15
    mov word [member_roster_index], 0 ; 0x6a1b
    jmp short .forward1              ; 0x6a21
.back1:
    mov ax, 1                        ; 0x6a23
    push ax                          ; 0x6a26
    push word [member_roster_index]  ; 0x6a27
    call draw_party_member_panel     ; 0x6a2b
    add sp, byte 4                   ; 0x6a2e
    inc word [member_roster_index]   ; 0x6a31
.forward1:
    mov ax, word [member_roster_index] ; 0x6a35
    cmp ax, word [party_char_count]  ; 0x6a38
    jl short .back1                  ; 0x6a3c
    mov word [copy_protection_result], 0xffff ; 0x6a3e
    mov word [game_state], 0xffff    ; 0x6a44
.back2:
    cmp word [game_state], byte 0    ; 0x6a4a
    jl short .forward2               ; 0x6a4f
    jmp near .return1                ; 0x6a51
.forward2:
    mov word [bp - 2], 0             ; 0x6a54
.back3:
    mov ax, word [bp - 2]            ; 0x6a59
    shl ax, 1                        ; 0x6a5c
    mov bx, ax                       ; 0x6a5e
    add bx, bp                       ; 0x6a60
    mov word [bx - 0x22], 1          ; 0x6a62
    inc word [bp - 2]                ; 0x6a67
    mov ax, word [bp - 2]            ; 0x6a6a
    cmp ax, strict word 9            ; 0x6a6d
    jl short .back3                  ; 0x6a70
    mov word [bp - 0x10], 0xffff     ; 0x6a72
    cmp word [party_char_count], byte 1 ; 0x6a77
    jge short .forward3              ; 0x6a7c
    mov word [bp - 0x1e], 0          ; 0x6a7e
    mov word [bp - 0x1c], 0          ; 0x6a83
    mov word [bp - 0x1a], 0          ; 0x6a88
.forward3:
    mov word [bp - 0x20], 0          ; 0x6a8d
    mov word [bp - 2], 0             ; 0x6a92
    jmp short .forward5              ; 0x6a97
.back4:
    mov bx, word [bp - 2]            ; 0x6a99
    cmp byte [bx + pc_file_record_base_hi + 0x2], 1 ; 0x6a9c
    jne short .forward4              ; 0x6aa1
    mov word [bp - 0x20], 1          ; 0x6aa3
.forward4:
    inc word [bp - 2]                ; 0x6aa8
.forward5:
    mov ax, word [bp - 2]            ; 0x6aab
    cmp ax, word [bss_9070]          ; 0x6aae
    jl short .back4                  ; 0x6ab2
    cmp word [party_char_count], byte 5 ; 0x6ab4
    jle short .forward6              ; 0x6ab9
    mov word [bp - 0x20], 0          ; 0x6abb
.forward6:
    cmp word [party_char_count], byte 0 ; 0x6ac0
    jle short .forward7              ; 0x6ac5
    mov word [bp - 0x18], 0          ; 0x6ac7
    mov word [bp - 0x14], 0          ; 0x6acc
.forward7:
    cmp word [copy_protection_result], byte 0 ; 0x6ad1
    jne short .forward8              ; 0x6ad6
    mov ax, 0x15                     ; 0x6ad8
    push ax                          ; 0x6adb
    call release_and_exit            ; 0x6adc
    pop cx                           ; 0x6adf
.forward8:
    lea ax, word [bp - 0x22]         ; 0x6ae0
    push ax                          ; 0x6ae3
    mov ax, 1                        ; 0x6ae4
    push ax                          ; 0x6ae7
    mov ax, 9                        ; 0x6ae8
    push ax                          ; 0x6aeb
    mov ax, 0xd                      ; 0x6aec
    push ax                          ; 0x6aef
    mov ax, 0x12                     ; 0x6af0
    push ax                          ; 0x6af3
    mov ax, 0x24                     ; 0x6af4
    push ax                          ; 0x6af7
    mov ax, 0x61                     ; 0x6af8
    push ax                          ; 0x6afb
    mov ax, 0x3e8                    ; 0x6afc
    push ax                          ; 0x6aff
    call loc_LSRQ                    ; 0x6b00
    add sp, byte 0x10                ; 0x6b03
    mov word [bp - 4], ax            ; 0x6b06
    lea ax, word [bp - 0x4a]         ; 0x6b09
    push ax                          ; 0x6b0c
    mov ax, word [bp - 4]            ; 0x6b0d
    add ax, MSG_CHARACTER_MENU       ; 0x6b10
    push ax                          ; 0x6b13
    call load_message_string         ; 0x6b14
    add sp, byte 4                   ; 0x6b17
    mov ax, 0x1a                     ; 0x6b1a
    push ax                          ; 0x6b1d
    mov ax, 0xd                      ; 0x6b1e
    push ax                          ; 0x6b21
    mov ax, 0x12                     ; 0x6b22
    push ax                          ; 0x6b25
    mov ax, 0x24                     ; 0x6b26
    push ax                          ; 0x6b29
    mov ax, 0x61                     ; 0x6b2a
    push ax                          ; 0x6b2d
    push word [bss_9052]             ; 0x6b2e
    lea ax, word [bp - 0x4a]         ; 0x6b32
    push ax                          ; 0x6b35
    call draw_message_box            ; 0x6b36
    add sp, byte 0xe                 ; 0x6b39
    mov ax, word [bp - 4]            ; 0x6b3c
    jmp near .forward13              ; 0x6b3f
jumptable_6bfb_case_1:
    call loc_LQIO                    ; 0x6b42
    jmp near run_character_menu.forward14 ; 0x6b45
jumptable_6bfb_case_2:
    call pick_party_member           ; 0x6b48
    mov word [member_roster_index], ax ; 0x6b4b
    cmp ax, strict word 0xffff       ; 0x6b4e
    je short run_character_menu.forward9 ; 0x6b51
    mov word [game_state], 0x11      ; 0x6b53
    mov word [party_return_state], 4 ; 0x6b59
run_character_menu.forward9:
    jmp near run_character_menu.forward14 ; 0x6b5f
jumptable_6bfb_case_3:
    call pick_party_member           ; 0x6b62
    mov word [member_roster_index], ax ; 0x6b65
    cmp ax, strict word 0xffff       ; 0x6b68
    je short run_character_menu.forward10 ; 0x6b6b
    mov ax, 1                        ; 0x6b6d
    push ax                          ; 0x6b70
    push word [member_roster_index]  ; 0x6b71
    call api_idx_0006_MROT           ; 0x6b75
    add sp, byte 4                   ; 0x6b78
run_character_menu.forward10:
    jmp near run_character_menu.forward14 ; 0x6b7b
jumptable_6bfb_case_0:
    call loc_ROTV                    ; 0x6b7e
    mov word [game_state], 0x10      ; 0x6b81
    jmp near run_character_menu.forward14 ; 0x6b87
jumptable_6bfb_case_4:
    mov word [bp - 2], 0             ; 0x6b8a
    jmp short run_character_menu.forward11 ; 0x6b8f
run_character_menu.back5:
    mov ax, word [bp - 2]            ; 0x6b91
    shl ax, 1                        ; 0x6b94
    mov bx, ax                       ; 0x6b96
    mov bx, word [bx + member_roster_index + 0x2] ; 0x6b98
    mov byte [bx + pc_file_record_base_hi + 0x2], 1 ; 0x6b9c
    inc word [bp - 2]                ; 0x6ba1
run_character_menu.forward11:
    mov ax, word [bp - 2]            ; 0x6ba4
    cmp ax, word [party_char_count]  ; 0x6ba7
    jl short run_character_menu.back5 ; 0x6bab
    mov ax, 0                        ; 0x6bad
    push ax                          ; 0x6bb0
    call begin_game                  ; 0x6bb1
    pop cx                           ; 0x6bb4
    jmp short run_character_menu.forward14 ; 0x6bb5
jumptable_6bfb_case_5:
    mov ax, 1                        ; 0x6bb7
    push ax                          ; 0x6bba
    call begin_game                  ; 0x6bbb
    pop cx                           ; 0x6bbe
    jmp short run_character_menu.forward14 ; 0x6bbf
jumptable_6bfb_case_6:
    mov ax, 0                        ; 0x6bc1
    push ax                          ; 0x6bc4
    call loc_RMVR                    ; 0x6bc5
    pop cx                           ; 0x6bc8
    test ax, ax                      ; 0x6bc9
    je short run_character_menu.forward12 ; 0x6bcb
    mov ax, 0x912                    ; 0x6bcd
    push ax                          ; 0x6bd0
    call api_idx_0062_SRKH           ; 0x6bd1
    pop cx                           ; 0x6bd4
    call loc_ROTV                    ; 0x6bd5
    call api_idx_0002_JLUK           ; 0x6bd8
    mov word [game_state], 3         ; 0x6bdb
run_character_menu.forward12:
    jmp short run_character_menu.forward14 ; 0x6be1
jumptable_6bfb_case_7:
    mov ax, 2                        ; 0x6be3
    push ax                          ; 0x6be6
    call begin_game                  ; 0x6be7
    pop cx                           ; 0x6bea
    jmp short run_character_menu.forward14 ; 0x6beb
jumptable_6bfb_case_8:
    call loc_ROTV                    ; 0x6bed
    call api_idx_0002_JLUK           ; 0x6bf0
    mov word [game_state], 3         ; 0x6bf3
    jmp short run_character_menu.forward14 ; 0x6bf9
jumptable_6bfb:
    dw jumptable_6bfb_case_0 - IMAGE_BASE + __zres_end ; 0x6bfb
    dw jumptable_6bfb_case_1 - IMAGE_BASE + __zres_end ; 0x6bfd
    dw jumptable_6bfb_case_2 - IMAGE_BASE + __zres_end ; 0x6bff
    dw jumptable_6bfb_case_3 - IMAGE_BASE + __zres_end ; 0x6c01
    dw jumptable_6bfb_case_4 - IMAGE_BASE + __zres_end ; 0x6c03
    dw jumptable_6bfb_case_5 - IMAGE_BASE + __zres_end ; 0x6c05
    dw jumptable_6bfb_case_6 - IMAGE_BASE + __zres_end ; 0x6c07
    dw jumptable_6bfb_case_7 - IMAGE_BASE + __zres_end ; 0x6c09
    dw jumptable_6bfb_case_8 - IMAGE_BASE + __zres_end ; 0x6c0b
run_character_menu.forward13:
    cmp ax, strict word 9            ; 0x6c0d
    jae short run_character_menu.forward14 ; 0x6c10
    xchg bx, ax                      ; 0x6c12
    shl bx, 1                        ; 0x6c13
    jmp [cs:bx + jumptable_6bfb - IMAGE_BASE + __zres_end] ; 0x6c15
run_character_menu.forward14:
    jmp near run_character_menu.back2 ; 0x6c1a
run_character_menu.return1:
    ret                              ; 0x6c1d
