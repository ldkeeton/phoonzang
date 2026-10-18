; auto-generated
leaf_loc_TKVU:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0f55
    mov al, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x0f58
@..leaf_loc_TKVU.l1:
    cmp al, byte [cs:bx + 0x2]       ; 0x0f5c
    jne short @..leaf_loc_TKVU.l2    ; 0x0f60
    jmp near loc_RUNQ                ; 0x0f62
@..leaf_loc_TKVU.l2:
    inc al                           ; 0x0f65
    add bx, byte 5                   ; 0x0f67
    cmp bx, cseg_0d3a - IMAGE_BASE   ; 0x0f6a
    jb short @..leaf_loc_TKVU.l1     ; 0x0f6e
    jmp near loc_NGKV                ; 0x0f70
loc_GLKJ:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0f73
    mov dx, 0                        ; 0x0f76
    mov byte [cs:cseg_0d4d - IMAGE_BASE], 0xff ; 0x0f79
    xor al, al                       ; 0x0f7f
loc_OIUN:
    cmp byte [cs:bx], 0              ; 0x0f81
    jne short loc_KRQV               ; 0x0f85
    cmp dx, word [cs:bx + 0x3]       ; 0x0f87
    ja short loc_KRQV                ; 0x0f8b
    mov dx, word [cs:bx + 0x3]       ; 0x0f8d
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x0f91
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x0f95
loc_KRQV:
    add bx, byte 5                   ; 0x0f9a
    inc al                           ; 0x0f9d
    cmp al, byte [cs:cseg_0d3a - IMAGE_BASE] ; 0x0f9f
    jb short loc_OIUN                ; 0x0fa4
    mov al, byte [cs:cseg_0d4d - IMAGE_BASE] ; 0x0fa6
    cmp al, 0xff                     ; 0x0faa
    je short loc_VJMI                ; 0x0fac
    mov bx, word [cs:cseg_0d4e - IMAGE_BASE] ; 0x0fae
    jmp near loc_VQRR                ; 0x0fb3
loc_VJMI:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0fb6
    xor al, al                       ; 0x0fb9
    mov dx, 0                        ; 0x0fbb
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x0fbe
    mov ah, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x0fc3
    mov byte [cs:cseg_0d4d - IMAGE_BASE], 0xff ; 0x0fc8
loc_KQGN:
    cmp ah, byte [cs:bx + 0x2]       ; 0x0fce
    jne short loc_LGMV               ; 0x0fd2
    cmp dx, word [cs:bx + 0x3]       ; 0x0fd4
    ja short loc_LGMV                ; 0x0fd8
    mov dx, word [cs:bx + 0x3]       ; 0x0fda
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x0fde
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x0fe2
loc_LGMV:
    add bx, byte 5                   ; 0x0fe7
    inc al                           ; 0x0fea
    cmp al, byte [cs:cseg_0d3a - IMAGE_BASE] ; 0x0fec
    jb short loc_KQGN                ; 0x0ff1
    mov bx, word [cs:cseg_0d4e - IMAGE_BASE] ; 0x0ff3
    mov al, byte [cs:cseg_0d4d - IMAGE_BASE] ; 0x0ff8
    cmp al, 0xff                     ; 0x0ffc
    jne short loc_RUNQ               ; 0x0ffe
loc_NGKV:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x1000
    xor al, al                       ; 0x1003
    mov dx, 0                        ; 0x1005
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x1008
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x100c
    mov ah, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x1011
loc_ILTG:
    cmp dx, word [cs:bx + 0x3]       ; 0x1016
    ja short loc_JHLQ                ; 0x101a
    mov dx, word [cs:bx + 0x3]       ; 0x101c
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x1020
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x1024
loc_JHLQ:
    add bx, byte 5                   ; 0x1029
    inc al                           ; 0x102c
    cmp al, byte [cs:cseg_0d3a - IMAGE_BASE] ; 0x102e
    jb short loc_ILTG                ; 0x1033
    mov bx, word [cs:cseg_0d4e - IMAGE_BASE] ; 0x1035
    mov al, byte [cs:cseg_0d4d - IMAGE_BASE] ; 0x103a
loc_VQRR:
    mov byte [cs:cseg_0d40 - IMAGE_BASE], al ; 0x103e
    mov al, byte [cs:bx + 0x2]       ; 0x1042
    cmp al, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x1046
    je short loc_RUNQ                ; 0x104b
    call loc_IMHI                    ; 0x104d
loc_RUNQ:
    mov al, byte [cs:cseg_0d3f - IMAGE_BASE] ; 0x1050
    mov byte [cs:bx], al             ; 0x1054
    mov word [cs:bx + 0x3], 0        ; 0x1057
    mov al, byte [cs:cseg_0d3c - IMAGE_BASE] ; 0x105d
    mov byte [cs:bx + 0x1], al       ; 0x1061
    mov al, byte [cs:si]             ; 0x1065
    mov byte [cs:bx + 0x2], al       ; 0x1068
    call loc_ONLU                    ; 0x106c
    mov byte [cs:cseg_0ad8 - IMAGE_BASE], 1 ; 0x106f
    inc si                           ; 0x1075
    dec cx                           ; 0x1076
    je short loc_RUON                ; 0x1077
    jmp near loc_NPTG                ; 0x1079
loc_RUON:
    pop dx                           ; 0x107c
    pop si                           ; 0x107d
    jmp near loc_MRJU                ; 0x107e
loc_HOVS_1081:
    call string_loc_HGPS             ; 0x1081
    cmp byte [cs:cseg_0d3d - IMAGE_BASE], 0xff ; 0x1084
    jne short loc_JSJL_108f          ; 0x108a
    jmp near loc_MRJU                ; 0x108c
loc_JSJL_108f:
    cmp byte [cs:cseg_0d45 - IMAGE_BASE], 0 ; 0x108f
    jne short loc_RGII               ; 0x1095
    jmp near loc_RMHU                ; 0x1097
loc_RGII:
    mov al, byte [cs:cseg_0a7c - IMAGE_BASE] ; 0x109a
    cmp al, 1                        ; 0x109e
    jmp near loc_RMHU                ; 0x10a0

    db 0x2e, 0x8a, 0x26, 0x46, 0x0e, 0x2e, 0xa0, 0xe6, 0x15, 0x80, 0xfc, 0x06, 0x74, 0x1e, 0x80, 0xfc
    db 0x07, 0x74, 0x23, 0x80, 0xfc, 0x08, 0x74, 0x28, 0x80, 0xfc, 0x09, 0x74, 0x2d, 0x80, 0xfc, 0x0a
    db 0x75, 0x32, 0x24, 0xfe, 0xb4, 0xbd, 0xe8, 0x2a, 0xf7, 0xe9, 0x75, 0xfa, 0x24, 0xef, 0xb4, 0xbd
    db 0xe8, 0x20, 0xf7, 0xe9, 0x6b, 0xfa, 0x24, 0xf7, 0xb4, 0xbd, 0xe8, 0x16, 0xf7, 0xe9, 0x61, 0xfa
    db 0x24, 0xfb, 0xb4, 0xbd, 0xe8, 0x0c, 0xf7, 0xe9, 0x57, 0xfa, 0x24, 0xfd, 0xb4, 0xbd, 0xe8, 0x02
    db 0xf7, 0xe9, 0x4d, 0xfa

loc_RMHU:
    push si                          ; 0x10f7
    mov si, cseg_0d49 - IMAGE_BASE   ; 0x10f8
    mov cl, byte [cs:cseg_0d48 - IMAGE_BASE] ; 0x10fb
    xor ch, ch                       ; 0x1100
loc_GJLP:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x1102
    mov ah, byte [cs:cseg_0d3c - IMAGE_BASE] ; 0x1105
    mov dh, byte [cs:si]             ; 0x110a
    mov dl, byte [cs:cseg_0d3f - IMAGE_BASE] ; 0x110d
    xor al, al                       ; 0x1112
loc_RPSI:
    cmp byte [cs:bx], 0              ; 0x1114
    je short loc_PIOG                ; 0x1118
    cmp byte [cs:bx + 0x1], ah       ; 0x111a
    jne short loc_PIOG               ; 0x111e
    cmp byte [cs:bx + 0x2], dh       ; 0x1120
    jne short loc_PIOG               ; 0x1124
    mov byte [cs:bx], 0              ; 0x1126
    mov word [cs:bx + 0x3], 0        ; 0x112a
    mov byte [cs:cseg_0d40 - IMAGE_BASE], al ; 0x1130
    call loc_NLST                    ; 0x1134
loc_PIOG:
    inc al                           ; 0x1137
    add bx, byte 5                   ; 0x1139
    cmp al, byte [cs:cseg_0d3a - IMAGE_BASE] ; 0x113c
    jb short loc_RPSI                ; 0x1141
    inc si                           ; 0x1143
    loop loc_GJLP                    ; 0x1144
    pop si                           ; 0x1146
    jmp near loc_MRJU                ; 0x1147

    db 0x53, 0x2e, 0x8a, 0x1e, 0x7c, 0x0b, 0x32, 0xff, 0xd1, 0xe3, 0x2e, 0xff, 0x97, 0x5b, 0x12, 0x5b
    db 0xc3

jumptable_115b:
    dw loc_PLIR - IMAGE_BASE                   ; 0x115b
    dw loc_QKNN - IMAGE_BASE                   ; 0x115d
    dw loc_PLIR - IMAGE_BASE                   ; 0x115f
    dw loc_PLIR - IMAGE_BASE                   ; 0x1161
    dw loc_QKNN - IMAGE_BASE                   ; 0x1163
    dw loc_PLIR - IMAGE_BASE                   ; 0x1165
loc_IMHI:
    push bx                          ; 0x1167
    mov bl, byte [cs:cseg_0a7c - IMAGE_BASE] ; 0x1168
    xor bh, bh                       ; 0x116d
    shl bx, 1                        ; 0x116f
    call [cs:bx + jumptable_1178 - IMAGE_BASE] ; 0x1171
    pop bx                           ; 0x1176
    ret                              ; 0x1177
jumptable_1178:
    dw loc_PLIR - IMAGE_BASE                   ; 0x1178
    dw string_loc_NOSM - IMAGE_BASE            ; 0x117a
    dw loc_PLIR - IMAGE_BASE                   ; 0x117c
    dw loc_PLIR - IMAGE_BASE                   ; 0x117e
    dw string_loc_NOSM - IMAGE_BASE            ; 0x1180
    dw loc_PLIR - IMAGE_BASE                   ; 0x1182
