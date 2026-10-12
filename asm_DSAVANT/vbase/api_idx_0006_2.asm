api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x61db
    call ds_aztec_csav               ; 0x61de
    mov ax, word [bp + 0x4]          ; 0x61e1
    shl ax, 1                        ; 0x61e4
    mov bx, ax                       ; 0x61e6
    mov bx, word [bx - 0x750e]       ; 0x61e8
    mov byte [bx - 0x6f8a], 1        ; 0x61ec
    dec word [bss_69c8]              ; 0x61f1
    mov ax, word [bp + 0x4]          ; 0x61f5
    mov word [bp - 0x0002], ax       ; 0x61f8
    jmp short @..api_idx_0006_2.l2   ; 0x61fb
@..api_idx_0006_2.l1:
    mov ax, 0x248                    ; 0x61fd
    imul word [bp - 0x0002]          ; 0x6200
    mov si, ax                       ; 0x6203
    add ax, 0x5e3c                   ; 0x6205
    mov si, ax                       ; 0x6208
    mov ax, 0x248                    ; 0x620a
    imul word [bp - 0x0002]          ; 0x620d
    mov di, ax                       ; 0x6210
    add ax, 0x5bf4                   ; 0x6212
    mov di, ax                       ; 0x6215
    mov cx, ds                       ; 0x6217
    mov es, cx                       ; 0x6219
    mov cx, 0x124                    ; 0x621b
    rep movsw                        ; 0x621e
    mov ax, word [bp - 0x0002]       ; 0x6220
    shl ax, 1                        ; 0x6223
    mov bx, ax                       ; 0x6225
    mov ax, word [bx - 0x750c]       ; 0x6227
    mov word [bx - 0x750e], ax       ; 0x622b
    mov ax, word [bx + 0x69be]       ; 0x622f
    mov word [bx + 0x69bc], ax       ; 0x6233
    inc word [bp - 0x0002]           ; 0x6237
@..api_idx_0006_2.l2:
    mov ax, word [bp - 0x0002]       ; 0x623a
    cmp ax, word [bss_69c8]          ; 0x623d
    jl short @..api_idx_0006_2.l1    ; 0x6241
    mov word [bp - 0x0002], 0        ; 0x6243
    jmp short @..api_idx_0006_2.l4   ; 0x6248
@..api_idx_0006_2.l3:
    mov ax, 1                        ; 0x624a
    push ax                          ; 0x624d
    push word [bp - 0x0002]          ; 0x624e
    call ds_app_1d81                 ; 0x6251
    add sp, byte 4                   ; 0x6254
    inc word [bp - 0x0002]           ; 0x6257
@..api_idx_0006_2.l4:
    mov ax, word [bp - 0x0002]       ; 0x625a
    cmp ax, word [bss_69c8]          ; 0x625d
    jl short @..api_idx_0006_2.l3    ; 0x6261
    mov ax, 0                        ; 0x6263
    push ax                          ; 0x6266
    mov ax, word [bss_69c8]          ; 0x6267
    shl ax, 1                        ; 0x626a
    shl ax, 1                        ; 0x626c
    mov bx, ax                       ; 0x626e
    push word [bx + 0x69a6]          ; 0x6270
    push word [bx + 0x69a4]          ; 0x6274
    call ds_loc_3b96                 ; 0x6278
    add sp, byte 6                   ; 0x627b
    cmp word [bp + 0x6], byte 0      ; 0x627e
    je short @..api_idx_0006_2.l5    ; 0x6282
    mov ax, word [bss_69c8]          ; 0x6284
    mov cx, 2                        ; 0x6287
    cwd                              ; 0x628a
    idiv cx                          ; 0x628b
    mov ax, dx                       ; 0x628d
    mov cx, 0xfc                     ; 0x628f
    imul cx                          ; 0x6292
    add ax, strict word 5            ; 0x6294
    mov word [bp - 0x0004], ax       ; 0x6297
    mov ax, word [bss_69c8]          ; 0x629a
    mov cx, 2                        ; 0x629d
    cwd                              ; 0x62a0
    idiv cx                          ; 0x62a1
    mov cx, 0x2d                     ; 0x62a3
    imul cx                          ; 0x62a6
    add ax, strict word 0x12         ; 0x62a8
    mov word [bp - 0x0006], ax       ; 0x62ab
    add ax, strict word 0x2b         ; 0x62ae
    push ax                          ; 0x62b1
    mov ax, word [bp - 0x0004]       ; 0x62b2
    add ax, strict word 0x3b         ; 0x62b5
    push ax                          ; 0x62b8
    push word [bp - 0x0006]          ; 0x62b9
    push word [bp - 0x0004]          ; 0x62bc
    call ds_loc_3b21                 ; 0x62bf
    add sp, byte 8                   ; 0x62c2
@..api_idx_0006_2.l5:
    ret                              ; 0x62c5
loc_62c6:
    mov ax, 0                        ; 0x62c6
    call ds_aztec_csav               ; 0x62c9
@..local.l117:
    cmp word [bss_69c8], byte 0      ; 0x62cc
    jle short @..local.l118          ; 0x62d1
    mov ax, 0                        ; 0x62d3
    push ax                          ; 0x62d6
    mov ax, word [bss_69c8]          ; 0x62d7
    dec ax                           ; 0x62da
    push ax                          ; 0x62db
    call api_idx_0006_2              ; 0x62dc
    add sp, byte 4                   ; 0x62df
    jmp short @..local.l117          ; 0x62e2
@..local.l118:
    ret                              ; 0x62e4
