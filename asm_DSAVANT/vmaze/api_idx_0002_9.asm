api_idx_0002_9:
    mov ax, 0xfffe                   ; 0x110e
    call aztec_csav                  ; 0x1111
    call loc_676c                    ; 0x1114
    push word [bp + 0x4]             ; 0x1117
    call api_idx_0050                ; 0x111a
    pop cx                           ; 0x111d
    mov word [bp - 0x0002], 0        ; 0x111e
    jmp short @..api_idx_0002_9.l2   ; 0x1123
@..api_idx_0002_9.l1:
    mov ax, 2                        ; 0x1125
    push ax                          ; 0x1128
    push word [bp - 0x0002]          ; 0x1129
    call loc_10b0                    ; 0x112c
    add sp, byte 4                   ; 0x112f
    inc word [bp - 0x0002]           ; 0x1132
@..api_idx_0002_9.l2:
    mov ax, word [bp - 0x0002]       ; 0x1135
    cmp ax, word [bss_69c8]          ; 0x1138
    jl short @..api_idx_0002_9.l1    ; 0x113c
    mov ax, word [bss_905a]          ; 0x113e
    shl ax, 1                        ; 0x1141
    push ax                          ; 0x1143
    call api_idx_0006_2              ; 0x1144
    pop cx                           ; 0x1147
    mov ax, 0x98                     ; 0x1148
    push ax                          ; 0x114b
    mov ax, 0x13f                    ; 0x114c
    push ax                          ; 0x114f
    mov ax, 0x92                     ; 0x1150
    push ax                          ; 0x1153
    mov ax, 0                        ; 0x1154
    push ax                          ; 0x1157
    call ds_loc_3b21                 ; 0x1158
    add sp, byte 8                   ; 0x115b
    mov word [bss_830a], 8           ; 0x115e
    ret                              ; 0x1164
loc_1165:
    mov ax, 0                        ; 0x1165
    call aztec_csav                  ; 0x1168
    mov ax, word [bp + 0x4]          ; 0x116b
    jmp short @..loc_1165.l5         ; 0x116e
@..loc_1165.l1:
    mov ax, 4                        ; 0x1170
    push ax                          ; 0x1173
    mov ax, word [bp + 0x6]          ; 0x1174
    mov cx, 6                        ; 0x1177
    shl ax, cl                       ; 0x117a
    mov cx, word [bp + 0xa]          ; 0x117c
    shl cx, 1                        ; 0x117f
    shl cx, 1                        ; 0x1181
    shl cx, 1                        ; 0x1183
    add ax, cx                       ; 0x1185
    add ax, word [bp + 0x8]          ; 0x1187
    push ax                          ; 0x118a
    mov ax, word [bss_0e14]          ; 0x118b
    add ax, 0x90                     ; 0x118e
    push ax                          ; 0x1191
    call ds_leaf_loc_3f3d            ; 0x1192
    add sp, byte 6                   ; 0x1195
    ret                              ; 0x1198
@..loc_1165.l2:
    mov ax, 4                        ; 0x1199
    push ax                          ; 0x119c
    mov ax, word [bp + 0x6]          ; 0x119d
    mov cx, 6                        ; 0x11a0
    shl ax, cl                       ; 0x11a3
    mov cx, word [bp + 0xa]          ; 0x11a5
    shl cx, 1                        ; 0x11a8
    shl cx, 1                        ; 0x11aa
    shl cx, 1                        ; 0x11ac
    add ax, cx                       ; 0x11ae
    add ax, word [bp + 0x8]          ; 0x11b0
    push ax                          ; 0x11b3
    mov ax, word [bss_0e14]          ; 0x11b4
    add ax, 0x290                    ; 0x11b7
    push ax                          ; 0x11ba
    call ds_leaf_loc_3f3d            ; 0x11bb
    add sp, byte 6                   ; 0x11be
    ret                              ; 0x11c1
@..loc_1165.l3:
    push word [bp + 0x6]             ; 0x11c2
    push word [bp + 0xa]             ; 0x11c5
    push word [bp + 0x8]             ; 0x11c8
    push word [bp + 0xe]             ; 0x11cb
    push word [bp + 0xc]             ; 0x11ce
    call loc_2d94                    ; 0x11d1
    add sp, byte 0x0a                ; 0x11d4
    ret                              ; 0x11d7
@..loc_1165.l4:
    push word [bp + 0x6]             ; 0x11d8
    push word [bp + 0xa]             ; 0x11db
    push word [bp + 0x8]             ; 0x11de
    push word [bp + 0xe]             ; 0x11e1
    push word [bp + 0xc]             ; 0x11e4
    call loc_2e0c                    ; 0x11e7
    add sp, byte 0x0a                ; 0x11ea
    ret                              ; 0x11ed
@..loc_1165.l5:
    cmp ax, strict word 0            ; 0x11ee
    jne short @..loc_1165.l6         ; 0x11f1
    jmp near @..loc_1165.l1          ; 0x11f3
@..loc_1165.l6:
    cmp ax, strict word 1            ; 0x11f6
    je short @..loc_1165.l2          ; 0x11f9
    cmp ax, strict word 2            ; 0x11fb
    je short @..loc_1165.l3          ; 0x11fe
    cmp ax, strict word 3            ; 0x1200
    je short @..loc_1165.l4          ; 0x1203
    ret                              ; 0x1205
