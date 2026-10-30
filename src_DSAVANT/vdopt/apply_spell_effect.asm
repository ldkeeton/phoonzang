; auto-generated
apply_spell_effect:
    mov ax, 0xfff8                   ; 0x1ccf
    call aztec_csav                  ; 0x1cd2
    mov ax, word [bp + 6]            ; 0x1cd5
    jmp near .forward30              ; 0x1cd8
jumptable_2326_case_36:
    mov ax, 0x32                     ; 0x1cdb
    imul word [bp + 8]               ; 0x1cde
    add word [detection_spell_bonus], ax ; 0x1ce1
    mov ax, 0                        ; 0x1ce5
    push ax                          ; 0x1ce8
    push word [detection_spell_threshold] ; 0x1ce9
    mov ax, 5                        ; 0x1ced
    imul word [bp + 8]               ; 0x1cf0
    add ax, strict word 0x46         ; 0x1cf3
    push ax                          ; 0x1cf6
    call loc_QQUT                    ; 0x1cf7
    add sp, byte 6                   ; 0x1cfa
    mov word [detection_spell_threshold], ax ; 0x1cfd
    jmp near jumptable_2326_case_50  ; 0x1d00
jumptable_2326_case_43:
    mov ax, 0x23                     ; 0x1d03
    imul word [bp + 8]               ; 0x1d06
    add word [party_status_timer], ax ; 0x1d09
    mov ax, 0                        ; 0x1d0d
    push ax                          ; 0x1d10
    push word [party_status_offset]  ; 0x1d11
    mov ax, word [bp + 8]            ; 0x1d15
    dec ax                           ; 0x1d18
    mov cx, 2                        ; 0x1d19
    cwd                              ; 0x1d1c
    idiv cx                          ; 0x1d1d
    inc ax                           ; 0x1d1f
    push ax                          ; 0x1d20
    call loc_QQUT                    ; 0x1d21
    add sp, byte 6                   ; 0x1d24
    mov word [party_status_offset], ax ; 0x1d27
    jmp near jumptable_2326_case_50  ; 0x1d2a
jumptable_2326_case_33:
    mov ax, 0x32                     ; 0x1d2d
    imul word [bp + 8]               ; 0x1d30
    add word [bss_82f6], ax          ; 0x1d33
    mov ax, 0                        ; 0x1d37
    push ax                          ; 0x1d3a
    push word [bss_82f8]             ; 0x1d3b
    mov ax, word [bp + 8]            ; 0x1d3f
    dec ax                           ; 0x1d42
    mov cx, 2                        ; 0x1d43
    cwd                              ; 0x1d46
    idiv cx                          ; 0x1d47
    inc ax                           ; 0x1d49
    push ax                          ; 0x1d4a
    call loc_QQUT                    ; 0x1d4b
    add sp, byte 6                   ; 0x1d4e
    mov word [bss_82f8], ax          ; 0x1d51
    jmp near jumptable_2326_case_50  ; 0x1d54
jumptable_2326_case_30:
    mov ax, 5                        ; 0x1d57
    imul word [bp + 8]               ; 0x1d5a
    add word [bss_8306], ax          ; 0x1d5d
    jmp near jumptable_2326_case_50  ; 0x1d61
jumptable_2326_case_31:
    mov ax, 0x64                     ; 0x1d64
    imul word [bp + 8]               ; 0x1d67
    add word [bss_8302], ax          ; 0x1d6a
    jmp near jumptable_2326_case_50  ; 0x1d6e
jumptable_2326_case_44:
    mov ax, 0x32                     ; 0x1d71
    imul word [bp + 8]               ; 0x1d74
    add word [party_buff_turns], ax  ; 0x1d77
    mov ax, 0                        ; 0x1d7b
    push ax                          ; 0x1d7e
    push word [party_buff_charge]    ; 0x1d7f
    mov ax, 5                        ; 0x1d83
    imul word [bp + 8]               ; 0x1d86
    push ax                          ; 0x1d89
    call loc_QQUT                    ; 0x1d8a
    add sp, byte 6                   ; 0x1d8d
    mov word [party_buff_charge], ax ; 0x1d90
    jmp near jumptable_2326_case_50  ; 0x1d93
jumptable_2326_case_25:
    mov ax, 0                        ; 0x1d96
    cmp word [bp + 6], byte 0x13     ; 0x1d99
    je short apply_spell_effect.forward1 ; 0x1d9d
    mov ax, word [bp + 0xa]          ; 0x1d9f
apply_spell_effect.forward1:
    mov word [bp - 2], ax            ; 0x1da2
    mov ax, word [party_char_count]  ; 0x1da5
    cmp word [bp + 6], byte 0x13     ; 0x1da8
    je short apply_spell_effect.forward2 ; 0x1dac
    mov ax, word [bp + 0xa]          ; 0x1dae
    inc ax                           ; 0x1db1
apply_spell_effect.forward2:
    mov word [bp - 4], ax            ; 0x1db2
    mov ax, word [bp + 8]            ; 0x1db5
    cmp word [bp + 6], byte 0x13     ; 0x1db8
    je short apply_spell_effect.forward3 ; 0x1dbc
    shl ax, 1                        ; 0x1dbe
apply_spell_effect.forward3:
    mov word [bp - 6], ax            ; 0x1dc0
    mov ax, 0                        ; 0x1dc3
    cmp word [bp + 6], byte 0x13     ; 0x1dc6
    je short apply_spell_effect.forward4 ; 0x1dca
    mov ax, word [bp + 8]            ; 0x1dcc
apply_spell_effect.forward4:
    mov word [bp - 8], ax            ; 0x1dcf
    jmp short apply_spell_effect.forward5 ; 0x1dd2
apply_spell_effect.back1:
    mov ax, 0x248                    ; 0x1dd4
    imul word [bp - 2]               ; 0x1dd7
    mov bx, ax                       ; 0x1dda
    push word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x1ddc
    mov ax, 0                        ; 0x1de0
    push ax                          ; 0x1de3
    push word [bp - 8]               ; 0x1de4
    mov ax, 8                        ; 0x1de7
    push ax                          ; 0x1dea
    push word [bp - 6]               ; 0x1deb
    call store_word_and_pair         ; 0x1dee
    add sp, byte 6                   ; 0x1df1
    mov cx, ax                       ; 0x1df4
    sub sp, byte 4                   ; 0x1df6
    mov ax, sp                       ; 0x1df9
    mov dx, ss                       ; 0x1dfb
    mov es, dx                       ; 0x1dfd
    mov si, cx                       ; 0x1dff
    mov di, ax                       ; 0x1e01
    movsw                            ; 0x1e03
    movsw                            ; 0x1e04
    call add_random_steps            ; 0x1e05
    add sp, byte 4                   ; 0x1e08
    push ax                          ; 0x1e0b
    mov ax, 0x248                    ; 0x1e0c
    imul word [bp - 2]               ; 0x1e0f
    mov bx, ax                       ; 0x1e12
    pop ax                           ; 0x1e14
    add ax, word [bx + party_records + pc_rec.pair_b] ; 0x1e15
    push ax                          ; 0x1e19
    call clamp_between               ; 0x1e1a
    add sp, byte 6                   ; 0x1e1d
    push ax                          ; 0x1e20
    mov ax, 0x248                    ; 0x1e21
    imul word [bp - 2]               ; 0x1e24
    mov bx, ax                       ; 0x1e27
    pop ax                           ; 0x1e29
    mov word [bx + party_records + pc_rec.pair_b], ax ; 0x1e2a
    inc word [bp - 2]                ; 0x1e2e
apply_spell_effect.forward5:
    mov ax, word [bp - 2]            ; 0x1e31
    cmp ax, word [bp - 4]            ; 0x1e34
    jl short apply_spell_effect.back1 ; 0x1e37
    jmp near jumptable_2326_case_50  ; 0x1e39
jumptable_2326_case_26:
    mov ax, 0x248                    ; 0x1e3c
    imul word [bp + 0xa]             ; 0x1e3f
    mov bx, ax                       ; 0x1e42
    mov al, byte [bx + party_records + pc_rec.status + 0x3] ; 0x1e44
    sub ah, ah                       ; 0x1e48
    push ax                          ; 0x1e4a
    mov ax, 0x19                     ; 0x1e4b
    imul word [bp + 8]               ; 0x1e4e
    mov cx, ax                       ; 0x1e51
    pop ax                           ; 0x1e53
    sub ax, cx                       ; 0x1e54
    mov word [bp - 2], ax            ; 0x1e56
    cmp ax, strict word 0            ; 0x1e59
    jge short apply_spell_effect.forward6 ; 0x1e5c
    mov word [bp - 2], 0             ; 0x1e5e
apply_spell_effect.forward6:
    mov al, byte [bp - 2]            ; 0x1e63
    mov byte [bx + party_records + pc_rec.status + 0x3], al ; 0x1e66
    jmp near jumptable_2326_case_50  ; 0x1e6a
jumptable_2326_case_29:
    mov ax, 0x248                    ; 0x1e6d
    imul word [bp + 0xa]             ; 0x1e70
    mov bx, ax                       ; 0x1e73
    mov al, byte [bx + party_records + pc_rec.f_023e] ; 0x1e75
    sub ah, ah                       ; 0x1e79
    sub ax, word [bp + 8]            ; 0x1e7b
    mov word [bp - 2], ax            ; 0x1e7e
    cmp ax, strict word 0            ; 0x1e81
    jg short apply_spell_effect.forward7 ; 0x1e84
    mov word [bp - 2], 0             ; 0x1e86
    mov byte [bx + party_records + pc_rec.status + 0x5], 0 ; 0x1e8b
apply_spell_effect.forward7:
    mov al, byte [bp - 2]            ; 0x1e90
    mov byte [bx + party_records + pc_rec.f_023e], al ; 0x1e93
    mov al, byte [bx + party_records + pc_rec.status + 0x5] ; 0x1e97
    sub ah, ah                       ; 0x1e9b
    push ax                          ; 0x1e9d
    mov ax, 5                        ; 0x1e9e
    imul word [bp + 8]               ; 0x1ea1
    mov cx, ax                       ; 0x1ea4
    pop ax                           ; 0x1ea6
    sub ax, cx                       ; 0x1ea7
    mov word [bp - 2], ax            ; 0x1ea9
    cmp ax, strict word 0            ; 0x1eac
    jg short apply_spell_effect.forward8 ; 0x1eaf
    mov word [bp - 2], 0             ; 0x1eb1
    mov byte [bx + party_records + pc_rec.f_023e], 0 ; 0x1eb6
apply_spell_effect.forward8:
    mov al, byte [bp - 2]            ; 0x1ebb
    mov byte [bx + party_records + pc_rec.status + 0x5], al ; 0x1ebe
    jmp near jumptable_2326_case_50  ; 0x1ec2
jumptable_2326_case_34:
    mov ax, 0x248                    ; 0x1ec5
    imul word [bp + 0xa]             ; 0x1ec8
    mov bx, ax                       ; 0x1ecb
    cmp byte [bx + party_records + pc_rec.state], 2 ; 0x1ecd
    jne short apply_spell_effect.forward10 ; 0x1ed2
    mov ax, 3                        ; 0x1ed4
    imul word [bp + 8]               ; 0x1ed7
    push ax                          ; 0x1eda
    mov al, byte [bx + party_records + pc_rec.stat + 0x3] ; 0x1edb
    sub ah, ah                       ; 0x1edf
    mov dx, ax                       ; 0x1ee1
    mov cx, 0x15                     ; 0x1ee3
    sub cx, ax                       ; 0x1ee6
    pop ax                           ; 0x1ee8
    cmp ax, cx                       ; 0x1ee9
    jle short apply_spell_effect.forward10 ; 0x1eeb
    dec byte [bx + party_records + pc_rec.stat + 0x3] ; 0x1eed
    mov ax, 0xb7                     ; 0x1ef1
    push ax                          ; 0x1ef4
    call random_below                ; 0x1ef5
    pop cx                           ; 0x1ef8
    add ax, 0xb7                     ; 0x1ef9
    cwd                              ; 0x1efc
    push ax                          ; 0x1efd
    push dx                          ; 0x1efe
    mov ax, 0x248                    ; 0x1eff
    imul word [bp + 0xa]             ; 0x1f02
    mov bx, ax                       ; 0x1f05
    pop dx                           ; 0x1f07
    pop ax                           ; 0x1f08
    add word [bx + party_records + pc_rec.f_0008], ax ; 0x1f09
    adc word [bx + party_records + pc_rec.f_000a], dx ; 0x1f0d
    mov ax, 0x12                     ; 0x1f11
    push ax                          ; 0x1f14
    call random_below                ; 0x1f15
    pop cx                           ; 0x1f18
    push ax                          ; 0x1f19
    mov ax, 0x248                    ; 0x1f1a
    imul word [bp + 0xa]             ; 0x1f1d
    mov bx, ax                       ; 0x1f20
    mov al, byte [bx + party_records + pc_rec.stat + 0x3] ; 0x1f22
    sub ah, ah                       ; 0x1f26
    mov cx, ax                       ; 0x1f28
    pop ax                           ; 0x1f2a
    cmp ax, cx                       ; 0x1f2b
    jle short apply_spell_effect.forward9 ; 0x1f2d
    mov byte [bx + party_records + pc_rec.state], 3 ; 0x1f2f
    mov word [bx + party_records + pc_rec.pair_a], 0 ; 0x1f34
    mov word [bx + party_records + pc_rec.pair_b], 0 ; 0x1f3a
    jmp short apply_spell_effect.forward10 ; 0x1f40
apply_spell_effect.forward9:
    mov byte [bx + party_records + pc_rec.state], 0 ; 0x1f42
apply_spell_effect.forward10:
    jmp near jumptable_2326_case_50  ; 0x1f47
jumptable_2326_case_38:
    mov ax, 0x248                    ; 0x1f4a
    imul word [bp + 0xa]             ; 0x1f4d
    mov bx, ax                       ; 0x1f50
    mov al, byte [bx + party_records + pc_rec.status + 0x7] ; 0x1f52
    sub ah, ah                       ; 0x1f56
    push ax                          ; 0x1f58
    mov ax, 0x19                     ; 0x1f59
    imul word [bp + 8]               ; 0x1f5c
    mov cx, ax                       ; 0x1f5f
    pop ax                           ; 0x1f61
    sub ax, cx                       ; 0x1f62
    mov word [bp - 2], ax            ; 0x1f64
    cmp ax, strict word 0            ; 0x1f67
    jge short apply_spell_effect.forward11 ; 0x1f6a
    mov word [bp - 2], 0             ; 0x1f6c
apply_spell_effect.forward11:
    mov al, byte [bp - 2]            ; 0x1f71
    mov byte [bx + party_records + pc_rec.status + 0x7], al ; 0x1f74
    jmp near jumptable_2326_case_50  ; 0x1f78
jumptable_2326_case_28:
    mov ax, 3                        ; 0x1f7b
    imul word [bp + 8]               ; 0x1f7e
    push ax                          ; 0x1f81
    mov ax, 0x248                    ; 0x1f82
    imul word [bp + 0xa]             ; 0x1f85
    mov bx, ax                       ; 0x1f88
    mov al, byte [bx + party_records + pc_rec.stat + 0x3] ; 0x1f8a
    sub ah, ah                       ; 0x1f8e
    mov dx, ax                       ; 0x1f90
    mov cx, 0x12                     ; 0x1f92
    sub cx, ax                       ; 0x1f95
    pop ax                           ; 0x1f97
    cmp ax, cx                       ; 0x1f98
    jle short apply_spell_effect.forward12 ; 0x1f9a
    mov byte [bx + party_records + pc_rec.status + 0x6], 0 ; 0x1f9c
apply_spell_effect.forward12:
    jmp near jumptable_2326_case_50  ; 0x1fa1
jumptable_2326_case_37:
    mov word [bp - 2], 0             ; 0x1fa4
    jmp short apply_spell_effect.forward14 ; 0x1fa9
apply_spell_effect.back2:
    mov ax, 0x248                    ; 0x1fab
    imul word [bp + 0xa]             ; 0x1fae
    mov bx, ax                       ; 0x1fb1
    mov al, byte [bx + party_records + pc_rec.status + 0x2] ; 0x1fb3
    sub ah, ah                       ; 0x1fb7
    push ax                          ; 0x1fb9
    mov ax, word [bp + 8]            ; 0x1fba
    imul ax                          ; 0x1fbd
    mov cx, ax                       ; 0x1fbf
    add ax, strict word 4            ; 0x1fc1
    mov cx, ax                       ; 0x1fc4
    pop ax                           ; 0x1fc6
    sub ax, cx                       ; 0x1fc7
    mov word [bp - 4], ax            ; 0x1fc9
    cmp ax, strict word 0            ; 0x1fcc
    jge short apply_spell_effect.forward13 ; 0x1fcf
    mov word [bp - 4], 0             ; 0x1fd1
apply_spell_effect.forward13:
    mov al, byte [bp - 4]            ; 0x1fd6
    mov byte [bx + party_records + pc_rec.status + 0x2], al ; 0x1fd9
    inc word [bp - 2]                ; 0x1fdd
apply_spell_effect.forward14:
    mov ax, word [bp - 2]            ; 0x1fe0
    cmp ax, word [party_char_count]  ; 0x1fe3
    jl short apply_spell_effect.back2 ; 0x1fe7
    jmp near jumptable_2326_case_50  ; 0x1fe9
jumptable_2326_case_35:
    mov word [bp - 4], 1             ; 0x1fec
apply_spell_effect.back3:
    mov ax, word [bp - 4]            ; 0x1ff1
    cmp ax, strict word 1            ; 0x1ff4
    je short apply_spell_effect.forward15 ; 0x1ff7
    cmp ax, strict word 2            ; 0x1ff9
    je short apply_spell_effect.forward15 ; 0x1ffc
    cmp ax, strict word 4            ; 0x1ffe
    je short apply_spell_effect.forward15 ; 0x2001
    cmp ax, strict word 8            ; 0x2003
    je short apply_spell_effect.forward15 ; 0x2006
    cmp ax, strict word 9            ; 0x2008
    jne short apply_spell_effect.forward17 ; 0x200b
apply_spell_effect.forward15:
    mov ax, 0x248                    ; 0x200d
    imul word [bp + 0xa]             ; 0x2010
    mov cx, ax                       ; 0x2013
    mov ax, word [bp - 4]            ; 0x2015
    add cx, ax                       ; 0x2018
    mov bx, cx                       ; 0x201a
    mov al, byte [bx + party_records + pc_rec.status] ; 0x201c
    sub ah, ah                       ; 0x2020
    push ax                          ; 0x2022
    mov ax, word [bp + 8]            ; 0x2023
    imul ax                          ; 0x2026
    mov cx, ax                       ; 0x2028
    add ax, strict word 4            ; 0x202a
    mov cx, ax                       ; 0x202d
    pop ax                           ; 0x202f
    sub ax, cx                       ; 0x2030
    mov word [bp - 2], ax            ; 0x2032
    cmp ax, strict word 0            ; 0x2035
    jge short apply_spell_effect.forward16 ; 0x2038
    mov word [bp - 2], 0             ; 0x203a
apply_spell_effect.forward16:
    mov al, byte [bp - 2]            ; 0x203f
    mov byte [bx + party_records + pc_rec.status], al ; 0x2042
apply_spell_effect.forward17:
    inc word [bp - 4]                ; 0x2046
    mov ax, word [bp - 4]            ; 0x2049
    cmp ax, strict word 9            ; 0x204c
    jle short apply_spell_effect.back3 ; 0x204f
    jmp near jumptable_2326_case_50  ; 0x2051
jumptable_2326_case_42:
    mov ax, 0                        ; 0x2054
    cmp word [bp + 6], byte 0x58     ; 0x2057
    je short apply_spell_effect.forward18 ; 0x205b
    mov ax, word [bp + 0xa]          ; 0x205d
apply_spell_effect.forward18:
    mov word [bp - 2], ax            ; 0x2060
    mov ax, word [party_char_count]  ; 0x2063
    cmp word [bp + 6], byte 0x58     ; 0x2066
    je short apply_spell_effect.forward19 ; 0x206a
    mov ax, word [bp + 0xa]          ; 0x206c
    inc ax                           ; 0x206f
apply_spell_effect.forward19:
    mov word [bp - 4], ax            ; 0x2070
    mov ax, 4                        ; 0x2073
    cmp word [bp + 6], byte 0x58     ; 0x2076
    je short apply_spell_effect.forward20 ; 0x207a
    mov ax, 7                        ; 0x207c
apply_spell_effect.forward20:
    mov word [bp - 6], ax            ; 0x207f
    mov ax, 0                        ; 0x2082
    cmp word [bp + 6], byte 0x58     ; 0x2085
    je short apply_spell_effect.forward21 ; 0x2089
    mov ax, word [bp + 8]            ; 0x208b
apply_spell_effect.forward21:
    mov word [bp - 8], ax            ; 0x208e
    jmp short apply_spell_effect.forward22 ; 0x2091
apply_spell_effect.back4:
    mov ax, 0x248                    ; 0x2093
    imul word [bp - 2]               ; 0x2096
    mov bx, ax                       ; 0x2099
    push word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x209b
    mov ax, 0                        ; 0x209f
    push ax                          ; 0x20a2
    push word [bp - 8]               ; 0x20a3
    push word [bp - 6]               ; 0x20a6
    push word [bp + 8]               ; 0x20a9
    call store_word_and_pair         ; 0x20ac
    add sp, byte 6                   ; 0x20af
    mov cx, ax                       ; 0x20b2
    sub sp, byte 4                   ; 0x20b4
    mov ax, sp                       ; 0x20b7
    mov dx, ss                       ; 0x20b9
    mov es, dx                       ; 0x20bb
    mov si, cx                       ; 0x20bd
    mov di, ax                       ; 0x20bf
    movsw                            ; 0x20c1
    movsw                            ; 0x20c2
    call add_random_steps            ; 0x20c3
    add sp, byte 4                   ; 0x20c6
    push ax                          ; 0x20c9
    mov ax, 0x248                    ; 0x20ca
    imul word [bp - 2]               ; 0x20cd
    mov bx, ax                       ; 0x20d0
    pop ax                           ; 0x20d2
    add ax, word [bx + party_records + pc_rec.pair_a] ; 0x20d3
    push ax                          ; 0x20d7
    call clamp_between               ; 0x20d8
    add sp, byte 6                   ; 0x20db
    push ax                          ; 0x20de
    mov ax, 0x248                    ; 0x20df
    imul word [bp - 2]               ; 0x20e2
    mov bx, ax                       ; 0x20e5
    pop ax                           ; 0x20e7
    mov word [bx + party_records + pc_rec.pair_a], ax ; 0x20e8
    add word [bx + party_records + pc_rec.f_0008], byte 1 ; 0x20ec
    adc word [bx + party_records + pc_rec.f_000a], byte 0 ; 0x20f1
    inc word [bp - 2]                ; 0x20f6
apply_spell_effect.forward22:
    mov ax, word [bp - 2]            ; 0x20f9
    cmp ax, word [bp - 4]            ; 0x20fc
    jl short apply_spell_effect.back4 ; 0x20ff
    jmp near jumptable_2326_case_50  ; 0x2101
jumptable_2326_case_46:
    mov ax, 0x248                    ; 0x2104
    imul word [bp + 0xa]             ; 0x2107
    mov bx, ax                       ; 0x210a
    cmp byte [bx + party_records + pc_rec.state], 3 ; 0x210c
    je short apply_spell_effect.forward23 ; 0x2111
    jmp near apply_spell_effect.forward24 ; 0x2113
apply_spell_effect.forward23:
    mov ax, 3                        ; 0x2116
    imul word [bp + 8]               ; 0x2119
    push ax                          ; 0x211c
    mov al, byte [bx + party_records + pc_rec.stat + 0x3] ; 0x211d
    sub ah, ah                       ; 0x2121
    mov dx, ax                       ; 0x2123
    mov cx, 0x15                     ; 0x2125
    sub cx, ax                       ; 0x2128
    pop ax                           ; 0x212a
    cmp ax, cx                       ; 0x212b
    jle short apply_spell_effect.forward24 ; 0x212d
    dec byte [bx + party_records + pc_rec.stat + 0x3] ; 0x212f
    mov byte [bx + party_records + pc_rec.state], 0 ; 0x2133
    push word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x2138
    mov ax, 1                        ; 0x213c
    push ax                          ; 0x213f
    mov ax, word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x2140
    mov cx, 3                        ; 0x2144
    cwd                              ; 0x2147
    idiv cx                          ; 0x2148
    push ax                          ; 0x214a
    call clamp_between               ; 0x214b
    add sp, byte 6                   ; 0x214e
    push ax                          ; 0x2151
    mov ax, 0x248                    ; 0x2152
    imul word [bp + 0xa]             ; 0x2155
    mov bx, ax                       ; 0x2158
    pop ax                           ; 0x215a
    mov word [bx + party_records + pc_rec.pair_a], ax ; 0x215b
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x215f
    mov cx, 0xa                      ; 0x2163
    cwd                              ; 0x2166
    idiv cx                          ; 0x2167
    mov word [bx + party_records + pc_rec.pair_b], ax ; 0x2169
    inc word [bx + party_records + pc_rec.f_0026] ; 0x216d
    mov ax, 0xb7                     ; 0x2171
    push ax                          ; 0x2174
    call random_below                ; 0x2175
    pop cx                           ; 0x2178
    add ax, 0x16d                    ; 0x2179
    cwd                              ; 0x217c
    push ax                          ; 0x217d
    push dx                          ; 0x217e
    mov ax, 0x248                    ; 0x217f
    imul word [bp + 0xa]             ; 0x2182
    mov bx, ax                       ; 0x2185
    pop dx                           ; 0x2187
    pop ax                           ; 0x2188
    add word [bx + party_records + pc_rec.f_0008], ax ; 0x2189
    adc word [bx + party_records + pc_rec.f_000a], dx ; 0x218d
apply_spell_effect.forward24:
    jmp near jumptable_2326_case_50  ; 0x2191
jumptable_2326_case_32:
    push word [bp + 8]               ; 0x2194
    call roll_claim_type7_object     ; 0x2197
    pop cx                           ; 0x219a
    cmp ax, strict word 0xffff       ; 0x219b
    jne short apply_spell_effect.forward25 ; 0x219e
apply_spell_effect.forward25:
    jmp near jumptable_2326_case_50  ; 0x21a0
jumptable_2326_case_39:
    mov ax, 0                        ; 0x21a3
    push ax                          ; 0x21a6
    push ax                          ; 0x21a7
    push word [bp + 8]               ; 0x21a8
    call animate_spell_target_grid   ; 0x21ab
    add sp, byte 6                   ; 0x21ae
    jmp near jumptable_2326_case_50  ; 0x21b1
jumptable_2326_case_40:
    mov ax, 1                        ; 0x21b4
    push ax                          ; 0x21b7
    mov ax, 0                        ; 0x21b8
    push ax                          ; 0x21bb
    push word [bp + 8]               ; 0x21bc
    call animate_spell_target_grid   ; 0x21bf
    add sp, byte 6                   ; 0x21c2
    jmp near jumptable_2326_case_50  ; 0x21c5
jumptable_2326_case_47:
    push word [bp + 8]               ; 0x21c8
    mov ax, 8                        ; 0x21cb
    push ax                          ; 0x21ce
    push word [bp + 8]               ; 0x21cf
    call store_word_and_pair         ; 0x21d2
    add sp, byte 6                   ; 0x21d5
    mov cx, ax                       ; 0x21d8
    sub sp, byte 4                   ; 0x21da
    mov ax, sp                       ; 0x21dd
    mov dx, ss                       ; 0x21df
    mov es, dx                       ; 0x21e1
    mov si, cx                       ; 0x21e3
    mov di, ax                       ; 0x21e5
    movsw                            ; 0x21e7
    movsw                            ; 0x21e8
    call add_random_steps            ; 0x21e9
    add sp, byte 4                   ; 0x21ec
    mov word [bp - 2], ax            ; 0x21ef
    push ax                          ; 0x21f2
    mov ax, 0x248                    ; 0x21f3
    imul word [bp + 4]               ; 0x21f6
    mov bx, ax                       ; 0x21f9
    pop ax                           ; 0x21fb
    add word [bx + party_records + pc_rec.pair_b], ax ; 0x21fc
    mov ax, word [bx + party_records + pc_rec.pair_b] ; 0x2200
    cmp ax, word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x2204
    jle short apply_spell_effect.forward26 ; 0x2208
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x220a
    mov word [bx + party_records + pc_rec.pair_b], ax ; 0x220e
apply_spell_effect.forward26:
    mov ax, 0                        ; 0x2212
    push ax                          ; 0x2215
    mov ax, 2                        ; 0x2216
    push ax                          ; 0x2219
    push word [bp + 8]               ; 0x221a
    call store_word_and_pair         ; 0x221d
    add sp, byte 6                   ; 0x2220
    mov cx, ax                       ; 0x2223
    sub sp, byte 4                   ; 0x2225
    mov ax, sp                       ; 0x2228
    mov dx, ss                       ; 0x222a
    mov es, dx                       ; 0x222c
    mov si, cx                       ; 0x222e
    mov di, ax                       ; 0x2230
    movsw                            ; 0x2232
    movsw                            ; 0x2233
    call add_random_steps            ; 0x2234
    add sp, byte 4                   ; 0x2237
    mov word [bp - 2], ax            ; 0x223a
    push ax                          ; 0x223d
    mov ax, 0x248                    ; 0x223e
    imul word [bp + 4]               ; 0x2241
    mov bx, ax                       ; 0x2244
    pop ax                           ; 0x2246
    add word [bx + party_records + pc_rec.pair_a], ax ; 0x2247
    mov ax, word [bx + party_records + pc_rec.pair_a] ; 0x224b
    cmp ax, word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x224f
    jle short apply_spell_effect.forward27 ; 0x2253
    mov ax, word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x2255
    mov word [bx + party_records + pc_rec.pair_a], ax ; 0x2259
apply_spell_effect.forward27:
    jmp near jumptable_2326_case_50  ; 0x225d
jumptable_2326_case_48:
    mov word [bp - 2], 0             ; 0x2260
apply_spell_effect.back5:
    mov ax, 0                        ; 0x2265
    push ax                          ; 0x2268
    mov ax, 0xa                      ; 0x2269
    push ax                          ; 0x226c
    push word [bp + 8]               ; 0x226d
    call store_word_and_pair         ; 0x2270
    add sp, byte 6                   ; 0x2273
    mov cx, ax                       ; 0x2276
    sub sp, byte 4                   ; 0x2278
    mov ax, sp                       ; 0x227b
    mov dx, ss                       ; 0x227d
    mov es, dx                       ; 0x227f
    mov si, cx                       ; 0x2281
    mov di, ax                       ; 0x2283
    movsw                            ; 0x2285
    movsw                            ; 0x2286
    call add_random_steps            ; 0x2287
    add sp, byte 4                   ; 0x228a
    mov word [bp - 4], ax            ; 0x228d
    push ax                          ; 0x2290
    mov ax, 0x248                    ; 0x2291
    imul word [bp + 4]               ; 0x2294
    mov cx, ax                       ; 0x2297
    mov dx, word [bp - 2]            ; 0x2299
    shl dx, 1                        ; 0x229c
    shl dx, 1                        ; 0x229e
    add ax, dx                       ; 0x22a0
    mov bx, ax                       ; 0x22a2
    pop ax                           ; 0x22a4
    add word [bx + party_records + pc_rec.realm_points], ax ; 0x22a5
    mov ax, word [bx + party_records + pc_rec.realm_points] ; 0x22a9
    cmp ax, word [bx + party_records + pc_rec.realm_points + 0x2] ; 0x22ad
    jle short apply_spell_effect.forward28 ; 0x22b1
    mov ax, word [bx + party_records + pc_rec.realm_points + 0x2] ; 0x22b3
    mov word [bx + party_records + pc_rec.realm_points], ax ; 0x22b7
apply_spell_effect.forward28:
    inc word [bp - 2]                ; 0x22bb
    mov ax, word [bp - 2]            ; 0x22be
    cmp ax, strict word 6            ; 0x22c1
    jl short apply_spell_effect.back5 ; 0x22c4
    jmp near jumptable_2326_case_50  ; 0x22c6
jumptable_2326_case_49:
    mov word [bp - 2], 1             ; 0x22c9
    mov word [bp - 6], 0xa           ; 0x22ce
    mov word [bp - 8], 0             ; 0x22d3
apply_spell_effect.back6:
    mov ax, 0x248                    ; 0x22d8
    imul word [bp + 4]               ; 0x22db
    mov bx, ax                       ; 0x22de
    mov al, byte [bx + party_records + pc_rec.flag + 0x1a] ; 0x22e0
    sub ah, ah                       ; 0x22e4
    cmp ax, word [bp - 6]            ; 0x22e6
    jl short apply_spell_effect.forward29 ; 0x22e9
    inc word [bp - 2]                ; 0x22eb
apply_spell_effect.forward29:
    mov ax, word [bp - 6]            ; 0x22ee
    shl ax, 1                        ; 0x22f1
    add ax, strict word 0xa          ; 0x22f3
    mov word [bp - 6], ax            ; 0x22f6
    inc word [bp - 8]                ; 0x22f9
    mov ax, word [bp - 8]            ; 0x22fc
    cmp ax, strict word 3            ; 0x22ff
    jl short apply_spell_effect.back6 ; 0x2302
    mov ax, 0                        ; 0x2304
    push ax                          ; 0x2307
    mov ax, 1                        ; 0x2308
    push ax                          ; 0x230b
    push word [bp - 2]               ; 0x230c
    call animate_spell_target_grid   ; 0x230f
    add sp, byte 6                   ; 0x2312
    jmp short jumptable_2326_case_50 ; 0x2315
jumptable_2326_case_41:
    push word [bp + 8]               ; 0x2317
    call roll_slot_detection_report  ; 0x231a
    pop cx                           ; 0x231d
    jmp short jumptable_2326_case_50 ; 0x231e
apply_spell_effect.forward30:
    mov cx, 0x1a                     ; 0x2320
    call aztec_cswt                  ; 0x2323
jumptable_2326:
    dw 0x000c                                  ; 0x2326 ; literal
    dw 0x0011                                  ; 0x2328 ; literal
    dw 0x0013                                  ; 0x232a ; literal
    dw 0x0019                                  ; 0x232c ; literal
    dw 0x0021                                  ; 0x232e ; literal
    dw 0x0025                                  ; 0x2330 ; literal
    dw 0x002e                                  ; 0x2332 ; literal
    dw 0x002f                                  ; 0x2334 ; literal
    dw 0x0031                                  ; 0x2336 ; literal
    dw 0x0038                                  ; 0x2338 ; literal
    dw 0x003d                                  ; 0x233a ; literal
    dw 0x003f                                  ; 0x233c ; literal
    dw 0x0042                                  ; 0x233e ; literal
    dw 0x0045                                  ; 0x2340 ; literal
    dw 0x0048                                  ; 0x2342 ; literal
    dw 0x004b                                  ; 0x2344 ; literal
    dw 0x004d                                  ; 0x2346 ; literal
    dw 0x004e                                  ; 0x2348 ; literal
    dw 0x0052                                  ; 0x234a ; literal
    dw 0x0054                                  ; 0x234c ; literal
    dw 0x0058                                  ; 0x234e ; literal
    dw 0x005e                                  ; 0x2350 ; literal
    dw 0x0061                                  ; 0x2352 ; literal
    dw 0x0062                                  ; 0x2354 ; literal
    dw 0x0063                                  ; 0x2356 ; literal
    dw jumptable_2326_case_25 - IMAGE_BASE + __zres_end ; 0x2358
    dw jumptable_2326_case_26 - IMAGE_BASE + __zres_end ; 0x235a
    dw jumptable_2326_case_25 - IMAGE_BASE + __zres_end ; 0x235c
    dw jumptable_2326_case_28 - IMAGE_BASE + __zres_end ; 0x235e
    dw jumptable_2326_case_29 - IMAGE_BASE + __zres_end ; 0x2360
    dw jumptable_2326_case_30 - IMAGE_BASE + __zres_end ; 0x2362
    dw jumptable_2326_case_31 - IMAGE_BASE + __zres_end ; 0x2364
    dw jumptable_2326_case_32 - IMAGE_BASE + __zres_end ; 0x2366
    dw jumptable_2326_case_33 - IMAGE_BASE + __zres_end ; 0x2368
    dw jumptable_2326_case_34 - IMAGE_BASE + __zres_end ; 0x236a
    dw jumptable_2326_case_35 - IMAGE_BASE + __zres_end ; 0x236c
    dw jumptable_2326_case_36 - IMAGE_BASE + __zres_end ; 0x236e
    dw jumptable_2326_case_37 - IMAGE_BASE + __zres_end ; 0x2370
    dw jumptable_2326_case_38 - IMAGE_BASE + __zres_end ; 0x2372
    dw jumptable_2326_case_39 - IMAGE_BASE + __zres_end ; 0x2374
    dw jumptable_2326_case_40 - IMAGE_BASE + __zres_end ; 0x2376
    dw jumptable_2326_case_41 - IMAGE_BASE + __zres_end ; 0x2378
    dw jumptable_2326_case_42 - IMAGE_BASE + __zres_end ; 0x237a
    dw jumptable_2326_case_43 - IMAGE_BASE + __zres_end ; 0x237c
    dw jumptable_2326_case_44 - IMAGE_BASE + __zres_end ; 0x237e
    dw jumptable_2326_case_42 - IMAGE_BASE + __zres_end ; 0x2380
    dw jumptable_2326_case_46 - IMAGE_BASE + __zres_end ; 0x2382
    dw jumptable_2326_case_47 - IMAGE_BASE + __zres_end ; 0x2384
    dw jumptable_2326_case_48 - IMAGE_BASE + __zres_end ; 0x2386
    dw jumptable_2326_case_49 - IMAGE_BASE + __zres_end ; 0x2388
    dw jumptable_2326_case_50 - IMAGE_BASE + __zres_end ; 0x238a
jumptable_2326_case_50:
    ret                              ; 0x238c
