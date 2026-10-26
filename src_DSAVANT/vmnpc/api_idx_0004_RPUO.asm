; auto-generated
api_idx_0004_RPUO:
    mov ax, 0xfffc                   ; 0x114d
    call aztec_csav                  ; 0x1150
    mov ax, dseg_90c2                ; 0x1153
    push ax                          ; 0x1156
    mov ax, 1                        ; 0x1157
    push ax                          ; 0x115a
    push ax                          ; 0x115b
    mov ax, 0x1a                     ; 0x115c
    push ax                          ; 0x115f
    mov ax, 0xc1                     ; 0x1160
    push ax                          ; 0x1163
    mov ax, 2                        ; 0x1164
    push ax                          ; 0x1167
    mov ax, 0xc6                     ; 0x1168
    push ax                          ; 0x116b
    mov ax, 7                        ; 0x116c
    push ax                          ; 0x116f
    mov ax, 0xc0                     ; 0x1170
    push ax                          ; 0x1173
    mov ax, 1                        ; 0x1174
    push ax                          ; 0x1177
    call api_idx_0004_MIJS           ; 0x1178
    add sp, byte 0x14                ; 0x117b
.back1:
    call poll_fullscreen_hotspot     ; 0x117e
    test ax, ax                      ; 0x1181
    jne short .forward1              ; 0x1183
    jmp short .back1                 ; 0x1185
.forward1:
    mov ax, 0xc6                     ; 0x1187
    push ax                          ; 0x118a
    mov ax, 7                        ; 0x118b
    push ax                          ; 0x118e
    mov ax, 0xc0                     ; 0x118f
    push ax                          ; 0x1192
    mov ax, 1                        ; 0x1193
    push ax                          ; 0x1196
    call gfx_show_area               ; 0x1197
    add sp, byte 8                   ; 0x119a
    ret                              ; 0x119d
