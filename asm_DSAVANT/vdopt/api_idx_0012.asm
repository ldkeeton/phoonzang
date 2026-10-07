api_idx_0012:
    mov ax, 0xffee                   ; 0x0fd3
    call ds_dispatch_f40b            ; 0x0fd6
    mov ax, word [bp + 0x8]          ; 0x0fd9
    mov word [data_9858], ax         ; 0x0fdc
    mov ax, 0xf                      ; 0x0fdf
    push ax                          ; 0x0fe2
    mov ax, 0xe                      ; 0x0fe3
    push ax                          ; 0x0fe6
    call ds_dispatch_d61c            ; 0x0fe7
    add sp, byte 4                   ; 0x0fea
    mov ax, 0xf                      ; 0x0fed
    cmp word [bp + 0x6], byte 0      ; 0x0ff0
    jne short @..api_idx_0012.l2     ; 0x0ff4
    cmp word [bp + 0x4], byte 4      ; 0x0ff6
    jle short @..api_idx_0012.l1     ; 0x0ffa
    mov ax, word [bp + 0x4]          ; 0x0ffc
    shl ax, 1                        ; 0x0fff
    add ax, strict word 0xfff9       ; 0x1001
    jmp short @..api_idx_0012.l2     ; 0x1004
@..api_idx_0012.l1:
    mov ax, word [bp + 0x4]          ; 0x1006
    shl ax, 1                        ; 0x1009
    inc ax                           ; 0x100b
    inc ax                           ; 0x100c
    inc ax                           ; 0x100d
@..api_idx_0012.l2:
    mov word [bp - 0x0006], ax       ; 0x100e
    mov word [bp - 0x0008], ax       ; 0x1011
    cmp ax, strict word 0xd          ; 0x1014
    jle short @..api_idx_0012.l3     ; 0x1017
    mov word [bp - 0x0008], 0xd      ; 0x1019
@..api_idx_0012.l3:
    mov cx, data_0002                ; 0x101e
    cwd                              ; 0x1021
    idiv cx                          ; 0x1022
    mov word [bp - 0x000a], ax       ; 0x1024
    mov ax, word [bp - 0x0008]       ; 0x1027
    cwd                              ; 0x102a
    idiv cx                          ; 0x102b
    mov word [bp - 0x000c], ax       ; 0x102d
    mov ax, 7                        ; 0x1030
    imul word [bp - 0x0006]          ; 0x1033
    cwd                              ; 0x1036
    idiv cx                          ; 0x1037
    mov cx, ax                       ; 0x1039
    mov ax, 0xa0                     ; 0x103b
    sub ax, cx                       ; 0x103e
    mov word [data_9b0c], ax         ; 0x1040
    mov ax, 7                        ; 0x1043
    imul word [bp - 0x0008]          ; 0x1046
    mov cx, data_0002                ; 0x1049
    cwd                              ; 0x104c
    idiv cx                          ; 0x104d
    mov cx, ax                       ; 0x104f
    mov ax, 0x56                     ; 0x1051
    sub ax, cx                       ; 0x1054
    mov word [data_9b0a], ax         ; 0x1056
    cmp word [data_9858], byte 0     ; 0x1059
    je short @..api_idx_0012.l4      ; 0x105e
    mov word [bp + 0x4], 1           ; 0x1060
@..api_idx_0012.l4:
    mov ax, word [data_5b6e]         ; 0x1065
    jmp near @..api_idx_0012.l5      ; 0x1068
    mov ax, 0xffff                   ; 0x106b
    cmp word [bp + 0x4], byte 1      ; 0x106e
    jle short loc_1077               ; 0x1072
    mov ax, 0xa                      ; 0x1074
    mov word [data_9af8], ax         ; 0x1077
    mov ax, 0xffff                   ; 0x107a
    cmp word [bp + 0x4], byte 1      ; 0x107d
    jle short loc_1086               ; 0x1081
    mov ax, 0xb                      ; 0x1083
    mov word [data_9b00], ax         ; 0x1086
    mov ax, 0xc                      ; 0x1089
    cmp word [bp + 0x4], byte 2      ; 0x108c
    jg short loc_109e                ; 0x1090
    mov ax, 0xffff                   ; 0x1092
    cmp word [bp + 0x4], byte 1      ; 0x1095
    jle short loc_109e               ; 0x1099
    mov ax, 0xa                      ; 0x109b
    mov word [data_9af6], ax         ; 0x109e
    mov ax, 0xd                      ; 0x10a1
    cmp word [bp + 0x4], byte 2      ; 0x10a4
    jg short loc_10b6                ; 0x10a8
    mov ax, 0xffff                   ; 0x10aa
    cmp word [bp + 0x4], byte 1      ; 0x10ad
    jle short loc_10b6               ; 0x10b1
    mov ax, 0xb                      ; 0x10b3
    mov word [data_9afe], ax         ; 0x10b6
    mov ax, 0xe                      ; 0x10b9
    cmp word [bp + 0x4], byte 2      ; 0x10bc
    jg short loc_10ce                ; 0x10c0
    mov ax, 0xffff                   ; 0x10c2
    cmp word [bp + 0x4], byte 1      ; 0x10c5
    jle short loc_10ce               ; 0x10c9
    mov ax, 0xa                      ; 0x10cb
    mov word [data_9afa], ax         ; 0x10ce
    mov ax, 0xf                      ; 0x10d1
    cmp word [bp + 0x4], byte 2      ; 0x10d4
    jg short loc_10e6                ; 0x10d8
    mov ax, 0xffff                   ; 0x10da
    cmp word [bp + 0x4], byte 1      ; 0x10dd
    jle short loc_10e6               ; 0x10e1
    mov ax, 0xb                      ; 0x10e3
    mov word [data_9b02], ax         ; 0x10e6
    mov word [data_9af0], 1          ; 0x10e9
    mov word [data_9af4], 0xffff     ; 0x10ef
    mov word [data_9af2], 0xffff     ; 0x10f5
    mov word [data_9342], 6          ; 0x10fb
    mov word [data_9b06], 6          ; 0x1101
    mov ax, 0xffff                   ; 0x1107
    cmp word [bp + 0x4], byte 1      ; 0x110a
    jle short loc_1113               ; 0x110e
    mov ax, 0xa                      ; 0x1110
    mov word [data_9344], ax         ; 0x1113
    mov ax, 0xffff                   ; 0x1116
    cmp word [bp + 0x4], byte 1      ; 0x1119
    jle short loc_1122               ; 0x111d
    mov ax, 0xb                      ; 0x111f
    mov word [data_95ce], ax         ; 0x1122
    jmp near @..api_idx_0012.l6      ; 0x1125
    mov ax, 0xffff                   ; 0x1128
    cmp word [bp + 0x4], byte 1      ; 0x112b
    jle short loc_1134               ; 0x112f
    mov ax, 0x10                     ; 0x1131
    mov word [data_9af8], ax         ; 0x1134
    mov ax, 0xffff                   ; 0x1137
    cmp word [bp + 0x4], byte 1      ; 0x113a
    jle short loc_1143               ; 0x113e
    mov ax, 0x11                     ; 0x1140
    mov word [data_9b00], ax         ; 0x1143
    mov ax, 0x12                     ; 0x1146
    cmp word [bp + 0x4], byte 2      ; 0x1149
    jg short loc_115b                ; 0x114d
    mov ax, 0xffff                   ; 0x114f
    cmp word [bp + 0x4], byte 1      ; 0x1152
    jle short loc_115b               ; 0x1156
    mov ax, 0x10                     ; 0x1158
    mov word [data_9af6], ax         ; 0x115b
    mov ax, 0x13                     ; 0x115e
    cmp word [bp + 0x4], byte 2      ; 0x1161
    jg short loc_1173                ; 0x1165
    mov ax, 0xffff                   ; 0x1167
    cmp word [bp + 0x4], byte 1      ; 0x116a
    jle short loc_1173               ; 0x116e
    mov ax, 0x11                     ; 0x1170
    mov word [data_9afe], ax         ; 0x1173
    mov ax, 0x14                     ; 0x1176
    cmp word [bp + 0x4], byte 2      ; 0x1179
    jg short loc_118b                ; 0x117d
    mov ax, 0xffff                   ; 0x117f
    cmp word [bp + 0x4], byte 1      ; 0x1182
    jle short loc_118b               ; 0x1186
    mov ax, 0x10                     ; 0x1188
    mov word [data_9afa], ax         ; 0x118b
    mov ax, 0x15                     ; 0x118e
    cmp word [bp + 0x4], byte 2      ; 0x1191
    jg short loc_11a3                ; 0x1195
    mov ax, 0xffff                   ; 0x1197
    cmp word [bp + 0x4], byte 1      ; 0x119a
    jle short loc_11a3               ; 0x119e
    mov ax, 0x11                     ; 0x11a0
    mov word [data_9b02], ax         ; 0x11a3
    mov word [data_9af0], 5          ; 0x11a6
    mov word [data_9af4], 4          ; 0x11ac
    mov word [data_9af2], 3          ; 0x11b2
    mov word [data_9342], 8          ; 0x11b8
    mov word [data_9b06], 7          ; 0x11be
    mov ax, 0xffff                   ; 0x11c4
    cmp word [bp + 0x4], byte 1      ; 0x11c7
    jle short loc_11d0               ; 0x11cb
    mov ax, 0x16                     ; 0x11cd
    mov word [data_9344], ax         ; 0x11d0
