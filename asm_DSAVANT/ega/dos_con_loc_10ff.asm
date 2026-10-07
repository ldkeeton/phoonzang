dos_con_loc_10ff:
    mov ax, cs                       ; 0x10ff
    mov ds, ax                       ; 0x1101
    mov dx, 0x135d                   ; 0x1103
    mov ah, 9                        ; 0x1106
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x110a
    int 0x21 ; DOS function dispatcher
loc_110f:
    mov ax, word [cs:data_11cb]      ; 0x110f
    inc ax                           ; 0x1113
    mov word [cs:data_11cb], ax      ; 0x1114
    mov bx, word [bp - 0x0002]       ; 0x1118
    mov word [cs:bx], ax             ; 0x111b
    dec ax                           ; 0x111e
    mov cl, 2                        ; 0x111f
    shl ax, cl                       ; 0x1121
    mov bx, 0x10fb                   ; 0x1123
    add bx, ax                       ; 0x1126
    mov word [bp - 0x0002], bx       ; 0x1128
    mov ax, word [cs:data_11cd]      ; 0x112b
    mov word [cs:bx], ax             ; 0x112f
    mov ax, word [bp + 0x10]         ; 0x1132
    or ax, ax                        ; 0x1135
    je short loc_113c                ; 0x1137
    jmp near loc_12bb                ; 0x1139
loc_113c:
    cld                              ; 0x113c
    mov cx, 0x1000                   ; 0x113d
    mov bx, word [cs:data_01e1]      ; 0x1140
    add bx, word [cs:data_11cd]      ; 0x1145
    mov ds, bx                       ; 0x114a
    xor dx, dx                       ; 0x114c
    mov bx, word [bp + 0xc]          ; 0x114e
    mov ah, 0x3f                     ; 0x1151
    int 0x21 ; DOS read file (handle)
    mov bx, 0                        ; 0x1155
    mov ax, word [bx]                ; 0x1158
    mov cx, 6                        ; 0x115a
    mul cx                           ; 0x115d
    add ax, strict word 4            ; 0x115f
    mov bx, word [bp - 0x0008]       ; 0x1162
    add bx, strict word 0x27d        ; 0x1165
    mov word [cs:bx], ax             ; 0x1169
    mov bx, ax                       ; 0x116c
    sub bx, byte 6                   ; 0x116e
    mov cl, byte [bx + 0x5]          ; 0x1171
    mov al, byte [bx + 0x4]          ; 0x1174
    mul cl                           ; 0x1177
    mov cl, 3                        ; 0x1179
    shl ax, cl                       ; 0x117b
    mov cx, word [bx + 0x2]          ; 0x117d
    add ax, cx                       ; 0x1180
    push ax                          ; 0x1182
    xor dx, dx                       ; 0x1183
    mov ax, word [bx]                ; 0x1185
    mov cx, 0x10                     ; 0x1187
    mul cx                           ; 0x118a
    pop cx                           ; 0x118c
    add ax, cx                       ; 0x118d
    adc dx, byte 0                   ; 0x118f
    push ax                          ; 0x1192
    push dx                          ; 0x1193
    sub ax, 0x1000                   ; 0x1194
    sbb dx, byte 0                   ; 0x1197
    mov word [bp - 0x0008], ax       ; 0x119a
    mov word [bp - 0x0006], dx       ; 0x119d
    pop dx                           ; 0x11a0
    pop ax                           ; 0x11a1
    add ax, strict word 0xf          ; 0x11a2
    adc dx, byte 0                   ; 0x11a5
    mov bx, 0x10                     ; 0x11a8
    div bx                           ; 0x11ab
    mov bx, word [bp - 0x0002]       ; 0x11ad
    mov word [cs:bx + 0x2], ax       ; 0x11b0
    add word [cs:data_11cd], ax      ; 0x11b4
    mov ax, word [cs:data_11cd]      ; 0x11b9
    cmp ax, 0x4180                   ; 0x11bd
    jae short loc_1221               ; 0x11c0
    mov ax, ds                       ; 0x11c2
    add ax, 0x100                    ; 0x11c4
    mov ds, ax                       ; 0x11c7
    mov dx, 0                        ; 0x11c9
loc_11cc:
    cmp word [bp - 0x0006], byte 0   ; 0x11cc
    je short loc_11fd                ; 0x11d0
    dec word [bp - 0x0006]           ; 0x11d2
    mov cx, 0x8000                   ; 0x11d5
    xor dx, dx                       ; 0x11d8
    mov bx, word [bp + 0xc]          ; 0x11da
    mov ah, 0x3f                     ; 0x11dd
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x11e1
    add ax, 0x800                    ; 0x11e3
    mov ds, ax                       ; 0x11e6
    mov cx, 0x8000                   ; 0x11e8
    xor dx, dx                       ; 0x11eb
    mov bx, word [bp + 0xc]          ; 0x11ed
    mov ah, 0x3f                     ; 0x11f0
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x11f4
    add ax, 0x800                    ; 0x11f6
    mov ds, ax                       ; 0x11f9
    jmp short loc_11cc               ; 0x11fb
loc_11fd:
    mov cx, word [bp - 0x0008]       ; 0x11fd
    xor dx, dx                       ; 0x1200
    mov bx, word [bp + 0xc]          ; 0x1202
    mov ah, 0x3f                     ; 0x1205
    int 0x21 ; DOS read file (handle)
loc_1209:
    pop si                           ; 0x1209
    pop di                           ; 0x120a
    pop es                           ; 0x120b
    pop ds                           ; 0x120c
    mov sp, bp                       ; 0x120d
    pop bp                           ; 0x120f
    ret                              ; 0x1210
