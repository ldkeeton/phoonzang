; auto-generated
api_idx_0012_VNOV:
    mov ax, 0xffee                   ; 0x0ee0
    call aztec_csav                  ; 0x0ee3
    mov ax, word [party_region]      ; 0x0ee6
    shl ax, 1                        ; 0x0ee9
    mov si, ax                       ; 0x0eeb
    mov bx, word [maze_tables]       ; 0x0eed
    mov ax, word [bx + si + 0x3c0]   ; 0x0ef1
    mov word [bp - 0x0008], ax       ; 0x0ef5
    mov ax, word [bx + si + 0x1e0]   ; 0x0ef8
    mov cx, 0x10                     ; 0x0efc
    cwd                              ; 0x0eff
    idiv cx                          ; 0x0f00
    mov word [bp - 0x000a], ax       ; 0x0f02
    mov ax, word [bx + si + 0x1e0]   ; 0x0f05
    cwd                              ; 0x0f09
    idiv cx                          ; 0x0f0a
    mov word [bp - 0x000c], dx       ; 0x0f0c
@..api_idx_0012_VNOV.l1:
    call pick_party_member           ; 0x0f0f
    mov word [bp - 0x0006], ax       ; 0x0f12
    cmp ax, strict word 0xffff       ; 0x0f15
    jne short @..api_idx_0012_VNOV.l2 ; 0x0f18
    jmp near @..api_idx_0012_VNOV.l26 ; 0x0f1a
@..api_idx_0012_VNOV.l2:
    mov word [bp - 0x0010], 0        ; 0x0f1d
    mov word [bp - 0x0012], 0        ; 0x0f22
    mov cx, 0x248                    ; 0x0f27
    imul cx                          ; 0x0f2a
    mov bx, ax                       ; 0x0f2c
    cmp byte [bx + member_state + 0x5], 3 ; 0x0f2e
    jb short @..api_idx_0012_VNOV.l3 ; 0x0f33
    mov ax, 1                        ; 0x0f35
    push ax                          ; 0x0f38
    mov ax, 7                        ; 0x0f39
    push ax                          ; 0x0f3c
    push word [bp - 0x0008]          ; 0x0f3d
    call get_bits                    ; 0x0f40
    add sp, byte 6                   ; 0x0f43
    test ax, ax                      ; 0x0f46
    jne short @..api_idx_0012_VNOV.l3 ; 0x0f48
    jmp near @..api_idx_0012_VNOV.l25 ; 0x0f4a
@..api_idx_0012_VNOV.l3:
    push word [bp - 0x000a]          ; 0x0f4d
    push word [bp - 0x000c]          ; 0x0f50
    push word [bp - 0x000a]          ; 0x0f53
    call store_word_and_pair         ; 0x0f56
    add sp, byte 6                   ; 0x0f59
    mov cx, ax                       ; 0x0f5c
    sub sp, byte 4                   ; 0x0f5e
    mov ax, sp                       ; 0x0f61
    mov dx, ss                       ; 0x0f63
    mov es, dx                       ; 0x0f65
    mov si, cx                       ; 0x0f67
    mov di, ax                       ; 0x0f69
    movsw                            ; 0x0f6b
    movsw                            ; 0x0f6c
    call ds_app_QSQR                 ; 0x0f6d
    add sp, byte 4                   ; 0x0f70
    mov word [bp - 0x000e], ax       ; 0x0f73
    mov word [bp - 0x0002], 0        ; 0x0f76
@..api_idx_0012_VNOV.l4:
    mov ax, 1                        ; 0x0f7b
    push ax                          ; 0x0f7e
    push word [bp - 0x0002]          ; 0x0f7f
    push word [bp - 0x0008]          ; 0x0f82
    call get_bits                    ; 0x0f85
    add sp, byte 6                   ; 0x0f88
    cmp ax, strict word 1            ; 0x0f8b
    je short @..api_idx_0012_VNOV.l5 ; 0x0f8e
    jmp near @..api_idx_0012_VNOV.l24 ; 0x0f90
@..api_idx_0012_VNOV.l5:
    cmp word [bp - 0x0002], byte 7   ; 0x0f93
    jge short @..api_idx_0012_VNOV.l6 ; 0x0f97
    mov word [bp - 0x0010], 1        ; 0x0f99
@..api_idx_0012_VNOV.l6:
    mov ax, word [bp - 0x0002]       ; 0x0f9e
    cmp ax, strict word 7            ; 0x0fa1
    jle short @..api_idx_0012_VNOV.l7 ; 0x0fa4
    cmp ax, strict word 0xf          ; 0x0fa6
    jge short @..api_idx_0012_VNOV.l7 ; 0x0fa9
    mov word [bp - 0x0012], 2        ; 0x0fab
@..api_idx_0012_VNOV.l7:
    jmp near @..api_idx_0012_VNOV.l23 ; 0x0fb0
jumptable_12fa_case_0:
    mov ax, 0x248                    ; 0x0fb3
    imul word [bp - 0x0006]          ; 0x0fb6
    mov bx, ax                       ; 0x0fb9
    push word [bx + pc_records + 0x2] ; 0x0fbb
    mov ax, 0                        ; 0x0fbf
    push ax                          ; 0x0fc2
    mov ax, word [bx + pc_records]   ; 0x0fc3
    add ax, word [bp - 0x000e]       ; 0x0fc7
    push ax                          ; 0x0fca
    call clamp_between               ; 0x0fcb
    add sp, byte 6                   ; 0x0fce
    push ax                          ; 0x0fd1
    mov ax, 0x248                    ; 0x0fd2
    imul word [bp - 0x0006]          ; 0x0fd5
    mov bx, ax                       ; 0x0fd8
    pop ax                           ; 0x0fda
    mov word [bx + pc_records], ax   ; 0x0fdb
    jmp near @..api_idx_0012_VNOV.l24 ; 0x0fdf
jumptable_12fa_case_1:
    mov word [bp - 0x0004], 0        ; 0x0fe2
@..api_idx_0012_VNOV.l8:
    mov ax, 0x248                    ; 0x0fe7
    imul word [bp - 0x0006]          ; 0x0fea
    mov cx, word [bp - 0x0004]       ; 0x0fed
    shl cx, 1                        ; 0x0ff0
    shl cx, 1                        ; 0x0ff2
    add ax, cx                       ; 0x0ff4
    mov bx, ax                       ; 0x0ff6
    push word [bx + pc_spell_power_cap + 0x6] ; 0x0ff8
    mov ax, 0                        ; 0x0ffc
    push ax                          ; 0x0fff
    push word [bp - 0x000a]          ; 0x1000
    push word [bp - 0x000c]          ; 0x1003
    push word [bp - 0x000a]          ; 0x1006
    call store_word_and_pair         ; 0x1009
    add sp, byte 6                   ; 0x100c
    mov cx, ax                       ; 0x100f
    sub sp, byte 4                   ; 0x1011
    mov ax, sp                       ; 0x1014
    mov dx, ss                       ; 0x1016
    mov es, dx                       ; 0x1018
    mov si, cx                       ; 0x101a
    mov di, ax                       ; 0x101c
    movsw                            ; 0x101e
    movsw                            ; 0x101f
    call ds_app_QSQR                 ; 0x1020
    add sp, byte 4                   ; 0x1023
    push ax                          ; 0x1026
    mov ax, 0x248                    ; 0x1027
    imul word [bp - 0x0006]          ; 0x102a
    mov cx, ax                       ; 0x102d
    mov dx, word [bp - 0x0004]       ; 0x102f
    shl dx, 1                        ; 0x1032
    shl dx, 1                        ; 0x1034
    add ax, dx                       ; 0x1036
    mov bx, ax                       ; 0x1038
    pop ax                           ; 0x103a
    add ax, word [bx + pc_spell_power_cap + 0x4] ; 0x103b
    push ax                          ; 0x103f
    call clamp_between               ; 0x1040
    add sp, byte 6                   ; 0x1043
    push ax                          ; 0x1046
    mov ax, 0x248                    ; 0x1047
    imul word [bp - 0x0006]          ; 0x104a
    mov cx, ax                       ; 0x104d
    mov dx, word [bp - 0x0004]       ; 0x104f
    shl dx, 1                        ; 0x1052
    shl dx, 1                        ; 0x1054
    add ax, dx                       ; 0x1056
    mov bx, ax                       ; 0x1058
    pop ax                           ; 0x105a
    mov word [bx + pc_spell_power_cap + 0x4], ax ; 0x105b
    inc word [bp - 0x0004]           ; 0x105f
    mov ax, word [bp - 0x0004]       ; 0x1062
    cmp ax, strict word 6            ; 0x1065
    jge short @..api_idx_0012_VNOV.l9 ; 0x1068
    jmp near @..api_idx_0012_VNOV.l8 ; 0x106a
@..api_idx_0012_VNOV.l9:
    jmp near @..api_idx_0012_VNOV.l24 ; 0x106d
jumptable_12fa_case_2:
    mov ax, 0x248                    ; 0x1070
    imul word [bp - 0x0006]          ; 0x1073
    mov bx, ax                       ; 0x1076
    push word [bx + member_pair_points + 0x4] ; 0x1078
    mov ax, 0                        ; 0x107c
    push ax                          ; 0x107f
    mov ax, word [bx + member_pair_points + 0x2] ; 0x1080
    add ax, word [bp - 0x000e]       ; 0x1084
    push ax                          ; 0x1087
    call clamp_between               ; 0x1088
    add sp, byte 6                   ; 0x108b
    push ax                          ; 0x108e
    mov ax, 0x248                    ; 0x108f
    imul word [bp - 0x0006]          ; 0x1092
    mov bx, ax                       ; 0x1095
    pop ax                           ; 0x1097
    mov word [bx + member_pair_points + 0x2], ax ; 0x1098
    jmp near @..api_idx_0012_VNOV.l24 ; 0x109c
jumptable_12fa_case_3:
    mov ax, 0x248                    ; 0x109f
    imul word [bp - 0x0006]          ; 0x10a2
    mov bx, ax                       ; 0x10a5
    mov byte [bx + member_state + 0x8], 0 ; 0x10a7
    mov byte [bx + cell_key_grid + 0x12b], 0 ; 0x10ac
    jmp near @..api_idx_0012_VNOV.l24 ; 0x10b1
jumptable_12fa_case_4:
    mov ax, 0x248                    ; 0x10b4
    imul word [bp - 0x0006]          ; 0x10b7
    mov bx, ax                       ; 0x10ba
    mov byte [bx + cell_key_grid + 0x129], 0 ; 0x10bc
    jmp near @..api_idx_0012_VNOV.l24 ; 0x10c1
jumptable_12fa_case_5:
    mov ax, 0x248                    ; 0x10c4
    imul word [bp - 0x0006]          ; 0x10c7
    mov bx, ax                       ; 0x10ca
    cmp byte [bx + member_state + 0x5], 2 ; 0x10cc
    jne short @..api_idx_0012_VNOV.l10 ; 0x10d1
    mov byte [bx + member_state + 0x5], 0 ; 0x10d3
@..api_idx_0012_VNOV.l10:
    mov byte [bx + cell_key_grid + 0x12c], 0 ; 0x10d8
    jmp near @..api_idx_0012_VNOV.l24 ; 0x10dd
jumptable_12fa_case_6:
    mov word [bp - 0x0004], 1        ; 0x10e0
@..api_idx_0012_VNOV.l11:
    mov ax, word [bp - 0x0004]       ; 0x10e5
    cmp ax, strict word 1            ; 0x10e8
    je short @..api_idx_0012_VNOV.l12 ; 0x10eb
    cmp ax, strict word 2            ; 0x10ed
    je short @..api_idx_0012_VNOV.l12 ; 0x10f0
    cmp ax, strict word 4            ; 0x10f2
    je short @..api_idx_0012_VNOV.l12 ; 0x10f5
    cmp ax, strict word 8            ; 0x10f7
    je short @..api_idx_0012_VNOV.l12 ; 0x10fa
    cmp ax, strict word 9            ; 0x10fc
    jne short @..api_idx_0012_VNOV.l13 ; 0x10ff
@..api_idx_0012_VNOV.l12:
    mov ax, 0x248                    ; 0x1101
    imul word [bp - 0x0006]          ; 0x1104
    mov cx, ax                       ; 0x1107
    mov ax, word [bp - 0x0004]       ; 0x1109
    add cx, ax                       ; 0x110c
    mov bx, cx                       ; 0x110e
    mov byte [bx + cell_key_grid + 0x126], 0 ; 0x1110
@..api_idx_0012_VNOV.l13:
    inc word [bp - 0x0004]           ; 0x1115
    mov ax, word [bp - 0x0004]       ; 0x1118
    cmp ax, strict word 9            ; 0x111b
    jle short @..api_idx_0012_VNOV.l11 ; 0x111e
    jmp near @..api_idx_0012_VNOV.l24 ; 0x1120
jumptable_12fa_case_7:
    mov ax, 0x248                    ; 0x1123
    imul word [bp - 0x0006]          ; 0x1126
    mov bx, ax                       ; 0x1129
    mov byte [bx + member_state + 0x5], 0 ; 0x112b
    mov ax, word [bx + member_pair_points + 0x4] ; 0x1130
    mov word [bx + member_pair_points + 0x2], ax ; 0x1134
    mov ax, word [bx + pc_records + 0x2] ; 0x1138
    mov word [bx + pc_records], ax   ; 0x113c
    jmp near @..api_idx_0012_VNOV.l24 ; 0x1140
jumptable_12fa_case_8:
    mov ax, 0x248                    ; 0x1143
    imul word [bp - 0x0006]          ; 0x1146
    mov bx, ax                       ; 0x1149
    push word [bx + pc_records + 0x2] ; 0x114b
    mov ax, 0                        ; 0x114f
    push ax                          ; 0x1152
    mov ax, word [bx + pc_records]   ; 0x1153
    sub ax, word [bp - 0x000e]       ; 0x1157
    push ax                          ; 0x115a
    call clamp_between               ; 0x115b
    add sp, byte 6                   ; 0x115e
    push ax                          ; 0x1161
    mov ax, 0x248                    ; 0x1162
    imul word [bp - 0x0006]          ; 0x1165
    mov bx, ax                       ; 0x1168
    pop ax                           ; 0x116a
    mov word [bx + pc_records], ax   ; 0x116b
    cmp ax, strict word 0            ; 0x116f
    jg short @..api_idx_0012_VNOV.l14 ; 0x1172
    mov al, byte [bx + cell_key_grid + 0x128] ; 0x1174
    sub ah, ah                       ; 0x1178
    mov cx, ax                       ; 0x117a
    push cx                          ; 0x117c
    mov ax, 6                        ; 0x117d
    push ax                          ; 0x1180
    call random_below                ; 0x1181
    pop cx                           ; 0x1184
    pop cx                           ; 0x1185
    add ax, cx                       ; 0x1186
    add ax, strict word 6            ; 0x1188
    push ax                          ; 0x118b
    mov ax, 0x248                    ; 0x118c
    imul word [bp - 0x0006]          ; 0x118f
    mov bx, ax                       ; 0x1192
    pop ax                           ; 0x1194
    mov byte [bx + cell_key_grid + 0x128], al ; 0x1195
@..api_idx_0012_VNOV.l14:
    jmp near @..api_idx_0012_VNOV.l24 ; 0x1199
jumptable_12fa_case_9:
    mov word [bp - 0x0004], 0        ; 0x119c
@..api_idx_0012_VNOV.l15:
    mov ax, 0x248                    ; 0x11a1
    imul word [bp - 0x0006]          ; 0x11a4
    mov cx, word [bp - 0x0004]       ; 0x11a7
    shl cx, 1                        ; 0x11aa
    shl cx, 1                        ; 0x11ac
    add ax, cx                       ; 0x11ae
    mov bx, ax                       ; 0x11b0
    push word [bx + pc_spell_power_cap + 0x6] ; 0x11b2
    mov ax, 0                        ; 0x11b6
    push ax                          ; 0x11b9
    push word [bp - 0x000a]          ; 0x11ba
    push word [bp - 0x000c]          ; 0x11bd
    push word [bp - 0x000a]          ; 0x11c0
    call store_word_and_pair         ; 0x11c3
    add sp, byte 6                   ; 0x11c6
    mov cx, ax                       ; 0x11c9
    sub sp, byte 4                   ; 0x11cb
    mov ax, sp                       ; 0x11ce
    mov dx, ss                       ; 0x11d0
    mov es, dx                       ; 0x11d2
    mov si, cx                       ; 0x11d4
    mov di, ax                       ; 0x11d6
    movsw                            ; 0x11d8
    movsw                            ; 0x11d9
    call ds_app_QSQR                 ; 0x11da
    add sp, byte 4                   ; 0x11dd
    mov cx, ax                       ; 0x11e0
    mov ax, 0x248                    ; 0x11e2
    imul word [bp - 0x0006]          ; 0x11e5
    mov dx, word [bp - 0x0004]       ; 0x11e8
    shl dx, 1                        ; 0x11eb
    shl dx, 1                        ; 0x11ed
    add ax, dx                       ; 0x11ef
    mov bx, ax                       ; 0x11f1
    mov ax, word [bx + pc_spell_power_cap + 0x4] ; 0x11f3
    sub ax, cx                       ; 0x11f7
    push ax                          ; 0x11f9
    call clamp_between               ; 0x11fa
    add sp, byte 6                   ; 0x11fd
    push ax                          ; 0x1200
    mov ax, 0x248                    ; 0x1201
    imul word [bp - 0x0006]          ; 0x1204
    mov cx, ax                       ; 0x1207
    mov dx, word [bp - 0x0004]       ; 0x1209
    shl dx, 1                        ; 0x120c
    shl dx, 1                        ; 0x120e
    add ax, dx                       ; 0x1210
    mov bx, ax                       ; 0x1212
    pop ax                           ; 0x1214
    mov word [bx + pc_spell_power_cap + 0x4], ax ; 0x1215
    inc word [bp - 0x0004]           ; 0x1219
    mov ax, word [bp - 0x0004]       ; 0x121c
    cmp ax, strict word 6            ; 0x121f
    jge short @..api_idx_0012_VNOV.l16 ; 0x1222
    jmp near @..api_idx_0012_VNOV.l15 ; 0x1224
@..api_idx_0012_VNOV.l16:
    jmp near @..api_idx_0012_VNOV.l24 ; 0x1227
jumptable_12fa_case_10:
    mov ax, 0x248                    ; 0x122a
    imul word [bp - 0x0006]          ; 0x122d
    mov bx, ax                       ; 0x1230
    push word [bx + member_pair_points + 0x4] ; 0x1232
    mov ax, 0                        ; 0x1236
    push ax                          ; 0x1239
    mov ax, word [bx + member_pair_points + 0x2] ; 0x123a
    sub ax, word [bp - 0x000e]       ; 0x123e
    push ax                          ; 0x1241
    call clamp_between               ; 0x1242
    add sp, byte 6                   ; 0x1245
    push ax                          ; 0x1248
    mov ax, 0x248                    ; 0x1249
    imul word [bp - 0x0006]          ; 0x124c
    mov bx, ax                       ; 0x124f
    pop ax                           ; 0x1251
    mov word [bx + member_pair_points + 0x2], ax ; 0x1252
    cmp ax, strict word 0            ; 0x1256
    jg short @..api_idx_0012_VNOV.l17 ; 0x1259
    mov byte [bx + member_state + 0x5], 3 ; 0x125b
    mov word [bx + member_pair_points + 0x2], 0 ; 0x1260
    mov word [bx + pc_records], 0    ; 0x1266
    mov al, byte [bx + member_state + 0x2] ; 0x126c
    sub ah, ah                       ; 0x1270
    add ax, strict word 8            ; 0x1272
    push ax                          ; 0x1275
    call play_sound_effect           ; 0x1276
    pop cx                           ; 0x1279
@..api_idx_0012_VNOV.l17:
    jmp near @..api_idx_0012_VNOV.l24 ; 0x127a
jumptable_12fa_case_11:
    mov ax, 0x248                    ; 0x127d
    imul word [bp - 0x0006]          ; 0x1280
    mov bx, ax                       ; 0x1283
    mov al, byte [bx + member_state + 0x8] ; 0x1285
    sub ah, ah                       ; 0x1289
    cmp ax, word [bp - 0x000a]       ; 0x128b
    jge short @..api_idx_0012_VNOV.l18 ; 0x128e
    mov al, byte [bp - 0x000a]       ; 0x1290
    mov byte [bx + member_state + 0x8], al ; 0x1293
@..api_idx_0012_VNOV.l18:
    mov al, byte [bx + cell_key_grid + 0x12b] ; 0x1297
    sub ah, ah                       ; 0x129b
    cmp ax, word [bp - 0x000e]       ; 0x129d
    jge short @..api_idx_0012_VNOV.l19 ; 0x12a0
    mov al, byte [bp - 0x000e]       ; 0x12a2
    mov byte [bx + cell_key_grid + 0x12b], al ; 0x12a5
@..api_idx_0012_VNOV.l19:
    jmp near @..api_idx_0012_VNOV.l24 ; 0x12a9
jumptable_12fa_case_12:
    mov ax, 0x248                    ; 0x12ac
    imul word [bp - 0x0006]          ; 0x12af
    mov bx, ax                       ; 0x12b2
    mov al, byte [bx + cell_key_grid + 0x129] ; 0x12b4
    sub ah, ah                       ; 0x12b8
    cmp ax, word [bp - 0x000e]       ; 0x12ba
    jge short @..api_idx_0012_VNOV.l20 ; 0x12bd
    mov al, byte [bp - 0x000e]       ; 0x12bf
    mov byte [bx + cell_key_grid + 0x129], al ; 0x12c2
@..api_idx_0012_VNOV.l20:
    jmp short @..api_idx_0012_VNOV.l24 ; 0x12c6
jumptable_12fa_case_13:
    mov ax, 0x248                    ; 0x12c8
    imul word [bp - 0x0006]          ; 0x12cb
    mov bx, ax                       ; 0x12ce
    cmp byte [bx + member_state + 0x5], 2 ; 0x12d0
    jae short @..api_idx_0012_VNOV.l21 ; 0x12d5
    mov byte [bx + member_state + 0x5], 2 ; 0x12d7
@..api_idx_0012_VNOV.l21:
    jmp short @..api_idx_0012_VNOV.l24 ; 0x12dc
jumptable_12fa_case_14:
    mov ax, 0x248                    ; 0x12de
    imul word [bp - 0x0006]          ; 0x12e1
    mov bx, ax                       ; 0x12e4
    mov al, byte [bx + cell_key_grid + 0x128] ; 0x12e6
    sub ah, ah                       ; 0x12ea
    cmp ax, word [bp - 0x000e]       ; 0x12ec
    jge short @..api_idx_0012_VNOV.l22 ; 0x12ef
    mov al, byte [bp - 0x000e]       ; 0x12f1
    mov byte [bx + cell_key_grid + 0x128], al ; 0x12f4
@..api_idx_0012_VNOV.l22:
    jmp short @..api_idx_0012_VNOV.l24 ; 0x12f8
jumptable_12fa:
    dw jumptable_12fa_case_0 - IMAGE_BASE + __zres_end ; 0x12fa
    dw jumptable_12fa_case_1 - IMAGE_BASE + __zres_end ; 0x12fc
    dw jumptable_12fa_case_2 - IMAGE_BASE + __zres_end ; 0x12fe
    dw jumptable_12fa_case_3 - IMAGE_BASE + __zres_end ; 0x1300
    dw jumptable_12fa_case_4 - IMAGE_BASE + __zres_end ; 0x1302
    dw jumptable_12fa_case_5 - IMAGE_BASE + __zres_end ; 0x1304
    dw jumptable_12fa_case_6 - IMAGE_BASE + __zres_end ; 0x1306
    dw jumptable_12fa_case_7 - IMAGE_BASE + __zres_end ; 0x1308
    dw jumptable_12fa_case_8 - IMAGE_BASE + __zres_end ; 0x130a
    dw jumptable_12fa_case_9 - IMAGE_BASE + __zres_end ; 0x130c
    dw jumptable_12fa_case_10 - IMAGE_BASE + __zres_end ; 0x130e
    dw jumptable_12fa_case_11 - IMAGE_BASE + __zres_end ; 0x1310
    dw jumptable_12fa_case_12 - IMAGE_BASE + __zres_end ; 0x1312
    dw jumptable_12fa_case_13 - IMAGE_BASE + __zres_end ; 0x1314
    dw jumptable_12fa_case_14 - IMAGE_BASE + __zres_end ; 0x1316
@..api_idx_0012_VNOV.l23:
    cmp ax, strict word 0xf          ; 0x1318
    jae short @..api_idx_0012_VNOV.l24 ; 0x131b
    xchg bx, ax                      ; 0x131d
    shl bx, 1                        ; 0x131e
    jmp [cs:bx + jumptable_12fa - IMAGE_BASE + __zres_end] ; 0x1320
@..api_idx_0012_VNOV.l24:
    inc word [bp - 0x0002]           ; 0x1325
    mov ax, word [bp - 0x0002]       ; 0x1328
    cmp ax, strict word 0x10         ; 0x132b
    jge short @..api_idx_0012_VNOV.l25 ; 0x132e
    jmp near @..api_idx_0012_VNOV.l4 ; 0x1330
@..api_idx_0012_VNOV.l25:
    mov ax, 1                        ; 0x1333
    push ax                          ; 0x1336
    push word [bp - 0x0006]          ; 0x1337
    call draw_party_member_panel     ; 0x133a
    add sp, byte 4                   ; 0x133d
    mov ax, word [bp - 0x0010]       ; 0x1340
    add ax, word [bp - 0x0012]       ; 0x1343
    add ax, 0x800                    ; 0x1346
    push ax                          ; 0x1349
    call loc_TLQV                    ; 0x134a
    pop cx                           ; 0x134d
    jmp near @..api_idx_0012_VNOV.l1 ; 0x134e
@..api_idx_0012_VNOV.l26:
    inc word [party_region]          ; 0x1351
    ret                              ; 0x1355
