; auto-generated
leaf_loc_3168:
    mov cx, 0xff0a                   ; 0x3168
loc_316b:
    push ds                          ; 0x316b
    pop es                           ; 0x316c
    mov di, word [bp + 0x8]          ; 0x316d
    mov ax, word [es:di]             ; 0x3170
    add di, byte 2                   ; 0x3173
    test byte [bp - 0x000b], 2       ; 0x3176
    je short loc_3184                ; 0x317a
    mov dx, word [es:di]             ; 0x317c
    add di, byte 2                   ; 0x317f
    jmp short loc_318b               ; 0x3182
loc_3184:
    sub dx, dx                       ; 0x3184
    test ch, ch                      ; 0x3186
    je short loc_31a4                ; 0x3188
    cwd                              ; 0x318a
loc_318b:
    test ch, ch                      ; 0x318b
    je short loc_31a4                ; 0x318d
    mov ch, byte [bp - 0x000e]       ; 0x318f
    mov byte [bp - 0x000d], ch       ; 0x3192
    test dx, dx                      ; 0x3195
    jns short loc_31a4               ; 0x3197
    mov byte [bp - 0x000d], 0x2d     ; 0x3199
    neg dx                           ; 0x319d
    neg ax                           ; 0x319f
    sbb dx, byte 0                   ; 0x31a1
loc_31a4:
    mov word [bp + 0x8], di          ; 0x31a4
    cmp word [bp - 0x0006], byte 0   ; 0x31a7
    jge short loc_31b2               ; 0x31ab
    mov word [bp - 0x0006], 1        ; 0x31ad
loc_31b2:
    mov ch, 0                        ; 0x31b2
    mov di, ss                       ; 0x31b4
    mov es, di                       ; 0x31b6
    lea di, word [bp - 0x0140]       ; 0x31b8
loc_31bc:
    test dx, dx                      ; 0x31bc
    jne short loc_31c4               ; 0x31be
    test ax, ax                      ; 0x31c0
    je short loc_31e7                ; 0x31c2
loc_31c4:
    sub bx, bx                       ; 0x31c4
    cmp cx, dx                       ; 0x31c6
    ja short loc_31d8                ; 0x31c8
    push ax                          ; 0x31ca
    mov ax, dx                       ; 0x31cb
    sub dx, dx                       ; 0x31cd
    div cx                           ; 0x31cf
    mov bx, ax                       ; 0x31d1
    pop ax                           ; 0x31d3
    div cx                           ; 0x31d4
    jmp short loc_31da               ; 0x31d6
loc_31d8:
    div cx                           ; 0x31d8
loc_31da:
    xchg bx, dx                      ; 0x31da
    mov bl, byte [cs:bx + 0x2e7d]    ; 0x31dc
    dec di                           ; 0x31e1
    mov byte [es:di], bl             ; 0x31e2
    jmp short loc_31bc               ; 0x31e5
loc_31e7:
    test byte [bp - 0x000b], 0x10    ; 0x31e7
    je short loc_3202                ; 0x31eb
    cmp cl, 0xa                      ; 0x31ed
    je short loc_3202                ; 0x31f0
    cmp cl, 0x10                     ; 0x31f2
    jne short loc_31fd               ; 0x31f5
    mov byte [bp - 0x000d], 0x78     ; 0x31f7
    jmp short loc_3202               ; 0x31fb
loc_31fd:
    dec di                           ; 0x31fd
    mov byte [es:di], 0x30           ; 0x31fe
loc_3202:
    lea cx, word [bp - 0x0140]       ; 0x3202
    sub cx, di                       ; 0x3206
    mov ax, word [bp - 0x0006]       ; 0x3208
    sub ax, cx                       ; 0x320b
    mov word [bp - 0x0006], ax       ; 0x320d
    jle short loc_3215               ; 0x3210
    sub word [bp - 0x0004], ax       ; 0x3212
loc_3215:
    mov word [bp - 0x0008], cx       ; 0x3215
    cmp byte [bp - 0x000d], 0        ; 0x3218
    je short loc_322a                ; 0x321c
    cmp byte [bp - 0x000d], 0x78     ; 0x321e
    jne short loc_3227               ; 0x3222
    dec word [bp - 0x0004]           ; 0x3224
loc_3227:
    dec word [bp - 0x0004]           ; 0x3227
loc_322a:
    sub word [bp - 0x0004], cx       ; 0x322a
    jle short loc_3249               ; 0x322d
    test byte [bp - 0x000b], 8       ; 0x322f
    jne short loc_3249               ; 0x3233
    cmp byte [bp - 0x000c], 0x30     ; 0x3235
    jne short loc_323e               ; 0x3239
    call loc_32eb                    ; 0x323b
loc_323e:
    mov al, byte [bp - 0x000c]       ; 0x323e
    call loc_3301                    ; 0x3241
    dec word [bp - 0x0004]           ; 0x3244
    jg short loc_323e                ; 0x3247
loc_3249:
    call loc_32eb                    ; 0x3249
loc_324c:
    dec word [bp - 0x0006]           ; 0x324c
    js short loc_3258                ; 0x324f
    mov al, 0x30                     ; 0x3251
    call loc_3301                    ; 0x3253
    jmp short loc_324c               ; 0x3256
loc_3258:
    dec word [bp - 0x0008]           ; 0x3258
    js short loc_3266                ; 0x325b
    mov al, byte [es:di]             ; 0x325d
    inc di                           ; 0x3260
    call loc_3301                    ; 0x3261
    jmp short loc_3258               ; 0x3264
loc_3266:
    dec word [bp - 0x0004]           ; 0x3266
    js short loc_3272                ; 0x3269
    mov al, 0x20                     ; 0x326b
    call loc_3301                    ; 0x326d
    jmp short loc_3266               ; 0x3270
loc_3272:
    jmp near loc_30aa                ; 0x3272
loc_3275:
    or byte [bp - 0x000b], 0x20      ; 0x3275
    add al, 0x20                     ; 0x3279
loc_327b:
    add word [bp + 0x8], byte 8      ; 0x327b
    mov ax, cs                       ; 0x327f
    mov es, ax                       ; 0x3281
    mov di, 0x2e8d                   ; 0x3283
    sub word [bp - 0x0004], byte 0x0a ; 0x3286
    jmp short loc_3258               ; 0x328a
loc_328c:
    call leaf_loc_331e               ; 0x328c
    push di                          ; 0x328f
    mov al, 0                        ; 0x3290
    mov cx, 0xffff                   ; 0x3292
    repne scasb                      ; 0x3295
    not cx                           ; 0x3297
    dec cx                           ; 0x3299
    cmp cx, word [bp - 0x0006]       ; 0x329a
    jbe short loc_32a2               ; 0x329d
    mov cx, word [bp - 0x0006]       ; 0x329f
loc_32a2:
    pop di                           ; 0x32a2
    mov word [bp - 0x0006], 0        ; 0x32a3
    jmp near loc_3215                ; 0x32a8
loc_32ab:
    push ds                          ; 0x32ab
    pop es                           ; 0x32ac
    mov di, word [bp + 0x8]          ; 0x32ad
    mov al, byte [es:di]             ; 0x32b0
    add di, byte 2                   ; 0x32b3
    mov word [bp + 0x8], di          ; 0x32b6
    mov byte [bp - 0x0154], al       ; 0x32b9
    mov cx, 1                        ; 0x32bd
    mov ax, ss                       ; 0x32c0
    mov es, ax                       ; 0x32c2
    lea di, word [bp - 0x0154]       ; 0x32c4
    mov word [bp - 0x0006], 0        ; 0x32c8
    jmp near loc_3215                ; 0x32cd
