; auto-generated
; asm only
sprintf:
    push bp                          ; 0x3098
    mov bp, sp                       ; 0x3099
    sub sp, strict word 0x154        ; 0x309b
    push di                          ; 0x309f
    push si                          ; 0x30a0
    cld                              ; 0x30a1
    mov si, word [bp + 0x6]          ; 0x30a2
    mov word [bp - 0x0002], 0        ; 0x30a5
@..sprintf.l1:
    mov byte [bp - 0x000b], 0        ; 0x30aa
    lodsb                            ; 0x30ae
    cmp al, 0x25                     ; 0x30af
    je short @..sprintf.l3           ; 0x30b1
string_loc_30b3:
    test al, al                      ; 0x30b3
    je short @..sprintf.l2           ; 0x30b5
    call loc_NJTI                    ; 0x30b7
    jmp short @..sprintf.l1          ; 0x30ba
@..sprintf.l2:
    mov ax, word [bp - 0x0002]       ; 0x30bc
    pop si                           ; 0x30bf
    pop di                           ; 0x30c0
    mov sp, bp                       ; 0x30c1
    pop bp                           ; 0x30c3
    ret                              ; 0x30c4
@..sprintf.l3:
    mov byte [bp - 0x000c], 0x20     ; 0x30c5
    mov byte [bp - 0x000e], 0        ; 0x30c9
    mov byte [bp - 0x000d], 0        ; 0x30cd
    mov word [bp - 0x0006], 0xffff   ; 0x30d1
@..sprintf.l4:
    lodsb                            ; 0x30d6
    cmp al, 0x2d                     ; 0x30d7
    jne short @..sprintf.l5          ; 0x30d9
    or byte [bp - 0x000b], 8         ; 0x30db
    jmp short @..sprintf.l4          ; 0x30df
@..sprintf.l5:
    cmp al, 0x2b                     ; 0x30e1
    jne short @..sprintf.l6          ; 0x30e3
    mov byte [bp - 0x000e], 0x2b     ; 0x30e5
    jmp short @..sprintf.l4          ; 0x30e9
@..sprintf.l6:
    cmp al, 0x20                     ; 0x30eb
    jne short @..sprintf.l7          ; 0x30ed
    cmp byte [bp - 0x000e], 0        ; 0x30ef
    jne short @..sprintf.l4          ; 0x30f3
    mov byte [bp - 0x000e], 0x20     ; 0x30f5
    jmp short @..sprintf.l4          ; 0x30f9
@..sprintf.l7:
    cmp al, 0x23                     ; 0x30fb
    jne short @..sprintf.l8          ; 0x30fd
    or byte [bp - 0x000b], 0x10      ; 0x30ff
    jmp short @..sprintf.l4          ; 0x3103
@..sprintf.l8:
    cmp al, 0x30                     ; 0x3105
    jne short @..sprintf.l9          ; 0x3107
    mov byte [bp - 0x000c], 0x30     ; 0x3109
    lodsb                            ; 0x310d
@..sprintf.l9:
    call string_loc_TRQP             ; 0x310e
    test dx, dx                      ; 0x3111
    jns short @..sprintf.l10         ; 0x3113
    neg dx                           ; 0x3115
    or byte [bp - 0x000b], 8         ; 0x3117
@..sprintf.l10:
    mov word [bp - 0x0004], dx       ; 0x311b
    cmp al, 0x2e                     ; 0x311e
    jne short @..sprintf.l11         ; 0x3120
    lodsb                            ; 0x3122
    call string_loc_TRQP             ; 0x3123
    mov word [bp - 0x0006], dx       ; 0x3126
@..sprintf.l11:
    mov di, cs                       ; 0x3129
    mov es, di                       ; 0x312b
@..sprintf.l12:
    mov di, cseg_303e - IMAGE_BASE   ; 0x312d
    mov cx, 0x15                     ; 0x3130
    repne scasb                      ; 0x3133
    sub di, strict word 0x2e3f       ; 0x3135
    shl di, 1                        ; 0x3139
    jmp [cs:di + jumptable_3053 - IMAGE_BASE] ; 0x313b
string_loc_3140:
    or byte [bp - 0x000b], 1         ; 0x3140
    lodsb                            ; 0x3144
    jmp short @..sprintf.l12         ; 0x3145
string_loc_3147:
    or byte [bp - 0x000b], 2         ; 0x3147
string_loc_314b:
    lodsb                            ; 0x314b
    jmp short @..sprintf.l12         ; 0x314c
string_loc_314e:
    or byte [bp - 0x000b], 4         ; 0x314e
    lodsb                            ; 0x3152
    jmp short @..sprintf.l12         ; 0x3153
leaf_loc_3155:
    mov cx, 8                        ; 0x3155
    jmp short @..sprintf.l13         ; 0x3158
leaf_loc_315a:
    or byte [bp - 0x000b], 0x20      ; 0x315a
leaf_loc_315e:
    mov cx, 0x10                     ; 0x315e
    jmp short @..sprintf.l13         ; 0x3161
leaf_loc_3163:
    mov cx, 0xa                      ; 0x3163
    jmp short @..sprintf.l13         ; 0x3166
leaf_loc_3168:
    mov cx, 0xff0a                   ; 0x3168
@..sprintf.l13:
    push ds                          ; 0x316b
    pop es                           ; 0x316c
    mov di, word [bp + 0x8]          ; 0x316d
    mov ax, word [es:di]             ; 0x3170
    add di, byte 2                   ; 0x3173
    test byte [bp - 0x000b], 2       ; 0x3176
    je short @..sprintf.l14          ; 0x317a
    mov dx, word [es:di]             ; 0x317c
    add di, byte 2                   ; 0x317f
    jmp short @..sprintf.l15         ; 0x3182
@..sprintf.l14:
    sub dx, dx                       ; 0x3184
    test ch, ch                      ; 0x3186
    je short @..sprintf.l16          ; 0x3188
    cwd                              ; 0x318a
@..sprintf.l15:
    test ch, ch                      ; 0x318b
    je short @..sprintf.l16          ; 0x318d
    mov ch, byte [bp - 0x000e]       ; 0x318f
    mov byte [bp - 0x000d], ch       ; 0x3192
    test dx, dx                      ; 0x3195
    jns short @..sprintf.l16         ; 0x3197
    mov byte [bp - 0x000d], 0x2d     ; 0x3199
    neg dx                           ; 0x319d
    neg ax                           ; 0x319f
    sbb dx, byte 0                   ; 0x31a1
@..sprintf.l16:
    mov word [bp + 0x8], di          ; 0x31a4
    cmp word [bp - 0x0006], byte 0   ; 0x31a7
    jge short @..sprintf.l17         ; 0x31ab
    mov word [bp - 0x0006], 1        ; 0x31ad
@..sprintf.l17:
    mov ch, 0                        ; 0x31b2
    mov di, ss                       ; 0x31b4
    mov es, di                       ; 0x31b6
    lea di, word [bp - 0x0140]       ; 0x31b8
@..sprintf.l18:
    test dx, dx                      ; 0x31bc
    jne short @..sprintf.l19         ; 0x31be
    test ax, ax                      ; 0x31c0
    je short @..sprintf.l22          ; 0x31c2
@..sprintf.l19:
    sub bx, bx                       ; 0x31c4
    cmp cx, dx                       ; 0x31c6
    ja short @..sprintf.l20          ; 0x31c8
    push ax                          ; 0x31ca
    mov ax, dx                       ; 0x31cb
    sub dx, dx                       ; 0x31cd
    div cx                           ; 0x31cf
    mov bx, ax                       ; 0x31d1
    pop ax                           ; 0x31d3
    div cx                           ; 0x31d4
    jmp short @..sprintf.l21         ; 0x31d6
@..sprintf.l20:
    div cx                           ; 0x31d8
@..sprintf.l21:
    xchg bx, dx                      ; 0x31da
    mov bl, byte [cs:bx + jumptable_3053 + 0x2a - IMAGE_BASE] ; 0x31dc
    dec di                           ; 0x31e1
    mov byte [es:di], bl             ; 0x31e2
    jmp short @..sprintf.l18         ; 0x31e5
@..sprintf.l22:
    test byte [bp - 0x000b], 0x10    ; 0x31e7
    je short @..sprintf.l24          ; 0x31eb
    cmp cl, 0xa                      ; 0x31ed
    je short @..sprintf.l24          ; 0x31f0
    cmp cl, 0x10                     ; 0x31f2
    jne short @..sprintf.l23         ; 0x31f5
    mov byte [bp - 0x000d], 0x78     ; 0x31f7
    jmp short @..sprintf.l24         ; 0x31fb
@..sprintf.l23:
    dec di                           ; 0x31fd
    mov byte [es:di], 0x30           ; 0x31fe
@..sprintf.l24:
    lea cx, word [bp - 0x0140]       ; 0x3202
    sub cx, di                       ; 0x3206
    mov ax, word [bp - 0x0006]       ; 0x3208
    sub ax, cx                       ; 0x320b
    mov word [bp - 0x0006], ax       ; 0x320d
    jle short @..sprintf.l25         ; 0x3210
    sub word [bp - 0x0004], ax       ; 0x3212
@..sprintf.l25:
    mov word [bp - 0x0008], cx       ; 0x3215
    cmp byte [bp - 0x000d], 0        ; 0x3218
    je short @..sprintf.l27          ; 0x321c
    cmp byte [bp - 0x000d], 0x78     ; 0x321e
    jne short @..sprintf.l26         ; 0x3222
    dec word [bp - 0x0004]           ; 0x3224
@..sprintf.l26:
    dec word [bp - 0x0004]           ; 0x3227
@..sprintf.l27:
    sub word [bp - 0x0004], cx       ; 0x322a
    jle short @..sprintf.l29         ; 0x322d
    test byte [bp - 0x000b], 8       ; 0x322f
    jne short @..sprintf.l29         ; 0x3233
    cmp byte [bp - 0x000c], 0x30     ; 0x3235
    jne short @..sprintf.l28         ; 0x3239
    call loc_MRST                    ; 0x323b
@..sprintf.l28:
    mov al, byte [bp - 0x000c]       ; 0x323e
    call loc_NJTI                    ; 0x3241
    dec word [bp - 0x0004]           ; 0x3244
    jg short @..sprintf.l28          ; 0x3247
@..sprintf.l29:
    call loc_MRST                    ; 0x3249
@..sprintf.l30:
    dec word [bp - 0x0006]           ; 0x324c
    js short @..sprintf.l31          ; 0x324f
    mov al, 0x30                     ; 0x3251
    call loc_NJTI                    ; 0x3253
    jmp short @..sprintf.l30         ; 0x3256
@..sprintf.l31:
    dec word [bp - 0x0008]           ; 0x3258
    js short @..sprintf.l32          ; 0x325b
    mov al, byte [es:di]             ; 0x325d
    inc di                           ; 0x3260
    call loc_NJTI                    ; 0x3261
    jmp short @..sprintf.l31         ; 0x3264
@..sprintf.l32:
    dec word [bp - 0x0004]           ; 0x3266
    js short @..sprintf.l33          ; 0x3269
    mov al, 0x20                     ; 0x326b
    call loc_NJTI                    ; 0x326d
    jmp short @..sprintf.l32         ; 0x3270
@..sprintf.l33:
    jmp near @..sprintf.l1           ; 0x3272
loc_GHJS:
    or byte [bp - 0x000b], 0x20      ; 0x3275
    add al, 0x20                     ; 0x3279
loc_GLMV:
    add word [bp + 0x8], byte 8      ; 0x327b
    mov ax, cs                       ; 0x327f
    mov es, ax                       ; 0x3281
    mov di, 0x2e8d                   ; 0x3283
    sub word [bp - 0x0004], byte 0x0a ; 0x3286
    jmp short @..sprintf.l31         ; 0x328a
loc_QMOJ:
    call leaf_loc_GSJQ               ; 0x328c
    push di                          ; 0x328f
    mov al, 0                        ; 0x3290
    mov cx, 0xffff                   ; 0x3292
    repne scasb                      ; 0x3295
    not cx                           ; 0x3297
    dec cx                           ; 0x3299
    cmp cx, word [bp - 0x0006]       ; 0x329a
    jbe short @..sprintf.l34         ; 0x329d
    mov cx, word [bp - 0x0006]       ; 0x329f
@..sprintf.l34:
    pop di                           ; 0x32a2
    mov word [bp - 0x0006], 0        ; 0x32a3
    jmp near @..sprintf.l25          ; 0x32a8
loc_OKTP:
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
    jmp near @..sprintf.l25          ; 0x32cd
string_loc_32d0:
    jmp near @..sprintf.l1           ; 0x32d0
string_loc_32d3:
    call leaf_loc_GSJQ               ; 0x32d3
    mov ax, word [bp - 0x0002]       ; 0x32d6
    mov word [es:di], ax             ; 0x32d9
    test byte [bp - 0x000b], 2       ; 0x32dc
    je short @..sprintf.l35          ; 0x32e0
    mov word [es:di + 0x2], 0        ; 0x32e2
@..sprintf.l35:
    jmp near @..sprintf.l1           ; 0x32e8
loc_MRST:
    mov al, byte [bp - 0x000d]       ; 0x32eb
    test al, al                      ; 0x32ee
    je short loc_PLIR                ; 0x32f0
    cmp al, 0x78                     ; 0x32f2
    jne short @..loc_MRST.l1         ; 0x32f4
    mov al, 0x30                     ; 0x32f6
    call loc_NJTI                    ; 0x32f8
    mov al, 0x78                     ; 0x32fb
@..loc_MRST.l1:
    mov byte [bp - 0x000d], 0        ; 0x32fd
loc_NJTI:
    inc word [bp - 0x0002]           ; 0x3301
    test byte [bp - 0x000b], 0x20    ; 0x3304
    je short @..loc_NJTI.l1          ; 0x3308
    cmp al, 0x61                     ; 0x330a
    jb short @..loc_NJTI.l1          ; 0x330c
    cmp al, 0x7a                     ; 0x330e
    ja short @..loc_NJTI.l1          ; 0x3310
    sub al, 0x20                     ; 0x3312
@..loc_NJTI.l1:
    push es                          ; 0x3314
    sub ah, ah                       ; 0x3315
    push ax                          ; 0x3317
    call [bp + 0x4]                  ; 0x3318
    pop ax                           ; 0x331b
    pop es                           ; 0x331c
loc_PLIR:
    ret                              ; 0x331d
