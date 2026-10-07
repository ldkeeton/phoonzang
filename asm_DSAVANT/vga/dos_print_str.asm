dos_print_str:
    push bp                          ; 0x0fb7
    mov bp, sp                       ; 0x0fb8
    sub sp, byte 0x0e                ; 0x0fba
    push ds                          ; 0x0fbd
    push es                          ; 0x0fbe
    push di                          ; 0x0fbf
    push si                          ; 0x0fc0
    mov ax, ds                       ; 0x0fc1
    mov es, ax                       ; 0x0fc3
    cld                              ; 0x0fc5
    mov ax, word [bp + 0xc]          ; 0x0fc6
    shl ax, 1                        ; 0x0fc9
    mov word [bp - 0x0004], ax       ; 0x0fcb
    mov bx, data_0bc6                ; 0x0fce
    add bx, ax                       ; 0x0fd1
    mov bx, word [cs:bx]             ; 0x0fd3
    or bx, bx                        ; 0x0fd6
    jne short @..dos_print_str.l1    ; 0x0fd8

    db 0x8c, 0xc8, 0x8e, 0xd8, 0xba, 0xea, 0x10, 0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21
    db 0x0d, 0x0a, 0x07
    db 'MAZE SET ERROR.', 0
    db 0x0a, 0x24

@..dos_print_str.l1:
    dec bx                           ; 0x0fff
    mov cl, 2                        ; 0x1000
    shl bx, cl                       ; 0x1002
    add bx, data_0bda                ; 0x1004
    mov ax, word [cs:bx]             ; 0x1008
    mov word [bp - 0x0002], ax       ; 0x100b
    mov ax, word [bp + 0x12]         ; 0x100e
    cmp ax, strict word 0xffff       ; 0x1011
    je short @..dos_print_str.l2     ; 0x1014
    jmp near @..dos_print_str.l12    ; 0x1016
@..dos_print_str.l2:
    mov bx, word [bp + 0xe]          ; 0x1019
    mov ax, 5                        ; 0x101c
    mul bx                           ; 0x101f
    mov bx, word [bp - 0x0004]       ; 0x1021
    add bx, strict word 0x27d        ; 0x1024
    add ax, word [cs:bx]             ; 0x1028
    mov si, ax                       ; 0x102b
    mov ax, word [cs:data_01e5]      ; 0x102d
    mov es, ax                       ; 0x1031
    mov ax, word [cs:data_01e1]      ; 0x1033
    add ax, word [bp - 0x0002]       ; 0x1037
    mov ds, ax                       ; 0x103a
    xor ah, ah                       ; 0x103c
    mov al, byte [si + 0x4]          ; 0x103e
    or ax, ax                        ; 0x1041
    jne short @..dos_print_str.l3    ; 0x1043
    jmp near @..dos_print_str.l22    ; 0x1045
@..dos_print_str.l3:
    mov cl, 3                        ; 0x1048
    shl ax, cl                       ; 0x104a
    mov word [bp - 0x0004], ax       ; 0x104c
    mov al, byte [si + 0x1]          ; 0x104f
    cbw                              ; 0x1052
    mov bl, byte [si + 0x3]          ; 0x1053
    xor bh, bh                       ; 0x1056
    add ax, bx                       ; 0x1058
    mov cl, 3                        ; 0x105a
    shl ax, cl                       ; 0x105c
    mov di, ax                       ; 0x105e
    mov al, byte [si + 0x2]          ; 0x1060
    mov cx, 0x140                    ; 0x1063
    mul cx                           ; 0x1066
    add di, ax                       ; 0x1068
    mov al, byte [si]                ; 0x106a
    mov bl, 6                        ; 0x106c
    mul bl                           ; 0x106e
    add ax, word [cs:data_027b]      ; 0x1070
    mov bx, ax                       ; 0x1075
    xor ax, ax                       ; 0x1077
    mov al, byte [bx + 0x4]          ; 0x1079
    mov cl, 3                        ; 0x107c
    shl ax, cl                       ; 0x107e
    mov word [bp - 0x0006], ax       ; 0x1080
    mov ax, word [bx + 0x2]          ; 0x1083
    mov dl, byte [si + 0x3]          ; 0x1086
    xor dh, dh                       ; 0x1089
    shl dx, 1                        ; 0x108b
    shl dx, 1                        ; 0x108d
    shl dx, 1                        ; 0x108f
    add ax, dx                       ; 0x1091
    xor cx, cx                       ; 0x1093
    mov cl, byte [bx + 0x5]          ; 0x1095
    mov dx, ds                       ; 0x1098
    add dx, word [bx]                ; 0x109a
    mov ds, dx                       ; 0x109c
@..dos_print_str.l4:
    push cx                          ; 0x109e
    mov cx, word [bp - 0x0004]       ; 0x109f
    push si                          ; 0x10a2
    push ax                          ; 0x10a3
    push di                          ; 0x10a4
    xchg si, ax                      ; 0x10a5
    xor ah, ah                       ; 0x10a6
    cmp word [bp + 0x10], byte 0     ; 0x10a8
    je short @..dos_print_str.l10    ; 0x10ac
    cmp word [bp + 0x10], byte 2     ; 0x10ae
    je short @..dos_print_str.l8     ; 0x10b2
    cmp word [bp + 0x10], byte 3     ; 0x10b4
    je short @..dos_print_str.l6     ; 0x10b8
@..dos_print_str.l5:
    lodsb                            ; 0x10ba
    or al, byte [es:di]              ; 0x10bb
    stosb                            ; 0x10be
    loop @..dos_print_str.l5         ; 0x10bf
    jmp short @..dos_print_str.l11   ; 0x10c1
@..dos_print_str.l6:
    lodsb                            ; 0x10c3
    cmp al, 0xff                     ; 0x10c4
    je short @..dos_print_str.l7     ; 0x10c6
    mov byte [es:di], ah             ; 0x10c8
@..dos_print_str.l7:
    inc di                           ; 0x10cb
    loop @..dos_print_str.l6         ; 0x10cc
    jmp short @..dos_print_str.l11   ; 0x10ce
@..dos_print_str.l8:
    lodsb                            ; 0x10d0
    cmp al, 0xff                     ; 0x10d1
    je short @..dos_print_str.l9     ; 0x10d3
    mov byte [es:di], al             ; 0x10d5
@..dos_print_str.l9:
    inc di                           ; 0x10d8
    loop @..dos_print_str.l8         ; 0x10d9
    jmp short @..dos_print_str.l11   ; 0x10db
@..dos_print_str.l10:
    rep movsb                        ; 0x10dd
@..dos_print_str.l11:
    pop di                           ; 0x10df
    add di, strict word 0x140        ; 0x10e0
    pop ax                           ; 0x10e4
    mov dx, word [bp - 0x0006]       ; 0x10e5
    add ax, dx                       ; 0x10e8
    pop si                           ; 0x10ea
    pop cx                           ; 0x10eb
    loop @..dos_print_str.l4         ; 0x10ec
    jmp near @..dos_print_str.l22    ; 0x10ee
@..dos_print_str.l12:
    mov bx, word [bp + 0xe]          ; 0x10f1
    mov ax, 5                        ; 0x10f4
    mul bx                           ; 0x10f7
    mov bx, word [bp - 0x0004]       ; 0x10f9
    add bx, strict word 0x27d        ; 0x10fc
    add ax, word [cs:bx]             ; 0x1100
    mov si, ax                       ; 0x1103
    mov ax, word [cs:data_01e5]      ; 0x1105
    mov es, ax                       ; 0x1109
    mov ax, word [cs:data_01e1]      ; 0x110b
    add ax, word [bp - 0x0002]       ; 0x110f
    mov ds, ax                       ; 0x1112
    mov al, byte [si]                ; 0x1114
    mov bl, 6                        ; 0x1116
    mul bl                           ; 0x1118
    add ax, word [cs:data_027b]      ; 0x111a
    mov word [bp - 0x0002], ax       ; 0x111f
    mov ax, word [bp + 0x12]         ; 0x1122
    mov bx, 5                        ; 0x1125
    mul bx                           ; 0x1128
    mov bx, word [bp - 0x0004]       ; 0x112a
    add bx, strict word 0x27d        ; 0x112d
    add ax, word [cs:bx]             ; 0x1131
    mov si, ax                       ; 0x1134
    xor ah, ah                       ; 0x1136
    mov al, byte [si + 0x4]          ; 0x1138
    or ax, ax                        ; 0x113b
    jne short @..dos_print_str.l13   ; 0x113d
    jmp near @..dos_print_str.l22    ; 0x113f
@..dos_print_str.l13:
    mov cl, 3                        ; 0x1142
    shl ax, cl                       ; 0x1144
    mov word [bp - 0x0004], ax       ; 0x1146
    mov al, byte [si + 0x1]          ; 0x1149
    cbw                              ; 0x114c
    mov bl, byte [si + 0x3]          ; 0x114d
    xor bh, bh                       ; 0x1150
    add ax, bx                       ; 0x1152
    mov cl, 3                        ; 0x1154
    shl ax, cl                       ; 0x1156
    mov di, ax                       ; 0x1158
    mov al, byte [si + 0x2]          ; 0x115a
    mov cx, 0x140                    ; 0x115d
    mul cx                           ; 0x1160
    add di, ax                       ; 0x1162
    mov bx, word [bp - 0x0002]       ; 0x1164
    xor ax, ax                       ; 0x1167
    mov al, byte [bx + 0x4]          ; 0x1169
    mov cl, 3                        ; 0x116c
    shl ax, cl                       ; 0x116e
    mov word [bp - 0x0006], ax       ; 0x1170
    mov cl, 3                        ; 0x1173
    mov ax, word [bx + 0x2]          ; 0x1175
    xor dh, dh                       ; 0x1178
    mov dl, byte [bx + 0x4]          ; 0x117a
    shl dx, cl                       ; 0x117d
    dec dx                           ; 0x117f
    add ax, dx                       ; 0x1180
    xor dx, dx                       ; 0x1182
    mov dl, byte [si + 0x3]          ; 0x1184
    shl dx, cl                       ; 0x1187
    sub ax, dx                       ; 0x1189
    xor cx, cx                       ; 0x118b
    mov cl, byte [bx + 0x5]          ; 0x118d
    mov dx, ds                       ; 0x1190
    add dx, word [bx]                ; 0x1192
    mov ds, dx                       ; 0x1194
@..dos_print_str.l14:
    push cx                          ; 0x1196
    mov cx, word [bp - 0x0004]       ; 0x1197
    push si                          ; 0x119a
    push ax                          ; 0x119b
    push di                          ; 0x119c
    xchg si, ax                      ; 0x119d
    xor ah, ah                       ; 0x119e
    cmp word [bp + 0x10], byte 0     ; 0x11a0
    je short @..dos_print_str.l20    ; 0x11a4
    cmp word [bp + 0x10], byte 2     ; 0x11a6
    je short @..dos_print_str.l18    ; 0x11aa
    cmp word [bp + 0x10], byte 3     ; 0x11ac
    je short @..dos_print_str.l16    ; 0x11b0
@..dos_print_str.l15:
    mov al, byte [si]                ; 0x11b2
    dec si                           ; 0x11b4
