; auto-generated
graphics_loc_PVIU:
    push es                          ; 0x31d9
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE] ; 0x31da
    mov es, ax                       ; 0x31de
    mov ax, data_2e53                ; 0x31e0
    mov word [bp - 0x0036], ax       ; 0x31e3
    xor ax, ax                       ; 0x31e6
    mov word [bp - 0x003c], ax       ; 0x31e8
    mov word [bp - 0x003e], ax       ; 0x31eb
    mov ax, word [bp + 0x1a]         ; 0x31ee
    cmp al, 2                        ; 0x31f1
    jne short @..graphics_loc_PVIU.l1 ; 0x31f3
    jmp near loc_3498                ; 0x31f5
@..graphics_loc_PVIU.l1:
    cmp al, 3                        ; 0x31f8
    jne short @..graphics_loc_PVIU.l2 ; 0x31fa
    jmp near loc_35d8                ; 0x31fc
@..graphics_loc_PVIU.l2:
    mov ax, word [bp - 0x0006]       ; 0x31ff
    mov word [bp - 0x000e], ax       ; 0x3202
    mov si, word [bx]                ; 0x3205
    add si, bx                       ; 0x3207
    mov word [bp - 0x000a], 1        ; 0x3209
    lea ax, word [bx + 0x4]          ; 0x320e
    mov word [bp - 0x000c], ax       ; 0x3211
    mov cx, word [bp - 0x0004]       ; 0x3214
    mov byte [bp - 0x003a], 0x80     ; 0x3217
    mov ax, word [bp + 0x1a]         ; 0x321b
    cmp al, 1                        ; 0x321e
    jne short @..graphics_loc_PVIU.l3 ; 0x3220
    jmp near loc_337c                ; 0x3222
@..graphics_loc_PVIU.l3:
    mov ax, word [bp - 0x0028]       ; 0x3225
    add word [bp - 0x000e], ax       ; 0x3228
    mov ax, word [bp - 0x0024]       ; 0x322b
    mov bx, 0x140                    ; 0x322e
    mul bx                           ; 0x3231
    add word [bp - 0x000e], ax       ; 0x3233
@..graphics_loc_PVIU.l4:
    mov ax, word [bp - 0x0022]       ; 0x3236
    mov di, word [bp - 0x000e]       ; 0x3239
    cmp di, ax                       ; 0x323c
    jb short @..graphics_loc_PVIU.l5 ; 0x323e
    jmp near @..graphics_loc_PVIU.l25 ; 0x3240
@..graphics_loc_PVIU.l5:
    push cx                          ; 0x3243
    call leaf_loc_MTKK               ; 0x3244
    mov ax, data_2e2b                ; 0x3247
    mov word [bp - 0x0034], ax       ; 0x324a
    mov cx, word [bp - 0x0002]       ; 0x324d
@..graphics_loc_PVIU.l6:
    push cx                          ; 0x3250
    call leaf_loc_QLNN               ; 0x3251
    mov bx, word [bp - 0x000c]       ; 0x3254
    mov al, byte [bx]                ; 0x3257
    and al, byte [bp - 0x000a]       ; 0x3259
    jne short @..graphics_loc_PVIU.l7 ; 0x325c
    jmp near @..graphics_loc_PVIU.l23 ; 0x325e
@..graphics_loc_PVIU.l7:
    mov bx, word [bp - 0x0034]       ; 0x3261
    mov al, byte [cs:bx]             ; 0x3264
    cmp al, 0xff                     ; 0x3267
    jne short @..graphics_loc_PVIU.l8 ; 0x3269
    add si, byte 0x40                ; 0x326b
    jmp near @..graphics_loc_PVIU.l23 ; 0x326e
@..graphics_loc_PVIU.l8:
    push di                          ; 0x3271
    push si                          ; 0x3272
    mov al, 0x80                     ; 0x3273
    mov byte [bp - 0x0038], al       ; 0x3275
    mov cx, 8                        ; 0x3278
@..graphics_loc_PVIU.l9:
    cmp di, word [bp - 0x0022]       ; 0x327b
    jb short @..graphics_loc_PVIU.l10 ; 0x327e
    jmp near @..graphics_loc_PVIU.l22 ; 0x3280
@..graphics_loc_PVIU.l10:
    mov bx, word [bp - 0x0036]       ; 0x3283
    mov al, byte [cs:bx]             ; 0x3286
    and al, byte [bp - 0x0038]       ; 0x3289
    je short @..graphics_loc_PVIU.l11 ; 0x328c
    jmp near @..graphics_loc_PVIU.l21 ; 0x328e
@..graphics_loc_PVIU.l11:
    push cx                          ; 0x3291
    push di                          ; 0x3292
    mov al, 0x80                     ; 0x3293
    mov byte [bp - 0x0032], al       ; 0x3295
    mov cx, 8                        ; 0x3298
@..graphics_loc_PVIU.l12:
    mov bx, word [bp - 0x0034]       ; 0x329b
    mov al, byte [cs:bx]             ; 0x329e
    and al, byte [bp - 0x0032]       ; 0x32a1
    jne short @..graphics_loc_PVIU.l20 ; 0x32a4
    xor ah, ah                       ; 0x32a6
    mov al, byte [si]                ; 0x32a8
    cmp al, 0xff                     ; 0x32aa
    je short @..graphics_loc_PVIU.l17 ; 0x32ac
    cmp byte [bp + 0x1e], 2          ; 0x32ae
    jne short @..graphics_loc_PVIU.l14 ; 0x32b2
    mov al, byte [es:di]             ; 0x32b4
    mov bx, data_381b                ; 0x32b7
    add bx, ax                       ; 0x32ba
    add al, byte [si]                ; 0x32bc
    jb short @..graphics_loc_PVIU.l13 ; 0x32be
    cmp al, byte [cs:bx]             ; 0x32c0
    jb short @..graphics_loc_PVIU.l16 ; 0x32c3
@..graphics_loc_PVIU.l13:
    mov al, byte [cs:bx]             ; 0x32c5
    jmp short @..graphics_loc_PVIU.l16 ; 0x32c8
@..graphics_loc_PVIU.l14:
    cmp byte [bp - 0x0030], 0        ; 0x32ca
    je short @..graphics_loc_PVIU.l16 ; 0x32ce
    mov bx, data_381b                ; 0x32d0
    add bx, ax                       ; 0x32d3
    add al, byte [bp - 0x0030]       ; 0x32d5
    jb short @..graphics_loc_PVIU.l15 ; 0x32d8
    cmp al, byte [cs:bx]             ; 0x32da
    jb short @..graphics_loc_PVIU.l16 ; 0x32dd
@..graphics_loc_PVIU.l15:
    mov al, byte [cs:bx]             ; 0x32df
@..graphics_loc_PVIU.l16:
    mov byte [es:di], al             ; 0x32e2
@..graphics_loc_PVIU.l17:
    inc si                           ; 0x32e5
    inc di                           ; 0x32e6
    ror byte [bp - 0x0032], 1        ; 0x32e7
    loop @..graphics_loc_PVIU.l12    ; 0x32ea
@..graphics_loc_PVIU.l18:
    pop di                           ; 0x32ec
    pop cx                           ; 0x32ed
    add di, strict word 0x140        ; 0x32ee
@..graphics_loc_PVIU.l19:
    ror byte [bp - 0x0038], 1        ; 0x32f2
    loop @..graphics_loc_PVIU.l9     ; 0x32f5
    jmp short @..graphics_loc_PVIU.l22 ; 0x32f7
@..graphics_loc_PVIU.l20:
    inc si                           ; 0x32f9
    ror byte [bp - 0x0032], 1        ; 0x32fa
    loop @..graphics_loc_PVIU.l12    ; 0x32fd
    jmp short @..graphics_loc_PVIU.l18 ; 0x32ff
@..graphics_loc_PVIU.l21:
    add si, byte 8                   ; 0x3301
    jmp short @..graphics_loc_PVIU.l19 ; 0x3304
@..graphics_loc_PVIU.l22:
    pop si                           ; 0x3306
    add si, byte 0x40                ; 0x3307
    pop di                           ; 0x330a
@..graphics_loc_PVIU.l23:
    add di, byte 8                   ; 0x330b
    sub di, word [bp - 0x003c]       ; 0x330e
    rol byte [bp - 0x000a], 1        ; 0x3311
    cmp byte [bp - 0x000a], 1        ; 0x3314
    jne short @..graphics_loc_PVIU.l24 ; 0x3318
    inc word [bp - 0x000c]           ; 0x331a
@..graphics_loc_PVIU.l24:
    inc word [bp - 0x0034]           ; 0x331d
    pop cx                           ; 0x3320
    loop @..graphics_loc_PVIU.l26    ; 0x3321
    pop cx                           ; 0x3323
    add word [bp - 0x000e], strict word 0xa00 ; 0x3324
    mov ax, word [bp - 0x003e]       ; 0x3329
    sub word [bp - 0x000e], ax       ; 0x332c
    inc word [bp - 0x0036]           ; 0x332f
    mov byte [bp - 0x003a], 0x80     ; 0x3332
    loop @..graphics_loc_PVIU.l27    ; 0x3336
@..graphics_loc_PVIU.l25:
    pop es                           ; 0x3338
    ret                              ; 0x3339
@..graphics_loc_PVIU.l26:
    jmp near @..graphics_loc_PVIU.l6 ; 0x333a
@..graphics_loc_PVIU.l27:
    jmp near @..graphics_loc_PVIU.l4 ; 0x333d
