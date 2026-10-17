; auto-generated
leaf_loc_UUSR:
    push bp                          ; 0x10a4
    mov bp, sp                       ; 0x10a5
    mov ax, word [bp + 0x4]          ; 0x10a7
    jmp near @..leaf_loc_UUSR.l1     ; 0x10aa
jumptable_113a_case_0:
    mov ax, 0x166c                   ; 0x10ad
    push ax                          ; 0x10b0
    push word [bp + 0x6]             ; 0x10b1
    call aztec_strcpy                ; 0x10b4
    add sp, byte 4                   ; 0x10b7
    mov ax, 0x166f                   ; 0x10ba
    push ax                          ; 0x10bd
    push word [bp + 0x8]             ; 0x10be
    call aztec_strcpy                ; 0x10c1
    add sp, byte 4                   ; 0x10c4
    jmp near @..leaf_loc_UUSR.l2     ; 0x10c7
jumptable_113a_case_1:
    mov ax, 0x1672                   ; 0x10ca
    push ax                          ; 0x10cd
    push word [bp + 0x6]             ; 0x10ce
    call aztec_strcpy                ; 0x10d1
    add sp, byte 4                   ; 0x10d4
    mov ax, 0x1675                   ; 0x10d7
    push ax                          ; 0x10da
    push word [bp + 0x8]             ; 0x10db
    call aztec_strcpy                ; 0x10de
    add sp, byte 4                   ; 0x10e1
    jmp short @..leaf_loc_UUSR.l2    ; 0x10e4
jumptable_113a_case_2:
    mov ax, 0x1676                   ; 0x10e6
    push ax                          ; 0x10e9
    push word [bp + 0x6]             ; 0x10ea
    call aztec_strcpy                ; 0x10ed
    add sp, byte 4                   ; 0x10f0
    mov ax, 0x1679                   ; 0x10f3
    push ax                          ; 0x10f6
    push word [bp + 0x8]             ; 0x10f7
    call aztec_strcpy                ; 0x10fa
    add sp, byte 4                   ; 0x10fd
    jmp short @..leaf_loc_UUSR.l2    ; 0x1100
jumptable_113a_case_3:
    mov ax, 0x167a                   ; 0x1102
    push ax                          ; 0x1105
    push word [bp + 0x6]             ; 0x1106
    call aztec_strcpy                ; 0x1109
    add sp, byte 4                   ; 0x110c
    mov ax, 0x167d                   ; 0x110f
    push ax                          ; 0x1112
    push word [bp + 0x8]             ; 0x1113
    call aztec_strcpy                ; 0x1116
    add sp, byte 4                   ; 0x1119
    jmp short @..leaf_loc_UUSR.l2    ; 0x111c
jumptable_113a_case_4:
    mov ax, 0x167e                   ; 0x111e
    push ax                          ; 0x1121
    push word [bp + 0x6]             ; 0x1122
    call aztec_strcpy                ; 0x1125
    add sp, byte 4                   ; 0x1128
    mov ax, 0x1681                   ; 0x112b
    push ax                          ; 0x112e
    push word [bp + 0x8]             ; 0x112f
    call aztec_strcpy                ; 0x1132
    add sp, byte 4                   ; 0x1135
    jmp short @..leaf_loc_UUSR.l2    ; 0x1138
jumptable_113a:
    dw jumptable_113a_case_0 - IMAGE_BASE      ; 0x113a
    dw jumptable_113a_case_1 - IMAGE_BASE      ; 0x113c
    dw jumptable_113a_case_2 - IMAGE_BASE      ; 0x113e
    dw jumptable_113a_case_3 - IMAGE_BASE      ; 0x1140
    dw jumptable_113a_case_4 - IMAGE_BASE      ; 0x1142
@..leaf_loc_UUSR.l1:
    cmp ax, strict word 5            ; 0x1144
    jae short @..leaf_loc_UUSR.l2    ; 0x1147
    xchg bx, ax                      ; 0x1149
    shl bx, 1                        ; 0x114a
    jmp [cs:bx + jumptable_113a - IMAGE_BASE] ; 0x114c
@..leaf_loc_UUSR.l2:
    mov sp, bp                       ; 0x1151
    pop bp                           ; 0x1153
    ret                              ; 0x1154

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0x5e, 0xff, 0x8b, 0x46, 0x04, 0x8b, 0xd0, 0xd1, 0xe0, 0xd1, 0xe0
    db 0x03, 0xc2, 0xd1, 0xe0, 0x8b, 0x4e, 0x06, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0xad
    db 0x02, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0x60, 0x19, 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xfe, 0x00, 0x00
    db 0xeb, 0x21, 0x8b, 0x5e, 0xfe, 0x03, 0xdd, 0x80, 0x7f, 0xae, 0x2a, 0x74, 0x0c, 0x8a, 0x47, 0xae
    db 0x98, 0x05, 0xbf, 0xff, 0x3b, 0x46, 0x08, 0x75, 0x07, 0xb8, 0x01, 0x00, 0x8b, 0xe5, 0x5d, 0xc3
    db 0xff, 0x46, 0xfe, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0xc0, 0x23, 0x59, 0x3b, 0x46, 0xfe, 0x7f, 0xd2
    db 0xb8, 0x00, 0x00, 0xeb, 0xe7

loc_HSPL:
    push bp                          ; 0x11ba
    mov bp, sp                       ; 0x11bb
    add sp, byte 0xae                ; 0x11bd
    push word [bp + 0x4]             ; 0x11c0
    call loc_NVUL                    ; 0x11c3
    pop cx                           ; 0x11c6
    mov word [bp - 0x0002], ax       ; 0x11c7
    cmp ax, strict word 0xffff       ; 0x11ca
    jne short @..loc_HSPL.l1         ; 0x11cd
    mov ax, 0x1689                   ; 0x11cf
    push ax                          ; 0x11d2
    lea ax, word [bp - 0x0052]       ; 0x11d3
    push ax                          ; 0x11d6
    call aztec_strcpy                ; 0x11d7
    add sp, byte 4                   ; 0x11da
    push word [bp + 0x4]             ; 0x11dd
    lea ax, word [bp - 0x0052]       ; 0x11e0
    push ax                          ; 0x11e3
    call aztec_strcat                ; 0x11e4
    add sp, byte 4                   ; 0x11e7
    mov ax, 0x16af                   ; 0x11ea
    push ax                          ; 0x11ed
    lea ax, word [bp - 0x0052]       ; 0x11ee
    push ax                          ; 0x11f1
    call aztec_strcat                ; 0x11f2
    add sp, byte 4                   ; 0x11f5
    lea ax, word [bp - 0x0052]       ; 0x11f8
    push ax                          ; 0x11fb
    call loc_NNGU                    ; 0x11fc
    pop cx                           ; 0x11ff
    mov ax, 4                        ; 0x1200
    push ax                          ; 0x1203
    call aztec_exit                  ; 0x1204
    pop cx                           ; 0x1207
@..loc_HSPL.l1:
    push word [bp + 0x6]             ; 0x1208
    call aztec_chdir                 ; 0x120b
    pop cx                           ; 0x120e
    mov word [bp - 0x0002], ax       ; 0x120f
    cmp ax, strict word 0xffff       ; 0x1212
    je short @..loc_HSPL.l2          ; 0x1215
    jmp near @..loc_HSPL.l5          ; 0x1217
@..loc_HSPL.l2:
    cmp word [bp + 0x8], byte 1      ; 0x121a
    jne short @..loc_HSPL.l4         ; 0x121e
    push word [bp + 0x6]             ; 0x1220
    call aztec_mkdir                 ; 0x1223
    pop cx                           ; 0x1226
    mov word [bp - 0x0002], ax       ; 0x1227
    cmp ax, strict word 0xffff       ; 0x122a
    jne short @..loc_HSPL.l3         ; 0x122d
    mov ax, 0x16c2                   ; 0x122f
    push ax                          ; 0x1232
    lea ax, word [bp - 0x0052]       ; 0x1233
    push ax                          ; 0x1236
    call aztec_strcpy                ; 0x1237
    add sp, byte 4                   ; 0x123a
    push word [bp + 0x6]             ; 0x123d
    lea ax, word [bp - 0x0052]       ; 0x1240
    push ax                          ; 0x1243
    call aztec_strcat                ; 0x1244
    add sp, byte 4                   ; 0x1247
    mov ax, 0x16e8                   ; 0x124a
    push ax                          ; 0x124d
    lea ax, word [bp - 0x0052]       ; 0x124e
    push ax                          ; 0x1251
    call aztec_strcat                ; 0x1252
    add sp, byte 4                   ; 0x1255
    lea ax, word [bp - 0x0052]       ; 0x1258
    push ax                          ; 0x125b
    call loc_NNGU                    ; 0x125c
    pop cx                           ; 0x125f
    mov ax, 1                        ; 0x1260
    push ax                          ; 0x1263
    call aztec_exit                  ; 0x1264
    pop cx                           ; 0x1267
@..loc_HSPL.l3:
    push word [bp + 0x6]             ; 0x1268
    call aztec_chdir                 ; 0x126b
    pop cx                           ; 0x126e
    mov word [bp - 0x0002], ax       ; 0x126f
@..loc_HSPL.l4:
    cmp word [bp - 0x0002], byte 0xff ; 0x1272
    jne short @..loc_HSPL.l5         ; 0x1276
    mov ax, 0x16fa                   ; 0x1278
    push ax                          ; 0x127b
    lea ax, word [bp - 0x0052]       ; 0x127c
    push ax                          ; 0x127f
    call aztec_strcpy                ; 0x1280
    add sp, byte 4                   ; 0x1283
    push word [bp + 0x6]             ; 0x1286
    lea ax, word [bp - 0x0052]       ; 0x1289
    push ax                          ; 0x128c
    call aztec_strcat                ; 0x128d
    add sp, byte 4                   ; 0x1290
    mov ax, 0x1720                   ; 0x1293
    push ax                          ; 0x1296
    lea ax, word [bp - 0x0052]       ; 0x1297
    push ax                          ; 0x129a
    call aztec_strcat                ; 0x129b
    add sp, byte 4                   ; 0x129e
    lea ax, word [bp - 0x0052]       ; 0x12a1
    push ax                          ; 0x12a4
    call loc_NNGU                    ; 0x12a5
    pop cx                           ; 0x12a8
    mov ax, 2                        ; 0x12a9
    push ax                          ; 0x12ac
    call aztec_exit                  ; 0x12ad
    pop cx                           ; 0x12b0
@..loc_HSPL.l5:
    mov sp, bp                       ; 0x12b1
    pop bp                           ; 0x12b3
    ret                              ; 0x12b4
