; auto-generated
api_idx_0040_LSRO:
    mov ax, 0xffc0                   ; 0x2b8e
    call aztec_csav                  ; 0x2b91
    mov ax, word [bp + 0x6]          ; 0x2b94
    shl ax, 1                        ; 0x2b97
    mov bx, ax                       ; 0x2b99
    mov ax, word [bx + bss_9178]     ; 0x2b9b
    mov word [bp - 0x0004], ax       ; 0x2b9f
    mov ax, 0                        ; 0x2ba2
    push ax                          ; 0x2ba5
    push word [bp - 0x0004]          ; 0x2ba6
    lea ax, word [bp - 0x0024]       ; 0x2ba9
    push ax                          ; 0x2bac
    mov ax, 6                        ; 0x2bad
    push ax                          ; 0x2bb0
    call data_record_io              ; 0x2bb1
    add sp, byte 8                   ; 0x2bb4
    mov word [bp - 0x0002], 0        ; 0x2bb7
@..api_idx_0040_LSRO.l1:
    cmp word [bp - 0x0002], byte 8   ; 0x2bbc
    jl short @..api_idx_0040_LSRO.l2 ; 0x2bc0
    jmp near @..api_idx_0040_LSRO.l86 ; 0x2bc2
@..api_idx_0040_LSRO.l2:
    mov word [bp - 0x0040], 0        ; 0x2bc5
    mov ax, word [bp - 0x0002]       ; 0x2bca
    shl ax, 1                        ; 0x2bcd
    shl ax, 1                        ; 0x2bcf
    mov bx, ax                       ; 0x2bd1
    add bx, bp                       ; 0x2bd3
    mov ax, word [bx - 0x0024]       ; 0x2bd5
    mov word [bp - 0x0026], ax       ; 0x2bd8
    mov al, byte [bx - 0x0022]       ; 0x2bdb
    sub ah, ah                       ; 0x2bde
    mov word [bp - 0x0028], ax       ; 0x2be0
    mov al, byte [bx - 0x0021]       ; 0x2be3
    sub ah, ah                       ; 0x2be6
    jmp near @..api_idx_0040_LSRO.l84 ; 0x2be8
jumptable_36f8_case_0:
    mov ax, 0                        ; 0x2beb
    ret                              ; 0x2bee
jumptable_36f8_case_1:
    cmp word [bss_93ee], byte 0      ; 0x2bef
    je short @..api_idx_0040_LSRO.l3 ; 0x2bf4
    call loc_USTG                    ; 0x2bf6
@..api_idx_0040_LSRO.l3:
    push word [bp - 0x0028]          ; 0x2bf9
    push word [bp - 0x0026]          ; 0x2bfc
    call api_idx_0100_KHVV           ; 0x2bff
    add sp, byte 4                   ; 0x2c02
    cmp word [bss_93ee], byte 0      ; 0x2c05
    je short @..api_idx_0040_LSRO.l4 ; 0x2c0a
    call loc_SOOS                    ; 0x2c0c
@..api_idx_0040_LSRO.l4:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x2c0f
jumptable_36f8_case_2:
    cmp word [bp - 0x0026], byte 0   ; 0x2c12
    jle short @..api_idx_0040_LSRO.l5 ; 0x2c16
    mov al, byte [bp - 0x0026]       ; 0x2c18
    mov byte [bss_91c2], al          ; 0x2c1b
@..api_idx_0040_LSRO.l5:
    mov ax, 1                        ; 0x2c1e
    push ax                          ; 0x2c21
    call loc_GPUL                    ; 0x2c22
    pop cx                           ; 0x2c25
    mov ax, 1                        ; 0x2c26
    ret                              ; 0x2c29
jumptable_36f8_case_3:
    cmp word [bp - 0x0028], byte 0   ; 0x2c2a
    jne short @..api_idx_0040_LSRO.l6 ; 0x2c2e
    mov ax, 0x55                     ; 0x2c30
    push ax                          ; 0x2c33
    mov ax, 0                        ; 0x2c34
    push ax                          ; 0x2c37
    mov ax, 1                        ; 0x2c38
    push ax                          ; 0x2c3b
    mov ax, 0x606                    ; 0x2c3c
    push ax                          ; 0x2c3f
    call api_idx_0050_TJLH           ; 0x2c40
    add sp, byte 8                   ; 0x2c43
@..api_idx_0040_LSRO.l6:
    mov word [bss_95a6], 1           ; 0x2c46
    mov word [game_state], 5         ; 0x2c4c
    mov word [party_return_state], 0x12 ; 0x2c52
    mov ax, 1                        ; 0x2c58
    ret                              ; 0x2c5b
jumptable_36f8_case_36:
    mov word [bp - 0x0040], 1        ; 0x2c5c
jumptable_36f8_case_4:
    mov ax, word [bp - 0x0026]       ; 0x2c61
    mov cx, 0x100                    ; 0x2c64
    cwd                              ; 0x2c67
    idiv cx                          ; 0x2c68
    add ax, strict word 0xf          ; 0x2c6a
    mov word [bp - 0x002c], ax       ; 0x2c6d
    mov word [bp - 0x0030], dx       ; 0x2c70
    mov ax, dx                       ; 0x2c73
    mov cx, 0x10                     ; 0x2c75
    cwd                              ; 0x2c78
    idiv cx                          ; 0x2c79
    mov word [bp - 0x002e], ax       ; 0x2c7b
    mov word [bp - 0x0030], dx       ; 0x2c7e
    cmp word [bp - 0x0028], byte 0   ; 0x2c81
    jg short @..api_idx_0040_LSRO.l7 ; 0x2c85
    jmp near @..api_idx_0040_LSRO.l10 ; 0x2c87
@..api_idx_0040_LSRO.l7:
    mov bx, word [bp - 0x002c]       ; 0x2c8a
    mov al, byte [bx + picture_slot_number] ; 0x2c8d
    sub ah, ah                       ; 0x2c91
    cmp ax, 0xff                     ; 0x2c93
    je short @..api_idx_0040_LSRO.l8 ; 0x2c96
    mov ax, 1                        ; 0x2c98
    push ax                          ; 0x2c9b
    call gfx_wait_sound              ; 0x2c9c
    pop cx                           ; 0x2c9f
    push word [bp - 0x002c]          ; 0x2ca0
    call free_picture_slot           ; 0x2ca3
    pop cx                           ; 0x2ca6
@..api_idx_0040_LSRO.l8:
    push word [bp - 0x002c]          ; 0x2ca7
    push word [bp - 0x0028]          ; 0x2caa
    call load_monster_picture        ; 0x2cad
    add sp, byte 4                   ; 0x2cb0
    mov ax, word [bp - 0x002c]       ; 0x2cb3
    push ax                          ; 0x2cb6
    mov ax, 6                        ; 0x2cb7
    imul word [bp - 0x002e]          ; 0x2cba
    mov cx, ax                       ; 0x2cbd
    mov dx, word [bp - 0x0030]       ; 0x2cbf
    shl dx, 1                        ; 0x2cc2
    add ax, dx                       ; 0x2cc4
    mov bx, ax                       ; 0x2cc6
    pop ax                           ; 0x2cc8
    mov word [bx + cell_slot_ref], ax ; 0x2cc9
    mov ax, 0xffff                   ; 0x2ccd
    push ax                          ; 0x2cd0
    push word [bp - 0x0030]          ; 0x2cd1
    push word [bp - 0x002e]          ; 0x2cd4
    push word [bp - 0x002c]          ; 0x2cd7
    call api_idx_0008_JGKT           ; 0x2cda
    add sp, byte 8                   ; 0x2cdd
    cmp word [bp - 0x0040], byte 0   ; 0x2ce0
    je short @..api_idx_0040_LSRO.l9 ; 0x2ce4
    mov ax, 6                        ; 0x2ce6
    imul word [bp - 0x002e]          ; 0x2ce9
    mov cx, word [bp - 0x0030]       ; 0x2cec
    shl cx, 1                        ; 0x2cef
    add ax, cx                       ; 0x2cf1
    mov bx, ax                       ; 0x2cf3
    mov word [bx + bss_93dc], 1      ; 0x2cf5
    mov ax, 0                        ; 0x2cfb
    push ax                          ; 0x2cfe
    push ax                          ; 0x2cff
    call api_idx_005e_SHOL           ; 0x2d00
    add sp, byte 4                   ; 0x2d03
@..api_idx_0040_LSRO.l9:
    call run_party_screen_animation  ; 0x2d06
    jmp short @..api_idx_0040_LSRO.l12 ; 0x2d09
@..api_idx_0040_LSRO.l10:
    cmp word [bp - 0x0040], byte 0   ; 0x2d0b
    je short @..api_idx_0040_LSRO.l11 ; 0x2d0f
    mov ax, 6                        ; 0x2d11
    imul word [bp - 0x002e]          ; 0x2d14
    mov cx, word [bp - 0x0030]       ; 0x2d17
    shl cx, 1                        ; 0x2d1a
    add ax, cx                       ; 0x2d1c
    mov bx, ax                       ; 0x2d1e
    mov word [bx + bss_93dc], 1      ; 0x2d20
    mov ax, 0                        ; 0x2d26
    push ax                          ; 0x2d29
    mov ax, 1                        ; 0x2d2a
    push ax                          ; 0x2d2d
    call api_idx_005e_SHOL           ; 0x2d2e
    add sp, byte 4                   ; 0x2d31
@..api_idx_0040_LSRO.l11:
    mov ax, 6                        ; 0x2d34
    imul word [bp - 0x002e]          ; 0x2d37
    mov cx, word [bp - 0x0030]       ; 0x2d3a
    shl cx, 1                        ; 0x2d3d
    add ax, cx                       ; 0x2d3f
    mov bx, ax                       ; 0x2d41
    mov word [bx + cell_slot_ref], 0 ; 0x2d43
    call run_party_screen_animation  ; 0x2d49
@..api_idx_0040_LSRO.l12:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x2d4c
jumptable_36f8_case_5:
    mov ax, 1                        ; 0x2d4f
    push ax                          ; 0x2d52
    push word [bp - 0x0028]          ; 0x2d53
    call wait_ticks_abortable        ; 0x2d56
    add sp, byte 4                   ; 0x2d59
    jmp near @..api_idx_0040_LSRO.l85 ; 0x2d5c
jumptable_36f8_case_6:
    cmp word [bss_93ee], byte 0      ; 0x2d5f
    je short @..api_idx_0040_LSRO.l13 ; 0x2d64
    call loc_USTG                    ; 0x2d66
@..api_idx_0040_LSRO.l13:
    push word [bp - 0x0028]          ; 0x2d69
    push word [bp - 0x0026]          ; 0x2d6c
    push word [bp + 0x4]             ; 0x2d6f
    call api_idx_00ba_TUGQ           ; 0x2d72
    add sp, byte 6                   ; 0x2d75
    mov word [bp - 0x0032], ax       ; 0x2d78
    cmp word [bss_93ee], byte 0      ; 0x2d7b
    je short @..api_idx_0040_LSRO.l14 ; 0x2d80
    call loc_SOOS                    ; 0x2d82
@..api_idx_0040_LSRO.l14:
    cmp word [bp - 0x0032], byte 1   ; 0x2d85
    jle short @..api_idx_0040_LSRO.l16 ; 0x2d89
    push word [bp - 0x0032]          ; 0x2d8b
    push word [bp + 0x4]             ; 0x2d8e
    call api_idx_0040_LSRO           ; 0x2d91
    add sp, byte 4                   ; 0x2d94
    cmp ax, strict word 1            ; 0x2d97
    jne short @..api_idx_0040_LSRO.l15 ; 0x2d9a
    mov ax, 1                        ; 0x2d9c
    ret                              ; 0x2d9f
@..api_idx_0040_LSRO.l15:
    jmp short @..api_idx_0040_LSRO.l17 ; 0x2da0
@..api_idx_0040_LSRO.l16:
    mov ax, bss_95a8                 ; 0x2da2
    push ax                          ; 0x2da5
    mov ax, word [bp - 0x0026]       ; 0x2da6
    inc ax                           ; 0x2da9
    push ax                          ; 0x2daa
    call load_message_string         ; 0x2dab
    add sp, byte 4                   ; 0x2dae
    mov ax, bss_95a8                 ; 0x2db1
    push ax                          ; 0x2db4
    call aztec_strlen                ; 0x2db5
    pop cx                           ; 0x2db8
    cmp ax, strict word 0            ; 0x2db9
    jle short @..api_idx_0040_LSRO.l17 ; 0x2dbc
    mov ax, 1                        ; 0x2dbe
    push ax                          ; 0x2dc1
    mov ax, bss_95a8                 ; 0x2dc2
    push ax                          ; 0x2dc5
    call loc_LRGG                    ; 0x2dc6
    add sp, byte 4                   ; 0x2dc9
@..api_idx_0040_LSRO.l17:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x2dcc
jumptable_36f8_case_7:
@..api_idx_0040_LSRO.l18:
    call poll_fullscreen_hotspot     ; 0x2dcf
    test ax, ax                      ; 0x2dd2
    jne short @..api_idx_0040_LSRO.l19 ; 0x2dd4
    call step_party_animation        ; 0x2dd6
    jmp short @..api_idx_0040_LSRO.l18 ; 0x2dd9
@..api_idx_0040_LSRO.l19:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x2ddb
jumptable_36f8_case_8:
    mov ax, word [game_state_arg]    ; 0x2dde
    cmp ax, word [bss_8f3c]          ; 0x2de1
    jne short @..api_idx_0040_LSRO.l20 ; 0x2de5
    mov ax, word [bss_8f36]          ; 0x2de7
    mov word [party_cell_x], ax      ; 0x2dea
    mov ax, word [bss_8f34]          ; 0x2ded
    mov word [party_cell_y], ax      ; 0x2df0
    mov ax, word [bss_8f32]          ; 0x2df3
    mov word [party_map_piece], ax   ; 0x2df6
    mov ax, word [bss_8f3a]          ; 0x2df9
    mov word [party_world_x], ax     ; 0x2dfc
    mov ax, word [bss_8f38]          ; 0x2dff
    mov word [party_world_y], ax     ; 0x2e02
    mov ax, word [bss_8f30]          ; 0x2e05
    mov word [party_tag], ax         ; 0x2e08
    mov bx, word [maze_tables]       ; 0x2e0b
    mov si, word [party_map_piece]   ; 0x2e0f
    mov al, byte [bx + si + spell_table + spell_table_rec_size*218 + spell_table_rec.f_0004] ; 0x2e13
    sub ah, ah                       ; 0x2e17
    mov word [party_region], ax      ; 0x2e19
    mov word [game_state], 5         ; 0x2e1c
    mov word [party_return_state], 0x12 ; 0x2e22
    mov ax, 1                        ; 0x2e28
    ret                              ; 0x2e2b
@..api_idx_0040_LSRO.l20:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x2e2c
jumptable_36f8_case_9:
    push word [bp - 0x0028]          ; 0x2e2f
    push word [bp - 0x0026]          ; 0x2e32
    push word [bp + 0x4]             ; 0x2e35
    call api_idx_0008_KNNO           ; 0x2e38
    add sp, byte 6                   ; 0x2e3b
    jmp near @..api_idx_0040_LSRO.l85 ; 0x2e3e
jumptable_36f8_case_10:
    mov word [bp - 0x003a], 0xffff   ; 0x2e41
    mov ax, word [bp + 0x4]          ; 0x2e46
    mov word [bp - 0x0030], ax       ; 0x2e49
    mov word [bp + 0x4], 0           ; 0x2e4c
    jmp short @..api_idx_0040_LSRO.l24 ; 0x2e51
@..api_idx_0040_LSRO.l21:
    push word [bp - 0x0026]          ; 0x2e53
    push word [bp + 0x4]             ; 0x2e56
    call api_idx_0004_VLIO           ; 0x2e59
    add sp, byte 4                   ; 0x2e5c
    mov word [bp - 0x003a], ax       ; 0x2e5f
    cmp ax, strict word 0xffff       ; 0x2e62
    je short @..api_idx_0040_LSRO.l23 ; 0x2e65
    mov cx, 0x100                    ; 0x2e67
    cwd                              ; 0x2e6a
    idiv cx                          ; 0x2e6b
    mov word [bp - 0x002a], ax       ; 0x2e6d
    mov word [bp - 0x002c], dx       ; 0x2e70
    push word [bp - 0x0026]          ; 0x2e73
    call loc_GMVH                    ; 0x2e76
    pop cx                           ; 0x2e79
    test ax, ax                      ; 0x2e7a
    je short @..api_idx_0040_LSRO.l22 ; 0x2e7c
    mov ax, word [bp - 0x0026]       ; 0x2e7e
    add ax, 0xfe70                   ; 0x2e81
    push ax                          ; 0x2e84
    mov ax, 0x15                     ; 0x2e85
    push ax                          ; 0x2e88
    mov al, byte [bss_91c6]          ; 0x2e89
    cbw                              ; 0x2e8c
    push ax                          ; 0x2e8d
    call api_idx_0002_QVIM           ; 0x2e8e
    add sp, byte 6                   ; 0x2e91
@..api_idx_0040_LSRO.l22:
    push word [bp - 0x002c]          ; 0x2e94
    push word [bp - 0x002a]          ; 0x2e97
    push word [bp + 0x4]             ; 0x2e9a
    call clear_cell_key              ; 0x2e9d
    add sp, byte 6                   ; 0x2ea0
@..api_idx_0040_LSRO.l23:
    inc word [bp + 0x4]              ; 0x2ea3
@..api_idx_0040_LSRO.l24:
    mov ax, word [bp + 0x4]          ; 0x2ea6
    cmp ax, word [party_char_count]  ; 0x2ea9
    jge short @..api_idx_0040_LSRO.l25 ; 0x2ead
    cmp word [bp - 0x003a], byte 0xff ; 0x2eaf
    je short @..api_idx_0040_LSRO.l21 ; 0x2eb3
@..api_idx_0040_LSRO.l25:
    mov ax, word [bp - 0x0030]       ; 0x2eb5
    mov word [bp + 0x4], ax          ; 0x2eb8
    jmp near @..api_idx_0040_LSRO.l85 ; 0x2ebb
jumptable_36f8_case_11:
    mov ax, word [bp - 0x0026]       ; 0x2ebe
    mov cx, word [bp - 0x0028]       ; 0x2ec1
    mov bx, cx                       ; 0x2ec4
    imul bx                          ; 0x2ec6
    mov word [bp - 0x0034], dx       ; 0x2ec8
    mov word [bp - 0x0036], ax       ; 0x2ecb
    mov ax, word [bp - 0x0036]       ; 0x2ece
    mov dx, word [bp - 0x0034]       ; 0x2ed1
    push ax                          ; 0x2ed4
    push dx                          ; 0x2ed5
    mov ax, 0x248                    ; 0x2ed6
    imul word [bp + 0x4]             ; 0x2ed9
    mov bx, ax                       ; 0x2edc
    pop dx                           ; 0x2ede
    pop ax                           ; 0x2edf
    add word [bx + party_records + pc_rec.f_0014], ax ; 0x2ee0
    adc word [bx + party_records + pc_rec.f_0016], dx ; 0x2ee4
    mov ax, word [bp - 0x0036]       ; 0x2ee8
    mov dx, word [bp - 0x0034]       ; 0x2eeb
    sub word [bss_91b6], ax          ; 0x2eee
    sbb word [bss_91b8], dx          ; 0x2ef2
    cmp word [bss_91b8], byte 0      ; 0x2ef6
    jg short @..api_idx_0040_LSRO.l26 ; 0x2efb
    jne short @..api_idx_0040_LSRO.l27 ; 0x2efd
    cmp word [bss_91b6], byte 0      ; 0x2eff
    jb short @..api_idx_0040_LSRO.l27 ; 0x2f04
@..api_idx_0040_LSRO.l26:
    jmp short @..api_idx_0040_LSRO.l28 ; 0x2f06
@..api_idx_0040_LSRO.l27:
    mov word [bss_91b8], 0           ; 0x2f08
    mov word [bss_91b6], 0           ; 0x2f0e
@..api_idx_0040_LSRO.l28:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x2f14
jumptable_36f8_case_12:
    mov ax, word [bp - 0x0026]       ; 0x2f17
    mov bx, 0xa                      ; 0x2f1a
    imul bx                          ; 0x2f1d
    mov word [bp - 0x0034], dx       ; 0x2f1f
    mov word [bp - 0x0036], ax       ; 0x2f22
    cmp word [bp - 0x0034], byte 0   ; 0x2f25
    jne short @..api_idx_0040_LSRO.l29 ; 0x2f29
    cmp word [bp - 0x0036], byte 0   ; 0x2f2b
@..api_idx_0040_LSRO.l29:
    jne short @..api_idx_0040_LSRO.l34 ; 0x2f2f
    mov word [bp - 0x002c], 0        ; 0x2f31
    jmp short @..api_idx_0040_LSRO.l33 ; 0x2f36
@..api_idx_0040_LSRO.l30:
    cmp word [bp - 0x0028], byte 0   ; 0x2f38
    jle short @..api_idx_0040_LSRO.l31 ; 0x2f3c
    mov ax, 0x248                    ; 0x2f3e
    imul word [bp - 0x002c]          ; 0x2f41
    mov bx, ax                       ; 0x2f44
    mov ax, word [bx + party_records + pc_rec.f_0014] ; 0x2f46
    mov dx, word [bx + party_records + pc_rec.f_0016] ; 0x2f4a
    push ax                          ; 0x2f4e
    push dx                          ; 0x2f4f
    mov ax, word [bp - 0x0028]       ; 0x2f50
    cwd                              ; 0x2f53
    mov cx, ax                       ; 0x2f54
    mov bx, dx                       ; 0x2f56
    pop dx                           ; 0x2f58
    pop ax                           ; 0x2f59
    call aztec_ldv                   ; 0x2f5a
    mov word [bp - 0x0034], dx       ; 0x2f5d
    mov word [bp - 0x0036], ax       ; 0x2f60
    mov ax, word [bp - 0x0036]       ; 0x2f63
    mov dx, word [bp - 0x0034]       ; 0x2f66
    push ax                          ; 0x2f69
    push dx                          ; 0x2f6a
    mov ax, 0x248                    ; 0x2f6b
    imul word [bp - 0x002c]          ; 0x2f6e
    mov bx, ax                       ; 0x2f71
    pop dx                           ; 0x2f73
    pop ax                           ; 0x2f74
    sub word [bx + party_records + pc_rec.f_0014], ax ; 0x2f75
    sbb word [bx + party_records + pc_rec.f_0016], dx ; 0x2f79
    jmp short @..api_idx_0040_LSRO.l32 ; 0x2f7d
@..api_idx_0040_LSRO.l31:
    mov ax, 0x248                    ; 0x2f7f
    imul word [bp - 0x002c]          ; 0x2f82
    mov bx, ax                       ; 0x2f85
    mov word [bx + party_records + pc_rec.f_0016], 0 ; 0x2f87
    mov word [bx + party_records + pc_rec.f_0014], 0 ; 0x2f8d
@..api_idx_0040_LSRO.l32:
    inc word [bp - 0x002c]           ; 0x2f93
@..api_idx_0040_LSRO.l33:
    mov ax, word [bp - 0x002c]       ; 0x2f96
    cmp ax, word [party_char_count]  ; 0x2f99
    jl short @..api_idx_0040_LSRO.l30 ; 0x2f9d
@..api_idx_0040_LSRO.l34:
    mov ax, 0x248                    ; 0x2f9f
    imul word [bp + 0x4]             ; 0x2fa2
    mov bx, ax                       ; 0x2fa5
    mov ax, word [bx + party_records + pc_rec.f_0014] ; 0x2fa7
    mov dx, word [bx + party_records + pc_rec.f_0016] ; 0x2fab
    cmp dx, word [bp - 0x0034]       ; 0x2faf
    jg short @..api_idx_0040_LSRO.l35 ; 0x2fb2
    jne short @..api_idx_0040_LSRO.l36 ; 0x2fb4
    cmp ax, word [bp - 0x0036]       ; 0x2fb6
    jb short @..api_idx_0040_LSRO.l36 ; 0x2fb9
@..api_idx_0040_LSRO.l35:
    jmp short @..api_idx_0040_LSRO.l40 ; 0x2fbb
@..api_idx_0040_LSRO.l36:
    push word [bp + 0x4]             ; 0x2fbd
    call api_idx_0006_TLLQ           ; 0x2fc0
    pop cx                           ; 0x2fc3
    mov ax, 0x248                    ; 0x2fc4
    imul word [bp + 0x4]             ; 0x2fc7
    mov bx, ax                       ; 0x2fca
    mov ax, word [bx + party_records + pc_rec.f_0014] ; 0x2fcc
    mov dx, word [bx + party_records + pc_rec.f_0016] ; 0x2fd0
    cmp dx, word [bp - 0x0034]       ; 0x2fd4
    jg short @..api_idx_0040_LSRO.l37 ; 0x2fd7
    jne short @..api_idx_0040_LSRO.l38 ; 0x2fd9
    cmp ax, word [bp - 0x0036]       ; 0x2fdb
    jb short @..api_idx_0040_LSRO.l38 ; 0x2fde
@..api_idx_0040_LSRO.l37:
    jmp short @..api_idx_0040_LSRO.l40 ; 0x2fe0
@..api_idx_0040_LSRO.l38:
    cmp word [bp - 0x0028], byte 0   ; 0x2fe2
    jle short @..api_idx_0040_LSRO.l40 ; 0x2fe6
    push word [bp - 0x0028]          ; 0x2fe8
    push word [bp + 0x4]             ; 0x2feb
    call api_idx_0040_LSRO           ; 0x2fee
    add sp, byte 4                   ; 0x2ff1
    cmp ax, strict word 1            ; 0x2ff4
    jne short @..api_idx_0040_LSRO.l39 ; 0x2ff7
    mov ax, 1                        ; 0x2ff9
    ret                              ; 0x2ffc
@..api_idx_0040_LSRO.l39:
    mov ax, 0                        ; 0x2ffd
    ret                              ; 0x3000
@..api_idx_0040_LSRO.l40:
    mov ax, word [bp - 0x0036]       ; 0x3001
    mov dx, word [bp - 0x0034]       ; 0x3004
    push ax                          ; 0x3007
    push dx                          ; 0x3008
    mov ax, 0x248                    ; 0x3009
    imul word [bp + 0x4]             ; 0x300c
    mov bx, ax                       ; 0x300f
    pop dx                           ; 0x3011
    pop ax                           ; 0x3012
    sub word [bx + party_records + pc_rec.f_0014], ax ; 0x3013
    sbb word [bx + party_records + pc_rec.f_0016], dx ; 0x3017
    mov ax, word [bp - 0x0036]       ; 0x301b
    mov dx, word [bp - 0x0034]       ; 0x301e
    add word [bss_91b6], ax          ; 0x3021
    adc word [bss_91b8], dx          ; 0x3025
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3029
jumptable_36f8_case_13:
    mov word [bp - 0x002c], 0        ; 0x302c
@..api_idx_0040_LSRO.l41:
    mov ax, 3                        ; 0x3031
    push ax                          ; 0x3034
    call random_below                ; 0x3035
    pop cx                           ; 0x3038
    test ax, ax                      ; 0x3039
    jne short @..api_idx_0040_LSRO.l42 ; 0x303b
    mov ax, 0x248                    ; 0x303d
    imul word [bp + 0x4]             ; 0x3040
    push ax                          ; 0x3043
    mov ax, 0xc                      ; 0x3044
    imul word [bp - 0x002c]          ; 0x3047
    mov cx, ax                       ; 0x304a
    pop ax                           ; 0x304c
    add ax, cx                       ; 0x304d
    mov bx, ax                       ; 0x304f
    cmp word [bx + party_records + pc_rec.cell + 0x78], byte 0 ; 0x3051
    jle short @..api_idx_0040_LSRO.l42 ; 0x3056
    mov al, byte [bx + party_records + pc_rec.cell + 0x7f] ; 0x3058
    sub ah, ah                       ; 0x305c
    test ax, 0x40                    ; 0x305e
    jne short @..api_idx_0040_LSRO.l42 ; 0x3061
    push word [bp - 0x002c]          ; 0x3063
    mov ax, 1                        ; 0x3066
    push ax                          ; 0x3069
    push word [bp + 0x4]             ; 0x306a
    call clear_cell_key              ; 0x306d
    add sp, byte 6                   ; 0x3070
    mov ax, 3                        ; 0x3073
    push ax                          ; 0x3076
    call random_below                ; 0x3077
    pop cx                           ; 0x307a
    test ax, ax                      ; 0x307b
    jne short @..api_idx_0040_LSRO.l42 ; 0x307d
    mov word [bp - 0x002c], 0xa      ; 0x307f
@..api_idx_0040_LSRO.l42:
    inc word [bp - 0x002c]           ; 0x3084
    mov ax, word [bp - 0x002c]       ; 0x3087
    cmp ax, strict word 0xa          ; 0x308a
    jl short @..api_idx_0040_LSRO.l41 ; 0x308d
    jmp near @..api_idx_0040_LSRO.l85 ; 0x308f
jumptable_36f8_case_14:
    mov ax, word [bp - 0x0026]       ; 0x3092
    cmp ax, strict word 0            ; 0x3095
    jle short @..api_idx_0040_LSRO.l43 ; 0x3098
    cmp ax, strict word 0x7f         ; 0x309a
    jge short @..api_idx_0040_LSRO.l43 ; 0x309d
    push word [bp - 0x0028]          ; 0x309f
    push ax                          ; 0x30a2
    mov ax, word [game_state_arg]    ; 0x30a3
    mov cx, 4                        ; 0x30a6
    shl ax, cl                       ; 0x30a9
    add ax, party_region + 0x2       ; 0x30ab
    push ax                          ; 0x30ae
    call set_bitmap_bit              ; 0x30af
    add sp, byte 6                   ; 0x30b2
@..api_idx_0040_LSRO.l43:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x30b5
jumptable_36f8_case_15:
    mov ax, word [bp - 0x0026]       ; 0x30b8
    cmp ax, strict word 0            ; 0x30bb
    jle short @..api_idx_0040_LSRO.l44 ; 0x30be
    cmp ax, strict word 0x7f         ; 0x30c0
    jge short @..api_idx_0040_LSRO.l44 ; 0x30c3
    push word [bp - 0x0028]          ; 0x30c5
    push ax                          ; 0x30c8
    mov ax, word [game_state_arg]    ; 0x30c9
    mov cx, 4                        ; 0x30cc
    shl ax, cl                       ; 0x30cf
    add ax, party_region + 0x2       ; 0x30d1
    push ax                          ; 0x30d4
    call set_bitmap_bit              ; 0x30d5
    add sp, byte 6                   ; 0x30d8
    push word [bp - 0x0028]          ; 0x30db
    push word [bp - 0x0026]          ; 0x30de
    mov ax, word [game_state_arg]    ; 0x30e1
    mov cx, 4                        ; 0x30e4
    shl ax, cl                       ; 0x30e7
    add ax, bss_5642                 ; 0x30e9
    push ax                          ; 0x30ec
    call set_bitmap_bit              ; 0x30ed
    add sp, byte 6                   ; 0x30f0
@..api_idx_0040_LSRO.l44:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x30f3
jumptable_36f8_case_16:
    mov ax, word [bp - 0x0026]       ; 0x30f6
    cmp ax, strict word 0            ; 0x30f9
    jle short @..api_idx_0040_LSRO.l45 ; 0x30fc
    cmp ax, strict word 0xf          ; 0x30fe
    jge short @..api_idx_0040_LSRO.l45 ; 0x3101
    push word [bp - 0x0028]          ; 0x3103
    push ax                          ; 0x3106
    mov ax, bss_95f8                 ; 0x3107
    push ax                          ; 0x310a
    call set_bitmap_bit              ; 0x310b
    add sp, byte 6                   ; 0x310e
@..api_idx_0040_LSRO.l45:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3111
jumptable_36f8_case_17:
    mov ax, word [bp - 0x0026]       ; 0x3114
    cmp ax, strict word 0            ; 0x3117
    jle short @..api_idx_0040_LSRO.l46 ; 0x311a
    cmp ax, strict word 0xf          ; 0x311c
    jge short @..api_idx_0040_LSRO.l46 ; 0x311f
    push word [bp - 0x0028]          ; 0x3121
    push ax                          ; 0x3124
    mov ax, bss_95f8                 ; 0x3125
    push ax                          ; 0x3128
    call set_bitmap_bit              ; 0x3129
    add sp, byte 6                   ; 0x312c
    push word [bp - 0x0028]          ; 0x312f
    push word [bp - 0x0026]          ; 0x3132
    mov ax, word [bss_9136]          ; 0x3135
    shl ax, 1                        ; 0x3138
    add ax, action_bitmap + 0xc      ; 0x313a
    push ax                          ; 0x313d
    call set_bitmap_bit              ; 0x313e
    add sp, byte 6                   ; 0x3141
@..api_idx_0040_LSRO.l46:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3144
jumptable_36f8_case_18:
    push word [bp - 0x0026]          ; 0x3147
    mov ax, word [game_state_arg]    ; 0x314a
    mov cx, 4                        ; 0x314d
    shl ax, cl                       ; 0x3150
    add ax, party_region + 0x2       ; 0x3152
    push ax                          ; 0x3155
    call test_bit                    ; 0x3156
    add sp, byte 4                   ; 0x3159
    cmp ax, strict word 1            ; 0x315c
    jne short @..api_idx_0040_LSRO.l47 ; 0x315f
    mov ax, 0                        ; 0x3161
    ret                              ; 0x3164
@..api_idx_0040_LSRO.l47:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3165
jumptable_36f8_case_19:
    push word [bp - 0x0026]          ; 0x3168
    mov ax, word [game_state_arg]    ; 0x316b
    mov cx, 4                        ; 0x316e
    shl ax, cl                       ; 0x3171
    add ax, party_region + 0x2       ; 0x3173
    push ax                          ; 0x3176
    call test_bit                    ; 0x3177
    add sp, byte 4                   ; 0x317a
    test ax, ax                      ; 0x317d
    jne short @..api_idx_0040_LSRO.l48 ; 0x317f
    mov ax, 0                        ; 0x3181
    ret                              ; 0x3184
@..api_idx_0040_LSRO.l48:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3185
jumptable_36f8_case_20:
    push word [bp - 0x0026]          ; 0x3188
    mov ax, bss_95f8                 ; 0x318b
    push ax                          ; 0x318e
    call test_bit                    ; 0x318f
    add sp, byte 4                   ; 0x3192
    cmp ax, strict word 1            ; 0x3195
    jne short @..api_idx_0040_LSRO.l49 ; 0x3198
    mov ax, 0                        ; 0x319a
    ret                              ; 0x319d
@..api_idx_0040_LSRO.l49:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x319e
jumptable_36f8_case_21:
    push word [bp - 0x0026]          ; 0x31a1
    mov ax, bss_95f8                 ; 0x31a4
    push ax                          ; 0x31a7
    call test_bit                    ; 0x31a8
    add sp, byte 4                   ; 0x31ab
    test ax, ax                      ; 0x31ae
    jne short @..api_idx_0040_LSRO.l50 ; 0x31b0
    mov ax, 0                        ; 0x31b2
    ret                              ; 0x31b5
@..api_idx_0040_LSRO.l50:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x31b6
jumptable_36f8_case_22:
    cmp word [bp - 0x0028], byte 0   ; 0x31b9
    jne short @..api_idx_0040_LSRO.l51 ; 0x31bd
    push word [bp - 0x0026]          ; 0x31bf
    push word [bp + 0x4]             ; 0x31c2
    call api_idx_0004_VLIO           ; 0x31c5
    add sp, byte 4                   ; 0x31c8
    mov word [bp - 0x003a], ax       ; 0x31cb
    jmp short @..api_idx_0040_LSRO.l54 ; 0x31ce
@..api_idx_0040_LSRO.l51:
    mov word [bp - 0x003a], 0xffff   ; 0x31d0
    mov word [bp - 0x002c], 0        ; 0x31d5
    jmp short @..api_idx_0040_LSRO.l53 ; 0x31da
@..api_idx_0040_LSRO.l52:
    push word [bp - 0x0026]          ; 0x31dc
    push word [bp - 0x002c]          ; 0x31df
    call api_idx_0004_VLIO           ; 0x31e2
    add sp, byte 4                   ; 0x31e5
    mov word [bp - 0x003a], ax       ; 0x31e8
    inc word [bp - 0x002c]           ; 0x31eb
@..api_idx_0040_LSRO.l53:
    mov ax, word [bp - 0x002c]       ; 0x31ee
    cmp ax, word [party_char_count]  ; 0x31f1
    jge short @..api_idx_0040_LSRO.l54 ; 0x31f5
    cmp word [bp - 0x003a], byte 0xff ; 0x31f7
    je short @..api_idx_0040_LSRO.l52 ; 0x31fb
@..api_idx_0040_LSRO.l54:
    mov ax, word [bp - 0x0002]       ; 0x31fd
    shl ax, 1                        ; 0x3200
    shl ax, 1                        ; 0x3202
    mov bx, ax                       ; 0x3204
    add bx, bp                       ; 0x3206
    cmp byte [bx - 0x0021], 0x16     ; 0x3208
    jne short @..api_idx_0040_LSRO.l55 ; 0x320c
    cmp word [bp - 0x003a], byte 0xff ; 0x320e
    je short @..api_idx_0040_LSRO.l56 ; 0x3212
@..api_idx_0040_LSRO.l55:
    cmp byte [bx - 0x0021], 0x17     ; 0x3214
    jne short @..api_idx_0040_LSRO.l57 ; 0x3218
    cmp word [bp - 0x003a], byte 0xff ; 0x321a
    je short @..api_idx_0040_LSRO.l57 ; 0x321e
@..api_idx_0040_LSRO.l56:
    mov ax, 0                        ; 0x3220
    ret                              ; 0x3223
@..api_idx_0040_LSRO.l57:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3224
jumptable_36f8_case_24:
    mov ax, 0x64                     ; 0x3227
    push ax                          ; 0x322a
    call random_below                ; 0x322b
    pop cx                           ; 0x322e
    cmp ax, word [bp - 0x0026]       ; 0x322f
    jle short @..api_idx_0040_LSRO.l58 ; 0x3232
    mov ax, 0                        ; 0x3234
    ret                              ; 0x3237
@..api_idx_0040_LSRO.l58:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3238
jumptable_36f8_case_25:
    push word [bp - 0x0026]          ; 0x323b
    mov ax, word [game_state_arg]    ; 0x323e
    mov cx, 4                        ; 0x3241
    shl ax, cl                       ; 0x3244
    add ax, party_region + 0x2       ; 0x3246
    push ax                          ; 0x3249
    call test_bit                    ; 0x324a
    add sp, byte 4                   ; 0x324d
    test ax, ax                      ; 0x3250
    jne short @..api_idx_0040_LSRO.l59 ; 0x3252
    push word [bp - 0x0028]          ; 0x3254
    push word [bp + 0x4]             ; 0x3257
    call api_idx_0040_LSRO           ; 0x325a
    add sp, byte 4                   ; 0x325d
    cmp ax, strict word 1            ; 0x3260
    jne short @..api_idx_0040_LSRO.l59 ; 0x3263
    mov ax, 1                        ; 0x3265
    ret                              ; 0x3268
@..api_idx_0040_LSRO.l59:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3269
jumptable_36f8_case_26:
    push word [bp - 0x0026]          ; 0x326c
    mov ax, word [game_state_arg]    ; 0x326f
    mov cx, 4                        ; 0x3272
    shl ax, cl                       ; 0x3275
    add ax, party_region + 0x2       ; 0x3277
    push ax                          ; 0x327a
    call test_bit                    ; 0x327b
    add sp, byte 4                   ; 0x327e
    cmp ax, strict word 1            ; 0x3281
    jne short @..api_idx_0040_LSRO.l60 ; 0x3284
    push word [bp - 0x0028]          ; 0x3286
    push word [bp + 0x4]             ; 0x3289
    call api_idx_0040_LSRO           ; 0x328c
    add sp, byte 4                   ; 0x328f
    cmp ax, strict word 1            ; 0x3292
    jne short @..api_idx_0040_LSRO.l60 ; 0x3295
    mov ax, 1                        ; 0x3297
    ret                              ; 0x329a
@..api_idx_0040_LSRO.l60:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x329b
jumptable_36f8_case_27:
    push word [bp - 0x0026]          ; 0x329e
    mov ax, bss_95f8                 ; 0x32a1
    push ax                          ; 0x32a4
    call test_bit                    ; 0x32a5
    add sp, byte 4                   ; 0x32a8
    test ax, ax                      ; 0x32ab
    jne short @..api_idx_0040_LSRO.l61 ; 0x32ad
    push word [bp - 0x0028]          ; 0x32af
    push word [bp + 0x4]             ; 0x32b2
    call api_idx_0040_LSRO           ; 0x32b5
    add sp, byte 4                   ; 0x32b8
    cmp ax, strict word 1            ; 0x32bb
    jne short @..api_idx_0040_LSRO.l61 ; 0x32be
    mov ax, 1                        ; 0x32c0
    ret                              ; 0x32c3
@..api_idx_0040_LSRO.l61:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x32c4
jumptable_36f8_case_28:
    push word [bp - 0x0026]          ; 0x32c7
    mov ax, bss_95f8                 ; 0x32ca
    push ax                          ; 0x32cd
    call test_bit                    ; 0x32ce
    add sp, byte 4                   ; 0x32d1
    cmp ax, strict word 1            ; 0x32d4
    jne short @..api_idx_0040_LSRO.l62 ; 0x32d7
    push word [bp - 0x0028]          ; 0x32d9
    push word [bp + 0x4]             ; 0x32dc
    call api_idx_0040_LSRO           ; 0x32df
    add sp, byte 4                   ; 0x32e2
    cmp ax, strict word 1            ; 0x32e5
    jne short @..api_idx_0040_LSRO.l62 ; 0x32e8
    mov ax, 1                        ; 0x32ea
    ret                              ; 0x32ed
@..api_idx_0040_LSRO.l62:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x32ee
jumptable_36f8_case_29:
    mov ax, 0x64                     ; 0x32f1
    push ax                          ; 0x32f4
    call random_below                ; 0x32f5
    pop cx                           ; 0x32f8
    cmp ax, word [bp - 0x0026]       ; 0x32f9
    jge short @..api_idx_0040_LSRO.l63 ; 0x32fc
    push word [bp - 0x0028]          ; 0x32fe
    push word [bp + 0x4]             ; 0x3301
    call api_idx_0040_LSRO           ; 0x3304
    add sp, byte 4                   ; 0x3307
    cmp ax, strict word 1            ; 0x330a
    jne short @..api_idx_0040_LSRO.l63 ; 0x330d
    mov ax, 1                        ; 0x330f
    ret                              ; 0x3312
@..api_idx_0040_LSRO.l63:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3313
jumptable_36f8_case_30:
    mov ax, 0x26                     ; 0x3316
    imul word [bp - 0x0026]          ; 0x3319
    mov bx, ax                       ; 0x331c
    mov al, byte [bx + slot_records + slot_record.f_0019] ; 0x331e
    mov byte [bx + slot_records + slot_record.flag], al ; 0x3322
    mov byte [bx + slot_records + slot_record.f_0002], 0 ; 0x3326
    mov al, byte [bp - 0x0028]       ; 0x332b
    mov byte [bx + slot_records + slot_record.kind], al ; 0x332e
    mov byte [bx + slot_records + slot_record.f_0003], al ; 0x3332
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3336
jumptable_36f8_case_31:
    mov ax, word [bp - 0x0026]       ; 0x3339
    mov word [bp - 0x003a], ax       ; 0x333c
    cmp ax, strict word 0            ; 0x333f
    jge short @..api_idx_0040_LSRO.l65 ; 0x3342
    push ax                          ; 0x3344
    cmp ax, strict word 0            ; 0x3345
    pop ax                           ; 0x3348
    jge short @..api_idx_0040_LSRO.l64 ; 0x3349
    neg ax                           ; 0x334b
@..api_idx_0040_LSRO.l64:
    push ax                          ; 0x334d
    call random_below                ; 0x334e
    pop cx                           ; 0x3351
    mov cx, ax                       ; 0x3352
    mov ax, 0                        ; 0x3354
    sub ax, cx                       ; 0x3357
    mov word [bp - 0x003a], ax       ; 0x3359
    jmp short @..api_idx_0040_LSRO.l66 ; 0x335c
@..api_idx_0040_LSRO.l65:
    push word [bp - 0x003a]          ; 0x335e
    call random_below                ; 0x3361
    pop cx                           ; 0x3364
    mov word [bp - 0x003a], ax       ; 0x3365
@..api_idx_0040_LSRO.l66:
    mov ax, word [bp - 0x0028]       ; 0x3368
    add ax, strict word 0xff9c       ; 0x336b
    mov word [bp - 0x002c], ax       ; 0x336e
    mov ax, 0x64                     ; 0x3371
    push ax                          ; 0x3374
    push word [bp - 0x002c]          ; 0x3375
    mov al, byte [bss_91c7]          ; 0x3378
    sub ah, ah                       ; 0x337b
    mov bx, ax                       ; 0x337d
    mov al, byte [bx + target_weight] ; 0x337f
    cbw                              ; 0x3383
    add ax, word [bp - 0x003a]       ; 0x3384
    push ax                          ; 0x3387
    call clamp_between               ; 0x3388
    add sp, byte 6                   ; 0x338b
    push ax                          ; 0x338e
    mov al, byte [bss_91c7]          ; 0x338f
    sub ah, ah                       ; 0x3392
    mov bx, ax                       ; 0x3394
    pop ax                           ; 0x3396
    mov byte [bx + target_weight], al ; 0x3397
    jmp near @..api_idx_0040_LSRO.l85 ; 0x339b
jumptable_36f8_case_32:
    mov word [bp - 0x002c], 0        ; 0x339e
    jmp near @..api_idx_0040_LSRO.l70 ; 0x33a3
@..api_idx_0040_LSRO.l67:
    mov ax, word [bp - 0x0026]       ; 0x33a6
    dec ax                           ; 0x33a9
    mov word [bp - 0x003a], ax       ; 0x33aa
    cmp ax, strict word 7            ; 0x33ad
    jle short @..api_idx_0040_LSRO.l68 ; 0x33b0
    mov ax, 8                        ; 0x33b2
    push ax                          ; 0x33b5
    call random_below                ; 0x33b6
    pop cx                           ; 0x33b9
    mov word [bp - 0x003a], ax       ; 0x33ba
@..api_idx_0040_LSRO.l68:
    mov ax, 0x248                    ; 0x33bd
    imul word [bp - 0x002c]          ; 0x33c0
    add ax, word [bp - 0x003a]       ; 0x33c3
    mov bx, ax                       ; 0x33c6
    cmp byte [bx + party_records + pc_rec.stat], 0x13 ; 0x33c8
    jae short @..api_idx_0040_LSRO.l69 ; 0x33cd
    inc byte [bx + party_records + pc_rec.stat] ; 0x33cf
    mov ax, bss_95a8                 ; 0x33d3
    push ax                          ; 0x33d6
    mov ax, MSG_INCREASED            ; 0x33d7
    push ax                          ; 0x33da
    call load_message_string         ; 0x33db
    add sp, byte 4                   ; 0x33de
    mov ax, bss_95fa                 ; 0x33e1
    push ax                          ; 0x33e4
    mov ax, word [bp - 0x003a]       ; 0x33e5
    add ax, 0x13ba                   ; 0x33e8
    push ax                          ; 0x33eb
    call load_message_string         ; 0x33ec
    add sp, byte 4                   ; 0x33ef
    mov ax, 0x5e                     ; 0x33f2
    push ax                          ; 0x33f5
    mov ax, 0x248                    ; 0x33f6
    imul word [bp - 0x002c]          ; 0x33f9
    add ax, party_records            ; 0x33fc
    push ax                          ; 0x33ff
    mov ax, bss_95a8                 ; 0x3400
    push ax                          ; 0x3403
    call str_subst_char              ; 0x3404
    add sp, byte 6                   ; 0x3407
    mov ax, 0x24                     ; 0x340a
    push ax                          ; 0x340d
    mov ax, 0x95fa                   ; 0x340e
    push ax                          ; 0x3411
    mov ax, bss_95a8                 ; 0x3412
    push ax                          ; 0x3415
    call str_subst_char              ; 0x3416
    add sp, byte 6                   ; 0x3419
    mov ax, 0x55                     ; 0x341c
    push ax                          ; 0x341f
    mov ax, 1                        ; 0x3420
    push ax                          ; 0x3423
    push ax                          ; 0x3424
    mov ax, bss_95a8                 ; 0x3425
    push ax                          ; 0x3428
    call loc_MLKO                    ; 0x3429
    add sp, byte 8                   ; 0x342c
@..api_idx_0040_LSRO.l69:
    inc word [bp - 0x002c]           ; 0x342f
@..api_idx_0040_LSRO.l70:
    mov ax, word [bp - 0x002c]       ; 0x3432
    cmp ax, word [party_char_count]  ; 0x3435
    jge short @..api_idx_0040_LSRO.l71 ; 0x3439
    jmp near @..api_idx_0040_LSRO.l67 ; 0x343b
@..api_idx_0040_LSRO.l71:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x343e
jumptable_36f8_case_33:
    mov ax, word [bp - 0x0026]       ; 0x3441
    mov cx, 0x10                     ; 0x3444
    cwd                              ; 0x3447
    idiv cx                          ; 0x3448
    mov word [bp - 0x003e], ax       ; 0x344a
    mov word [bp - 0x003c], dx       ; 0x344d
    mov ax, word [bp - 0x0028]       ; 0x3450
    cwd                              ; 0x3453
    idiv cx                          ; 0x3454
    mov word [bp - 0x002e], ax       ; 0x3456
    mov word [bp - 0x0030], dx       ; 0x3459
    mov ax, 6                        ; 0x345c
    imul word [bp - 0x003e]          ; 0x345f
    mov cx, word [bp - 0x003c]       ; 0x3462
    shl cx, 1                        ; 0x3465
    add ax, cx                       ; 0x3467
    mov bx, ax                       ; 0x3469
    mov ax, word [bx + cell_slot_ref] ; 0x346b
    push ax                          ; 0x346f
    mov ax, 6                        ; 0x3470
    imul word [bp - 0x002e]          ; 0x3473
    mov cx, ax                       ; 0x3476
    mov dx, word [bp - 0x0030]       ; 0x3478
    shl dx, 1                        ; 0x347b
    add ax, dx                       ; 0x347d
    mov bx, ax                       ; 0x347f
    pop ax                           ; 0x3481
    mov word [bx + cell_slot_ref], ax ; 0x3482
    mov ax, 0xffff                   ; 0x3486
    push ax                          ; 0x3489
    push word [bp - 0x0030]          ; 0x348a
    push word [bp - 0x002e]          ; 0x348d
    push word [bx + cell_slot_ref]   ; 0x3490
    call api_idx_0008_JGKT           ; 0x3494
    add sp, byte 8                   ; 0x3497
    mov ax, 6                        ; 0x349a
    imul word [bp - 0x003e]          ; 0x349d
    mov cx, word [bp - 0x003c]       ; 0x34a0
    shl cx, 1                        ; 0x34a3
    add ax, cx                       ; 0x34a5
    mov bx, ax                       ; 0x34a7
    mov word [bx + cell_slot_ref], 0 ; 0x34a9
    jmp near @..api_idx_0040_LSRO.l85 ; 0x34af
jumptable_36f8_case_34:
    push word [bp - 0x0028]          ; 0x34b2
    push word [bp + 0x4]             ; 0x34b5
    call api_idx_0040_LSRO           ; 0x34b8
    add sp, byte 4                   ; 0x34bb
    cmp ax, strict word 1            ; 0x34be
    jne short @..api_idx_0040_LSRO.l72 ; 0x34c1
    mov ax, 1                        ; 0x34c3
    ret                              ; 0x34c6
@..api_idx_0040_LSRO.l72:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x34c7
jumptable_36f8_case_35:
    push word [bp - 0x0026]          ; 0x34ca
    call play_sound_cue              ; 0x34cd
    pop cx                           ; 0x34d0
    jmp near @..api_idx_0040_LSRO.l85 ; 0x34d1
jumptable_36f8_case_37:
    cmp byte [bss_91c6], 0xff        ; 0x34d4
    je short @..api_idx_0040_LSRO.l75 ; 0x34d9
    mov word [bp - 0x003a], 0        ; 0x34db
@..api_idx_0040_LSRO.l73:
    push word [bp - 0x003a]          ; 0x34e0
    mov al, byte [bss_91c6]          ; 0x34e3
    cbw                              ; 0x34e6
    mov cx, 0x26                     ; 0x34e7
    imul cx                          ; 0x34ea
    add ax, slot_records + slot_record.f_0019 + 0x1 ; 0x34ec
    push ax                          ; 0x34ef
    call test_bit                    ; 0x34f0
    add sp, byte 4                   ; 0x34f3
    test ax, ax                      ; 0x34f6
    je short @..api_idx_0040_LSRO.l74 ; 0x34f8
    push word [bp - 0x0028]          ; 0x34fa
    mov ax, word [bp - 0x003a]       ; 0x34fd
    add ax, 0x190                    ; 0x3500
    push ax                          ; 0x3503
    push word [bp + 0x4]             ; 0x3504
    call api_idx_0008_KNNO           ; 0x3507
    add sp, byte 6                   ; 0x350a
@..api_idx_0040_LSRO.l74:
    inc word [bp - 0x003a]           ; 0x350d
    mov ax, word [bp - 0x003a]       ; 0x3510
    cmp ax, strict word 0xb          ; 0x3513
    jl short @..api_idx_0040_LSRO.l73 ; 0x3516
@..api_idx_0040_LSRO.l75:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3518
jumptable_36f8_case_38:
    push word [bp + 0x4]             ; 0x351b
    call member_is_active            ; 0x351e
    pop cx                           ; 0x3521
    test ax, ax                      ; 0x3522
    jne short @..api_idx_0040_LSRO.l76 ; 0x3524
    push word [bp - 0x0028]          ; 0x3526
    push word [bp + 0x4]             ; 0x3529
    call api_idx_0040_LSRO           ; 0x352c
    add sp, byte 4                   ; 0x352f
    cmp ax, strict word 1            ; 0x3532
    jne short @..api_idx_0040_LSRO.l76 ; 0x3535
    mov ax, 1                        ; 0x3537
    ret                              ; 0x353a
@..api_idx_0040_LSRO.l76:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x353b
jumptable_36f8_case_39:
    mov ax, 1                        ; 0x353e
    ret                              ; 0x3541
jumptable_36f8_case_40:
    mov word [party_world_x], 0x7b   ; 0x3542
    mov word [party_world_y], 0x80   ; 0x3548
    mov word [party_cell_x], 3       ; 0x354e
    mov word [party_cell_y], 0       ; 0x3554
    mov word [party_map_piece], 2    ; 0x355a
    mov word [party_tag], 0          ; 0x3560
    mov word [game_state_arg], 0x13  ; 0x3566
    mov word [game_state], 6         ; 0x356c
    mov word [party_return_state], 0x12 ; 0x3572
    mov ax, 1                        ; 0x3578
    ret                              ; 0x357b
jumptable_36f8_case_41:
    mov al, byte [bss_91c7]          ; 0x357c
    sub ah, ah                       ; 0x357f
    mov bx, ax                       ; 0x3581
    mov al, byte [bx + target_weight] ; 0x3583
    cbw                              ; 0x3587
    cmp ax, word [bp - 0x0026]       ; 0x3588
    jge short @..api_idx_0040_LSRO.l77 ; 0x358b
    push word [bp - 0x0028]          ; 0x358d
    push word [bp + 0x4]             ; 0x3590
    call api_idx_0040_LSRO           ; 0x3593
    add sp, byte 4                   ; 0x3596
    cmp ax, strict word 1            ; 0x3599
    jne short @..api_idx_0040_LSRO.l77 ; 0x359c
    mov ax, 1                        ; 0x359e
    ret                              ; 0x35a1
@..api_idx_0040_LSRO.l77:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x35a2
jumptable_36f8_case_42:
    mov word [bp - 0x003a], 0xffff   ; 0x35a5
    mov word [bp - 0x0030], 0        ; 0x35aa
    jmp near @..api_idx_0040_LSRO.l80 ; 0x35af
@..api_idx_0040_LSRO.l78:
    push word [bp - 0x0028]          ; 0x35b2
    push word [bp - 0x0030]          ; 0x35b5
    call api_idx_0004_VLIO           ; 0x35b8
    add sp, byte 4                   ; 0x35bb
    mov word [bp - 0x003a], ax       ; 0x35be
    cmp ax, strict word 0xffff       ; 0x35c1
    je short @..api_idx_0040_LSRO.l79 ; 0x35c4
    mov cx, 0x100                    ; 0x35c6
    cwd                              ; 0x35c9
    idiv cx                          ; 0x35ca
    mov word [bp - 0x002a], ax       ; 0x35cc
    mov word [bp - 0x002c], dx       ; 0x35cf
    push dx                          ; 0x35d2
    push ax                          ; 0x35d3
    push word [bp - 0x0030]          ; 0x35d4
    call clear_cell_key              ; 0x35d7
    add sp, byte 6                   ; 0x35da
    mov ax, 1                        ; 0x35dd
    push ax                          ; 0x35e0
    mov ax, 0xffff                   ; 0x35e1
    push ax                          ; 0x35e4
    mov ax, 0x248                    ; 0x35e5
    imul word [bp - 0x0030]          ; 0x35e8
    push ax                          ; 0x35eb
    mov ax, 0x78                     ; 0x35ec
    imul word [bp - 0x002a]          ; 0x35ef
    mov cx, ax                       ; 0x35f2
    pop ax                           ; 0x35f4
    add ax, cx                       ; 0x35f5
    push ax                          ; 0x35f7
    mov ax, 0xc                      ; 0x35f8
    imul word [bp - 0x002c]          ; 0x35fb
    mov cx, ax                       ; 0x35fe
    pop ax                           ; 0x3600
    add ax, cx                       ; 0x3601
    add ax, 0x5c34                   ; 0x3603
    push ax                          ; 0x3606
    push word [bp - 0x0026]          ; 0x3607
    push word [bp - 0x0030]          ; 0x360a
    call api_idx_004c_RQSO           ; 0x360d
    add sp, byte 0x0a                ; 0x3610
    push word [bp - 0x0026]          ; 0x3613
    call loc_GMVH                    ; 0x3616
    pop cx                           ; 0x3619
    test ax, ax                      ; 0x361a
    je short @..api_idx_0040_LSRO.l79 ; 0x361c
    mov ax, word [bp - 0x0026]       ; 0x361e
    add ax, 0xfe70                   ; 0x3621
    push ax                          ; 0x3624
    mov al, byte [bss_91c6]          ; 0x3625
    cbw                              ; 0x3628
    push ax                          ; 0x3629
    mov ax, 0x15                     ; 0x362a
    push ax                          ; 0x362d
    call api_idx_0002_QVIM           ; 0x362e
    add sp, byte 6                   ; 0x3631
@..api_idx_0040_LSRO.l79:
    inc word [bp - 0x0030]           ; 0x3634
@..api_idx_0040_LSRO.l80:
    mov ax, word [bp - 0x0030]       ; 0x3637
    cmp ax, word [party_char_count]  ; 0x363a
    jge short @..api_idx_0040_LSRO.l81 ; 0x363e
    cmp word [bp - 0x003a], byte 0xff ; 0x3640
    jne short @..api_idx_0040_LSRO.l81 ; 0x3644
    jmp near @..api_idx_0040_LSRO.l78 ; 0x3646
@..api_idx_0040_LSRO.l81:
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3649
jumptable_36f8_case_43:
    mov ax, word [bp - 0x0026]       ; 0x364c
    mov cx, 0x100                    ; 0x364f
    cwd                              ; 0x3652
    idiv cx                          ; 0x3653
    add ax, strict word 0xf          ; 0x3655
    mov word [bp - 0x002c], ax       ; 0x3658
    mov word [bp - 0x003a], dx       ; 0x365b
    mov ax, dx                       ; 0x365e
    mov cx, 0x10                     ; 0x3660
    cwd                              ; 0x3663
    idiv cx                          ; 0x3664
    mov word [bp - 0x002e], ax       ; 0x3666
    mov word [bp - 0x0030], dx       ; 0x3669
    push word [bp - 0x0028]          ; 0x366c
    push dx                          ; 0x366f
    push ax                          ; 0x3670
    push word [bp - 0x002c]          ; 0x3671
    call api_idx_0008_JGKT           ; 0x3674
    add sp, byte 8                   ; 0x3677
    jmp near @..api_idx_0040_LSRO.l85 ; 0x367a
jumptable_36f8_case_44:
    mov ax, word [bp - 0x0028]       ; 0x367d
    mov word [bss_9134], ax          ; 0x3680
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3683
jumptable_36f8_case_45:
    mov ax, 0                        ; 0x3686
    push ax                          ; 0x3689
    push word [bp - 0x0028]          ; 0x368a
    push word [bp - 0x0026]          ; 0x368d
    call api_idx_0038_POGI           ; 0x3690
    add sp, byte 6                   ; 0x3693
    jmp near @..api_idx_0040_LSRO.l85 ; 0x3696
jumptable_36f8_case_46:
    mov ax, word [bp - 0x0026]       ; 0x3699
    mov cx, word [bp - 0x0028]       ; 0x369c
    shl cx, 1                        ; 0x369f
    mov bx, cx                       ; 0x36a1
    mov word [bx + bss_9178], ax     ; 0x36a3
    jmp near @..api_idx_0040_LSRO.l85 ; 0x36a7
jumptable_36f8_case_47:
    mov ax, word [bp - 0x0026]       ; 0x36aa
    dec ax                           ; 0x36ad
    mov word [bp - 0x0002], ax       ; 0x36ae
    jmp near @..api_idx_0040_LSRO.l85 ; 0x36b1
jumptable_36f8_case_48:
    mov ax, 1                        ; 0x36b4
    push ax                          ; 0x36b7
    push word [bp - 0x0028]          ; 0x36b8
    mov ax, word [bp - 0x0026]       ; 0x36bb
    shl ax, 1                        ; 0x36be
    add ax, action_bitmap + 0xc      ; 0x36c0
    push ax                          ; 0x36c3
    call set_bitmap_bit              ; 0x36c4
    add sp, byte 6                   ; 0x36c7
    jmp near @..api_idx_0040_LSRO.l85 ; 0x36ca
jumptable_36f8_case_49:
    push word [bp - 0x0026]          ; 0x36cd
    mov ax, action_bitmap            ; 0x36d0
    push ax                          ; 0x36d3
    call test_bit                    ; 0x36d4
    add sp, byte 4                   ; 0x36d7
    cmp ax, word [bp - 0x0028]       ; 0x36da
    jne short @..api_idx_0040_LSRO.l82 ; 0x36dd
    mov ax, 0                        ; 0x36df
    ret                              ; 0x36e2
@..api_idx_0040_LSRO.l82:
    mov ax, word [bp - 0x0026]       ; 0x36e3
    cmp ax, strict word 0xc          ; 0x36e6
    jne short @..api_idx_0040_LSRO.l83 ; 0x36e9
    cmp byte [slot_records + slot_record_size*12 + slot_record.flag], 0 ; 0x36eb
    jne short @..api_idx_0040_LSRO.l83 ; 0x36f0
    mov ax, 0                        ; 0x36f2
    ret                              ; 0x36f5
@..api_idx_0040_LSRO.l83:
    jmp short @..api_idx_0040_LSRO.l85 ; 0x36f6
jumptable_36f8:
    dw jumptable_36f8_case_0 - IMAGE_BASE + __zres_end ; 0x36f8
    dw jumptable_36f8_case_1 - IMAGE_BASE + __zres_end ; 0x36fa
    dw jumptable_36f8_case_2 - IMAGE_BASE + __zres_end ; 0x36fc
    dw jumptable_36f8_case_3 - IMAGE_BASE + __zres_end ; 0x36fe
    dw jumptable_36f8_case_4 - IMAGE_BASE + __zres_end ; 0x3700
    dw jumptable_36f8_case_5 - IMAGE_BASE + __zres_end ; 0x3702
    dw jumptable_36f8_case_6 - IMAGE_BASE + __zres_end ; 0x3704
    dw jumptable_36f8_case_7 - IMAGE_BASE + __zres_end ; 0x3706
    dw jumptable_36f8_case_8 - IMAGE_BASE + __zres_end ; 0x3708
    dw jumptable_36f8_case_9 - IMAGE_BASE + __zres_end ; 0x370a
    dw jumptable_36f8_case_10 - IMAGE_BASE + __zres_end ; 0x370c
    dw jumptable_36f8_case_11 - IMAGE_BASE + __zres_end ; 0x370e
    dw jumptable_36f8_case_12 - IMAGE_BASE + __zres_end ; 0x3710
    dw jumptable_36f8_case_13 - IMAGE_BASE + __zres_end ; 0x3712
    dw jumptable_36f8_case_14 - IMAGE_BASE + __zres_end ; 0x3714
    dw jumptable_36f8_case_15 - IMAGE_BASE + __zres_end ; 0x3716
    dw jumptable_36f8_case_16 - IMAGE_BASE + __zres_end ; 0x3718
    dw jumptable_36f8_case_17 - IMAGE_BASE + __zres_end ; 0x371a
    dw jumptable_36f8_case_18 - IMAGE_BASE + __zres_end ; 0x371c
    dw jumptable_36f8_case_19 - IMAGE_BASE + __zres_end ; 0x371e
    dw jumptable_36f8_case_20 - IMAGE_BASE + __zres_end ; 0x3720
    dw jumptable_36f8_case_21 - IMAGE_BASE + __zres_end ; 0x3722
    dw jumptable_36f8_case_22 - IMAGE_BASE + __zres_end ; 0x3724
    dw jumptable_36f8_case_22 - IMAGE_BASE + __zres_end ; 0x3726
    dw jumptable_36f8_case_24 - IMAGE_BASE + __zres_end ; 0x3728
    dw jumptable_36f8_case_25 - IMAGE_BASE + __zres_end ; 0x372a
    dw jumptable_36f8_case_26 - IMAGE_BASE + __zres_end ; 0x372c
    dw jumptable_36f8_case_27 - IMAGE_BASE + __zres_end ; 0x372e
    dw jumptable_36f8_case_28 - IMAGE_BASE + __zres_end ; 0x3730
    dw jumptable_36f8_case_29 - IMAGE_BASE + __zres_end ; 0x3732
    dw jumptable_36f8_case_30 - IMAGE_BASE + __zres_end ; 0x3734
    dw jumptable_36f8_case_31 - IMAGE_BASE + __zres_end ; 0x3736
    dw jumptable_36f8_case_32 - IMAGE_BASE + __zres_end ; 0x3738
    dw jumptable_36f8_case_33 - IMAGE_BASE + __zres_end ; 0x373a
    dw jumptable_36f8_case_34 - IMAGE_BASE + __zres_end ; 0x373c
    dw jumptable_36f8_case_35 - IMAGE_BASE + __zres_end ; 0x373e
    dw jumptable_36f8_case_36 - IMAGE_BASE + __zres_end ; 0x3740
    dw jumptable_36f8_case_37 - IMAGE_BASE + __zres_end ; 0x3742
    dw jumptable_36f8_case_38 - IMAGE_BASE + __zres_end ; 0x3744
    dw jumptable_36f8_case_39 - IMAGE_BASE + __zres_end ; 0x3746
    dw jumptable_36f8_case_40 - IMAGE_BASE + __zres_end ; 0x3748
    dw jumptable_36f8_case_41 - IMAGE_BASE + __zres_end ; 0x374a
    dw jumptable_36f8_case_42 - IMAGE_BASE + __zres_end ; 0x374c
    dw jumptable_36f8_case_43 - IMAGE_BASE + __zres_end ; 0x374e
    dw jumptable_36f8_case_44 - IMAGE_BASE + __zres_end ; 0x3750
    dw jumptable_36f8_case_45 - IMAGE_BASE + __zres_end ; 0x3752
    dw jumptable_36f8_case_46 - IMAGE_BASE + __zres_end ; 0x3754
    dw jumptable_36f8_case_47 - IMAGE_BASE + __zres_end ; 0x3756
    dw jumptable_36f8_case_48 - IMAGE_BASE + __zres_end ; 0x3758
    dw jumptable_36f8_case_49 - IMAGE_BASE + __zres_end ; 0x375a
@..api_idx_0040_LSRO.l84:
    cmp ax, strict word 0x32         ; 0x375c
    jae short @..api_idx_0040_LSRO.l85 ; 0x375f
    xchg bx, ax                      ; 0x3761
    shl bx, 1                        ; 0x3762
    jmp [cs:bx + jumptable_36f8 - IMAGE_BASE + __zres_end] ; 0x3764
@..api_idx_0040_LSRO.l85:
    inc word [bp - 0x0002]           ; 0x3769
    jmp near @..api_idx_0040_LSRO.l1 ; 0x376c
@..api_idx_0040_LSRO.l86:
    mov ax, 0                        ; 0x376f
    ret                              ; 0x3772
