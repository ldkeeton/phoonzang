api_idx_005e_3:
    mov ax, 0xffa2                   ; 0x5fd0
    call aztec_csav                  ; 0x5fd3
    mov ax, 0x248                    ; 0x5fd6
    imul word [bp + 0x4]             ; 0x5fd9
    mov bx, ax                       ; 0x5fdc
    mov ax, word [bx + 0x5c18]       ; 0x5fde
    push ax                          ; 0x5fe2
    mov al, byte [bss_91c5]          ; 0x5fe3
    sub ah, ah                       ; 0x5fe6
    mov cx, ax                       ; 0x5fe8
    pop ax                           ; 0x5fea
    sub ax, cx                       ; 0x5feb
    mov cx, 5                        ; 0x5fed
    imul cx                          ; 0x5ff0
    push ax                          ; 0x5ff2
    mov al, byte [bx + 0x5d7b]       ; 0x5ff3
    sub ah, ah                       ; 0x5ff7
    mov cx, 2                        ; 0x5ff9
    cwd                              ; 0x5ffc
    idiv cx                          ; 0x5ffd
    mov cx, ax                       ; 0x5fff
    pop ax                           ; 0x6001
    add ax, cx                       ; 0x6002
    mov word [bp - 0x0002], ax       ; 0x6004
    cmp byte [bx + 0x5e2d], 3        ; 0x6007
    jne short @..api_idx_005e_3.l1   ; 0x600c
    mov al, byte [bx + 0x5d68]       ; 0x600e
    sub ah, ah                       ; 0x6012
    shl ax, 1                        ; 0x6014
    add word [bp - 0x0002], ax       ; 0x6016
    jmp short @..api_idx_005e_3.l3   ; 0x6019
@..api_idx_005e_3.l1:
    mov al, byte [bx + 0x5e2d]       ; 0x601b
    cmp al, 4                        ; 0x601f
    je short @..api_idx_005e_3.l2    ; 0x6021
    cmp al, 6                        ; 0x6023
    je short @..api_idx_005e_3.l2    ; 0x6025
    cmp al, 0xd                      ; 0x6027
    jne short @..api_idx_005e_3.l3   ; 0x6029
@..api_idx_005e_3.l2:
    mov al, byte [bx + 0x5d68]       ; 0x602b
    sub ah, ah                       ; 0x602f
    add word [bp - 0x0002], ax       ; 0x6031
@..api_idx_005e_3.l3:
    mov al, byte [bx + 0x5d6a]       ; 0x6034
    sub ah, ah                       ; 0x6038
    push ax                          ; 0x603a
    add bx, word [bss_9136]          ; 0x603b
    mov al, byte [bx + 0x5db2]       ; 0x603f
    cbw                              ; 0x6043
    add ax, word [bss_964e]          ; 0x6044
    mov cx, 4                        ; 0x6048
    cwd                              ; 0x604b
    idiv cx                          ; 0x604c
    mov cx, ax                       ; 0x604e
    pop ax                           ; 0x6050
    add ax, cx                       ; 0x6051
    add ax, word [bp - 0x0002]       ; 0x6053
    add ax, strict word 0xfff6       ; 0x6056
    mov word [bp - 0x0002], ax       ; 0x6059
    cmp ax, strict word 0            ; 0x605c
    jl short @..api_idx_005e_3.l4    ; 0x605f
    cmp word [bss_9136], byte 0x30   ; 0x6061
    jne short @..api_idx_005e_3.l5   ; 0x6066
@..api_idx_005e_3.l4:
    mov word [bp - 0x0002], 0        ; 0x6068
@..api_idx_005e_3.l5:
    cmp word [bp - 0x0002], byte 0x5f ; 0x606d
    jle short @..api_idx_005e_3.l6   ; 0x6071
    mov word [bp - 0x0002], 0x5f     ; 0x6073
@..api_idx_005e_3.l6:
    mov ax, 0x64                     ; 0x6078
    push ax                          ; 0x607b
    call ds_app_09f0                 ; 0x607c
    pop cx                           ; 0x607f
    add ax, word [bss_9d60]          ; 0x6080
    mov word [bp - 0x0004], ax       ; 0x6084
    mov ax, 5                        ; 0x6087
    push ax                          ; 0x608a
    call ds_app_09f0                 ; 0x608b
    pop cx                           ; 0x608e
    add ax, word [bss_9d60]          ; 0x608f
    add ax, strict word 0xa          ; 0x6093
    mov word [bss_9d60], ax          ; 0x6096
    lea ax, word [bp - 0x005e]       ; 0x6099
    push ax                          ; 0x609c
    mov ax, 0x248                    ; 0x609d
    imul word [bp + 0x4]             ; 0x60a0
    mov bx, ax                       ; 0x60a3
    mov al, byte [bx + 0x5e2c]       ; 0x60a5
    sub ah, ah                       ; 0x60a9
    add ax, 0x622                    ; 0x60ab
    push ax                          ; 0x60ae
    call ds_app_mem_0782             ; 0x60af
    add sp, byte 4                   ; 0x60b2
    mov ax, 0x5e                     ; 0x60b5
    push ax                          ; 0x60b8
    mov ax, 0x248                    ; 0x60b9
    imul word [bp + 0x4]             ; 0x60bc
    add ax, 0x5bf4                   ; 0x60bf
    push ax                          ; 0x60c2
    lea ax, word [bp - 0x005e]       ; 0x60c3
    push ax                          ; 0x60c6
    call ds_app_string_0547          ; 0x60c7
    add sp, byte 6                   ; 0x60ca
    mov ax, 0x55                     ; 0x60cd
    push ax                          ; 0x60d0
    mov ax, 0                        ; 0x60d1
    push ax                          ; 0x60d4
    mov ax, 1                        ; 0x60d5
    push ax                          ; 0x60d8
    lea ax, word [bp - 0x005e]       ; 0x60d9
    push ax                          ; 0x60dc
    call loc_130b                    ; 0x60dd
    add sp, byte 8                   ; 0x60e0
    mov word [bp - 0x000a], 0        ; 0x60e3
@..api_idx_005e_3.l7:
    push word [bss_9cd2]             ; 0x60e8
    call ds_app_09f0                 ; 0x60ec
    pop cx                           ; 0x60ef
    cmp ax, word [bp - 0x000a]       ; 0x60f0
    jle short @..api_idx_005e_3.l8   ; 0x60f3
    inc word [bp - 0x000a]           ; 0x60f5
    jmp short @..api_idx_005e_3.l7   ; 0x60f8
@..api_idx_005e_3.l8:
    mov ax, 0x64                     ; 0x60fa
    push ax                          ; 0x60fd
    call ds_app_09f0                 ; 0x60fe
    pop cx                           ; 0x6101
    push ax                          ; 0x6102
    mov al, byte [bss_91c5]          ; 0x6103
    sub ah, ah                       ; 0x6106
    mov cx, ax                       ; 0x6108
    inc ax                           ; 0x610a
    mov cx, ax                       ; 0x610b
    pop ax                           ; 0x610d
    imul cx                          ; 0x610e
    mov cx, 2                        ; 0x6110
    cwd                              ; 0x6113
    idiv cx                          ; 0x6114
    mov word [bp - 0x0006], ax       ; 0x6116
    cwd                              ; 0x6119
    cmp dx, word [bss_91b8]          ; 0x611a
    jl short @..api_idx_005e_3.l9    ; 0x611e
    jne short @..api_idx_005e_3.l10  ; 0x6120
    cmp ax, word [bss_91b6]          ; 0x6122
    ja short @..api_idx_005e_3.l10   ; 0x6126
@..api_idx_005e_3.l9:
    jmp short @..api_idx_005e_3.l11  ; 0x6128
@..api_idx_005e_3.l10:
    mov ax, word [bss_91b6]          ; 0x612a
    mov word [bp - 0x0006], ax       ; 0x612d
@..api_idx_005e_3.l11:
    mov ax, word [bp - 0x0004]       ; 0x6130
    cmp ax, word [bp - 0x0002]       ; 0x6133
    jl short @..api_idx_005e_3.l12   ; 0x6136
    jmp near @..api_idx_005e_3.l18   ; 0x6138
@..api_idx_005e_3.l12:
    mov ax, 0                        ; 0x613b
    push ax                          ; 0x613e
    push word [bp + 0x4]             ; 0x613f
    call api_idx_0004_7              ; 0x6142
    add sp, byte 4                   ; 0x6145
    mov word [bp - 0x0008], ax       ; 0x6148
    call api_idx_0004_12             ; 0x614b
    mov ax, 3                        ; 0x614e
    push ax                          ; 0x6151
    mov ax, 0xf                      ; 0x6152
    push ax                          ; 0x6155
    push word [bp + 0x4]             ; 0x6156
    call loc_8662                    ; 0x6159
    add sp, byte 6                   ; 0x615c
    cmp word [bp - 0x0008], byte 0xff ; 0x615f
    je short @..api_idx_005e_3.l13   ; 0x6163
    cmp word [bss_9cd2], byte 0      ; 0x6165
    jle short @..api_idx_005e_3.l13  ; 0x616a
    mov ax, word [bp - 0x000a]       ; 0x616c
    shl ax, 1                        ; 0x616f
    mov bx, ax                       ; 0x6171
    push word [bx - 0x632c]          ; 0x6173
    call loc_5497                    ; 0x6177
    pop cx                           ; 0x617a
    test ax, ax                      ; 0x617b
    jne short @..api_idx_005e_3.l13  ; 0x617d
    mov ax, 0x64                     ; 0x617f
    push ax                          ; 0x6182
    call ds_app_09f0                 ; 0x6183
    pop cx                           ; 0x6186
    cmp ax, strict word 0x21         ; 0x6187
    jge short @..api_idx_005e_3.l16  ; 0x618a
@..api_idx_005e_3.l13:
    cmp word [bp - 0x0006], byte 0   ; 0x618c
    jg short @..api_idx_005e_3.l14   ; 0x6190
    lea ax, word [bp - 0x005e]       ; 0x6192
    push ax                          ; 0x6195
    mov ax, 0x624                    ; 0x6196
    push ax                          ; 0x6199
    call ds_app_mem_0782             ; 0x619a
    add sp, byte 4                   ; 0x619d
    jmp short @..api_idx_005e_3.l15  ; 0x61a0
@..api_idx_005e_3.l14:
    mov ax, word [bp - 0x0006]       ; 0x61a2
    cwd                              ; 0x61a5
    sub word [bss_91b6], ax          ; 0x61a6
    sbb word [bss_91b8], dx          ; 0x61aa
    mov ax, word [bp - 0x0006]       ; 0x61ae
    cwd                              ; 0x61b1
    push ax                          ; 0x61b2
    push dx                          ; 0x61b3
    mov ax, 0x248                    ; 0x61b4
    imul word [bp + 0x4]             ; 0x61b7
    mov bx, ax                       ; 0x61ba
    pop dx                           ; 0x61bc
    pop ax                           ; 0x61bd
    add word [bx + 0x5c08], ax       ; 0x61be
    adc word [bx + 0x5c0a], dx       ; 0x61c2
    lea ax, word [bp - 0x005e]       ; 0x61c6
    push ax                          ; 0x61c9
    mov ax, 0x626                    ; 0x61ca
    push ax                          ; 0x61cd
    call ds_app_mem_0782             ; 0x61ce
    add sp, byte 4                   ; 0x61d1
@..api_idx_005e_3.l15:
    jmp short @..api_idx_005e_3.l17  ; 0x61d4
@..api_idx_005e_3.l16:
    mov ax, word [bp - 0x0008]       ; 0x61d6
    mov cx, 0x100                    ; 0x61d9
    cwd                              ; 0x61dc
    idiv cx                          ; 0x61dd
    mov word [bp - 0x000c], ax       ; 0x61df
    mov word [bp - 0x000e], dx       ; 0x61e2
    mov ax, 0                        ; 0x61e5
    push ax                          ; 0x61e8
    mov ax, word [bp - 0x000a]       ; 0x61e9
    shl ax, 1                        ; 0x61ec
    mov bx, ax                       ; 0x61ee
    push word [bx - 0x6396]          ; 0x61f0
    mov ax, 0x248                    ; 0x61f4
    imul word [bp + 0x4]             ; 0x61f7
    push ax                          ; 0x61fa
    mov ax, 0x78                     ; 0x61fb
    imul word [bp - 0x000c]          ; 0x61fe
    mov cx, ax                       ; 0x6201
    pop ax                           ; 0x6203
    add ax, cx                       ; 0x6204
    push ax                          ; 0x6206
    mov ax, 0xc                      ; 0x6207
    imul word [bp - 0x000e]          ; 0x620a
    mov cx, ax                       ; 0x620d
    pop ax                           ; 0x620f
    add ax, cx                       ; 0x6210
    add ax, 0x5c34                   ; 0x6212
    push ax                          ; 0x6215
    push word [bx - 0x632c]          ; 0x6216
    push word [bp + 0x4]             ; 0x621a
    call api_idx_004c                ; 0x621d
    add sp, byte 0x0a                ; 0x6220
    lea ax, word [bp - 0x005e]       ; 0x6223
    push ax                          ; 0x6226
    mov ax, 0x625                    ; 0x6227
    push ax                          ; 0x622a
    call ds_app_mem_0782             ; 0x622b
    add sp, byte 4                   ; 0x622e
    mov ax, word [bp - 0x000a]       ; 0x6231
    shl ax, 1                        ; 0x6234
    mov bx, ax                       ; 0x6236
    mov word [bx - 0x632c], 0        ; 0x6238
    call api_idx_0004_12             ; 0x623e
@..api_idx_005e_3.l17:
    jmp near @..api_idx_005e_3.l22   ; 0x6241
@..api_idx_005e_3.l18:
    mov ax, word [bp - 0x0002]       ; 0x6244
    shl ax, 1                        ; 0x6247
    cmp ax, word [bp - 0x0004]       ; 0x6249
    jl short @..api_idx_005e_3.l19   ; 0x624c
    cmp word [bp - 0x0004], byte 0x5f ; 0x624e
    jge short @..api_idx_005e_3.l19  ; 0x6252
    jmp near @..api_idx_005e_3.l21   ; 0x6254
@..api_idx_005e_3.l19:
    lea ax, word [bp - 0x005e]       ; 0x6257
    push ax                          ; 0x625a
    mov ax, 0x628                    ; 0x625b
    push ax                          ; 0x625e
    call ds_app_mem_0782             ; 0x625f
    add sp, byte 4                   ; 0x6262
    mov ax, 0x5e                     ; 0x6265
    push ax                          ; 0x6268
    mov ax, 0x248                    ; 0x6269
    imul word [bp + 0x4]             ; 0x626c
    add ax, 0x5bf4                   ; 0x626f
    push ax                          ; 0x6272
    lea ax, word [bp - 0x005e]       ; 0x6273
    push ax                          ; 0x6276
    call ds_app_string_0547          ; 0x6277
    add sp, byte 6                   ; 0x627a
    mov ax, 0x16                     ; 0x627d
    push ax                          ; 0x6280
    mov ax, 1                        ; 0x6281
    push ax                          ; 0x6284
    push ax                          ; 0x6285
    lea ax, word [bp - 0x005e]       ; 0x6286
    push ax                          ; 0x6289
    call loc_130b                    ; 0x628a
    add sp, byte 8                   ; 0x628d
    cmp word [bss_9136], byte 0x30   ; 0x6290
    je short @..api_idx_005e_3.l20   ; 0x6295
    mov ax, 0xf                      ; 0x6297
    push ax                          ; 0x629a
    call ds_app_09f0                 ; 0x629b
    pop cx                           ; 0x629e
    mov cx, ax                       ; 0x629f
    add ax, strict word 0xf          ; 0x62a1
    mov cx, ax                       ; 0x62a4
    mov ax, 0                        ; 0x62a6
    sub ax, cx                       ; 0x62a9
    push ax                          ; 0x62ab
    mov ax, 0x19                     ; 0x62ac
    push ax                          ; 0x62af
    call ds_app_09f0                 ; 0x62b0
    pop cx                           ; 0x62b3
    mov cx, ax                       ; 0x62b4
    add ax, strict word 0x19         ; 0x62b6
    mov cx, ax                       ; 0x62b9
    mov ax, 0                        ; 0x62bb
    sub ax, cx                       ; 0x62be
    push ax                          ; 0x62c0
    push word [bp + 0x4]             ; 0x62c1
    call loc_85f9                    ; 0x62c4
    add sp, byte 6                   ; 0x62c7
@..api_idx_005e_3.l20:
    mov ax, 0                        ; 0x62ca
    push ax                          ; 0x62cd
    push ax                          ; 0x62ce
    push ax                          ; 0x62cf
    mov ax, 0xa                      ; 0x62d0
    push ax                          ; 0x62d3
    push word [bp + 0x4]             ; 0x62d4
    call api_idx_0006_3              ; 0x62d7
    add sp, byte 0x0a                ; 0x62da
    mov ax, 0xffff                   ; 0x62dd
    ret                              ; 0x62e0
@..api_idx_005e_3.l21:
    lea ax, word [bp - 0x005e]       ; 0x62e1
    push ax                          ; 0x62e4
    mov ax, 0x624                    ; 0x62e5
    push ax                          ; 0x62e8
    call ds_app_mem_0782             ; 0x62e9
    add sp, byte 4                   ; 0x62ec
@..api_idx_005e_3.l22:
    mov ax, 0x5e                     ; 0x62ef
    push ax                          ; 0x62f2
    mov ax, 0x248                    ; 0x62f3
    imul word [bp + 0x4]             ; 0x62f6
    add ax, 0x5bf4                   ; 0x62f9
    push ax                          ; 0x62fc
    lea ax, word [bp - 0x005e]       ; 0x62fd
    push ax                          ; 0x6300
    call ds_app_string_0547          ; 0x6301
    add sp, byte 6                   ; 0x6304
    mov ax, 0x55                     ; 0x6307
    push ax                          ; 0x630a
    mov ax, 1                        ; 0x630b
    push ax                          ; 0x630e
    push ax                          ; 0x630f
    lea ax, word [bp - 0x005e]       ; 0x6310
    push ax                          ; 0x6313
    call loc_130b                    ; 0x6314
    add sp, byte 8                   ; 0x6317
    mov ax, 0                        ; 0x631a
    ret                              ; 0x631d
