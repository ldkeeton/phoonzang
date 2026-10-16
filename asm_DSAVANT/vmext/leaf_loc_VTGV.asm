; auto-generated
leaf_loc_VTGV:
    mov ax, 0x248                    ; 0x10c4
    imul word [bp - 0x0006]          ; 0x10c7
    mov bx, ax                       ; 0x10ca
    cmp byte [bx + 0x5e2f], 2        ; 0x10cc
    jne short @..leaf_loc_VTGV.l1    ; 0x10d1
    mov byte [bx + 0x5e2f], 0        ; 0x10d3
@..leaf_loc_VTGV.l1:
    mov byte [bx + 0x5d60], 0        ; 0x10d8
    jmp near loc_HPTS                ; 0x10dd
loc_OUIV:
    mov word [bp - 0x0004], 1        ; 0x10e0
loc_TSSK:
    mov ax, word [bp - 0x0004]       ; 0x10e5
    cmp ax, strict word 1            ; 0x10e8
    je short loc_HJQR                ; 0x10eb
    cmp ax, strict word 2            ; 0x10ed
    je short loc_HJQR                ; 0x10f0
    cmp ax, strict word 4            ; 0x10f2
    je short loc_HJQR                ; 0x10f5
    cmp ax, strict word 8            ; 0x10f7
    je short loc_HJQR                ; 0x10fa
    cmp ax, strict word 9            ; 0x10fc
    jne short loc_ISQL               ; 0x10ff
loc_HJQR:
    mov ax, 0x248                    ; 0x1101
    imul word [bp - 0x0006]          ; 0x1104
    mov cx, ax                       ; 0x1107
    mov ax, word [bp - 0x0004]       ; 0x1109
    add cx, ax                       ; 0x110c
    mov bx, cx                       ; 0x110e
    mov byte [bx + 0x5d5a], 0        ; 0x1110
loc_ISQL:
    inc word [bp - 0x0004]           ; 0x1115
    mov ax, word [bp - 0x0004]       ; 0x1118
    cmp ax, strict word 9            ; 0x111b
    jle short loc_TSSK               ; 0x111e
    jmp near loc_HPTS                ; 0x1120
loc_MNML:
    mov ax, 0x248                    ; 0x1123
    imul word [bp - 0x0006]          ; 0x1126
    mov bx, ax                       ; 0x1129
    mov byte [bx + 0x5e2f], 0        ; 0x112b
    mov ax, word [bx + 0x5c0e]       ; 0x1130
    mov word [bx + 0x5c0c], ax       ; 0x1134
    mov ax, word [bx + 0x5c12]       ; 0x1138
    mov word [bx + 0x5c10], ax       ; 0x113c
    jmp near loc_HPTS                ; 0x1140
loc_TIRQ:
    mov ax, 0x248                    ; 0x1143
    imul word [bp - 0x0006]          ; 0x1146
    mov bx, ax                       ; 0x1149
    push word [bx + 0x5c12]          ; 0x114b
    mov ax, 0                        ; 0x114f
    push ax                          ; 0x1152
    mov ax, word [bx + 0x5c10]       ; 0x1153
    sub ax, word [bp - 0x000e]       ; 0x1157
    push ax                          ; 0x115a
    call clamp                       ; 0x115b
    add sp, byte 6                   ; 0x115e
    push ax                          ; 0x1161
    mov ax, 0x248                    ; 0x1162
    imul word [bp - 0x0006]          ; 0x1165
    mov bx, ax                       ; 0x1168
    pop ax                           ; 0x116a
    mov word [bx + 0x5c10], ax       ; 0x116b
    cmp ax, strict word 0            ; 0x116f
    jg short loc_LPSH_1199           ; 0x1172
    mov al, byte [bx + 0x5d5c]       ; 0x1174
    sub ah, ah                       ; 0x1178
    mov cx, ax                       ; 0x117a
    push cx                          ; 0x117c
    mov ax, 6                        ; 0x117d
    push ax                          ; 0x1180
    call ds_app_PUNN                 ; 0x1181
    pop cx                           ; 0x1184
    pop cx                           ; 0x1185
    add ax, cx                       ; 0x1186
    add ax, strict word 6            ; 0x1188
    push ax                          ; 0x118b
    mov ax, 0x248                    ; 0x118c
    imul word [bp - 0x0006]          ; 0x118f
    mov bx, ax                       ; 0x1192
    pop ax                           ; 0x1194
    mov byte [bx + 0x5d5c], al       ; 0x1195
loc_LPSH_1199:
    jmp near loc_HPTS                ; 0x1199
