; auto-generated
api_idx_000a_PKVL:
    mov ax, 0xfff6                   ; 0x0f95
    call aztec_csav                  ; 0x0f98
    mov ax, word [bp + 0x4]          ; 0x0f9b
    shl ax, 1                        ; 0x0f9e
    mov bx, ax                       ; 0x0fa0
    mov bx, word [bx + bss_8482]     ; 0x0fa2
    cmp byte [bx + 0x19f], 0xff      ; 0x0fa6
    jne short @..api_idx_000a_PKVL.l1 ; 0x0fab
    ret                              ; 0x0fad
@..api_idx_000a_PKVL.l1:
    mov al, byte [bx + 0x19f]        ; 0x0fae
    cbw                              ; 0x0fb2
    mov word [bp - 0x0002], ax       ; 0x0fb3
    mov word [bp - 0x000a], 0        ; 0x0fb6
    cmp word [bp + 0xa], byte 0xff   ; 0x0fbb
    jne short @..api_idx_000a_PKVL.l2 ; 0x0fbf
    mov word [bp + 0xa], 0           ; 0x0fc1
    mov cx, 0x15e                    ; 0x0fc6
    imul cx                          ; 0x0fc9
    mov bx, ax                       ; 0x0fcb
    mov al, byte [bx + bss_6b75]     ; 0x0fcd
    sub ah, ah                       ; 0x0fd1
    cmp ax, 0xfe                     ; 0x0fd3
    je short @..api_idx_000a_PKVL.l2 ; 0x0fd6
    mov word [bp - 0x000a], 1        ; 0x0fd8
@..api_idx_000a_PKVL.l2:
    mov ax, 0x15e                    ; 0x0fdd
    imul word [bp - 0x0002]          ; 0x0fe0
    add ax, word [bp + 0xa]          ; 0x0fe3
    mov bx, ax                       ; 0x0fe6
    mov al, byte [bx + bss_6a1a]     ; 0x0fe8
    sub ah, ah                       ; 0x0fec
    mov word [bp - 0x0004], ax       ; 0x0fee
    jmp near @..api_idx_000a_PKVL.l10 ; 0x0ff1
@..api_idx_000a_PKVL.l3:
    mov ax, 0x15e                    ; 0x0ff4
    imul word [bp - 0x0002]          ; 0x0ff7
    add ax, word [bp - 0x0004]       ; 0x0ffa
    mov bx, ax                       ; 0x0ffd
    mov al, byte [bx + bss_6a22]     ; 0x0fff
    sub ah, ah                       ; 0x1003
    mov word [bp - 0x0006], ax       ; 0x1005
    cmp word [bp + 0xa], byte 0      ; 0x1008
    je short @..api_idx_000a_PKVL.l4 ; 0x100c
    jmp near @..api_idx_000a_PKVL.l8 ; 0x100e
@..api_idx_000a_PKVL.l4:
    mov ax, 0x15e                    ; 0x1011
    imul word [bp - 0x0002]          ; 0x1014
    mov bx, ax                       ; 0x1017
    cmp byte [bx + bss_6b75], 0      ; 0x1019
    jbe short @..api_idx_000a_PKVL.l8 ; 0x101e
    mov al, byte [bx + bss_6b75]     ; 0x1020
    sub ah, ah                       ; 0x1024
    cmp ax, 0xfe                     ; 0x1026
    jge short @..api_idx_000a_PKVL.l8 ; 0x1029
    cmp ax, 0xfd                     ; 0x102b
    jne short @..api_idx_000a_PKVL.l5 ; 0x102e
    mov word [bp - 0x0006], 0        ; 0x1030
    mov word [bp - 0x0008], 0        ; 0x1035
    jmp short @..api_idx_000a_PKVL.l7 ; 0x103a
@..api_idx_000a_PKVL.l5:
    mov word [bp - 0x0008], ax       ; 0x103c
    mov ax, word [bp + 0x4]          ; 0x103f
    shl ax, 1                        ; 0x1042
    mov bx, ax                       ; 0x1044
    mov bx, word [bx + bss_8490]     ; 0x1046
    cmp byte [bx + 0xd7], 0x47       ; 0x104a
    jne short @..api_idx_000a_PKVL.l7 ; 0x104f
    cmp word [bss_90ba], byte 1      ; 0x1051
    jne short @..api_idx_000a_PKVL.l6 ; 0x1056
    mov ax, word [bss_8460]          ; 0x1058
    mov cx, 0x100                    ; 0x105b
    cwd                              ; 0x105e
    idiv cx                          ; 0x105f
    mov word [bp - 0x0006], ax       ; 0x1061
    mov word [bp - 0x0008], dx       ; 0x1064
    jmp short @..api_idx_000a_PKVL.l7 ; 0x1067
@..api_idx_000a_PKVL.l6:
    cmp word [bp - 0x000a], byte 0   ; 0x1069
    jne short @..api_idx_000a_PKVL.l7 ; 0x106d
    mov word [bp - 0x0006], 1        ; 0x106f
    mov word [bp - 0x0008], 0xb      ; 0x1074
@..api_idx_000a_PKVL.l7:
    jmp short @..api_idx_000a_PKVL.l9 ; 0x1079
@..api_idx_000a_PKVL.l8:
    mov ax, 0x15e                    ; 0x107b
    imul word [bp - 0x0002]          ; 0x107e
    add ax, word [bp - 0x0004]       ; 0x1081
    mov bx, ax                       ; 0x1084
    mov al, byte [bx + bss_6a2c]     ; 0x1086
    sub ah, ah                       ; 0x108a
    push ax                          ; 0x108c
    call ds_app_PUNN                 ; 0x108d
    pop cx                           ; 0x1090
    add word [bp - 0x0006], ax       ; 0x1091
    mov ax, 0x15e                    ; 0x1094
    imul word [bp - 0x0002]          ; 0x1097
    add ax, word [bp - 0x0006]       ; 0x109a
    mov bx, ax                       ; 0x109d
    mov al, byte [bx + bss_6a40]     ; 0x109f
    sub ah, ah                       ; 0x10a3
    mov word [bp - 0x0008], ax       ; 0x10a5
    cmp word [bp - 0x000a], byte 0   ; 0x10a8
    je short @..api_idx_000a_PKVL.l9 ; 0x10ac
    mov al, byte [bx + bss_6a4a]     ; 0x10ae
    sub ah, ah                       ; 0x10b2
    push ax                          ; 0x10b4
    call ds_app_PUNN                 ; 0x10b5
    pop cx                           ; 0x10b8
    add word [bp - 0x0008], ax       ; 0x10b9
@..api_idx_000a_PKVL.l9:
    mov al, byte [bp + 0xa]          ; 0x10bc
    push ax                          ; 0x10bf
    mov ax, 3                        ; 0x10c0
    imul word [bp + 0x6]             ; 0x10c3
    mov cx, ax                       ; 0x10c6
    add ax, word [bp + 0x8]          ; 0x10c8
    mov bx, ax                       ; 0x10cb
    pop ax                           ; 0x10cd
    mov byte [bx + bss_8430], al     ; 0x10ce
    mov al, byte [bp - 0x0006]       ; 0x10d2
    push ax                          ; 0x10d5
    mov ax, 0x5a                     ; 0x10d6
    imul word [bp + 0x6]             ; 0x10d9
    mov cx, ax                       ; 0x10dc
    mov ax, 0x1e                     ; 0x10de
    imul word [bp + 0x8]             ; 0x10e1
    mov dx, ax                       ; 0x10e4
    add cx, ax                       ; 0x10e6
    mov ax, 3                        ; 0x10e8
    imul word [bp - 0x0004]          ; 0x10eb
    mov dx, ax                       ; 0x10ee
    add cx, ax                       ; 0x10f0
    mov bx, cx                       ; 0x10f2
    pop ax                           ; 0x10f4
    mov byte [bx + bss_8322], al     ; 0x10f5
    mov al, byte [bp - 0x0008]       ; 0x10f9
    mov byte [bx - 0x7cdd], al       ; 0x10fc
    mov ax, 0x15e                    ; 0x1100
    imul word [bp - 0x0002]          ; 0x1103
    mov cx, word [bp - 0x0008]       ; 0x1106
    shl cx, 1                        ; 0x1109
    shl cx, 1                        ; 0x110b
    add ax, cx                       ; 0x110d
    mov bx, ax                       ; 0x110f
    mov al, byte [bx + bss_6ac1]     ; 0x1111
    inc al                           ; 0x1115
    push ax                          ; 0x1117
    mov ax, 0x5a                     ; 0x1118
    imul word [bp + 0x6]             ; 0x111b
    mov cx, ax                       ; 0x111e
    mov ax, 0x1e                     ; 0x1120
    imul word [bp + 0x8]             ; 0x1123
    mov dx, ax                       ; 0x1126
    add cx, ax                       ; 0x1128
    mov ax, 3                        ; 0x112a
    imul word [bp - 0x0004]          ; 0x112d
    mov dx, ax                       ; 0x1130
    add cx, ax                       ; 0x1132
    mov bx, cx                       ; 0x1134
    pop ax                           ; 0x1136
    mov byte [bx - 0x7cdc], al       ; 0x1137
    mov al, byte [bx - 0x7cdc]       ; 0x113b
    sub ah, ah                       ; 0x113f
    mov cx, ax                       ; 0x1141
    push cx                          ; 0x1143
    mov ax, 0x15e                    ; 0x1144
    imul word [bp - 0x0002]          ; 0x1147
    mov cx, word [bp - 0x0008]       ; 0x114a
    shl cx, 1                        ; 0x114d
    shl cx, 1                        ; 0x114f
    add ax, cx                       ; 0x1151
    mov bx, ax                       ; 0x1153
    mov al, byte [bx + 0x6ac2]       ; 0x1155
    sub ah, ah                       ; 0x1159
    push ax                          ; 0x115b
    call ds_app_PUNN                 ; 0x115c
    pop cx                           ; 0x115f
    pop cx                           ; 0x1160
    add ax, cx                       ; 0x1161
    push ax                          ; 0x1163
    mov ax, 0x5a                     ; 0x1164
    imul word [bp + 0x6]             ; 0x1167
    mov cx, ax                       ; 0x116a
    mov ax, 0x1e                     ; 0x116c
    imul word [bp + 0x8]             ; 0x116f
    mov dx, ax                       ; 0x1172
    add cx, ax                       ; 0x1174
    mov ax, 3                        ; 0x1176
    imul word [bp - 0x0004]          ; 0x1179
    mov dx, ax                       ; 0x117c
    add cx, ax                       ; 0x117e
    mov bx, cx                       ; 0x1180
    pop ax                           ; 0x1182
    mov byte [bx - 0x7cdc], al       ; 0x1183
    inc word [bp - 0x0004]           ; 0x1187
@..api_idx_000a_PKVL.l10:
    mov ax, 0x15e                    ; 0x118a
    imul word [bp - 0x0002]          ; 0x118d
    add ax, word [bp + 0xa]          ; 0x1190
    mov bx, ax                       ; 0x1193
    mov al, byte [bx + bss_6a1a]     ; 0x1195
    sub ah, ah                       ; 0x1199
    push ax                          ; 0x119b
    mov al, byte [bx + bss_6a1e]     ; 0x119c
    sub ah, ah                       ; 0x11a0
    mov cx, ax                       ; 0x11a2
    pop ax                           ; 0x11a4
    add ax, cx                       ; 0x11a5
    cmp ax, word [bp - 0x0004]       ; 0x11a7
    jle short @..api_idx_000a_PKVL.l11 ; 0x11aa
    jmp near @..api_idx_000a_PKVL.l3 ; 0x11ac
@..api_idx_000a_PKVL.l11:
    ret                              ; 0x11af
