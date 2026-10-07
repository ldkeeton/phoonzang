api_idx_007c:
    mov ax, 0xff84                   ; 0x1046
    call ds_dispatch_f40b            ; 0x1049
    mov ax, 0                        ; 0x104c
    push ax                          ; 0x104f
    push ax                          ; 0x1050
    push word [data_93f0]            ; 0x1051
    push word [data_93ee]            ; 0x1055
    call ds_dispatch_e942            ; 0x1059
    add sp, byte 8                   ; 0x105c
    mov ax, 0                        ; 0x105f
    push ax                          ; 0x1062
    push ax                          ; 0x1063
    push word [data_93f4]            ; 0x1064
    push word [data_93f2]            ; 0x1068
    call ds_dispatch_e942            ; 0x106c
    add sp, byte 8                   ; 0x106f
    mov ax, 0x12                     ; 0x1072
    push ax                          ; 0x1075
    mov ax, 0xe                      ; 0x1076
    push ax                          ; 0x1079
    push word [bp + 0x4]             ; 0x107a
    call api_idx_0010                ; 0x107d
    add sp, byte 6                   ; 0x1080
    mov ax, 0                        ; 0x1083
    push ax                          ; 0x1086
    push ax                          ; 0x1087
    call ds_dispatch_e823            ; 0x1088
    add sp, byte 4                   ; 0x108b
    mov ax, 0x4c                     ; 0x108e
    push ax                          ; 0x1091
    mov ax, 0x248                    ; 0x1092
    imul word [bp + 0x4]             ; 0x1095
    add ax, 0x5bf4                   ; 0x1098
    push ax                          ; 0x109b
    call ds_dispatch_fa90            ; 0x109c
    pop cx                           ; 0x109f
    mov cx, 6                        ; 0x10a0
    imul cx                          ; 0x10a3
    mov cx, data_0002                ; 0x10a5
    cwd                              ; 0x10a8
    idiv cx                          ; 0x10a9
    mov cx, ax                       ; 0x10ab
    mov ax, 0x28                     ; 0x10ad
    sub ax, cx                       ; 0x10b0
    push ax                          ; 0x10b2
    call ds_dispatch_e809            ; 0x10b3
    add sp, byte 4                   ; 0x10b6
    mov ax, 0                        ; 0x10b9
    push ax                          ; 0x10bc
    mov ax, 0x248                    ; 0x10bd
    imul word [bp + 0x4]             ; 0x10c0
    add ax, 0x5bf4                   ; 0x10c3
    push ax                          ; 0x10c6
    call ds_dispatch_e84e            ; 0x10c7
    add sp, byte 4                   ; 0x10ca
    mov ax, 0                        ; 0x10cd
    push ax                          ; 0x10d0
    mov ax, 1                        ; 0x10d1
    push ax                          ; 0x10d4
    call ds_dispatch_e823            ; 0x10d5
    add sp, byte 4                   ; 0x10d8
    mov ax, 6                        ; 0x10db
    push ax                          ; 0x10de
    mov ax, 0x5a                     ; 0x10df
    push ax                          ; 0x10e2
    call ds_dispatch_e809            ; 0x10e3
    add sp, byte 4                   ; 0x10e6
    lea ax, word [bp - 0x0058]       ; 0x10e9
    push ax                          ; 0x10ec
    mov ax, 0x248                    ; 0x10ed
    imul word [bp + 0x4]             ; 0x10f0
    mov bx, ax                       ; 0x10f3
    mov al, byte [bx + 0x5e2c]       ; 0x10f5
    sub ah, ah                       ; 0x10f9
    add ax, 0x8c                     ; 0x10fb
    push ax                          ; 0x10fe
    call ds_dispatch_b53b            ; 0x10ff
    add sp, byte 4                   ; 0x1102
    mov ax, 0                        ; 0x1105
    push ax                          ; 0x1108
    mov al, byte [bp - 0x0058]       ; 0x1109
    sub ah, ah                       ; 0x110c
    push ax                          ; 0x110e
    call ds_dispatch_e830            ; 0x110f
    add sp, byte 4                   ; 0x1112
    mov ax, 0                        ; 0x1115
    push ax                          ; 0x1118
    mov ax, 0x2d                     ; 0x1119
    push ax                          ; 0x111c
    call ds_dispatch_e830            ; 0x111d
    add sp, byte 4                   ; 0x1120
    lea ax, word [bp - 0x0058]       ; 0x1123
    push ax                          ; 0x1126
    mov ax, 0x248                    ; 0x1127
    imul word [bp + 0x4]             ; 0x112a
    mov bx, ax                       ; 0x112d
    mov al, byte [bx + 0x5e2b]       ; 0x112f
    sub ah, ah                       ; 0x1133
    add ax, strict word 0x64         ; 0x1135
    push ax                          ; 0x1138
    call ds_dispatch_b53b            ; 0x1139
    add sp, byte 4                   ; 0x113c
    mov ax, 0                        ; 0x113f
    push ax                          ; 0x1142
    lea ax, word [bp - 0x0058]       ; 0x1143
    push ax                          ; 0x1146
    call ds_dispatch_e84e            ; 0x1147
    add sp, byte 4                   ; 0x114a
    mov ax, 0                        ; 0x114d
    push ax                          ; 0x1150
    mov ax, 0x84                     ; 0x1151
    push ax                          ; 0x1154
    call ds_dispatch_e823            ; 0x1155
    add sp, byte 4                   ; 0x1158
    mov ax, 0xc                      ; 0x115b
    push ax                          ; 0x115e
    mov ax, 0x5a                     ; 0x115f
    push ax                          ; 0x1162
    call ds_dispatch_e809            ; 0x1163
    add sp, byte 4                   ; 0x1166
    lea ax, word [bp - 0x0058]       ; 0x1169
    push ax                          ; 0x116c
    mov ax, 0x248                    ; 0x116d
    imul word [bp + 0x4]             ; 0x1170
    mov bx, ax                       ; 0x1173
    mov al, byte [bx + 0x5e2d]       ; 0x1175
    sub ah, ah                       ; 0x1179
    add ax, strict word 0x78         ; 0x117b
    push ax                          ; 0x117e
    call ds_dispatch_b53b            ; 0x117f
    add sp, byte 4                   ; 0x1182
    mov ax, 0                        ; 0x1185
    push ax                          ; 0x1188
    lea ax, word [bp - 0x0058]       ; 0x1189
    push ax                          ; 0x118c
    call ds_dispatch_e84e            ; 0x118d
    add sp, byte 4                   ; 0x1190
    mov ax, 0x12                     ; 0x1193
    push ax                          ; 0x1196
    mov ax, 0x5a                     ; 0x1197
    push ax                          ; 0x119a
    call ds_dispatch_e809            ; 0x119b
    add sp, byte 4                   ; 0x119e
    lea ax, word [bp - 0x0058]       ; 0x11a1
    push ax                          ; 0x11a4
    mov ax, 0xc8                     ; 0x11a5
    push ax                          ; 0x11a8
    call ds_dispatch_b53b            ; 0x11a9
    add sp, byte 4                   ; 0x11ac
    mov ax, 0                        ; 0x11af
    push ax                          ; 0x11b2
    lea ax, word [bp - 0x0058]       ; 0x11b3
    push ax                          ; 0x11b6
    call ds_dispatch_e84e            ; 0x11b7
    add sp, byte 4                   ; 0x11ba
    mov ax, 0                        ; 0x11bd
    push ax                          ; 0x11c0
    mov ax, 4                        ; 0x11c1
    push ax                          ; 0x11c4
    mov ax, 0x248                    ; 0x11c5
    imul word [bp + 0x4]             ; 0x11c8
    mov bx, ax                       ; 0x11cb
    push word [bx + 0x5c18]          ; 0x11cd
    call ds_dispatch_b2e7            ; 0x11d1
    add sp, byte 6                   ; 0x11d4
    mov ax, 0x248                    ; 0x11d7
    imul word [bp + 0x4]             ; 0x11da
    mov bx, ax                       ; 0x11dd
    mov ax, word [bx + 0x5bfc]       ; 0x11df
    mov dx, word [bx + 0x5bfe]       ; 0x11e3
    mov cx, 0x16d                    ; 0x11e7
    mov bx, 0                        ; 0x11ea
    call ds_dispatch_f99f            ; 0x11ed
    add ax, strict word 0xffee       ; 0x11f0
    adc dx, byte 0xff                ; 0x11f3
    mov cx, 4                        ; 0x11f6
    mov bx, 0                        ; 0x11f9
    call ds_dispatch_f99f            ; 0x11fc
    push ax                          ; 0x11ff
    push dx                          ; 0x1200
    mov ax, 0x248                    ; 0x1201
    imul word [bp + 0x4]             ; 0x1204
    mov bx, ax                       ; 0x1207
    mov ax, word [bx + 0x5c1a]       ; 0x1209
    cwd                              ; 0x120d
    mov cx, ax                       ; 0x120e
    mov bx, dx                       ; 0x1210
    pop dx                           ; 0x1212
    pop ax                           ; 0x1213
    add ax, cx                       ; 0x1214
    adc dx, bx                       ; 0x1216
    mov cx, ax                       ; 0x1218
    mov bx, dx                       ; 0x121a
    add ax, strict word 0xffff       ; 0x121c
    adc dx, byte 0xff                ; 0x121f
    mov cx, ax                       ; 0x1222
    mov bx, dx                       ; 0x1224
    mov ax, 0x14                     ; 0x1226
    mov dx, 0                        ; 0x1229
    sub ax, cx                       ; 0x122c
    sbb dx, bx                       ; 0x122e
    push ax                          ; 0x1230
    push dx                          ; 0x1231
    mov ax, 0x248                    ; 0x1232
    imul word [bp + 0x4]             ; 0x1235
    mov bx, ax                       ; 0x1238
    mov al, byte [bx + 0x5d67]       ; 0x123a
    sub ah, ah                       ; 0x123e
    cwd                              ; 0x1240
    mov cx, ax                       ; 0x1241
    mov bx, dx                       ; 0x1243
    pop dx                           ; 0x1245
