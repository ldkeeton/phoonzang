api_idx_000e_6:
    mov ax, 0xfff2                   ; 0x5fa1
    call ds_aztec_csav               ; 0x5fa4
    mov al, byte [bss_69c8]          ; 0x5fa7
    mov bx, word [bss_8482]          ; 0x5faa
    mov byte [bx + 0x1a1], al        ; 0x5fae
    mov bx, word [bp + 0x4]          ; 0x5fb2
    mov al, byte [bx + 0x1f]         ; 0x5fb5
    sub ah, ah                       ; 0x5fb8
    mov word [bp - 0x0008], ax       ; 0x5fba
    mov al, byte [bx + 0x20]         ; 0x5fbd
    sub ah, ah                       ; 0x5fc0
    mov word [bp - 0x000a], ax       ; 0x5fc2
    mov ax, word [bx + 0xa]          ; 0x5fc5
    mov cx, 0x100                    ; 0x5fc8
    cwd                              ; 0x5fcb
    idiv cx                          ; 0x5fcc
    mov word [bp - 0x0004], ax       ; 0x5fce
    mov ax, word [bx + 0xa]          ; 0x5fd1
    cwd                              ; 0x5fd4
    idiv cx                          ; 0x5fd5
    mov word [bp - 0x0006], dx       ; 0x5fd7
    push word [bss_8462]             ; 0x5fda
    push word [bss_8464]             ; 0x5fde
    mov ax, 0x90e6                   ; 0x5fe2
    push ax                          ; 0x5fe5
    call loc_15ab                    ; 0x5fe6
    add sp, byte 6                   ; 0x5fe9
    mov ax, 0x9136                   ; 0x5fec
    push ax                          ; 0x5fef
    mov ax, 0xcec                    ; 0x5ff0
    push ax                          ; 0x5ff3
    call ds_app_mem_0782             ; 0x5ff4
    add sp, byte 4                   ; 0x5ff7
    mov ax, 0x9186                   ; 0x5ffa
    push ax                          ; 0x5ffd
    mov ax, word [bp - 0x0006]       ; 0x5ffe
    add ax, 0xfa0                    ; 0x6001
    push ax                          ; 0x6004
    call ds_app_mem_0782             ; 0x6005
    add sp, byte 4                   ; 0x6008
    mov ax, 6                        ; 0x600b
    imul word [bp - 0x0006]          ; 0x600e
    mov bx, ax                       ; 0x6011
    mov al, byte [bx + 0x620]        ; 0x6013
    sub ah, ah                       ; 0x6017
    shl ax, 1                        ; 0x6019
    shl ax, 1                        ; 0x601b
    mov bx, ax                       ; 0x601d
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    mov ax, 0x43                     ; 0x6023
    push ax                          ; 0x6026
    cmp word [bss_8464], byte 0      ; 0x6027
    jne short @..api_idx_000e_6.l1   ; 0x602c
    mov ax, 1                        ; 0x602e
@..api_idx_000e_6.l1:
    push ax                          ; 0x6031
    mov ax, 0x9186                   ; 0x6032
    push ax                          ; 0x6035
    mov ax, 0x9136                   ; 0x6036
    push ax                          ; 0x6039
    mov ax, 0x90e6                   ; 0x603a
    push ax                          ; 0x603d
    mov ax, 0                        ; 0x603e
    push ax                          ; 0x6041
    call api_idx_0004_4              ; 0x6042
    add sp, byte 0x0e                ; 0x6045
    mov word [bss_91d8], 0           ; 0x6048
    mov word [bss_91da], 0           ; 0x604e
    mov ax, word [bss_8464]          ; 0x6054
    shl ax, 1                        ; 0x6057
    mov bx, ax                       ; 0x6059
    mov bx, word [bx - 0x7b7e]       ; 0x605b
    mov al, byte [bx + 0x191]        ; 0x605f
    sub ah, ah                       ; 0x6063
    mov bx, word [bp + 0x4]          ; 0x6065
    mov cx, word [bx]                ; 0x6068
    add ax, cx                       ; 0x606a
    inc ax                           ; 0x606c
    push ax                          ; 0x606d
    call ds_app_09f0                 ; 0x606e
    pop cx                           ; 0x6071
    push ax                          ; 0x6072
    mov ax, word [bss_8464]          ; 0x6073
    shl ax, 1                        ; 0x6076
    mov bx, ax                       ; 0x6078
    mov bx, word [bx - 0x7b7e]       ; 0x607a
    mov al, byte [bx + 0x191]        ; 0x607e
    sub ah, ah                       ; 0x6082
    mov cx, ax                       ; 0x6084
    pop ax                           ; 0x6086
    cmp ax, cx                       ; 0x6087
    jge short @..api_idx_000e_6.l2   ; 0x6089
    mov word [bss_91da], 1           ; 0x608b
@..api_idx_000e_6.l2:
    cmp word [bss_8464], byte 0      ; 0x6091
    je short @..api_idx_000e_6.l3    ; 0x6096
    jmp near @..api_idx_000e_6.l9    ; 0x6098
@..api_idx_000e_6.l3:
    mov ax, 0x248                    ; 0x609b
    imul word [bss_8462]             ; 0x609e
    mov bx, ax                       ; 0x60a2
    mov al, byte [bx + 0x5e2d]       ; 0x60a4
    cmp al, 5                        ; 0x60a8
    je short @..api_idx_000e_6.l4    ; 0x60aa
    cmp al, 4                        ; 0x60ac
    je short @..api_idx_000e_6.l4    ; 0x60ae
    cmp al, 0xd                      ; 0x60b0
    jne short @..api_idx_000e_6.l5   ; 0x60b2
@..api_idx_000e_6.l4:
    mov al, byte [bx + 0x5d89]       ; 0x60b4
    sub ah, ah                       ; 0x60b8
    mov cx, 3                        ; 0x60ba
    cwd                              ; 0x60bd
    idiv cx                          ; 0x60be
    add ax, strict word 0x5a         ; 0x60c0
    push ax                          ; 0x60c3
    mov ax, 6                        ; 0x60c4
    imul word [bp - 0x0006]          ; 0x60c7
    mov bx, ax                       ; 0x60ca
    mov al, byte [bx + 0x621]        ; 0x60cc
    sub ah, ah                       ; 0x60d0
    imul word [bp - 0x0004]          ; 0x60d2
    mov cx, ax                       ; 0x60d5
    pop ax                           ; 0x60d7
    sub ax, cx                       ; 0x60d8
    mov word [bp - 0x000e], ax       ; 0x60da
    jmp short @..api_idx_000e_6.l6   ; 0x60dd
@..api_idx_000e_6.l5:
    mov ax, 0x248                    ; 0x60df
    imul word [bss_8462]             ; 0x60e2
    mov bx, ax                       ; 0x60e6
    mov al, byte [bx + 0x5d7a]       ; 0x60e8
    sub ah, ah                       ; 0x60ec
    mov cx, 3                        ; 0x60ee
    cwd                              ; 0x60f1
    idiv cx                          ; 0x60f2
    add ax, strict word 0x5a         ; 0x60f4
    push ax                          ; 0x60f7
    mov ax, 6                        ; 0x60f8
    imul word [bp - 0x0006]          ; 0x60fb
    mov bx, ax                       ; 0x60fe
    mov al, byte [bx + 0x621]        ; 0x6100
    sub ah, ah                       ; 0x6104
    imul word [bp - 0x0004]          ; 0x6106
    mov cx, ax                       ; 0x6109
    pop ax                           ; 0x610b
    sub ax, cx                       ; 0x610c
    mov word [bp - 0x000e], ax       ; 0x610e
    mov ax, 2                        ; 0x6111
    push ax                          ; 0x6114
    mov ax, 0xe                      ; 0x6115
    push ax                          ; 0x6118
    push word [bss_8462]             ; 0x6119
    call loc_1bf4                    ; 0x611d
    add sp, byte 6                   ; 0x6120
@..api_idx_000e_6.l6:
    mov ax, 0x64                     ; 0x6123
    push ax                          ; 0x6126
    call ds_app_09f0                 ; 0x6127
    pop cx                           ; 0x612a
    cmp ax, word [bp - 0x000e]       ; 0x612b
    jle short @..api_idx_000e_6.l8   ; 0x612e
    cmp byte [bss_5988], 1           ; 0x6130
    je short @..api_idx_000e_6.l7    ; 0x6135
    mov ax, 0x24                     ; 0x6137
    push ax                          ; 0x613a
    call ds_app_09f0                 ; 0x613b
    pop cx                           ; 0x613e
    push ax                          ; 0x613f
    mov ax, 0x248                    ; 0x6140
    imul word [bss_8462]             ; 0x6143
    mov bx, ax                       ; 0x6147
    mov al, byte [bx + 0x5d6b]       ; 0x6149
    sub ah, ah                       ; 0x614d
    mov cx, ax                       ; 0x614f
    add ax, strict word 0x12         ; 0x6151
    mov cx, ax                       ; 0x6154
    pop ax                           ; 0x6156
    cmp ax, cx                       ; 0x6157
    jle short @..api_idx_000e_6.l7   ; 0x6159
    mov word [bss_91da], 0           ; 0x615b
    mov word [bss_91d8], 1           ; 0x6161
    jmp short @..api_idx_000e_6.l8   ; 0x6167
@..api_idx_000e_6.l7:
    mov word [bss_91da], 1           ; 0x6169
@..api_idx_000e_6.l8:
    jmp short @..api_idx_000e_6.l11  ; 0x616f
@..api_idx_000e_6.l9:
    mov ax, 0x2c                     ; 0x6171
    imul word [bss_8462]             ; 0x6174
    mov si, ax                       ; 0x6178
    mov ax, word [bss_8464]          ; 0x617a
    shl ax, 1                        ; 0x617d
    mov bx, ax                       ; 0x617f
    mov bx, word [bx - 0x7b7e]       ; 0x6181
    mov ax, word [bx + si]           ; 0x6185
    mov cx, 3                        ; 0x6187
    imul cx                          ; 0x618a
    add ax, strict word 0x58         ; 0x618c
    push ax                          ; 0x618f
    mov ax, 6                        ; 0x6190
    imul word [bp - 0x0006]          ; 0x6193
    mov bx, ax                       ; 0x6196
    mov al, byte [bx + 0x621]        ; 0x6198
    sub ah, ah                       ; 0x619c
    imul word [bp - 0x0004]          ; 0x619e
    mov cx, ax                       ; 0x61a1
    pop ax                           ; 0x61a3
    sub ax, cx                       ; 0x61a4
    mov word [bp - 0x000e], ax       ; 0x61a6
    mov ax, 0x64                     ; 0x61a9
    push ax                          ; 0x61ac
    call ds_app_09f0                 ; 0x61ad
    pop cx                           ; 0x61b0
    mov cx, ax                       ; 0x61b1
    mov ax, word [bp - 0x000e]       ; 0x61b3
    cmp cx, ax                       ; 0x61b6
    jle short @..api_idx_000e_6.l11  ; 0x61b8
    cmp byte [bss_5988], 2           ; 0x61ba
    je short @..api_idx_000e_6.l10   ; 0x61bf
    mov ax, 7                        ; 0x61c1
    push ax                          ; 0x61c4
    call ds_app_09f0                 ; 0x61c5
    pop cx                           ; 0x61c8
    test ax, ax                      ; 0x61c9
    jne short @..api_idx_000e_6.l10  ; 0x61cb
    mov word [bss_91da], 0           ; 0x61cd
    mov word [bss_91d8], 1           ; 0x61d3
    jmp short @..api_idx_000e_6.l11  ; 0x61d9
@..api_idx_000e_6.l10:
    mov word [bss_91da], 1           ; 0x61db
@..api_idx_000e_6.l11:
    mov word [bp - 0x000c], 1        ; 0x61e1
    cmp word [bss_8464], byte 0      ; 0x61e6
    jne short @..api_idx_000e_6.l14  ; 0x61eb
    mov ax, 0x248                    ; 0x61ed
    imul word [bss_8462]             ; 0x61f0
    mov bx, ax                       ; 0x61f4
    mov al, byte [bx + 0x5e2d]       ; 0x61f6
    cmp al, 5                        ; 0x61fa
    je short @..api_idx_000e_6.l12   ; 0x61fc
    cmp al, 4                        ; 0x61fe
    je short @..api_idx_000e_6.l12   ; 0x6200
    cmp al, 0xd                      ; 0x6202
    jne short @..api_idx_000e_6.l13  ; 0x6204
@..api_idx_000e_6.l12:
    mov word [bp - 0x000c], 0        ; 0x6206
@..api_idx_000e_6.l13:
    jmp short @..api_idx_000e_6.l16  ; 0x620b
@..api_idx_000e_6.l14:
    mov ax, word [bss_8464]          ; 0x620d
    shl ax, 1                        ; 0x6210
    mov bx, ax                       ; 0x6212
    mov bx, word [bx - 0x7b70]       ; 0x6214
    mov al, byte [bx + 0xd6]         ; 0x6218
    cmp al, 5                        ; 0x621c
    je short @..api_idx_000e_6.l15   ; 0x621e
    cmp al, 4                        ; 0x6220
    je short @..api_idx_000e_6.l15   ; 0x6222
    cmp al, 0xd                      ; 0x6224
    jne short @..api_idx_000e_6.l16  ; 0x6226
@..api_idx_000e_6.l15:
    mov word [bp - 0x000c], 0        ; 0x6228
@..api_idx_000e_6.l16:
    cmp word [bss_91d8], byte 1      ; 0x622d
    jne short @..api_idx_000e_6.l17  ; 0x6232
    mov ax, 6                        ; 0x6234
    imul word [bp - 0x0006]          ; 0x6237
    mov bx, ax                       ; 0x623a
    mov al, byte [bx + 0x623]        ; 0x623c
    sub ah, ah                       ; 0x6240
    test ax, 2                       ; 0x6242
    jne short @..api_idx_000e_6.l17  ; 0x6245
    mov word [bss_91d8], 0           ; 0x6247
    mov word [bss_91da], 1           ; 0x624d
@..api_idx_000e_6.l17:
    cmp word [bss_91da], byte 1      ; 0x6253
    jne short @..api_idx_000e_6.l18  ; 0x6258
    mov ax, 6                        ; 0x625a
    imul word [bp - 0x0006]          ; 0x625d
    mov bx, ax                       ; 0x6260
    mov al, byte [bx + 0x623]        ; 0x6262
    sub ah, ah                       ; 0x6266
    test ax, 1                       ; 0x6268
    jne short @..api_idx_000e_6.l18  ; 0x626b
    mov word [bss_91da], 0           ; 0x626d
@..api_idx_000e_6.l18:
    cmp word [bp - 0x000c], byte 1   ; 0x6273
    jne short @..api_idx_000e_6.l19  ; 0x6277
    mov bx, word [bp + 0x4]          ; 0x6279
    cmp byte [bx + 0xe], 0           ; 0x627c
    jbe short @..api_idx_000e_6.l19  ; 0x6280
    mov ax, 4                        ; 0x6282
    push ax                          ; 0x6285
    call api_idx_0004_5              ; 0x6286
    pop cx                           ; 0x6289
    mov ax, 2                        ; 0x628a
    push ax                          ; 0x628d
    mov ax, 0x41                     ; 0x628e
    push ax                          ; 0x6291
    mov ax, 0xc80                    ; 0x6292
    push ax                          ; 0x6295
    call api_idx_0050                ; 0x6296
    add sp, byte 6                   ; 0x6299
    push word [bss_9058]             ; 0x629c
    call api_idx_0004_5              ; 0x62a0
    pop cx                           ; 0x62a3
    jmp near @..api_idx_000e_6.l22   ; 0x62a4
@..api_idx_000e_6.l19:
    cmp word [bss_91da], byte 1      ; 0x62a7
    jne short @..api_idx_000e_6.l20  ; 0x62ac
    mov ax, 4                        ; 0x62ae
    push ax                          ; 0x62b1
    call api_idx_0004_5              ; 0x62b2
    pop cx                           ; 0x62b5
    mov ax, 2                        ; 0x62b6
    push ax                          ; 0x62b9
    mov ax, 0x41                     ; 0x62ba
    push ax                          ; 0x62bd
    mov ax, 0xc81                    ; 0x62be
    push ax                          ; 0x62c1
    call api_idx_0050                ; 0x62c2
    add sp, byte 6                   ; 0x62c5
    push word [bss_9058]             ; 0x62c8
    call api_idx_0004_5              ; 0x62cc
    pop cx                           ; 0x62cf
    jmp short @..api_idx_000e_6.l22  ; 0x62d0
@..api_idx_000e_6.l20:
    cmp word [bss_91d8], byte 1      ; 0x62d2
    jne short @..api_idx_000e_6.l21  ; 0x62d7
    mov ax, 4                        ; 0x62d9
    push ax                          ; 0x62dc
    call api_idx_0004_5              ; 0x62dd
    pop cx                           ; 0x62e0
    mov ax, 2                        ; 0x62e1
    push ax                          ; 0x62e4
    mov ax, 0x16                     ; 0x62e5
    push ax                          ; 0x62e8
    mov ax, 0xc82                    ; 0x62e9
    push ax                          ; 0x62ec
    call api_idx_0050                ; 0x62ed
    add sp, byte 6                   ; 0x62f0
    push word [bss_9058]             ; 0x62f3
    call api_idx_0004_5              ; 0x62f7
    pop cx                           ; 0x62fa
    mov al, byte [bss_8464]          ; 0x62fb
    mov bx, word [bp + 0x4]          ; 0x62fe
    mov byte [bx + 0x1f], al         ; 0x6301
    mov al, byte [bss_8462]          ; 0x6304
    mov bx, word [bp + 0x4]          ; 0x6307
    mov byte [bx + 0x20], al         ; 0x630a
@..api_idx_000e_6.l21:
    push word [bp - 0x0004]          ; 0x630d
    push word [bp - 0x0006]          ; 0x6310
    push word [bp + 0x4]             ; 0x6313
    call api_idx_000e_5              ; 0x6316
    add sp, byte 6                   ; 0x6319
@..api_idx_000e_6.l22:
    cmp word [bss_8464], byte 0      ; 0x631c
    jne short @..api_idx_000e_6.l23  ; 0x6321
    mov ax, 6                        ; 0x6323
    imul word [bp - 0x0006]          ; 0x6326
    mov bx, ax                       ; 0x6329
    mov al, byte [bx + 0x622]        ; 0x632b
    sub ah, ah                       ; 0x632f
    imul word [bp - 0x0004]          ; 0x6331
    push ax                          ; 0x6334
    mov ax, 0x248                    ; 0x6335
    imul word [bss_8462]             ; 0x6338
    mov cx, ax                       ; 0x633c
    mov al, byte [bx + 0x620]        ; 0x633e
    sub ah, ah                       ; 0x6342
    mov dx, ax                       ; 0x6344
    shl ax, 1                        ; 0x6346
    shl ax, 1                        ; 0x6348
    mov dx, ax                       ; 0x634a
    add cx, ax                       ; 0x634c
    mov bx, cx                       ; 0x634e
    pop ax                           ; 0x6350
    sub word [bx + 0x5c1c], ax       ; 0x6351
@..api_idx_000e_6.l23:
    push word [bp - 0x0004]          ; 0x6355
    call ds_app_09f0                 ; 0x6358
    pop cx                           ; 0x635b
    push ax                          ; 0x635c
    mov ax, 6                        ; 0x635d
    imul word [bp - 0x0006]          ; 0x6360
    mov bx, ax                       ; 0x6363
    mov al, byte [bx + 0x621]        ; 0x6365
    sub ah, ah                       ; 0x6369
    mov cx, ax                       ; 0x636b
    pop ax                           ; 0x636d
    add ax, cx                       ; 0x636e
    add ax, word [bp - 0x0004]       ; 0x6370
    ret                              ; 0x6373
