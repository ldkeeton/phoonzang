; auto-generated
loc_RMVR:
    mov ax, 0xfc4a                   ; 0x4d0e
    call aztec_csav                  ; 0x4d11
    mov si, bss_5642                 ; 0x4d14
    lea di, word [bp - 0x03b6]       ; 0x4d17
    mov cx, ds                       ; 0x4d1b
    mov es, cx                       ; 0x4d1d
    mov cx, 0x1a6                    ; 0x4d1f
    rep movsw                        ; 0x4d22
    mov ax, 0                        ; 0x4d24
    push ax                          ; 0x4d27
    push ax                          ; 0x4d28
    mov ax, dseg_90fb                ; 0x4d29
    push ax                          ; 0x4d2c
    call data_file_path              ; 0x4d2d
    add sp, byte 4                   ; 0x4d30
    push ax                          ; 0x4d33
    call aztec_open                  ; 0x4d34
    add sp, byte 4                   ; 0x4d37
    mov word [bp - 0x0006], ax       ; 0x4d3a
    cmp ax, strict word 0xffff       ; 0x4d3d
    jne short @..loc_RMVR.l1         ; 0x4d40
    mov ax, 0x1a                     ; 0x4d42
    push ax                          ; 0x4d45
    call release_and_exit            ; 0x4d46
    pop cx                           ; 0x4d49
@..loc_RMVR.l1:
    mov ax, 0x300                    ; 0x4d4a
    push ax                          ; 0x4d4d
    mov ax, bss_9c94                 ; 0x4d4e
    push ax                          ; 0x4d51
    push word [bp - 0x0006]          ; 0x4d52
    call aztec_read                  ; 0x4d55
    add sp, byte 6                   ; 0x4d58
    push word [bp - 0x0006]          ; 0x4d5b
    call aztec_close                 ; 0x4d5e
    pop cx                           ; 0x4d61
    mov word [bp - 0x0008], 0x12     ; 0x4d62
    mov word [bp - 0x000a], 0x2b     ; 0x4d67
    mov ax, word [bp - 0x0008]       ; 0x4d6c
    add ax, 0x11b                    ; 0x4d6f
    mov word [bp - 0x000c], ax       ; 0x4d72
    mov ax, word [bp - 0x000a]       ; 0x4d75
    add ax, 0x93                     ; 0x4d78
    mov word [bp - 0x000e], ax       ; 0x4d7b
    mov word [spell_dialog_button], 0xffff ; 0x4d7e
    mov ax, dseg_9107                ; 0x4d84
    push ax                          ; 0x4d87
    mov ax, word [bp - 0x000e]       ; 0x4d88
    inc ax                           ; 0x4d8b
    push ax                          ; 0x4d8c
    mov ax, word [bp - 0x000c]       ; 0x4d8d
    inc ax                           ; 0x4d90
    push ax                          ; 0x4d91
    mov ax, word [bp - 0x000a]       ; 0x4d92
    dec ax                           ; 0x4d95
    push ax                          ; 0x4d96
    mov ax, word [bp - 0x0008]       ; 0x4d97
    dec ax                           ; 0x4d9a
    push ax                          ; 0x4d9b
    call save_screen_area            ; 0x4d9c
    add sp, byte 0x0a                ; 0x4d9f
    mov word [bp - 0x006a], ax       ; 0x4da2
    push word [bp - 0x000e]          ; 0x4da5
    push word [bp - 0x000c]          ; 0x4da8
    push word [bp - 0x000a]          ; 0x4dab
    push word [bp - 0x0008]          ; 0x4dae
    call draw_dialog_box             ; 0x4db1
    add sp, byte 8                   ; 0x4db4
    mov ax, 0x1c                     ; 0x4db7
    push ax                          ; 0x4dba
    mov ax, word [bp - 0x000a]       ; 0x4dbb
    add ax, strict word 5            ; 0x4dbe
    push ax                          ; 0x4dc1
    mov ax, 0xffff                   ; 0x4dc2
    push ax                          ; 0x4dc5
    mov ax, MSG_CRUSADERS_OF_THE_DARK_2300 ; 0x4dc6
    push ax                          ; 0x4dc9
    call api_idx_0050_NKOU           ; 0x4dca
    add sp, byte 8                   ; 0x4dcd
    mov ax, 1                        ; 0x4dd0
    push ax                          ; 0x4dd3
    mov ax, word [bp - 0x000a]       ; 0x4dd4
    add ax, strict word 5            ; 0x4dd7
    push ax                          ; 0x4dda
    mov ax, word [bp - 0x0008]       ; 0x4ddb
    add ax, 0xf5                     ; 0x4dde
    push ax                          ; 0x4de1
    mov ax, MSG_V                    ; 0x4de2
    push ax                          ; 0x4de5
    call api_idx_0050_NKOU           ; 0x4de6
    add sp, byte 8                   ; 0x4de9
    mov ax, 0                        ; 0x4dec
    push ax                          ; 0x4def
    mov ax, 1                        ; 0x4df0
    push ax                          ; 0x4df3
    mov ax, word [bss_597a]          ; 0x4df4
    mov cx, 0x64                     ; 0x4df7
    cwd                              ; 0x4dfa
    idiv cx                          ; 0x4dfb
    push ax                          ; 0x4dfd
    call draw_number_field           ; 0x4dfe
    add sp, byte 6                   ; 0x4e01
    mov ax, 0                        ; 0x4e04
    push ax                          ; 0x4e07
    mov ax, 0x2e                     ; 0x4e08
    push ax                          ; 0x4e0b
    call draw_font_glyph             ; 0x4e0c
    add sp, byte 4                   ; 0x4e0f
    mov ax, word [bss_597a]          ; 0x4e12
    mov cx, 0x64                     ; 0x4e15
    cwd                              ; 0x4e18
    idiv cx                          ; 0x4e19
    mov word [bp - 0x0002], dx       ; 0x4e1b
    cmp dx, byte 0x0a                ; 0x4e1e
    jge short @..loc_RMVR.l2         ; 0x4e21
    mov ax, 0                        ; 0x4e23
    push ax                          ; 0x4e26
    mov ax, 0x30                     ; 0x4e27
    push ax                          ; 0x4e2a
    call draw_font_glyph             ; 0x4e2b
    add sp, byte 4                   ; 0x4e2e
    mov ax, 0                        ; 0x4e31
    push ax                          ; 0x4e34
    mov ax, 1                        ; 0x4e35
    push ax                          ; 0x4e38
    push word [bp - 0x0002]          ; 0x4e39
    call draw_number_field           ; 0x4e3c
    add sp, byte 6                   ; 0x4e3f
    jmp short @..loc_RMVR.l3         ; 0x4e42
@..loc_RMVR.l2:
    mov ax, 0                        ; 0x4e44
    push ax                          ; 0x4e47
    mov ax, 2                        ; 0x4e48
    push ax                          ; 0x4e4b
    push word [bp - 0x0002]          ; 0x4e4c
    call draw_number_field           ; 0x4e4f
    add sp, byte 6                   ; 0x4e52
@..loc_RMVR.l3:
    mov ax, 0x5f                     ; 0x4e55
    push ax                          ; 0x4e58
    mov ax, word [bp - 0x000a]       ; 0x4e59
    add ax, strict word 0xe          ; 0x4e5c
    push ax                          ; 0x4e5f
    mov ax, 0xffff                   ; 0x4e60
    push ax                          ; 0x4e63
    mov ax, MSG_GAME_CONFIGURATION   ; 0x4e64
    push ax                          ; 0x4e67
    call api_idx_0050_NKOU           ; 0x4e68
    add sp, byte 8                   ; 0x4e6b
    mov ax, 1                        ; 0x4e6e
    push ax                          ; 0x4e71
    mov ax, word [bp - 0x000a]       ; 0x4e72
    add ax, strict word 0x1b         ; 0x4e75
    push ax                          ; 0x4e78
    mov ax, word [bp - 0x0008]       ; 0x4e79
    add ax, strict word 0xb          ; 0x4e7c
    push ax                          ; 0x4e7f
    mov ax, MSG_INPUT_DEVICE         ; 0x4e80
    push ax                          ; 0x4e83
    call api_idx_0050_NKOU           ; 0x4e84
    add sp, byte 8                   ; 0x4e87
    mov ax, 1                        ; 0x4e8a
    push ax                          ; 0x4e8d
    mov ax, word [bp - 0x000a]       ; 0x4e8e
    add ax, strict word 0x27         ; 0x4e91
    push ax                          ; 0x4e94
    mov ax, word [bp - 0x0008]       ; 0x4e95
    add ax, strict word 0xb          ; 0x4e98
    push ax                          ; 0x4e9b
    mov ax, MSG_DELAY                ; 0x4e9c
    push ax                          ; 0x4e9f
    call api_idx_0050_NKOU           ; 0x4ea0
    add sp, byte 8                   ; 0x4ea3
    mov ax, 0x1e                     ; 0x4ea6
    push ax                          ; 0x4ea9
    mov ax, word [bp - 0x000a]       ; 0x4eaa
    add ax, strict word 0x27         ; 0x4ead
    push ax                          ; 0x4eb0
    mov ax, word [bp - 0x0008]       ; 0x4eb1
    add ax, strict word 0x2f         ; 0x4eb4
    push ax                          ; 0x4eb7
    call loc_HIQU                    ; 0x4eb8
    add sp, byte 6                   ; 0x4ebb
    mov ax, 1                        ; 0x4ebe
    push ax                          ; 0x4ec1
    mov ax, word [bp - 0x000a]       ; 0x4ec2
    add ax, strict word 0x39         ; 0x4ec5
    push ax                          ; 0x4ec8
    mov ax, word [bp - 0x0008]       ; 0x4ec9
    add ax, strict word 0xb          ; 0x4ecc
    push ax                          ; 0x4ecf
    mov ax, MSG_PATH                 ; 0x4ed0
    push ax                          ; 0x4ed3
    call api_idx_0050_NKOU           ; 0x4ed4
    add sp, byte 8                   ; 0x4ed7
    mov ax, 1                        ; 0x4eda
    push ax                          ; 0x4edd
    mov ax, word [bp - 0x000a]       ; 0x4ede
    add ax, strict word 0x45         ; 0x4ee1
    push ax                          ; 0x4ee4
    mov ax, word [bp - 0x0008]       ; 0x4ee5
    add ax, strict word 0xb          ; 0x4ee8
    push ax                          ; 0x4eeb
    mov ax, MSG_FILE                 ; 0x4eec
    push ax                          ; 0x4eef
    call api_idx_0050_NKOU           ; 0x4ef0
    add sp, byte 8                   ; 0x4ef3
    lea ax, word [bp - 0x0068]       ; 0x4ef6
    push ax                          ; 0x4ef9
    mov ax, MSG_EFFECTS              ; 0x4efa
    push ax                          ; 0x4efd
    call load_message_string         ; 0x4efe
    add sp, byte 4                   ; 0x4f01
    lea ax, word [bp - 0x0068]       ; 0x4f04
    push ax                          ; 0x4f07
    mov ax, 1                        ; 0x4f08
    push ax                          ; 0x4f0b
    push ax                          ; 0x4f0c
    mov ax, 7                        ; 0x4f0d
    push ax                          ; 0x4f10
    mov ax, word [bp - 0x000a]       ; 0x4f11
    add ax, strict word 0x55         ; 0x4f14
    push ax                          ; 0x4f17
    mov ax, word [bp - 0x0008]       ; 0x4f18
    add ax, strict word 8            ; 0x4f1b
    push ax                          ; 0x4f1e
    call draw_button                 ; 0x4f1f
    add sp, byte 0x0c                ; 0x4f22
    mov ax, 1                        ; 0x4f25
    push ax                          ; 0x4f28
    mov ax, word [bp - 0x000a]       ; 0x4f29
    add ax, strict word 0x63         ; 0x4f2c
    push ax                          ; 0x4f2f
    mov ax, word [bp - 0x0008]       ; 0x4f30
    add ax, strict word 0x11         ; 0x4f33
    push ax                          ; 0x4f36
    mov ax, MSG_EFFECTS_VOL          ; 0x4f37
    push ax                          ; 0x4f3a
    call api_idx_0050_NKOU           ; 0x4f3b
    add sp, byte 8                   ; 0x4f3e
    mov ax, 0x1e                     ; 0x4f41
    push ax                          ; 0x4f44
    mov ax, word [bp - 0x000a]       ; 0x4f45
    add ax, strict word 0x63         ; 0x4f48
    push ax                          ; 0x4f4b
    mov ax, word [bp - 0x0008]       ; 0x4f4c
    add ax, strict word 0x5f         ; 0x4f4f
    push ax                          ; 0x4f52
    call loc_HIQU                    ; 0x4f53
    add sp, byte 6                   ; 0x4f56
    mov ax, 1                        ; 0x4f59
    push ax                          ; 0x4f5c
    mov ax, word [bp - 0x000a]       ; 0x4f5d
    add ax, strict word 0x69         ; 0x4f60
    push ax                          ; 0x4f63
    mov ax, word [bp - 0x0008]       ; 0x4f64
    add ax, strict word 0x11         ; 0x4f67
    push ax                          ; 0x4f6a
    mov ax, MSG_MONSTER_VOL          ; 0x4f6b
    push ax                          ; 0x4f6e
    call api_idx_0050_NKOU           ; 0x4f6f
    add sp, byte 8                   ; 0x4f72
    mov ax, 0x1e                     ; 0x4f75
    push ax                          ; 0x4f78
    mov ax, word [bp - 0x000a]       ; 0x4f79
    add ax, strict word 0x69         ; 0x4f7c
    push ax                          ; 0x4f7f
    mov ax, word [bp - 0x0008]       ; 0x4f80
    add ax, strict word 0x5f         ; 0x4f83
    push ax                          ; 0x4f86
    call loc_HIQU                    ; 0x4f87
    add sp, byte 6                   ; 0x4f8a
    mov ax, 1                        ; 0x4f8d
    push ax                          ; 0x4f90
    mov ax, word [bp - 0x000a]       ; 0x4f91
    add ax, strict word 0x6f         ; 0x4f94
    push ax                          ; 0x4f97
    mov ax, word [bp - 0x0008]       ; 0x4f98
    add ax, strict word 0x11         ; 0x4f9b
    push ax                          ; 0x4f9e
    mov ax, MSG_BACKGND_VOL          ; 0x4f9f
    push ax                          ; 0x4fa2
    call api_idx_0050_NKOU           ; 0x4fa3
    add sp, byte 8                   ; 0x4fa6
    mov ax, 0x1e                     ; 0x4fa9
    push ax                          ; 0x4fac
    mov ax, word [bp - 0x000a]       ; 0x4fad
    add ax, strict word 0x6f         ; 0x4fb0
    push ax                          ; 0x4fb3
    mov ax, word [bp - 0x0008]       ; 0x4fb4
    add ax, strict word 0x5f         ; 0x4fb7
    push ax                          ; 0x4fba
    call loc_HIQU                    ; 0x4fbb
    add sp, byte 6                   ; 0x4fbe
    lea ax, word [bp - 0x0068]       ; 0x4fc1
    push ax                          ; 0x4fc4
    mov ax, MSG_MUSIC_2311           ; 0x4fc5
    push ax                          ; 0x4fc8
    call load_message_string         ; 0x4fc9
    add sp, byte 4                   ; 0x4fcc
    lea ax, word [bp - 0x0068]       ; 0x4fcf
    push ax                          ; 0x4fd2
    mov ax, 1                        ; 0x4fd3
    push ax                          ; 0x4fd6
    push ax                          ; 0x4fd7
    mov ax, 7                        ; 0x4fd8
    push ax                          ; 0x4fdb
    mov ax, word [bp - 0x000a]       ; 0x4fdc
    add ax, strict word 0x79         ; 0x4fdf
    push ax                          ; 0x4fe2
    mov ax, word [bp - 0x0008]       ; 0x4fe3
    add ax, strict word 8            ; 0x4fe6
    push ax                          ; 0x4fe9
    call draw_button                 ; 0x4fea
    add sp, byte 0x0c                ; 0x4fed
    mov ax, 1                        ; 0x4ff0
    push ax                          ; 0x4ff3
    mov ax, word [bp - 0x000a]       ; 0x4ff4
    add ax, 0x87                     ; 0x4ff7
    push ax                          ; 0x4ffa
    mov ax, word [bp - 0x0008]       ; 0x4ffb
    add ax, strict word 0x1d         ; 0x4ffe
    push ax                          ; 0x5001
    mov ax, MSG_MUSIC_VOL            ; 0x5002
    push ax                          ; 0x5005
    call api_idx_0050_NKOU           ; 0x5006
    add sp, byte 8                   ; 0x5009
    mov ax, 0x1e                     ; 0x500c
    push ax                          ; 0x500f
    mov ax, word [bp - 0x000a]       ; 0x5010
    add ax, 0x87                     ; 0x5013
    push ax                          ; 0x5016
    mov ax, word [bp - 0x0008]       ; 0x5017
    add ax, strict word 0x5f         ; 0x501a
    push ax                          ; 0x501d
    call loc_HIQU                    ; 0x501e
    add sp, byte 6                   ; 0x5021
    mov ax, 1                        ; 0x5024
    push ax                          ; 0x5027
    mov ax, word [bp - 0x000a]       ; 0x5028
    add ax, strict word 0x1b         ; 0x502b
    push ax                          ; 0x502e
    mov ax, word [bp - 0x0008]       ; 0x502f
    add ax, 0xa1                     ; 0x5032
    push ax                          ; 0x5035
    mov ax, MSG_PLAY_LEVEL           ; 0x5036
    push ax                          ; 0x5039
    call api_idx_0050_NKOU           ; 0x503a
    add sp, byte 8                   ; 0x503d
    mov ax, 1                        ; 0x5040
    push ax                          ; 0x5043
    mov ax, word [bp - 0x000a]       ; 0x5044
    add ax, strict word 0x27         ; 0x5047
    push ax                          ; 0x504a
    mov ax, word [bp - 0x0008]       ; 0x504b
    add ax, 0xa1                     ; 0x504e
    push ax                          ; 0x5051
    mov ax, MSG_FADE                 ; 0x5052
    push ax                          ; 0x5055
    call api_idx_0050_NKOU           ; 0x5056
    add sp, byte 8                   ; 0x5059
    lea ax, word [bp - 0x0068]       ; 0x505c
    push ax                          ; 0x505f
    mov ax, MSG_MEMORY               ; 0x5060
    push ax                          ; 0x5063
    call load_message_string         ; 0x5064
    add sp, byte 4                   ; 0x5067
    lea ax, word [bp - 0x0068]       ; 0x506a
    push ax                          ; 0x506d
    mov ax, 1                        ; 0x506e
    push ax                          ; 0x5071
    push ax                          ; 0x5072
    mov ax, 6                        ; 0x5073
    push ax                          ; 0x5076
    mov ax, word [bp - 0x000a]       ; 0x5077
    add ax, strict word 0x37         ; 0x507a
    push ax                          ; 0x507d
    mov ax, word [bp - 0x0008]       ; 0x507e
    add ax, 0xa1                     ; 0x5081
    push ax                          ; 0x5084
    call draw_button                 ; 0x5085
    add sp, byte 0x0c                ; 0x5088
    mov ax, 1                        ; 0x508b
    push ax                          ; 0x508e
    mov ax, word [bp - 0x000a]       ; 0x508f
    add ax, strict word 0x45         ; 0x5092
    push ax                          ; 0x5095
    mov ax, word [bp - 0x0008]       ; 0x5096
    add ax, 0xa1                     ; 0x5099
    push ax                          ; 0x509c
    mov ax, MSG_RAMNAME              ; 0x509d
    push ax                          ; 0x50a0
    call api_idx_0050_NKOU           ; 0x50a1
    add sp, byte 8                   ; 0x50a4
    mov ax, 1                        ; 0x50a7
    push ax                          ; 0x50aa
    mov ax, word [bp - 0x000a]       ; 0x50ab
    add ax, strict word 0x57         ; 0x50ae
    push ax                          ; 0x50b1
    mov ax, word [bp - 0x0008]       ; 0x50b2
    add ax, 0xa1                     ; 0x50b5
    push ax                          ; 0x50b8
    mov ax, MSG_GRAPHICS             ; 0x50b9
    push ax                          ; 0x50bc
    call api_idx_0050_NKOU           ; 0x50bd
    add sp, byte 8                   ; 0x50c0
    mov ax, 1                        ; 0x50c3
    push ax                          ; 0x50c6
    mov ax, word [bp - 0x000a]       ; 0x50c7
    add ax, strict word 0x63         ; 0x50ca
    push ax                          ; 0x50cd
    mov ax, word [bp - 0x0008]       ; 0x50ce
    add ax, 0xa1                     ; 0x50d1
    push ax                          ; 0x50d4
    mov ax, MSG_BRIGHT               ; 0x50d5
    push ax                          ; 0x50d8
    call api_idx_0050_NKOU           ; 0x50d9
    add sp, byte 8                   ; 0x50dc
    mov ax, 0x24                     ; 0x50df
    push ax                          ; 0x50e2
    mov ax, word [bp - 0x000a]       ; 0x50e3
    add ax, strict word 0x63         ; 0x50e6
    push ax                          ; 0x50e9
    mov ax, word [bp - 0x0008]       ; 0x50ea
    add ax, 0xdd                     ; 0x50ed
    push ax                          ; 0x50f0
    call loc_HIQU                    ; 0x50f1
    add sp, byte 6                   ; 0x50f4
    mov ax, 1                        ; 0x50f7
    push ax                          ; 0x50fa
    mov ax, word [bp - 0x000a]       ; 0x50fb
    add ax, strict word 0x69         ; 0x50fe
    push ax                          ; 0x5101
    mov ax, word [bp - 0x0008]       ; 0x5102
    add ax, 0xa1                     ; 0x5105
    push ax                          ; 0x5108
    mov ax, MSG_CONTRAST             ; 0x5109
    push ax                          ; 0x510c
    call api_idx_0050_NKOU           ; 0x510d
    add sp, byte 8                   ; 0x5110
    mov ax, 0x24                     ; 0x5113
    push ax                          ; 0x5116
    mov ax, word [bp - 0x000a]       ; 0x5117
    add ax, strict word 0x69         ; 0x511a
    push ax                          ; 0x511d
    mov ax, word [bp - 0x0008]       ; 0x511e
    add ax, 0xdd                     ; 0x5121
    push ax                          ; 0x5124
    call loc_HIQU                    ; 0x5125
    add sp, byte 6                   ; 0x5128
    mov ax, word [bp - 0x000a]       ; 0x512b
    add ax, 0x8c                     ; 0x512e
    push ax                          ; 0x5131
    mov ax, word [bp - 0x0008]       ; 0x5132
    add ax, 0x113                    ; 0x5135
    push ax                          ; 0x5138
    mov ax, word [bp - 0x000a]       ; 0x5139
    add ax, strict word 0x7a         ; 0x513c
    push ax                          ; 0x513f
    mov ax, word [bp - 0x0008]       ; 0x5140
    add ax, 0xa9                     ; 0x5143
    push ax                          ; 0x5146
    call draw_inset_panel            ; 0x5147
    add sp, byte 8                   ; 0x514a
    lea ax, word [bp - 0x0068]       ; 0x514d
    push ax                          ; 0x5150
    mov ax, MSG_SAVE_2320            ; 0x5151
    push ax                          ; 0x5154
    call load_message_string         ; 0x5155
    add sp, byte 4                   ; 0x5158
    lea ax, word [bp - 0x0068]       ; 0x515b
    push ax                          ; 0x515e
    mov ax, 1                        ; 0x515f
    push ax                          ; 0x5162
    push ax                          ; 0x5163
    mov ax, 6                        ; 0x5164
    push ax                          ; 0x5167
    mov ax, word [bp - 0x000a]       ; 0x5168
    add ax, strict word 0x7f         ; 0x516b
    push ax                          ; 0x516e
    mov ax, word [bp - 0x0008]       ; 0x516f
    add ax, 0xb2                     ; 0x5172
    push ax                          ; 0x5175
    call draw_button                 ; 0x5176
    add sp, byte 0x0c                ; 0x5179
    lea ax, word [bp - 0x0068]       ; 0x517c
    push ax                          ; 0x517f
    mov ax, MSG_CANCEL_2321          ; 0x5180
    push ax                          ; 0x5183
    call load_message_string         ; 0x5184
    add sp, byte 4                   ; 0x5187
    lea ax, word [bp - 0x0068]       ; 0x518a
    push ax                          ; 0x518d
    mov ax, 1                        ; 0x518e
    push ax                          ; 0x5191
    push ax                          ; 0x5192
    mov ax, 6                        ; 0x5193
    push ax                          ; 0x5196
    mov ax, word [bp - 0x000a]       ; 0x5197
    add ax, strict word 0x7f         ; 0x519a
    push ax                          ; 0x519d
    mov ax, word [bp - 0x0008]       ; 0x519e
    add ax, 0xe6                     ; 0x51a1
    push ax                          ; 0x51a4
    call draw_button                 ; 0x51a5
    add sp, byte 0x0c                ; 0x51a8
    mov word [bp - 0x0002], 0        ; 0x51ab
@..loc_RMVR.l4:
    push word [bp - 0x000a]          ; 0x51b0
    push word [bp - 0x0008]          ; 0x51b3
    push word [bp - 0x0002]          ; 0x51b6
    call api_idx_0052_LJTK           ; 0x51b9
    add sp, byte 6                   ; 0x51bc
    inc word [bp - 0x0002]           ; 0x51bf
    mov ax, word [bp - 0x0002]       ; 0x51c2
    cmp ax, strict word 0x11         ; 0x51c5
    jl short @..loc_RMVR.l4          ; 0x51c8
    mov ax, 0                        ; 0x51ca
    push ax                          ; 0x51cd
    push ax                          ; 0x51ce
    mov ax, word [bp - 0x000a]       ; 0x51cf
    add ax, strict word 0x21         ; 0x51d2
    push ax                          ; 0x51d5
    mov ax, word [bp - 0x0008]       ; 0x51d6
    add ax, 0x92                     ; 0x51d9
    push ax                          ; 0x51dc
    mov ax, word [bp - 0x000a]       ; 0x51dd
    add ax, strict word 0x19         ; 0x51e0
    push ax                          ; 0x51e3
    mov ax, word [bp - 0x0008]       ; 0x51e4
    add ax, strict word 0x5c         ; 0x51e7
    push ax                          ; 0x51ea
    mov ax, 0                        ; 0x51eb
    push ax                          ; 0x51ee
    call set_hotspot                 ; 0x51ef
    add sp, byte 0x0e                ; 0x51f2
    mov ax, 0                        ; 0x51f5
    push ax                          ; 0x51f8
    push ax                          ; 0x51f9
    mov ax, word [bp - 0x000a]       ; 0x51fa
    add ax, strict word 0x2c         ; 0x51fd
    push ax                          ; 0x5200
    mov ax, word [bp - 0x0008]       ; 0x5201
    add ax, strict word 0x34         ; 0x5204
    push ax                          ; 0x5207
    mov ax, word [bp - 0x000a]       ; 0x5208
    add ax, strict word 0x27         ; 0x520b
    push ax                          ; 0x520e
    mov ax, word [bp - 0x0008]       ; 0x520f
    add ax, strict word 0x2f         ; 0x5212
    push ax                          ; 0x5215
    mov ax, 1                        ; 0x5216
    push ax                          ; 0x5219
    call set_hotspot                 ; 0x521a
    add sp, byte 0x0e                ; 0x521d
    mov ax, 0                        ; 0x5220
    push ax                          ; 0x5223
    push ax                          ; 0x5224
    mov ax, word [bp - 0x000a]       ; 0x5225
    add ax, strict word 0x2c         ; 0x5228
    push ax                          ; 0x522b
    mov ax, word [bp - 0x0008]       ; 0x522c
    add ax, strict word 0x52         ; 0x522f
    push ax                          ; 0x5232
    mov ax, word [bp - 0x000a]       ; 0x5233
    add ax, strict word 0x27         ; 0x5236
    push ax                          ; 0x5239
    mov ax, word [bp - 0x0008]       ; 0x523a
    add ax, strict word 0x4d         ; 0x523d
    push ax                          ; 0x5240
    mov ax, 2                        ; 0x5241
    push ax                          ; 0x5244
    call set_hotspot                 ; 0x5245
    add sp, byte 0x0e                ; 0x5248
    mov ax, 0                        ; 0x524b
    push ax                          ; 0x524e
    push ax                          ; 0x524f
    mov ax, word [bp - 0x000a]       ; 0x5250
    add ax, strict word 0x3e         ; 0x5253
    push ax                          ; 0x5256
    mov ax, word [bp - 0x0008]       ; 0x5257
    add ax, 0x95                     ; 0x525a
    push ax                          ; 0x525d
    mov ax, word [bp - 0x000a]       ; 0x525e
    add ax, strict word 0x38         ; 0x5261
    push ax                          ; 0x5264
    mov ax, word [bp - 0x0008]       ; 0x5265
    add ax, strict word 0x27         ; 0x5268
    push ax                          ; 0x526b
    mov ax, 3                        ; 0x526c
    push ax                          ; 0x526f
    call set_hotspot                 ; 0x5270
    add sp, byte 0x0e                ; 0x5273
    mov ax, 0                        ; 0x5276
    push ax                          ; 0x5279
    push ax                          ; 0x527a
    mov ax, word [bp - 0x000a]       ; 0x527b
    add ax, strict word 0x4a         ; 0x527e
    push ax                          ; 0x5281
    mov ax, word [bp - 0x0008]       ; 0x5282
    add ax, 0x95                     ; 0x5285
    push ax                          ; 0x5288
    mov ax, word [bp - 0x000a]       ; 0x5289
    add ax, strict word 0x44         ; 0x528c
    push ax                          ; 0x528f
    mov ax, word [bp - 0x0008]       ; 0x5290
    add ax, strict word 0x27         ; 0x5293
    push ax                          ; 0x5296
    mov ax, 4                        ; 0x5297
    push ax                          ; 0x529a
    call set_hotspot                 ; 0x529b
    add sp, byte 0x0e                ; 0x529e
    mov ax, 0                        ; 0x52a1
    push ax                          ; 0x52a4
    push ax                          ; 0x52a5
    mov ax, word [bp - 0x000a]       ; 0x52a6
    add ax, strict word 0x5d         ; 0x52a9
    push ax                          ; 0x52ac
    mov ax, word [bp - 0x0008]       ; 0x52ad
    add ax, strict word 0x38         ; 0x52b0
    push ax                          ; 0x52b3
    mov ax, word [bp - 0x000a]       ; 0x52b4
    add ax, strict word 0x55         ; 0x52b7
    push ax                          ; 0x52ba
    mov ax, word [bp - 0x0008]       ; 0x52bb
    add ax, strict word 8            ; 0x52be
    push ax                          ; 0x52c1
    mov ax, 5                        ; 0x52c2
    push ax                          ; 0x52c5
    call set_hotspot                 ; 0x52c6
    add sp, byte 0x0e                ; 0x52c9
    mov ax, 0                        ; 0x52cc
    push ax                          ; 0x52cf
    push ax                          ; 0x52d0
    mov ax, word [bp - 0x000a]       ; 0x52d1
    add ax, strict word 0x68         ; 0x52d4
    push ax                          ; 0x52d7
    mov ax, word [bp - 0x0008]       ; 0x52d8
    add ax, strict word 0x64         ; 0x52db
    push ax                          ; 0x52de
    mov ax, word [bp - 0x000a]       ; 0x52df
    add ax, strict word 0x63         ; 0x52e2
    push ax                          ; 0x52e5
    mov ax, word [bp - 0x0008]       ; 0x52e6
    add ax, strict word 0x5f         ; 0x52e9
    push ax                          ; 0x52ec
    mov ax, 6                        ; 0x52ed
    push ax                          ; 0x52f0
    call set_hotspot                 ; 0x52f1
    add sp, byte 0x0e                ; 0x52f4
    mov ax, 0                        ; 0x52f7
    push ax                          ; 0x52fa
    push ax                          ; 0x52fb
    mov ax, word [bp - 0x000a]       ; 0x52fc
    add ax, strict word 0x68         ; 0x52ff
    push ax                          ; 0x5302
    mov ax, word [bp - 0x0008]       ; 0x5303
    add ax, 0x82                     ; 0x5306
    push ax                          ; 0x5309
    mov ax, word [bp - 0x000a]       ; 0x530a
    add ax, strict word 0x63         ; 0x530d
    push ax                          ; 0x5310
    mov ax, word [bp - 0x0008]       ; 0x5311
    add ax, strict word 0x7d         ; 0x5314
    push ax                          ; 0x5317
    mov ax, 7                        ; 0x5318
    push ax                          ; 0x531b
    call set_hotspot                 ; 0x531c
    add sp, byte 0x0e                ; 0x531f
    mov ax, 0                        ; 0x5322
    push ax                          ; 0x5325
    push ax                          ; 0x5326
    mov ax, word [bp - 0x000a]       ; 0x5327
    add ax, strict word 0x6e         ; 0x532a
    push ax                          ; 0x532d
    mov ax, word [bp - 0x0008]       ; 0x532e
    add ax, strict word 0x64         ; 0x5331
    push ax                          ; 0x5334
    mov ax, word [bp - 0x000a]       ; 0x5335
    add ax, strict word 0x69         ; 0x5338
    push ax                          ; 0x533b
    mov ax, word [bp - 0x0008]       ; 0x533c
    add ax, strict word 0x5f         ; 0x533f
    push ax                          ; 0x5342
    mov ax, 8                        ; 0x5343
    push ax                          ; 0x5346
    call set_hotspot                 ; 0x5347
    add sp, byte 0x0e                ; 0x534a
    mov ax, 0                        ; 0x534d
    push ax                          ; 0x5350
    push ax                          ; 0x5351
    mov ax, word [bp - 0x000a]       ; 0x5352
    add ax, strict word 0x6e         ; 0x5355
    push ax                          ; 0x5358
    mov ax, word [bp - 0x0008]       ; 0x5359
    add ax, 0x82                     ; 0x535c
    push ax                          ; 0x535f
    mov ax, word [bp - 0x000a]       ; 0x5360
    add ax, strict word 0x69         ; 0x5363
    push ax                          ; 0x5366
    mov ax, word [bp - 0x0008]       ; 0x5367
    add ax, strict word 0x7d         ; 0x536a
    push ax                          ; 0x536d
    mov ax, 9                        ; 0x536e
    push ax                          ; 0x5371
    call set_hotspot                 ; 0x5372
    add sp, byte 0x0e                ; 0x5375
    mov ax, 0                        ; 0x5378
    push ax                          ; 0x537b
    push ax                          ; 0x537c
    mov ax, word [bp - 0x000a]       ; 0x537d
    add ax, strict word 0x74         ; 0x5380
    push ax                          ; 0x5383
    mov ax, word [bp - 0x0008]       ; 0x5384
    add ax, strict word 0x64         ; 0x5387
    push ax                          ; 0x538a
    mov ax, word [bp - 0x000a]       ; 0x538b
    add ax, strict word 0x6f         ; 0x538e
    push ax                          ; 0x5391
    mov ax, word [bp - 0x0008]       ; 0x5392
    add ax, strict word 0x5f         ; 0x5395
    push ax                          ; 0x5398
    mov ax, 0xa                      ; 0x5399
    push ax                          ; 0x539c
    call set_hotspot                 ; 0x539d
    add sp, byte 0x0e                ; 0x53a0
    mov ax, 0                        ; 0x53a3
    push ax                          ; 0x53a6
    push ax                          ; 0x53a7
    mov ax, word [bp - 0x000a]       ; 0x53a8
    add ax, strict word 0x74         ; 0x53ab
    push ax                          ; 0x53ae
    mov ax, word [bp - 0x0008]       ; 0x53af
    add ax, 0x82                     ; 0x53b2
    push ax                          ; 0x53b5
    mov ax, word [bp - 0x000a]       ; 0x53b6
    add ax, strict word 0x6f         ; 0x53b9
    push ax                          ; 0x53bc
    mov ax, word [bp - 0x0008]       ; 0x53bd
    add ax, strict word 0x7d         ; 0x53c0
    push ax                          ; 0x53c3
    mov ax, 0xb                      ; 0x53c4
    push ax                          ; 0x53c7
    call set_hotspot                 ; 0x53c8
    add sp, byte 0x0e                ; 0x53cb
    mov ax, 0                        ; 0x53ce
    push ax                          ; 0x53d1
    push ax                          ; 0x53d2
    mov ax, word [bp - 0x000a]       ; 0x53d3
    add ax, 0x81                     ; 0x53d6
    push ax                          ; 0x53d9
    mov ax, word [bp - 0x0008]       ; 0x53da
    add ax, strict word 0x38         ; 0x53dd
    push ax                          ; 0x53e0
    mov ax, word [bp - 0x000a]       ; 0x53e1
    add ax, strict word 0x79         ; 0x53e4
    push ax                          ; 0x53e7
    mov ax, word [bp - 0x0008]       ; 0x53e8
    add ax, strict word 8            ; 0x53eb
    push ax                          ; 0x53ee
    mov ax, 0xc                      ; 0x53ef
    push ax                          ; 0x53f2
    call set_hotspot                 ; 0x53f3
    add sp, byte 0x0e                ; 0x53f6
    mov ax, 0                        ; 0x53f9
    push ax                          ; 0x53fc
    push ax                          ; 0x53fd
    mov ax, word [bp - 0x000a]       ; 0x53fe
    add ax, 0x8c                     ; 0x5401
    push ax                          ; 0x5404
    mov ax, word [bp - 0x0008]       ; 0x5405
    add ax, strict word 0x64         ; 0x5408
    push ax                          ; 0x540b
    mov ax, word [bp - 0x000a]       ; 0x540c
    add ax, 0x87                     ; 0x540f
    push ax                          ; 0x5412
    mov ax, word [bp - 0x0008]       ; 0x5413
    add ax, strict word 0x5f         ; 0x5416
    push ax                          ; 0x5419
    mov ax, 0xd                      ; 0x541a
    push ax                          ; 0x541d
    call set_hotspot                 ; 0x541e
    add sp, byte 0x0e                ; 0x5421
    mov ax, 0                        ; 0x5424
    push ax                          ; 0x5427
    push ax                          ; 0x5428
    mov ax, word [bp - 0x000a]       ; 0x5429
    add ax, 0x8c                     ; 0x542c
    push ax                          ; 0x542f
    mov ax, word [bp - 0x0008]       ; 0x5430
    add ax, 0x82                     ; 0x5433
    push ax                          ; 0x5436
    mov ax, word [bp - 0x000a]       ; 0x5437
    add ax, 0x87                     ; 0x543a
    push ax                          ; 0x543d
    mov ax, word [bp - 0x0008]       ; 0x543e
    add ax, strict word 0x7d         ; 0x5441
    push ax                          ; 0x5444
    mov ax, 0xe                      ; 0x5445
    push ax                          ; 0x5448
    call set_hotspot                 ; 0x5449
    add sp, byte 0x0e                ; 0x544c
    mov ax, 0                        ; 0x544f
    push ax                          ; 0x5452
    push ax                          ; 0x5453
    mov ax, word [bp - 0x000a]       ; 0x5454
    add ax, strict word 0x21         ; 0x5457
    push ax                          ; 0x545a
    mov ax, word [bp - 0x0008]       ; 0x545b
    add ax, 0x110                    ; 0x545e
    push ax                          ; 0x5461
    mov ax, word [bp - 0x000a]       ; 0x5462
    add ax, strict word 0x19         ; 0x5465
    push ax                          ; 0x5468
    mov ax, word [bp - 0x0008]       ; 0x5469
    add ax, 0xe6                     ; 0x546c
    push ax                          ; 0x546f
    mov ax, 0xf                      ; 0x5470
    push ax                          ; 0x5473
    call set_hotspot                 ; 0x5474
    add sp, byte 0x0e                ; 0x5477
    mov ax, 0                        ; 0x547a
    push ax                          ; 0x547d
    push ax                          ; 0x547e
    mov ax, word [bp - 0x000a]       ; 0x547f
    add ax, strict word 0x2d         ; 0x5482
    push ax                          ; 0x5485
    mov ax, word [bp - 0x0008]       ; 0x5486
    add ax, 0xda                     ; 0x5489
    push ax                          ; 0x548c
    mov ax, word [bp - 0x000a]       ; 0x548d
    add ax, strict word 0x25         ; 0x5490
    push ax                          ; 0x5493
    mov ax, word [bp - 0x0008]       ; 0x5494
    add ax, 0xc2                     ; 0x5497
    push ax                          ; 0x549a
    mov ax, 0x10                     ; 0x549b
    push ax                          ; 0x549e
    call set_hotspot                 ; 0x549f
    add sp, byte 0x0e                ; 0x54a2
    mov ax, 0                        ; 0x54a5
    push ax                          ; 0x54a8
    push ax                          ; 0x54a9
    mov ax, word [bp - 0x000a]       ; 0x54aa
    add ax, strict word 0x3f         ; 0x54ad
    push ax                          ; 0x54b0
    mov ax, word [bp - 0x0008]       ; 0x54b1
    add ax, 0xcb                     ; 0x54b4
    push ax                          ; 0x54b7
    mov ax, word [bp - 0x000a]       ; 0x54b8
    add ax, strict word 0x37         ; 0x54bb
    push ax                          ; 0x54be
    mov ax, word [bp - 0x0008]       ; 0x54bf
    add ax, 0xa1                     ; 0x54c2
    push ax                          ; 0x54c5
    mov ax, 0x11                     ; 0x54c6
    push ax                          ; 0x54c9
    call set_hotspot                 ; 0x54ca
    add sp, byte 0x0e                ; 0x54cd
    mov ax, 0                        ; 0x54d0
    push ax                          ; 0x54d3
    push ax                          ; 0x54d4
    mov ax, word [bp - 0x000a]       ; 0x54d5
    add ax, strict word 0x4a         ; 0x54d8
    push ax                          ; 0x54db
    mov ax, word [bp - 0x0008]       ; 0x54dc
    add ax, 0x113                    ; 0x54df
    push ax                          ; 0x54e2
    mov ax, word [bp - 0x000a]       ; 0x54e3
    add ax, strict word 0x44         ; 0x54e6
    push ax                          ; 0x54e9
    mov ax, word [bp - 0x0008]       ; 0x54ea
    add ax, 0xd5                     ; 0x54ed
    push ax                          ; 0x54f0
    mov ax, 0x12                     ; 0x54f1
    push ax                          ; 0x54f4
    call set_hotspot                 ; 0x54f5
    add sp, byte 0x0e                ; 0x54f8
    mov ax, 0                        ; 0x54fb
    push ax                          ; 0x54fe
    push ax                          ; 0x54ff
    mov ax, word [bp - 0x000a]       ; 0x5500
    add ax, strict word 0x68         ; 0x5503
    push ax                          ; 0x5506
    mov ax, word [bp - 0x0008]       ; 0x5507
    add ax, 0xe2                     ; 0x550a
    push ax                          ; 0x550d
    mov ax, word [bp - 0x000a]       ; 0x550e
    add ax, strict word 0x63         ; 0x5511
    push ax                          ; 0x5514
    mov ax, word [bp - 0x0008]       ; 0x5515
    add ax, 0xdd                     ; 0x5518
    push ax                          ; 0x551b
    mov ax, 0x13                     ; 0x551c
    push ax                          ; 0x551f
    call set_hotspot                 ; 0x5520
    add sp, byte 0x0e                ; 0x5523
    mov ax, 0                        ; 0x5526
    push ax                          ; 0x5529
    push ax                          ; 0x552a
    mov ax, word [bp - 0x000a]       ; 0x552b
    add ax, strict word 0x68         ; 0x552e
    push ax                          ; 0x5531
    mov ax, word [bp - 0x0008]       ; 0x5532
    add ax, 0x106                    ; 0x5535
    push ax                          ; 0x5538
    mov ax, word [bp - 0x000a]       ; 0x5539
    add ax, strict word 0x63         ; 0x553c
    push ax                          ; 0x553f
    mov ax, word [bp - 0x0008]       ; 0x5540
    add ax, 0x101                    ; 0x5543
    push ax                          ; 0x5546
    mov ax, 0x14                     ; 0x5547
    push ax                          ; 0x554a
    call set_hotspot                 ; 0x554b
    add sp, byte 0x0e                ; 0x554e
    mov ax, 0                        ; 0x5551
    push ax                          ; 0x5554
    push ax                          ; 0x5555
    mov ax, word [bp - 0x000a]       ; 0x5556
    add ax, strict word 0x6e         ; 0x5559
    push ax                          ; 0x555c
    mov ax, word [bp - 0x0008]       ; 0x555d
    add ax, 0xe2                     ; 0x5560
    push ax                          ; 0x5563
    mov ax, word [bp - 0x000a]       ; 0x5564
    add ax, strict word 0x69         ; 0x5567
    push ax                          ; 0x556a
    mov ax, word [bp - 0x0008]       ; 0x556b
    add ax, 0xdd                     ; 0x556e
    push ax                          ; 0x5571
    mov ax, 0x15                     ; 0x5572
    push ax                          ; 0x5575
    call set_hotspot                 ; 0x5576
    add sp, byte 0x0e                ; 0x5579
    mov ax, 0                        ; 0x557c
    push ax                          ; 0x557f
    push ax                          ; 0x5580
    mov ax, word [bp - 0x000a]       ; 0x5581
    add ax, strict word 0x6e         ; 0x5584
    push ax                          ; 0x5587
    mov ax, word [bp - 0x0008]       ; 0x5588
    add ax, 0x106                    ; 0x558b
    push ax                          ; 0x558e
    mov ax, word [bp - 0x000a]       ; 0x558f
    add ax, strict word 0x69         ; 0x5592
    push ax                          ; 0x5595
    mov ax, word [bp - 0x0008]       ; 0x5596
    add ax, 0x101                    ; 0x5599
    push ax                          ; 0x559c
    mov ax, 0x16                     ; 0x559d
    push ax                          ; 0x55a0
    call set_hotspot                 ; 0x55a1
    add sp, byte 0x0e                ; 0x55a4
    mov ax, 0                        ; 0x55a7
    push ax                          ; 0x55aa
    push ax                          ; 0x55ab
    mov ax, word [bp - 0x000a]       ; 0x55ac
    add ax, 0x87                     ; 0x55af
    push ax                          ; 0x55b2
    mov ax, word [bp - 0x0008]       ; 0x55b3
    add ax, 0xdc                     ; 0x55b6
    push ax                          ; 0x55b9
    mov ax, word [bp - 0x000a]       ; 0x55ba
    add ax, strict word 0x7f         ; 0x55bd
    push ax                          ; 0x55c0
    mov ax, word [bp - 0x0008]       ; 0x55c1
    add ax, 0xb2                     ; 0x55c4
    push ax                          ; 0x55c7
    mov ax, 0x17                     ; 0x55c8
    push ax                          ; 0x55cb
    call set_hotspot                 ; 0x55cc
    add sp, byte 0x0e                ; 0x55cf
    mov ax, 0                        ; 0x55d2
    push ax                          ; 0x55d5
    mov ax, 0x1b                     ; 0x55d6
    push ax                          ; 0x55d9
    mov ax, word [bp - 0x000a]       ; 0x55da
    add ax, 0x87                     ; 0x55dd
    push ax                          ; 0x55e0
    mov ax, word [bp - 0x0008]       ; 0x55e1
    add ax, 0x110                    ; 0x55e4
    push ax                          ; 0x55e7
    mov ax, word [bp - 0x000a]       ; 0x55e8
    add ax, strict word 0x7f         ; 0x55eb
    push ax                          ; 0x55ee
    mov ax, word [bp - 0x0008]       ; 0x55ef
    add ax, 0xe6                     ; 0x55f2
    push ax                          ; 0x55f5
    mov ax, 0x18                     ; 0x55f6
    push ax                          ; 0x55f9
    call set_hotspot                 ; 0x55fa
    add sp, byte 0x0e                ; 0x55fd
    mov ax, 0                        ; 0x5600
    push ax                          ; 0x5603
    push ax                          ; 0x5604
    push ax                          ; 0x5605
    push ax                          ; 0x5606
    push ax                          ; 0x5607
    mov ax, 0xffff                   ; 0x5608
    push ax                          ; 0x560b
    mov ax, 0x19                     ; 0x560c
    push ax                          ; 0x560f
    call set_hotspot                 ; 0x5610
    add sp, byte 0x0e                ; 0x5613
    mov ax, word [bp - 0x000e]       ; 0x5616
    inc ax                           ; 0x5619
    push ax                          ; 0x561a
    mov ax, word [bp - 0x000c]       ; 0x561b
    inc ax                           ; 0x561e
    push ax                          ; 0x561f
    mov ax, word [bp - 0x000a]       ; 0x5620
    dec ax                           ; 0x5623
    push ax                          ; 0x5624
    mov ax, word [bp - 0x0008]       ; 0x5625
    dec ax                           ; 0x5628
    push ax                          ; 0x5629
    call gfx_show_area               ; 0x562a
    add sp, byte 8                   ; 0x562d
    mov word [bp - 0x0018], 1        ; 0x5630
    mov word [bp - 0x0016], 0        ; 0x5635
@..loc_RMVR.l5:
    cmp word [mouse_active], byte 0  ; 0x563a
    je short @..loc_RMVR.l6          ; 0x563f
    mov ax, hotspot_rects            ; 0x5641
    push ax                          ; 0x5644
    call poll_hotspots               ; 0x5645
    pop cx                           ; 0x5648
    dec ax                           ; 0x5649
    mov word [bp - 0x0014], ax       ; 0x564a
    jmp near @..loc_RMVR.l29         ; 0x564d
@..loc_RMVR.l6:
    mov word [hotspot_hit], 0        ; 0x5650
    push word [bp - 0x000a]          ; 0x5656
    push word [bp - 0x0008]          ; 0x5659
    push word [bp - 0x0016]          ; 0x565c
    call api_idx_0052_JQTP           ; 0x565f
    add sp, byte 6                   ; 0x5662
    mov ax, 1                        ; 0x5665
    push ax                          ; 0x5668
    call get_filtered_key            ; 0x5669
    pop cx                           ; 0x566c
    sub ah, ah                       ; 0x566d
    mov word [bp - 0x0004], ax       ; 0x566f
    jmp near @..loc_RMVR.l21         ; 0x5672
@..loc_RMVR.l7:
    push word [bp - 0x000a]          ; 0x5675
    push word [bp - 0x0008]          ; 0x5678
    push word [bp - 0x0016]          ; 0x567b
    call api_idx_0052_LJTK           ; 0x567e
    add sp, byte 6                   ; 0x5681
    mov ax, word [bp - 0x0016]       ; 0x5684
    add ax, strict word 0x12         ; 0x5687
    mov cx, 0x13                     ; 0x568a
    cwd                              ; 0x568d
    idiv cx                          ; 0x568e
    mov word [bp - 0x0016], dx       ; 0x5690
    cmp dx, byte 0x0e                ; 0x5693
    jne short @..loc_RMVR.l8         ; 0x5696
    dec word [bp - 0x0016]           ; 0x5698
@..loc_RMVR.l8:
    mov ax, word [bp - 0x000e]       ; 0x569b
    inc ax                           ; 0x569e
    push ax                          ; 0x569f
    mov ax, word [bp - 0x000c]       ; 0x56a0
    inc ax                           ; 0x56a3
    push ax                          ; 0x56a4
    mov ax, word [bp - 0x000a]       ; 0x56a5
    dec ax                           ; 0x56a8
    push ax                          ; 0x56a9
    mov ax, word [bp - 0x0008]       ; 0x56aa
    dec ax                           ; 0x56ad
    push ax                          ; 0x56ae
    call gfx_show_area               ; 0x56af
    add sp, byte 8                   ; 0x56b2
    jmp near @..loc_RMVR.l29         ; 0x56b5
@..loc_RMVR.l9:
    push word [bp - 0x000a]          ; 0x56b8
    push word [bp - 0x0008]          ; 0x56bb
    push word [bp - 0x0016]          ; 0x56be
    call api_idx_0052_LJTK           ; 0x56c1
    add sp, byte 6                   ; 0x56c4
    mov ax, word [bp - 0x0016]       ; 0x56c7
    inc ax                           ; 0x56ca
    mov cx, 0x13                     ; 0x56cb
    cwd                              ; 0x56ce
    idiv cx                          ; 0x56cf
    mov word [bp - 0x0016], dx       ; 0x56d1
    cmp dx, byte 0x0e                ; 0x56d4
    jne short @..loc_RMVR.l10        ; 0x56d7
    inc word [bp - 0x0016]           ; 0x56d9
@..loc_RMVR.l10:
    mov ax, word [bp - 0x000e]       ; 0x56dc
    inc ax                           ; 0x56df
    push ax                          ; 0x56e0
    mov ax, word [bp - 0x000c]       ; 0x56e1
    inc ax                           ; 0x56e4
    push ax                          ; 0x56e5
    mov ax, word [bp - 0x000a]       ; 0x56e6
    dec ax                           ; 0x56e9
    push ax                          ; 0x56ea
    mov ax, word [bp - 0x0008]       ; 0x56eb
    dec ax                           ; 0x56ee
    push ax                          ; 0x56ef
    call gfx_show_area               ; 0x56f0
    add sp, byte 8                   ; 0x56f3
    jmp near @..loc_RMVR.l29         ; 0x56f6
@..loc_RMVR.l11:
    mov word [bp - 0x0014], 0xffff   ; 0x56f9
    mov ax, word [bp - 0x0016]       ; 0x56fe
    jmp short @..loc_RMVR.l12        ; 0x5701
jumptable_5751_case_0:
    mov word [bp - 0x0014], 0        ; 0x5703
    jmp near jumptable_5751_case_1   ; 0x5708
jumptable_5751_case_2:
    mov word [bp - 0x0014], 3        ; 0x570b
    jmp short jumptable_5751_case_1  ; 0x5710
jumptable_5751_case_3:
    mov word [bp - 0x0014], 4        ; 0x5712
    jmp short jumptable_5751_case_1  ; 0x5717
jumptable_5751_case_4:
    mov word [bp - 0x0014], 5        ; 0x5719
    jmp short jumptable_5751_case_1  ; 0x571e
jumptable_5751_case_8:
    mov word [bp - 0x0014], 0xc      ; 0x5720
    jmp short jumptable_5751_case_1  ; 0x5725
jumptable_5751_case_10:
    mov word [bp - 0x0014], 0xf      ; 0x5727
    jmp short jumptable_5751_case_1  ; 0x572c
jumptable_5751_case_11:
    mov word [bp - 0x0014], 0x10     ; 0x572e
    jmp short jumptable_5751_case_1  ; 0x5733
jumptable_5751_case_12:
    mov word [bp - 0x0014], 0x11     ; 0x5735
    jmp short jumptable_5751_case_1  ; 0x573a
jumptable_5751_case_13:
    mov word [bp - 0x0014], 0x12     ; 0x573c
    jmp short jumptable_5751_case_1  ; 0x5741
jumptable_5751_case_17:
    mov word [bp - 0x0014], 0x17     ; 0x5743
    jmp short jumptable_5751_case_1  ; 0x5748
jumptable_5751_case_18:
    mov word [bp - 0x0014], 0x18     ; 0x574a
    jmp short jumptable_5751_case_1  ; 0x574f
jumptable_5751:
    dw jumptable_5751_case_0 - IMAGE_BASE + __zres_end ; 0x5751
    dw jumptable_5751_case_1 - IMAGE_BASE + __zres_end ; 0x5753
    dw jumptable_5751_case_2 - IMAGE_BASE + __zres_end ; 0x5755
    dw jumptable_5751_case_3 - IMAGE_BASE + __zres_end ; 0x5757
    dw jumptable_5751_case_4 - IMAGE_BASE + __zres_end ; 0x5759
    dw jumptable_5751_case_1 - IMAGE_BASE + __zres_end ; 0x575b
    dw jumptable_5751_case_1 - IMAGE_BASE + __zres_end ; 0x575d
    dw jumptable_5751_case_1 - IMAGE_BASE + __zres_end ; 0x575f
    dw jumptable_5751_case_8 - IMAGE_BASE + __zres_end ; 0x5761
    dw jumptable_5751_case_1 - IMAGE_BASE + __zres_end ; 0x5763
    dw jumptable_5751_case_10 - IMAGE_BASE + __zres_end ; 0x5765
    dw jumptable_5751_case_11 - IMAGE_BASE + __zres_end ; 0x5767
    dw jumptable_5751_case_12 - IMAGE_BASE + __zres_end ; 0x5769
    dw jumptable_5751_case_13 - IMAGE_BASE + __zres_end ; 0x576b
    dw jumptable_5751_case_1 - IMAGE_BASE + __zres_end ; 0x576d
    dw jumptable_5751_case_1 - IMAGE_BASE + __zres_end ; 0x576f
    dw jumptable_5751_case_1 - IMAGE_BASE + __zres_end ; 0x5771
    dw jumptable_5751_case_17 - IMAGE_BASE + __zres_end ; 0x5773
    dw jumptable_5751_case_18 - IMAGE_BASE + __zres_end ; 0x5775
@..loc_RMVR.l12:
    cmp ax, strict word 0x13         ; 0x5777
    jae short jumptable_5751_case_1  ; 0x577a
    xchg bx, ax                      ; 0x577c
    shl bx, 1                        ; 0x577d
    jmp [cs:bx + jumptable_5751 - IMAGE_BASE + __zres_end] ; 0x577f
jumptable_5751_case_1:
    cmp word [bp - 0x0014], byte 0xff ; 0x5784
    je short @..loc_RMVR.l13         ; 0x5788
    mov word [hotspot_hit], 1        ; 0x578a
@..loc_RMVR.l13:
    jmp near @..loc_RMVR.l29         ; 0x5790
@..loc_RMVR.l14:
    mov word [bp - 0x0014], 0xffff   ; 0x5793
    mov ax, word [bp - 0x0016]       ; 0x5798
    jmp short @..loc_RMVR.l15        ; 0x579b
jumptable_57ce_case_1:
    mov word [bp - 0x0014], 2        ; 0x579d
    jmp short jumptable_57ce_case_0  ; 0x57a2
jumptable_57ce_case_5:
    mov word [bp - 0x0014], 7        ; 0x57a4
    jmp short jumptable_57ce_case_0  ; 0x57a9
jumptable_57ce_case_6:
    mov word [bp - 0x0014], 9        ; 0x57ab
    jmp short jumptable_57ce_case_0  ; 0x57b0
jumptable_57ce_case_7:
    mov word [bp - 0x0014], 0xb      ; 0x57b2
    jmp short jumptable_57ce_case_0  ; 0x57b7
jumptable_57ce_case_9:
    mov word [bp - 0x0014], 0xe      ; 0x57b9
    jmp short jumptable_57ce_case_0  ; 0x57be
jumptable_57ce_case_15:
    mov word [bp - 0x0014], 0x14     ; 0x57c0
    jmp short jumptable_57ce_case_0  ; 0x57c5
jumptable_57ce_case_16:
    mov word [bp - 0x0014], 0x16     ; 0x57c7
    jmp short jumptable_57ce_case_0  ; 0x57cc
jumptable_57ce:
    dw jumptable_57ce_case_0 - IMAGE_BASE + __zres_end ; 0x57ce
    dw jumptable_57ce_case_1 - IMAGE_BASE + __zres_end ; 0x57d0
    dw jumptable_57ce_case_0 - IMAGE_BASE + __zres_end ; 0x57d2
    dw jumptable_57ce_case_0 - IMAGE_BASE + __zres_end ; 0x57d4
    dw jumptable_57ce_case_0 - IMAGE_BASE + __zres_end ; 0x57d6
    dw jumptable_57ce_case_5 - IMAGE_BASE + __zres_end ; 0x57d8
    dw jumptable_57ce_case_6 - IMAGE_BASE + __zres_end ; 0x57da
    dw jumptable_57ce_case_7 - IMAGE_BASE + __zres_end ; 0x57dc
    dw jumptable_57ce_case_0 - IMAGE_BASE + __zres_end ; 0x57de
    dw jumptable_57ce_case_9 - IMAGE_BASE + __zres_end ; 0x57e0
    dw jumptable_57ce_case_0 - IMAGE_BASE + __zres_end ; 0x57e2
    dw jumptable_57ce_case_0 - IMAGE_BASE + __zres_end ; 0x57e4
    dw jumptable_57ce_case_0 - IMAGE_BASE + __zres_end ; 0x57e6
    dw jumptable_57ce_case_0 - IMAGE_BASE + __zres_end ; 0x57e8
    dw jumptable_57ce_case_0 - IMAGE_BASE + __zres_end ; 0x57ea
    dw jumptable_57ce_case_15 - IMAGE_BASE + __zres_end ; 0x57ec
    dw jumptable_57ce_case_16 - IMAGE_BASE + __zres_end ; 0x57ee
@..loc_RMVR.l15:
    cmp ax, strict word 0x11         ; 0x57f0
    jae short jumptable_57ce_case_0  ; 0x57f3
    xchg bx, ax                      ; 0x57f5
    shl bx, 1                        ; 0x57f6
    jmp [cs:bx + jumptable_57ce - IMAGE_BASE + __zres_end] ; 0x57f8
jumptable_57ce_case_0:
    cmp word [bp - 0x0014], byte 0xff ; 0x57fd
    je short @..loc_RMVR.l16         ; 0x5801
    mov word [hotspot_hit], 1        ; 0x5803
@..loc_RMVR.l16:
    jmp near @..loc_RMVR.l29         ; 0x5809
@..loc_RMVR.l17:
    mov word [bp - 0x0014], 0xffff   ; 0x580c
    mov ax, word [bp - 0x0016]       ; 0x5811
    jmp short @..loc_RMVR.l18        ; 0x5814
jumptable_5847_case_1:
    mov word [bp - 0x0014], 1        ; 0x5816
    jmp short jumptable_5847_case_0  ; 0x581b
jumptable_5847_case_5:
    mov word [bp - 0x0014], 6        ; 0x581d
    jmp short jumptable_5847_case_0  ; 0x5822
jumptable_5847_case_6:
    mov word [bp - 0x0014], 8        ; 0x5824
    jmp short jumptable_5847_case_0  ; 0x5829
jumptable_5847_case_7:
    mov word [bp - 0x0014], 0xa      ; 0x582b
    jmp short jumptable_5847_case_0  ; 0x5830
jumptable_5847_case_9:
    mov word [bp - 0x0014], 0xd      ; 0x5832
    jmp short jumptable_5847_case_0  ; 0x5837
jumptable_5847_case_15:
    mov word [bp - 0x0014], 0x13     ; 0x5839
    jmp short jumptable_5847_case_0  ; 0x583e
jumptable_5847_case_16:
    mov word [bp - 0x0014], 0x15     ; 0x5840
    jmp short jumptable_5847_case_0  ; 0x5845
jumptable_5847:
    dw jumptable_5847_case_0 - IMAGE_BASE + __zres_end ; 0x5847
    dw jumptable_5847_case_1 - IMAGE_BASE + __zres_end ; 0x5849
    dw jumptable_5847_case_0 - IMAGE_BASE + __zres_end ; 0x584b
    dw jumptable_5847_case_0 - IMAGE_BASE + __zres_end ; 0x584d
    dw jumptable_5847_case_0 - IMAGE_BASE + __zres_end ; 0x584f
    dw jumptable_5847_case_5 - IMAGE_BASE + __zres_end ; 0x5851
    dw jumptable_5847_case_6 - IMAGE_BASE + __zres_end ; 0x5853
    dw jumptable_5847_case_7 - IMAGE_BASE + __zres_end ; 0x5855
    dw jumptable_5847_case_0 - IMAGE_BASE + __zres_end ; 0x5857
    dw jumptable_5847_case_9 - IMAGE_BASE + __zres_end ; 0x5859
    dw jumptable_5847_case_0 - IMAGE_BASE + __zres_end ; 0x585b
    dw jumptable_5847_case_0 - IMAGE_BASE + __zres_end ; 0x585d
    dw jumptable_5847_case_0 - IMAGE_BASE + __zres_end ; 0x585f
    dw jumptable_5847_case_0 - IMAGE_BASE + __zres_end ; 0x5861
    dw jumptable_5847_case_0 - IMAGE_BASE + __zres_end ; 0x5863
    dw jumptable_5847_case_15 - IMAGE_BASE + __zres_end ; 0x5865
    dw jumptable_5847_case_16 - IMAGE_BASE + __zres_end ; 0x5867
@..loc_RMVR.l18:
    cmp ax, strict word 0x11         ; 0x5869
    jae short jumptable_5847_case_0  ; 0x586c
    xchg bx, ax                      ; 0x586e
    shl bx, 1                        ; 0x586f
    jmp [cs:bx + jumptable_5847 - IMAGE_BASE + __zres_end] ; 0x5871
jumptable_5847_case_0:
    cmp word [bp - 0x0014], byte 0xff ; 0x5876
    je short @..loc_RMVR.l19         ; 0x587a
    mov word [hotspot_hit], 1        ; 0x587c
@..loc_RMVR.l19:
    jmp short @..loc_RMVR.l29        ; 0x5882
@..loc_RMVR.l20:
    mov word [bp - 0x0014], 0x18     ; 0x5884
    mov word [hotspot_hit], 1        ; 0x5889
    jmp short @..loc_RMVR.l29        ; 0x588f
@..loc_RMVR.l21:
    cmp ax, strict word 8            ; 0x5891
    jne short @..loc_RMVR.l22        ; 0x5894
    jmp near @..loc_RMVR.l17         ; 0x5896
@..loc_RMVR.l22:
    cmp ax, strict word 9            ; 0x5899
    jne short @..loc_RMVR.l23        ; 0x589c
    jmp near @..loc_RMVR.l7          ; 0x589e
@..loc_RMVR.l23:
    cmp ax, strict word 0xa          ; 0x58a1
    jne short @..loc_RMVR.l24        ; 0x58a4
    jmp near @..loc_RMVR.l14         ; 0x58a6
@..loc_RMVR.l24:
    cmp ax, strict word 0xb          ; 0x58a9
    jne short @..loc_RMVR.l25        ; 0x58ac
    jmp near @..loc_RMVR.l9          ; 0x58ae
@..loc_RMVR.l25:
    cmp ax, strict word 0xd          ; 0x58b1
    jne short @..loc_RMVR.l26        ; 0x58b4
    jmp near @..loc_RMVR.l11         ; 0x58b6
@..loc_RMVR.l26:
    cmp ax, strict word 0x1b         ; 0x58b9
    je short @..loc_RMVR.l20         ; 0x58bc
    cmp ax, strict word 0x2b         ; 0x58be
    jne short @..loc_RMVR.l27        ; 0x58c1
    jmp near @..loc_RMVR.l14         ; 0x58c3
@..loc_RMVR.l27:
    cmp ax, strict word 0x2d         ; 0x58c6
    jne short @..loc_RMVR.l28        ; 0x58c9
    jmp near @..loc_RMVR.l17         ; 0x58cb
@..loc_RMVR.l28:
    cmp ax, strict word 0x3d         ; 0x58ce
    jne short @..loc_RMVR.l29        ; 0x58d1
    jmp near @..loc_RMVR.l14         ; 0x58d3
@..loc_RMVR.l29:
    cmp word [hotspot_hit], byte 1   ; 0x58d6
    je short @..loc_RMVR.l30         ; 0x58db
    jmp near @..loc_RMVR.l54         ; 0x58dd
@..loc_RMVR.l30:
    mov ax, word [bp - 0x0014]       ; 0x58e0
    jmp near @..loc_RMVR.l51         ; 0x58e3
jumptable_5e7f_case_0:
    mov al, byte [bss_5989]          ; 0x58e6
    sub ah, ah                       ; 0x58e9
    inc ax                           ; 0x58eb
    mov cx, 2                        ; 0x58ec
    cwd                              ; 0x58ef
    idiv cx                          ; 0x58f0
    mov ax, dx                       ; 0x58f2
    mov byte [bss_5989], al          ; 0x58f4
    push word [bp - 0x000a]          ; 0x58f7
    push word [bp - 0x0008]          ; 0x58fa
    mov ax, 0                        ; 0x58fd
    push ax                          ; 0x5900
    call api_idx_0052_LJTK           ; 0x5901
    add sp, byte 6                   ; 0x5904
    jmp near @..loc_RMVR.l52         ; 0x5907
jumptable_5e7f_case_1:
    cmp byte [bss_5986], 0           ; 0x590a
    jbe short @..loc_RMVR.l31        ; 0x590f
    dec byte [bss_5986]              ; 0x5911
    push word [bp - 0x000a]          ; 0x5915
    push word [bp - 0x0008]          ; 0x5918
    mov ax, 1                        ; 0x591b
    push ax                          ; 0x591e
    call api_idx_0052_LJTK           ; 0x591f
    add sp, byte 6                   ; 0x5922
@..loc_RMVR.l31:
    jmp near @..loc_RMVR.l52         ; 0x5925
jumptable_5e7f_case_2:
    cmp byte [bss_5986], 0x63        ; 0x5928
    jae short @..loc_RMVR.l32        ; 0x592d
    inc byte [bss_5986]              ; 0x592f
    push word [bp - 0x000a]          ; 0x5933
    push word [bp - 0x0008]          ; 0x5936
    mov ax, 1                        ; 0x5939
    push ax                          ; 0x593c
    call api_idx_0052_LJTK           ; 0x593d
    add sp, byte 6                   ; 0x5940
@..loc_RMVR.l32:
    jmp near @..loc_RMVR.l52         ; 0x5943
jumptable_5e7f_case_3:
    call flush_keyboard              ; 0x5946
    mov ax, 0x12                     ; 0x5949
    push ax                          ; 0x594c
    mov ax, word [bp - 0x000a]       ; 0x594d
    add ax, strict word 0x38         ; 0x5950
    push ax                          ; 0x5953
    mov ax, word [bp - 0x0008]       ; 0x5954
    add ax, strict word 0x27         ; 0x5957
    push ax                          ; 0x595a
    mov ax, bss_593a                 ; 0x595b
    push ax                          ; 0x595e
    call loc_IIHU                    ; 0x595f
    add sp, byte 8                   ; 0x5962
    mov ax, 0                        ; 0x5965
    push ax                          ; 0x5968
    mov ax, 1                        ; 0x5969
    push ax                          ; 0x596c
    mov ax, 0                        ; 0x596d
    push ax                          ; 0x5970
    mov ax, 0x10                     ; 0x5971
    push ax                          ; 0x5974
    mov ax, word [bp - 0x000a]       ; 0x5975
    add ax, strict word 0x39         ; 0x5978
    push ax                          ; 0x597b
    mov ax, word [bp - 0x0008]       ; 0x597c
    add ax, strict word 0x29         ; 0x597f
    push ax                          ; 0x5982
    mov ax, bss_593a                 ; 0x5983
    push ax                          ; 0x5986
    call input_text_field            ; 0x5987
    add sp, byte 0x0e                ; 0x598a
    push word [bp - 0x000a]          ; 0x598d
    push word [bp - 0x0008]          ; 0x5990
    mov ax, 2                        ; 0x5993
    push ax                          ; 0x5996
    call api_idx_0052_LJTK           ; 0x5997
    add sp, byte 6                   ; 0x599a
    jmp near @..loc_RMVR.l52         ; 0x599d
jumptable_5e7f_case_4:
    call flush_keyboard              ; 0x59a0
    mov ax, 0x12                     ; 0x59a3
    push ax                          ; 0x59a6
    mov ax, word [bp - 0x000a]       ; 0x59a7
    add ax, strict word 0x44         ; 0x59aa
    push ax                          ; 0x59ad
    mov ax, word [bp - 0x0008]       ; 0x59ae
    add ax, strict word 0x27         ; 0x59b1
    push ax                          ; 0x59b4
    mov ax, bss_594e                 ; 0x59b5
    push ax                          ; 0x59b8
    call loc_IIHU                    ; 0x59b9
    add sp, byte 8                   ; 0x59bc
    mov ax, 0                        ; 0x59bf
    push ax                          ; 0x59c2
    mov ax, 1                        ; 0x59c3
    push ax                          ; 0x59c6
    mov ax, 0                        ; 0x59c7
    push ax                          ; 0x59ca
    mov ax, 0x10                     ; 0x59cb
    push ax                          ; 0x59ce
    mov ax, word [bp - 0x000a]       ; 0x59cf
    add ax, strict word 0x45         ; 0x59d2
    push ax                          ; 0x59d5
    mov ax, word [bp - 0x0008]       ; 0x59d6
    add ax, strict word 0x29         ; 0x59d9
    push ax                          ; 0x59dc
    mov ax, bss_594e                 ; 0x59dd
    push ax                          ; 0x59e0
    call input_text_field            ; 0x59e1
    add sp, byte 0x0e                ; 0x59e4
    push word [bp - 0x000a]          ; 0x59e7
    push word [bp - 0x0008]          ; 0x59ea
    mov ax, 3                        ; 0x59ed
    push ax                          ; 0x59f0
    call api_idx_0052_LJTK           ; 0x59f1
    add sp, byte 6                   ; 0x59f4
    jmp near @..loc_RMVR.l52         ; 0x59f7
jumptable_5e7f_case_5:
    cmp word [bp + 0x4], byte 0      ; 0x59fa
    jne short @..loc_RMVR.l34        ; 0x59fe
@..loc_RMVR.l33:
    mov al, byte [bss_5984]          ; 0x5a00
    sub ah, ah                       ; 0x5a03
    inc ax                           ; 0x5a05
    mov cx, 7                        ; 0x5a06
    cwd                              ; 0x5a09
    idiv cx                          ; 0x5a0a
    mov ax, dx                       ; 0x5a0c
    mov byte [bss_5984], al          ; 0x5a0e
    cmp byte [bss_5984], 5           ; 0x5a11
    je short @..loc_RMVR.l33         ; 0x5a16
    push word [bp - 0x000a]          ; 0x5a18
    push word [bp - 0x0008]          ; 0x5a1b
    mov ax, 4                        ; 0x5a1e
    push ax                          ; 0x5a21
    call api_idx_0052_LJTK           ; 0x5a22
    add sp, byte 6                   ; 0x5a25
@..loc_RMVR.l34:
    cmp byte [bss_5984], 0           ; 0x5a28
    jbe short @..loc_RMVR.l35        ; 0x5a2d
    mov word [bss_5980], 0x220       ; 0x5a2f
    jmp short @..loc_RMVR.l36        ; 0x5a35
@..loc_RMVR.l35:
    mov word [bss_5980], 0           ; 0x5a37
@..loc_RMVR.l36:
    jmp near @..loc_RMVR.l52         ; 0x5a3d
jumptable_5e7f_case_6:
    mov ax, 0xa                      ; 0x5a40
    push ax                          ; 0x5a43
    mov ax, 0xffff                   ; 0x5a44
    push ax                          ; 0x5a47
    mov ax, 0                        ; 0x5a48
    push ax                          ; 0x5a4b
    call loc_MLQO                    ; 0x5a4c
    add sp, byte 6                   ; 0x5a4f
    push word [bp - 0x000a]          ; 0x5a52
    push word [bp - 0x0008]          ; 0x5a55
    mov ax, 5                        ; 0x5a58
    push ax                          ; 0x5a5b
    call api_idx_0052_LJTK           ; 0x5a5c
    add sp, byte 6                   ; 0x5a5f
    jmp near @..loc_RMVR.l52         ; 0x5a62
jumptable_5e7f_case_7:
    mov ax, 0xa                      ; 0x5a65
    push ax                          ; 0x5a68
    mov ax, 1                        ; 0x5a69
    push ax                          ; 0x5a6c
    mov ax, 0                        ; 0x5a6d
    push ax                          ; 0x5a70
    call loc_MLQO                    ; 0x5a71
    add sp, byte 6                   ; 0x5a74
    push word [bp - 0x000a]          ; 0x5a77
    push word [bp - 0x0008]          ; 0x5a7a
    mov ax, 5                        ; 0x5a7d
    push ax                          ; 0x5a80
    call api_idx_0052_LJTK           ; 0x5a81
    add sp, byte 6                   ; 0x5a84
    jmp near @..loc_RMVR.l52         ; 0x5a87
jumptable_5e7f_case_8:
    mov ax, 0xa                      ; 0x5a8a
    push ax                          ; 0x5a8d
    mov ax, 0xffff                   ; 0x5a8e
    push ax                          ; 0x5a91
    mov ax, 1                        ; 0x5a92
    push ax                          ; 0x5a95
    call loc_MLQO                    ; 0x5a96
    add sp, byte 6                   ; 0x5a99
    push word [bp - 0x000a]          ; 0x5a9c
    push word [bp - 0x0008]          ; 0x5a9f
    mov ax, 6                        ; 0x5aa2
    push ax                          ; 0x5aa5
    call api_idx_0052_LJTK           ; 0x5aa6
    add sp, byte 6                   ; 0x5aa9
    jmp near @..loc_RMVR.l52         ; 0x5aac
jumptable_5e7f_case_9:
    mov ax, 0xa                      ; 0x5aaf
    push ax                          ; 0x5ab2
    mov ax, 1                        ; 0x5ab3
    push ax                          ; 0x5ab6
    push ax                          ; 0x5ab7
    call loc_MLQO                    ; 0x5ab8
    add sp, byte 6                   ; 0x5abb
    push word [bp - 0x000a]          ; 0x5abe
    push word [bp - 0x0008]          ; 0x5ac1
    mov ax, 6                        ; 0x5ac4
    push ax                          ; 0x5ac7
    call api_idx_0052_LJTK           ; 0x5ac8
    add sp, byte 6                   ; 0x5acb
    jmp near @..loc_RMVR.l52         ; 0x5ace
jumptable_5e7f_case_10:
    mov ax, 0xa                      ; 0x5ad1
    push ax                          ; 0x5ad4
    mov ax, 0xffff                   ; 0x5ad5
    push ax                          ; 0x5ad8
    mov ax, 2                        ; 0x5ad9
    push ax                          ; 0x5adc
    call loc_MLQO                    ; 0x5add
    add sp, byte 6                   ; 0x5ae0
    push word [bp - 0x000a]          ; 0x5ae3
    push word [bp - 0x0008]          ; 0x5ae6
    mov ax, 7                        ; 0x5ae9
    push ax                          ; 0x5aec
    call api_idx_0052_LJTK           ; 0x5aed
    add sp, byte 6                   ; 0x5af0
    jmp near @..loc_RMVR.l52         ; 0x5af3
jumptable_5e7f_case_11:
    mov ax, 0xa                      ; 0x5af6
    push ax                          ; 0x5af9
    mov ax, 1                        ; 0x5afa
    push ax                          ; 0x5afd
    mov ax, 2                        ; 0x5afe
    push ax                          ; 0x5b01
    call loc_MLQO                    ; 0x5b02
    add sp, byte 6                   ; 0x5b05
    push word [bp - 0x000a]          ; 0x5b08
    push word [bp - 0x0008]          ; 0x5b0b
    mov ax, 7                        ; 0x5b0e
    push ax                          ; 0x5b11
    call api_idx_0052_LJTK           ; 0x5b12
    add sp, byte 6                   ; 0x5b15
    jmp near @..loc_RMVR.l52         ; 0x5b18
jumptable_5e7f_case_12:
    cmp word [bp + 0x4], byte 0      ; 0x5b1b
    jne short @..loc_RMVR.l38        ; 0x5b1f
@..loc_RMVR.l37:
    mov al, byte [video_mode]        ; 0x5b21
    sub ah, ah                       ; 0x5b24
    inc ax                           ; 0x5b26
    mov cx, 7                        ; 0x5b27
    cwd                              ; 0x5b2a
    idiv cx                          ; 0x5b2b
    mov ax, dx                       ; 0x5b2d
    mov byte [video_mode], al        ; 0x5b2f
    cmp byte [video_mode], 2         ; 0x5b32
    je short @..loc_RMVR.l37         ; 0x5b37
    cmp byte [video_mode], 3         ; 0x5b39
    je short @..loc_RMVR.l37         ; 0x5b3e
    push word [bp - 0x000a]          ; 0x5b40
    push word [bp - 0x0008]          ; 0x5b43
    mov ax, 8                        ; 0x5b46
    push ax                          ; 0x5b49
    call api_idx_0052_LJTK           ; 0x5b4a
    add sp, byte 6                   ; 0x5b4d
@..loc_RMVR.l38:
    cmp byte [video_mode], 0         ; 0x5b50
    jbe short @..loc_RMVR.l39        ; 0x5b55
    mov word [bss_5982], 0x220       ; 0x5b57
    jmp short @..loc_RMVR.l40        ; 0x5b5d
@..loc_RMVR.l39:
    mov word [bss_5982], 0           ; 0x5b5f
@..loc_RMVR.l40:
    jmp near @..loc_RMVR.l52         ; 0x5b65
jumptable_5e7f_case_13:
    mov ax, 0xa                      ; 0x5b68
    push ax                          ; 0x5b6b
    mov ax, 0xffff                   ; 0x5b6c
    push ax                          ; 0x5b6f
    mov ax, 3                        ; 0x5b70
    push ax                          ; 0x5b73
    call loc_MLQO                    ; 0x5b74
    add sp, byte 6                   ; 0x5b77
    push word [bp - 0x000a]          ; 0x5b7a
    push word [bp - 0x0008]          ; 0x5b7d
    mov ax, 9                        ; 0x5b80
    push ax                          ; 0x5b83
    call api_idx_0052_LJTK           ; 0x5b84
    add sp, byte 6                   ; 0x5b87
    jmp near @..loc_RMVR.l52         ; 0x5b8a
jumptable_5e7f_case_14:
    mov ax, 0xa                      ; 0x5b8d
    push ax                          ; 0x5b90
    mov ax, 1                        ; 0x5b91
    push ax                          ; 0x5b94
    mov ax, 3                        ; 0x5b95
    push ax                          ; 0x5b98
    call loc_MLQO                    ; 0x5b99
    add sp, byte 6                   ; 0x5b9c
    push word [bp - 0x000a]          ; 0x5b9f
    push word [bp - 0x0008]          ; 0x5ba2
    mov ax, 9                        ; 0x5ba5
    push ax                          ; 0x5ba8
    call api_idx_0052_LJTK           ; 0x5ba9
    add sp, byte 6                   ; 0x5bac
    jmp near @..loc_RMVR.l52         ; 0x5baf
jumptable_5e7f_case_15:
    mov al, byte [bss_5988]          ; 0x5bb2
    sub ah, ah                       ; 0x5bb5
    inc ax                           ; 0x5bb7
    mov cx, 3                        ; 0x5bb8
    cwd                              ; 0x5bbb
    idiv cx                          ; 0x5bbc
    mov ax, dx                       ; 0x5bbe
    mov byte [bss_5988], al          ; 0x5bc0
    push word [bp - 0x000a]          ; 0x5bc3
    push word [bp - 0x0008]          ; 0x5bc6
    mov ax, 0xa                      ; 0x5bc9
    push ax                          ; 0x5bcc
    call api_idx_0052_LJTK           ; 0x5bcd
    add sp, byte 6                   ; 0x5bd0
    jmp near @..loc_RMVR.l52         ; 0x5bd3
jumptable_5e7f_case_16:
    mov al, byte [no_dissolve]       ; 0x5bd6
    sub ah, ah                       ; 0x5bd9
    inc ax                           ; 0x5bdb
    mov cx, 2                        ; 0x5bdc
    cwd                              ; 0x5bdf
    idiv cx                          ; 0x5be0
    mov ax, dx                       ; 0x5be2
    mov byte [no_dissolve], al       ; 0x5be4
    push word [bp - 0x000a]          ; 0x5be7
    push word [bp - 0x0008]          ; 0x5bea
    mov ax, 0xb                      ; 0x5bed
    push ax                          ; 0x5bf0
    call api_idx_0052_LJTK           ; 0x5bf1
    add sp, byte 6                   ; 0x5bf4
    jmp near @..loc_RMVR.l52         ; 0x5bf7
jumptable_5e7f_case_17:
    mov ax, 1                        ; 0x5bfa
    cmp byte [screen_store_1_enabled], 1 ; 0x5bfd
    je short @..loc_RMVR.l41         ; 0x5c02
    mov ax, 0                        ; 0x5c04
    cmp byte [screen_store_disk_enabled], 1 ; 0x5c07
    jne short @..loc_RMVR.l41        ; 0x5c0c
    mov ax, 2                        ; 0x5c0e
@..loc_RMVR.l41:
    mov word [bp - 0x0004], ax       ; 0x5c11
    inc ax                           ; 0x5c14
    mov cx, 3                        ; 0x5c15
    cwd                              ; 0x5c18
    idiv cx                          ; 0x5c19
    mov word [bp - 0x0004], dx       ; 0x5c1b
    mov byte [screen_store_1_enabled], 0 ; 0x5c1e
    mov byte [screen_store_disk_enabled], 0 ; 0x5c23
    mov ax, dx                       ; 0x5c28
    jmp short @..loc_RMVR.l44        ; 0x5c2a
@..loc_RMVR.l42:
    mov byte [screen_store_1_enabled], 1 ; 0x5c2c
    jmp short @..loc_RMVR.l45        ; 0x5c31
@..loc_RMVR.l43:
    mov byte [screen_store_disk_enabled], 1 ; 0x5c33
    jmp short @..loc_RMVR.l45        ; 0x5c38
@..loc_RMVR.l44:
    cmp ax, strict word 1            ; 0x5c3a
    je short @..loc_RMVR.l42         ; 0x5c3d
    cmp ax, strict word 2            ; 0x5c3f
    je short @..loc_RMVR.l43         ; 0x5c42
@..loc_RMVR.l45:
    push word [bp - 0x000a]          ; 0x5c44
    push word [bp - 0x0008]          ; 0x5c47
    mov ax, 0xc                      ; 0x5c4a
    push ax                          ; 0x5c4d
    call api_idx_0052_LJTK           ; 0x5c4e
    add sp, byte 6                   ; 0x5c51
    mov ax, word [bp - 0x000e]       ; 0x5c54
    inc ax                           ; 0x5c57
    push ax                          ; 0x5c58
    mov ax, word [bp - 0x000c]       ; 0x5c59
    inc ax                           ; 0x5c5c
    push ax                          ; 0x5c5d
    mov ax, word [bp - 0x000a]       ; 0x5c5e
    dec ax                           ; 0x5c61
    push ax                          ; 0x5c62
    mov ax, word [bp - 0x0008]       ; 0x5c63
    dec ax                           ; 0x5c66
    push ax                          ; 0x5c67
    call gfx_show_area               ; 0x5c68
    add sp, byte 8                   ; 0x5c6b
jumptable_5e7f_case_18:
    cmp word [bp - 0x0014], byte 0x12 ; 0x5c6e
    je short @..loc_RMVR.l46         ; 0x5c72
    cmp byte [screen_store_disk_enabled], 1 ; 0x5c74
    jne short @..loc_RMVR.l47        ; 0x5c79
    mov ax, screen_store_drive       ; 0x5c7b
    push ax                          ; 0x5c7e
    call aztec_strlen                ; 0x5c7f
    pop cx                           ; 0x5c82
    test ax, ax                      ; 0x5c83
    jne short @..loc_RMVR.l47        ; 0x5c85
@..loc_RMVR.l46:
    call flush_keyboard              ; 0x5c87
    mov ax, 0xa                      ; 0x5c8a
    push ax                          ; 0x5c8d
    mov ax, word [bp - 0x000a]       ; 0x5c8e
    add ax, strict word 0x44         ; 0x5c91
    push ax                          ; 0x5c94
    mov ax, word [bp - 0x0008]       ; 0x5c95
    add ax, 0xd5                     ; 0x5c98
    push ax                          ; 0x5c9b
    mov ax, screen_store_drive       ; 0x5c9c
    push ax                          ; 0x5c9f
    call loc_IIHU                    ; 0x5ca0
    add sp, byte 8                   ; 0x5ca3
    mov ax, 0                        ; 0x5ca6
    push ax                          ; 0x5ca9
    mov ax, 1                        ; 0x5caa
    push ax                          ; 0x5cad
    mov ax, 0                        ; 0x5cae
    push ax                          ; 0x5cb1
    mov ax, 0xa                      ; 0x5cb2
    push ax                          ; 0x5cb5
    mov ax, word [bp - 0x000a]       ; 0x5cb6
    add ax, strict word 0x45         ; 0x5cb9
    push ax                          ; 0x5cbc
    mov ax, word [bp - 0x0008]       ; 0x5cbd
    add ax, 0xd7                     ; 0x5cc0
    push ax                          ; 0x5cc3
    mov ax, screen_store_drive       ; 0x5cc4
    push ax                          ; 0x5cc7
    call input_text_field            ; 0x5cc8
    add sp, byte 0x0e                ; 0x5ccb
    push word [bp - 0x000a]          ; 0x5cce
    push word [bp - 0x0008]          ; 0x5cd1
    mov ax, 0xd                      ; 0x5cd4
    push ax                          ; 0x5cd7
    call api_idx_0052_LJTK           ; 0x5cd8
    add sp, byte 6                   ; 0x5cdb
@..loc_RMVR.l47:
    jmp near @..loc_RMVR.l52         ; 0x5cde
jumptable_5e7f_case_19:
    mov ax, 0xff9d                   ; 0x5ce1
    push ax                          ; 0x5ce4
    mov ax, 0xffff                   ; 0x5ce5
    push ax                          ; 0x5ce8
    mov ax, 0                        ; 0x5ce9
    push ax                          ; 0x5cec
    call loc_NGTJ                    ; 0x5ced
    add sp, byte 6                   ; 0x5cf0
    push word [bp - 0x000a]          ; 0x5cf3
    push word [bp - 0x0008]          ; 0x5cf6
    mov ax, 0xf                      ; 0x5cf9
    push ax                          ; 0x5cfc
    call api_idx_0052_LJTK           ; 0x5cfd
    add sp, byte 6                   ; 0x5d00
    mov al, byte [bss_5979]          ; 0x5d03
    cbw                              ; 0x5d06
    push ax                          ; 0x5d07
    mov al, byte [bss_5978]          ; 0x5d08
    cbw                              ; 0x5d0b
    push ax                          ; 0x5d0c
    call api_idx_000c_NLKU           ; 0x5d0d
    add sp, byte 4                   ; 0x5d10
    jmp near @..loc_RMVR.l52         ; 0x5d13
jumptable_5e7f_case_20:
    mov ax, 0x63                     ; 0x5d16
    push ax                          ; 0x5d19
    mov ax, 1                        ; 0x5d1a
    push ax                          ; 0x5d1d
    mov ax, 0                        ; 0x5d1e
    push ax                          ; 0x5d21
    call loc_NGTJ                    ; 0x5d22
    add sp, byte 6                   ; 0x5d25
    push word [bp - 0x000a]          ; 0x5d28
    push word [bp - 0x0008]          ; 0x5d2b
    mov ax, 0xf                      ; 0x5d2e
    push ax                          ; 0x5d31
    call api_idx_0052_LJTK           ; 0x5d32
    add sp, byte 6                   ; 0x5d35
    mov al, byte [bss_5979]          ; 0x5d38
    cbw                              ; 0x5d3b
    push ax                          ; 0x5d3c
    mov al, byte [bss_5978]          ; 0x5d3d
    cbw                              ; 0x5d40
    push ax                          ; 0x5d41
    call api_idx_000c_NLKU           ; 0x5d42
    add sp, byte 4                   ; 0x5d45
    jmp near @..loc_RMVR.l52         ; 0x5d48
jumptable_5e7f_case_21:
    mov ax, 0xff9d                   ; 0x5d4b
    push ax                          ; 0x5d4e
    mov ax, 0xffff                   ; 0x5d4f
    push ax                          ; 0x5d52
    mov ax, 1                        ; 0x5d53
    push ax                          ; 0x5d56
    call loc_NGTJ                    ; 0x5d57
    add sp, byte 6                   ; 0x5d5a
    push word [bp - 0x000a]          ; 0x5d5d
    push word [bp - 0x0008]          ; 0x5d60
    mov ax, 0x10                     ; 0x5d63
    push ax                          ; 0x5d66
    call api_idx_0052_LJTK           ; 0x5d67
    add sp, byte 6                   ; 0x5d6a
    mov al, byte [bss_5979]          ; 0x5d6d
    cbw                              ; 0x5d70
    push ax                          ; 0x5d71
    mov al, byte [bss_5978]          ; 0x5d72
    cbw                              ; 0x5d75
    push ax                          ; 0x5d76
    call api_idx_000c_NLKU           ; 0x5d77
    add sp, byte 4                   ; 0x5d7a
    jmp near @..loc_RMVR.l52         ; 0x5d7d
jumptable_5e7f_case_22:
    mov ax, 0x63                     ; 0x5d80
    push ax                          ; 0x5d83
    mov ax, 1                        ; 0x5d84
    push ax                          ; 0x5d87
    push ax                          ; 0x5d88
    call loc_NGTJ                    ; 0x5d89
    add sp, byte 6                   ; 0x5d8c
    push word [bp - 0x000a]          ; 0x5d8f
    push word [bp - 0x0008]          ; 0x5d92
    mov ax, 0x10                     ; 0x5d95
    push ax                          ; 0x5d98
    call api_idx_0052_LJTK           ; 0x5d99
    add sp, byte 6                   ; 0x5d9c
    mov al, byte [bss_5979]          ; 0x5d9f
    cbw                              ; 0x5da2
    push ax                          ; 0x5da3
    mov al, byte [bss_5978]          ; 0x5da4
    cbw                              ; 0x5da7
    push ax                          ; 0x5da8
    call api_idx_000c_NLKU           ; 0x5da9
    add sp, byte 4                   ; 0x5dac
    jmp near @..loc_RMVR.l52         ; 0x5daf
jumptable_5e7f_case_23:
    mov ax, 1                        ; 0x5db2
    push ax                          ; 0x5db5
    push ax                          ; 0x5db6
    mov ax, 6                        ; 0x5db7
    push ax                          ; 0x5dba
    mov ax, word [bp - 0x000a]       ; 0x5dbb
    add ax, strict word 0x7f         ; 0x5dbe
    push ax                          ; 0x5dc1
    mov ax, word [bp - 0x0008]       ; 0x5dc2
    add ax, 0xb2                     ; 0x5dc5
    push ax                          ; 0x5dc8
    call flash_button                ; 0x5dc9
    add sp, byte 0x0a                ; 0x5dcc
    mov ax, 0                        ; 0x5dcf
    push ax                          ; 0x5dd2
    mov ax, 1                        ; 0x5dd3
    push ax                          ; 0x5dd6
    mov ax, 6                        ; 0x5dd7
    push ax                          ; 0x5dda
    mov ax, word [bp - 0x000a]       ; 0x5ddb
    add ax, strict word 0x7f         ; 0x5dde
    push ax                          ; 0x5de1
    mov ax, word [bp - 0x0008]       ; 0x5de2
    add ax, 0xb2                     ; 0x5de5
    push ax                          ; 0x5de8
    call flash_button                ; 0x5de9
    add sp, byte 0x0a                ; 0x5dec
    mov al, byte [bss_5984]          ; 0x5def
    cmp al, byte [bp - 0x0074]       ; 0x5df2
    jne short @..loc_RMVR.l48        ; 0x5df5
    mov al, byte [video_mode]        ; 0x5df7
    cmp al, byte [bp - 0x0073]       ; 0x5dfa
    je short @..loc_RMVR.l49         ; 0x5dfd
@..loc_RMVR.l48:
    mov ax, 1                        ; 0x5dff
    jmp short @..loc_RMVR.l50        ; 0x5e02
@..loc_RMVR.l49:
    mov ax, 0                        ; 0x5e04
@..loc_RMVR.l50:
    mov word [spell_dialog_button], ax ; 0x5e07
    mov word [bp - 0x0018], 0        ; 0x5e0a
    call api_idx_0002_QRVU           ; 0x5e0f
    jmp near @..loc_RMVR.l52         ; 0x5e12
jumptable_5e7f_case_24:
    mov ax, 1                        ; 0x5e15
    push ax                          ; 0x5e18
    push ax                          ; 0x5e19
    mov ax, 6                        ; 0x5e1a
    push ax                          ; 0x5e1d
    mov ax, word [bp - 0x000a]       ; 0x5e1e
    add ax, strict word 0x7f         ; 0x5e21
    push ax                          ; 0x5e24
    mov ax, word [bp - 0x0008]       ; 0x5e25
    add ax, 0xe6                     ; 0x5e28
    push ax                          ; 0x5e2b
    call flash_button                ; 0x5e2c
    add sp, byte 0x0a                ; 0x5e2f
    mov ax, 0                        ; 0x5e32
    push ax                          ; 0x5e35
    mov ax, 1                        ; 0x5e36
    push ax                          ; 0x5e39
    mov ax, 6                        ; 0x5e3a
    push ax                          ; 0x5e3d
    mov ax, word [bp - 0x000a]       ; 0x5e3e
    add ax, strict word 0x7f         ; 0x5e41
    push ax                          ; 0x5e44
    mov ax, word [bp - 0x0008]       ; 0x5e45
    add ax, 0xe6                     ; 0x5e48
    push ax                          ; 0x5e4b
    call flash_button                ; 0x5e4c
    add sp, byte 0x0a                ; 0x5e4f
    mov word [spell_dialog_button], 0 ; 0x5e52
    mov word [bp - 0x0018], 0        ; 0x5e58
    lea si, word [bp - 0x03b6]       ; 0x5e5d
    mov di, bss_5642                 ; 0x5e61
    mov cx, ds                       ; 0x5e64
    mov es, cx                       ; 0x5e66
    mov cx, 0x1a6                    ; 0x5e68
    rep movsw                        ; 0x5e6b
    mov al, byte [bss_5979]          ; 0x5e6d
    cbw                              ; 0x5e70
    push ax                          ; 0x5e71
    mov al, byte [bss_5978]          ; 0x5e72
    cbw                              ; 0x5e75
    push ax                          ; 0x5e76
    call api_idx_000c_NLKU           ; 0x5e77
    add sp, byte 4                   ; 0x5e7a
    jmp short @..loc_RMVR.l52        ; 0x5e7d
jumptable_5e7f:
    dw jumptable_5e7f_case_0 - IMAGE_BASE + __zres_end ; 0x5e7f
    dw jumptable_5e7f_case_1 - IMAGE_BASE + __zres_end ; 0x5e81
    dw jumptable_5e7f_case_2 - IMAGE_BASE + __zres_end ; 0x5e83
    dw jumptable_5e7f_case_3 - IMAGE_BASE + __zres_end ; 0x5e85
    dw jumptable_5e7f_case_4 - IMAGE_BASE + __zres_end ; 0x5e87
    dw jumptable_5e7f_case_5 - IMAGE_BASE + __zres_end ; 0x5e89
    dw jumptable_5e7f_case_6 - IMAGE_BASE + __zres_end ; 0x5e8b
    dw jumptable_5e7f_case_7 - IMAGE_BASE + __zres_end ; 0x5e8d
    dw jumptable_5e7f_case_8 - IMAGE_BASE + __zres_end ; 0x5e8f
    dw jumptable_5e7f_case_9 - IMAGE_BASE + __zres_end ; 0x5e91
    dw jumptable_5e7f_case_10 - IMAGE_BASE + __zres_end ; 0x5e93
    dw jumptable_5e7f_case_11 - IMAGE_BASE + __zres_end ; 0x5e95
    dw jumptable_5e7f_case_12 - IMAGE_BASE + __zres_end ; 0x5e97
    dw jumptable_5e7f_case_13 - IMAGE_BASE + __zres_end ; 0x5e99
    dw jumptable_5e7f_case_14 - IMAGE_BASE + __zres_end ; 0x5e9b
    dw jumptable_5e7f_case_15 - IMAGE_BASE + __zres_end ; 0x5e9d
    dw jumptable_5e7f_case_16 - IMAGE_BASE + __zres_end ; 0x5e9f
    dw jumptable_5e7f_case_17 - IMAGE_BASE + __zres_end ; 0x5ea1
    dw jumptable_5e7f_case_18 - IMAGE_BASE + __zres_end ; 0x5ea3
    dw jumptable_5e7f_case_19 - IMAGE_BASE + __zres_end ; 0x5ea5
    dw jumptable_5e7f_case_20 - IMAGE_BASE + __zres_end ; 0x5ea7
    dw jumptable_5e7f_case_21 - IMAGE_BASE + __zres_end ; 0x5ea9
    dw jumptable_5e7f_case_22 - IMAGE_BASE + __zres_end ; 0x5eab
    dw jumptable_5e7f_case_23 - IMAGE_BASE + __zres_end ; 0x5ead
    dw jumptable_5e7f_case_24 - IMAGE_BASE + __zres_end ; 0x5eaf
@..loc_RMVR.l51:
    cmp ax, strict word 0x19         ; 0x5eb1
    jae short @..loc_RMVR.l52        ; 0x5eb4
    xchg bx, ax                      ; 0x5eb6
    shl bx, 1                        ; 0x5eb7
    jmp [cs:bx + jumptable_5e7f - IMAGE_BASE + __zres_end] ; 0x5eb9
@..loc_RMVR.l52:
    cmp word [bp - 0x0018], byte 0   ; 0x5ebe
    je short @..loc_RMVR.l53         ; 0x5ec2
    cmp word [mouse_active], byte 0  ; 0x5ec4
    jne short @..loc_RMVR.l53        ; 0x5ec9
    push word [bp - 0x000a]          ; 0x5ecb
    push word [bp - 0x0008]          ; 0x5ece
    push word [bp - 0x0016]          ; 0x5ed1
    call api_idx_0052_JQTP           ; 0x5ed4
    add sp, byte 6                   ; 0x5ed7
@..loc_RMVR.l53:
    mov ax, word [bp - 0x000e]       ; 0x5eda
    inc ax                           ; 0x5edd
    push ax                          ; 0x5ede
    mov ax, word [bp - 0x000c]       ; 0x5edf
    inc ax                           ; 0x5ee2
    push ax                          ; 0x5ee3
    mov ax, word [bp - 0x000a]       ; 0x5ee4
    dec ax                           ; 0x5ee7
    push ax                          ; 0x5ee8
    mov ax, word [bp - 0x0008]       ; 0x5ee9
    dec ax                           ; 0x5eec
    push ax                          ; 0x5eed
    call gfx_show_area               ; 0x5eee
    add sp, byte 8                   ; 0x5ef1
@..loc_RMVR.l54:
    cmp word [bp - 0x0018], byte 0   ; 0x5ef4
    je short @..loc_RMVR.l55         ; 0x5ef8
    jmp near @..loc_RMVR.l5          ; 0x5efa
@..loc_RMVR.l55:
    mov ax, 1                        ; 0x5efd
    push ax                          ; 0x5f00
    push word [bp - 0x006a]          ; 0x5f01
    call restore_saved_screen        ; 0x5f04
    add sp, byte 4                   ; 0x5f07
    mov ax, word [bp - 0x000e]       ; 0x5f0a
    inc ax                           ; 0x5f0d
    push ax                          ; 0x5f0e
    mov ax, word [bp - 0x000c]       ; 0x5f0f
    inc ax                           ; 0x5f12
    push ax                          ; 0x5f13
    mov ax, word [bp - 0x000a]       ; 0x5f14
    dec ax                           ; 0x5f17
    push ax                          ; 0x5f18
    mov ax, word [bp - 0x0008]       ; 0x5f19
    dec ax                           ; 0x5f1c
    push ax                          ; 0x5f1d
    call gfx_show_area               ; 0x5f1e
    add sp, byte 8                   ; 0x5f21
    mov ax, word [spell_dialog_button] ; 0x5f24
    ret                              ; 0x5f27
loc_PVJJ:
    mov ax, 0xfd40                   ; 0x5f28
    call aztec_csav                  ; 0x5f2b
    mov word [bp - 0x0008], 0        ; 0x5f2e
    mov word [bp - 0x0002], 0        ; 0x5f33
    jmp near @..loc_PVJJ.l7          ; 0x5f38
@..loc_PVJJ.l1:
    mov bx, word [bp - 0x0002]       ; 0x5f3b
    cmp byte [bx + bss_9074 + 0x2], 1 ; 0x5f3e
    je short @..loc_PVJJ.l2          ; 0x5f43
    jmp near @..loc_PVJJ.l6          ; 0x5f45
@..loc_PVJJ.l2:
    mov ax, 0                        ; 0x5f48
    push ax                          ; 0x5f4b
    push bx                          ; 0x5f4c
    lea ax, word [bp - 0x0250]       ; 0x5f4d
    push ax                          ; 0x5f51
    call api_idx_0002_SJMT           ; 0x5f52
    add sp, byte 6                   ; 0x5f55
    lea ax, word [bp - 0x0250]       ; 0x5f58
    push ax                          ; 0x5f5c
    mov ax, 0x14                     ; 0x5f5d
    imul word [bp - 0x0008]          ; 0x5f60
    add ax, known_spell_names        ; 0x5f63
    push ax                          ; 0x5f66
    call aztec_strcpy                ; 0x5f67
    add sp, byte 4                   ; 0x5f6a
    mov ax, 0x14                     ; 0x5f6d
    imul word [bp - 0x0008]          ; 0x5f70
    add ax, known_spell_names        ; 0x5f73
    push ax                          ; 0x5f76
    call aztec_strlen                ; 0x5f77
    pop cx                           ; 0x5f7a
    mov word [bp - 0x0004], ax       ; 0x5f7b
@..loc_PVJJ.l3:
    cmp word [bp - 0x0004], byte 0x0a ; 0x5f7e
    jge short @..loc_PVJJ.l4         ; 0x5f82
    mov ax, 0x14                     ; 0x5f84
    imul word [bp - 0x0008]          ; 0x5f87
    add ax, word [bp - 0x0004]       ; 0x5f8a
    mov bx, ax                       ; 0x5f8d
    mov byte [bx + known_spell_names], 0x20 ; 0x5f8f
    inc word [bp - 0x0004]           ; 0x5f94
    jmp short @..loc_PVJJ.l3         ; 0x5f97
@..loc_PVJJ.l4:
    lea ax, word [bp - 0x02a0]       ; 0x5f99
    push ax                          ; 0x5f9d
    mov al, byte [bp - 0x0018]       ; 0x5f9e
    sub ah, ah                       ; 0x5fa1
    add ax, MSG_MALE                 ; 0x5fa3
    push ax                          ; 0x5fa6
    call load_message_string         ; 0x5fa7
    add sp, byte 4                   ; 0x5faa
    mov al, byte [bp - 0x02a0]       ; 0x5fad
    push ax                          ; 0x5fb1
    mov ax, 0x14                     ; 0x5fb2
    imul word [bp - 0x0008]          ; 0x5fb5
    mov bx, ax                       ; 0x5fb8
    pop ax                           ; 0x5fba
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000a], al ; 0x5fbb
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000b], 0x2d ; 0x5fbf
    lea ax, word [bp - 0x02a0]       ; 0x5fc4
    push ax                          ; 0x5fc8
    mov al, byte [bp - 0x0017]       ; 0x5fc9
    sub ah, ah                       ; 0x5fcc
    add ax, strict word 0x78         ; 0x5fce
    push ax                          ; 0x5fd1
    call load_message_string         ; 0x5fd2
    add sp, byte 4                   ; 0x5fd5
    mov word [bp - 0x0004], 0        ; 0x5fd8
@..loc_PVJJ.l5:
    mov bx, word [bp - 0x0004]       ; 0x5fdd
    add bx, bp                       ; 0x5fe0
    mov al, byte [bx - 0x02a0]       ; 0x5fe2
    push ax                          ; 0x5fe6
    mov ax, 0x14                     ; 0x5fe7
    imul word [bp - 0x0008]          ; 0x5fea
    mov cx, ax                       ; 0x5fed
    add ax, word [bp - 0x0004]       ; 0x5fef
    mov bx, ax                       ; 0x5ff2
    pop ax                           ; 0x5ff4
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000c], al ; 0x5ff5
    inc word [bp - 0x0004]           ; 0x5ff9
    mov ax, word [bp - 0x0004]       ; 0x5ffc
    cmp ax, strict word 3            ; 0x5fff
    jl short @..loc_PVJJ.l5          ; 0x6002
    mov ax, 0x14                     ; 0x6004
    imul word [bp - 0x0008]          ; 0x6007
    mov bx, ax                       ; 0x600a
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000f], 0 ; 0x600c
    mov ax, word [bp - 0x0002]       ; 0x6011
    mov cx, word [bp - 0x0008]       ; 0x6014
    shl cx, 1                        ; 0x6017
    mov bx, cx                       ; 0x6019
    add bx, bp                       ; 0x601b
    mov word [bx - 0x02c0], ax       ; 0x601d
    inc word [bp - 0x0008]           ; 0x6021
@..loc_PVJJ.l6:
    inc word [bp - 0x0002]           ; 0x6024
@..loc_PVJJ.l7:
    mov ax, word [bp - 0x0002]       ; 0x6027
    cmp ax, word [bss_9070]          ; 0x602a
    jge short @..loc_PVJJ.l8         ; 0x602e
    jmp near @..loc_PVJJ.l1          ; 0x6030
@..loc_PVJJ.l8:
    cmp word [bp - 0x0008], byte 0   ; 0x6033
    jle short @..loc_PVJJ.l9         ; 0x6037
    push word [bp - 0x0008]          ; 0x6039
    mov ax, 1                        ; 0x603c
    push ax                          ; 0x603f
    push ax                          ; 0x6040
    mov ax, 0                        ; 0x6041
    push ax                          ; 0x6044
    push word [bp + 0x4]             ; 0x6045
    call api_idx_0038_MNUL           ; 0x6048
    add sp, byte 0x0a                ; 0x604b
    cmp ax, strict word 1            ; 0x604e
    jne short @..loc_PVJJ.l9         ; 0x6051
    mov ax, word [spell_dialog_result] ; 0x6053
    mov word [bp - 0x0006], ax       ; 0x6056
    cmp ax, strict word 0xffff       ; 0x6059
    je short @..loc_PVJJ.l9          ; 0x605c
    shl ax, 1                        ; 0x605e
    mov bx, ax                       ; 0x6060
    add bx, bp                       ; 0x6062
    mov ax, word [bx - 0x02c0]       ; 0x6064
    ret                              ; 0x6068
@..loc_PVJJ.l9:
    mov ax, 0xffff                   ; 0x6069
    ret                              ; 0x606c
