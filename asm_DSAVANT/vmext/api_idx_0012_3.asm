api_idx_0012_3:
    mov ax, 0xffee                   ; 0x30f4
    call ds_dispatch_f40b            ; 0x30f7
    cmp word [bp + 0x4], byte 4      ; 0x30fa
    jge short @..api_idx_0012_3.l1   ; 0x30fe
    cmp word [bp + 0x6], byte 0      ; 0x3100
    jle short @..api_idx_0012_3.l1   ; 0x3104
    cmp word [bp + 0x6], byte 4      ; 0x3106
    jge short @..api_idx_0012_3.l1   ; 0x310a
    mov ax, 1                        ; 0x310c
    jmp short @..api_idx_0012_3.l2   ; 0x310f
@..api_idx_0012_3.l1:
    mov ax, 0                        ; 0x3111
@..api_idx_0012_3.l2:
    mov word [bp - 0x0012], ax       ; 0x3114
    cmp word [bp - 0x0012], byte 0   ; 0x3117
    jne short @..api_idx_0012_3.l3   ; 0x311b
    jmp near @..api_idx_0012_3.l20   ; 0x311d
@..api_idx_0012_3.l3:
    mov ax, 0xa                      ; 0x3120
    imul word [bp + 0x4]             ; 0x3123
    mov cx, word [bp + 0x6]          ; 0x3126
    shl cx, 1                        ; 0x3129
    add ax, cx                       ; 0x312b
    mov bx, ax                       ; 0x312d
    cmp word [bx - 0x6dbe], byte 0   ; 0x312f
    jne short @..api_idx_0012_3.l4   ; 0x3134
    cmp word [bx - 0x6d40], byte 0   ; 0x3136
    jne short @..api_idx_0012_3.l4   ; 0x313b
    jmp near @..api_idx_0012_3.l20   ; 0x313d
@..api_idx_0012_3.l4:
    cmp word [bp + 0x6], byte 2      ; 0x3140
    jne short @..api_idx_0012_3.l5   ; 0x3144
    mov ax, 0                        ; 0x3146
    push ax                          ; 0x3149
    push ax                          ; 0x314a
    push ax                          ; 0x314b
    mov ax, 3                        ; 0x314c
    push ax                          ; 0x314f
    push word [bp + 0x4]             ; 0x3150
    mov ax, 0xffff                   ; 0x3153
    push ax                          ; 0x3156
    mov ax, word [bp + 0x20]         ; 0x3157
    add ax, word [bp + 0x4]          ; 0x315a
    push ax                          ; 0x315d
    call loc_193b                    ; 0x315e
    pop cx                           ; 0x3161
    push ax                          ; 0x3162
    mov ax, 0                        ; 0x3163
    push ax                          ; 0x3166
    push ax                          ; 0x3167
    push ax                          ; 0x3168
    mov ax, 2                        ; 0x3169
    push ax                          ; 0x316c
    mov ax, 0xffff                   ; 0x316d
    push ax                          ; 0x3170
    mov ax, word [bp + 0x22]         ; 0x3171
    add ax, word [bp + 0x4]          ; 0x3174
    push ax                          ; 0x3177
    mov ax, word [bp + 0x20]         ; 0x3178
    add ax, word [bp + 0x4]          ; 0x317b
    push ax                          ; 0x317e
    call loc_194f                    ; 0x317f
    add sp, byte 4                   ; 0x3182
    push ax                          ; 0x3185
    mov ax, 0xff                     ; 0x3186
    push ax                          ; 0x3189
    call api_idx_0004_5              ; 0x318a
    add sp, byte 0x1c                ; 0x318d
    jmp short @..api_idx_0012_3.l9   ; 0x3190
@..api_idx_0012_3.l5:
    cmp word [bp + 0x4], byte 0      ; 0x3192
    jle short @..api_idx_0012_3.l9   ; 0x3196
    mov ax, 0                        ; 0x3198
    push ax                          ; 0x319b
    push ax                          ; 0x319c
    push ax                          ; 0x319d
    mov ax, 3                        ; 0x319e
    push ax                          ; 0x31a1
    push word [bp + 0x4]             ; 0x31a2
    mov ax, 0xffff                   ; 0x31a5
    push ax                          ; 0x31a8
    cmp word [bp + 0x6], byte 3      ; 0x31a9
    jne short @..api_idx_0012_3.l6   ; 0x31ad
    mov ax, word [bp + 0x2a]         ; 0x31af
    add ax, word [bp + 0x4]          ; 0x31b2
@..api_idx_0012_3.l6:
    push ax                          ; 0x31b5
    mov ax, 0                        ; 0x31b6
    push ax                          ; 0x31b9
    push ax                          ; 0x31ba
    push ax                          ; 0x31bb
    mov ax, 2                        ; 0x31bc
    push ax                          ; 0x31bf
    mov ax, 0xffff                   ; 0x31c0
    push ax                          ; 0x31c3
    cmp word [bp + 0x6], byte 3      ; 0x31c4
    jne short @..api_idx_0012_3.l7   ; 0x31c8
    mov ax, word [bp + 0x2a]         ; 0x31ca
    add ax, word [bp + 0x4]          ; 0x31cd
    jmp short @..api_idx_0012_3.l8   ; 0x31d0
@..api_idx_0012_3.l7:
    mov ax, word [bp + 0x28]         ; 0x31d2
    add ax, word [bp + 0x4]          ; 0x31d5
@..api_idx_0012_3.l8:
    push ax                          ; 0x31d8
    mov ax, 0xff                     ; 0x31d9
    push ax                          ; 0x31dc
    call api_idx_0004_5              ; 0x31dd
    add sp, byte 0x1c                ; 0x31e0
@..api_idx_0012_3.l9:
    mov ax, 0xa                      ; 0x31e3
    imul word [bp + 0x4]             ; 0x31e6
    mov cx, word [bp + 0x6]          ; 0x31e9
    shl cx, 1                        ; 0x31ec
    add ax, cx                       ; 0x31ee
    mov bx, ax                       ; 0x31f0
    cmp word [bx - 0x6dbe], byte 0   ; 0x31f2
    jne short @..api_idx_0012_3.l10  ; 0x31f7
    jmp near @..api_idx_0012_3.l20   ; 0x31f9
@..api_idx_0012_3.l10:
    mov cx, word [bx - 0x6dbe]       ; 0x31fc
    dec cx                           ; 0x3200
    mov ax, word [data_82ee]         ; 0x3201
    sub ax, cx                       ; 0x3204
    add ax, strict word 6            ; 0x3206
    mov cx, 4                        ; 0x3209
    cwd                              ; 0x320c
    idiv cx                          ; 0x320d
    mov word [bp - 0x0002], dx       ; 0x320f
    mov word [bp - 0x0004], 0        ; 0x3212
    mov ax, dx                       ; 0x3217
    mov cx, 2                        ; 0x3219
    cwd                              ; 0x321c
    idiv cx                          ; 0x321d
    mov ax, dx                       ; 0x321f
    test ax, ax                      ; 0x3221
    jne short @..api_idx_0012_3.l11  ; 0x3223
    cmp word [bp + 0x4], byte 0      ; 0x3225
    jg short @..api_idx_0012_3.l12   ; 0x3229
@..api_idx_0012_3.l11:
    cmp word [bp + 0x6], byte 2      ; 0x322b
    jne short @..api_idx_0012_3.l15  ; 0x322f
@..api_idx_0012_3.l12:
    test ax, ax                      ; 0x3231
    je short @..api_idx_0012_3.l13   ; 0x3233
    mov ax, 3                        ; 0x3235
    jmp short @..api_idx_0012_3.l14  ; 0x3238
@..api_idx_0012_3.l13:
    mov ax, 0                        ; 0x323a
@..api_idx_0012_3.l14:
    mov cx, word [bp + 0x4]          ; 0x323d
    shl cx, 1                        ; 0x3240
    shl cx, 1                        ; 0x3242
    shl cx, 1                        ; 0x3244
    add ax, cx                       ; 0x3246
    inc ax                           ; 0x3248
    inc ax                           ; 0x3249
    inc ax                           ; 0x324a
    mov word [bp - 0x0004], ax       ; 0x324b
    mov ax, word [data_91a4]         ; 0x324e
    mov word [bp - 0x0006], ax       ; 0x3251
    mov ax, word [bx + 0x260]        ; 0x3254
    mov word [bp - 0x0008], ax       ; 0x3258
    jmp short @..api_idx_0012_3.l17  ; 0x325b
@..api_idx_0012_3.l15:
    cmp word [bp + 0x4], byte 0      ; 0x325d
    jle short @..api_idx_0012_3.l17  ; 0x3261
    mov ax, word [bp + 0x4]          ; 0x3263
    add ax, strict word 0x20         ; 0x3266
    mov word [bp - 0x0004], ax       ; 0x3269
    mov ax, 0                        ; 0x326c
    cmp word [bp + 0x6], byte 3      ; 0x326f
    jne short @..api_idx_0012_3.l16  ; 0x3273
    mov ax, 1                        ; 0x3275
@..api_idx_0012_3.l16:
    mov word [bp - 0x0006], ax       ; 0x3278
    mov word [bp - 0x0008], 0        ; 0x327b
@..api_idx_0012_3.l17:
    cmp word [bp - 0x0004], byte 0   ; 0x3280
    je short @..api_idx_0012_3.l20   ; 0x3284
    mov ax, 0                        ; 0x3286
    push ax                          ; 0x3289
    push ax                          ; 0x328a
    push word [bp - 0x0006]          ; 0x328b
    push ax                          ; 0x328e
    push word [bp + 0x4]             ; 0x328f
    mov ax, 0xf8                     ; 0x3292
    push ax                          ; 0x3295
    mov ax, 0x48                     ; 0x3296
    push ax                          ; 0x3299
    push word [bp + 0x6]             ; 0x329a
    mov ax, word [bp + 0x6]          ; 0x329d
    cmp ax, strict word 2            ; 0x32a0
    je short @..api_idx_0012_3.l18   ; 0x32a3
    cmp dx, byte 1                   ; 0x32a5
    jne short @..api_idx_0012_3.l18  ; 0x32a8
    mov ax, 1                        ; 0x32aa
    jmp short @..api_idx_0012_3.l19  ; 0x32ad
@..api_idx_0012_3.l18:
    mov ax, 0                        ; 0x32af
@..api_idx_0012_3.l19:
    push ax                          ; 0x32b2
    mov ax, 1                        ; 0x32b3
    push ax                          ; 0x32b6
    push word [bp - 0x0004]          ; 0x32b7
    mov ax, 0                        ; 0x32ba
    push ax                          ; 0x32bd
    push word [bp - 0x0008]          ; 0x32be
    mov ax, 4                        ; 0x32c1
    push ax                          ; 0x32c4
    call api_idx_0004_5              ; 0x32c5
    add sp, byte 0x1c                ; 0x32c8
@..api_idx_0012_3.l20:
    mov ax, 5                        ; 0x32cb
    imul word [bp + 0x4]             ; 0x32ce
    add ax, word [bp + 0x6]          ; 0x32d1
    mov bx, ax                       ; 0x32d4
    mov al, byte [bx - 0x6e3b]       ; 0x32d6
    sub ah, ah                       ; 0x32da
    jmp near @..api_idx_0012_3.l36   ; 0x32dc
@..api_idx_0012_3.l21:
    cmp word [data_91a8], byte 2     ; 0x32df
    je short @..api_idx_0012_3.l22   ; 0x32e4
    jmp near @..api_idx_0012_3.l32   ; 0x32e6
@..api_idx_0012_3.l22:
    cmp word [bp + 0x4], byte 5      ; 0x32e9
    jl short @..api_idx_0012_3.l23   ; 0x32ed
    jmp near @..api_idx_0012_3.l31   ; 0x32ef
