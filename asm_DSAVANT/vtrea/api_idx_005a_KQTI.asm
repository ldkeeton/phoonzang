; auto-generated
api_idx_005a_KQTI:
    mov ax, 0xffa6                   ; 0x10fb
    call aztec_csav                  ; 0x10fe
    cmp word [bp + 0x8], byte 0      ; 0x1101
    je short @..api_idx_005a_KQTI.l1 ; 0x1105
    mov ax, 0x64                     ; 0x1107
    push ax                          ; 0x110a
    call ds_app_GGUI                 ; 0x110b
    pop cx                           ; 0x110e
    push ax                          ; 0x110f
    mov ax, 0x248                    ; 0x1110
    imul word [bp + 0x4]             ; 0x1113
    add ax, word [bp + 0x8]          ; 0x1116
    mov bx, ax                       ; 0x1119
    mov al, byte [bx + 0x5d9c]       ; 0x111b
    sub ah, ah                       ; 0x111f
    mov cx, ax                       ; 0x1121
    pop ax                           ; 0x1123
    cmp ax, cx                       ; 0x1124
    jg short @..api_idx_005a_KQTI.l1 ; 0x1126
    jmp near @..api_idx_005a_KQTI.l5 ; 0x1128
@..api_idx_005a_KQTI.l1:
    mov ax, 0x248                    ; 0x112b
    imul word [bp + 0x4]             ; 0x112e
    mov bx, ax                       ; 0x1131
    mov al, byte [bx + 0x5e2f]       ; 0x1133
    sub ah, ah                       ; 0x1137
    cmp ax, word [bp + 0xa]          ; 0x1139
    jl short @..api_idx_005a_KQTI.l2 ; 0x113c
    jmp near @..api_idx_005a_KQTI.l5 ; 0x113e
@..api_idx_005a_KQTI.l2:
    mov al, byte [bp + 0xa]          ; 0x1141
    mov byte [bx + 0x5e2f], al       ; 0x1144
    cmp word [bp + 0xa], byte 3      ; 0x1148
    jl short @..api_idx_005a_KQTI.l3 ; 0x114c
    mov word [bx + 0x5c0c], 0        ; 0x114e
    mov word [bx + 0x5c10], 0        ; 0x1154
@..api_idx_005a_KQTI.l3:
    lea ax, word [bp - 0x0050]       ; 0x115a
    push ax                          ; 0x115d
    push word [bp + 0x6]             ; 0x115e
    call ds_app_mem_VKHV             ; 0x1161
    add sp, byte 4                   ; 0x1164
    mov ax, 0                        ; 0x1167
    push ax                          ; 0x116a
    push ax                          ; 0x116b
    mov ax, 0x41                     ; 0x116c
    push ax                          ; 0x116f
    mov ax, 1                        ; 0x1170
    push ax                          ; 0x1173
    mov ax, 0x90b1                   ; 0x1174
    push ax                          ; 0x1177
    mov ax, 0x90b0                   ; 0x1178
    push ax                          ; 0x117b
    lea ax, word [bp - 0x0050]       ; 0x117c
    push ax                          ; 0x117f
    push word [bp + 0x4]             ; 0x1180
    call api_idx_0002_NVLQ           ; 0x1183
    add sp, byte 0x10                ; 0x1186
    mov ax, 0x248                    ; 0x1189
    imul word [bp + 0x4]             ; 0x118c
    mov bx, ax                       ; 0x118f
    cmp byte [bx + 0x5e2f], 3        ; 0x1191
    jb short @..api_idx_005a_KQTI.l4 ; 0x1196
    mov al, byte [bx + 0x5e2c]       ; 0x1198
    sub ah, ah                       ; 0x119c
    add ax, strict word 8            ; 0x119e
    push ax                          ; 0x11a1
    call ds_app_IPOK                 ; 0x11a2
    pop cx                           ; 0x11a5
@..api_idx_005a_KQTI.l4:
    mov ax, 1                        ; 0x11a6
    push ax                          ; 0x11a9
    push word [bp + 0x4]             ; 0x11aa
    call ds_app_PIKI                 ; 0x11ad
    add sp, byte 4                   ; 0x11b0
    push word [bss_905a]             ; 0x11b3
    call api_idx_0004_UTMO           ; 0x11b7
    pop cx                           ; 0x11ba
@..api_idx_005a_KQTI.l5:
    ret                              ; 0x11bb
