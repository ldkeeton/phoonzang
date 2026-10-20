; auto-generated
cseg_303e:
    db 0x4c
cseg_303f:

    db 'lhFNoxXudiscpneEfgG%'

jumptable_3053:
    dw jumptable_3053_case_0 - IMAGE_BASE      ; 0x3053
    dw jumptable_3053_case_1 - IMAGE_BASE      ; 0x3055
    dw jumptable_3053_case_2 - IMAGE_BASE      ; 0x3057
    dw jumptable_3053_case_3 - IMAGE_BASE      ; 0x3059
    dw jumptable_3053_case_2 - IMAGE_BASE      ; 0x305b
    dw jumptable_3053_case_5 - IMAGE_BASE      ; 0x305d
    dw jumptable_3053_case_6 - IMAGE_BASE      ; 0x305f
    dw jumptable_3053_case_7 - IMAGE_BASE      ; 0x3061
    dw jumptable_3053_case_8 - IMAGE_BASE      ; 0x3063
    dw jumptable_3053_case_9 - IMAGE_BASE      ; 0x3065
    dw jumptable_3053_case_9 - IMAGE_BASE      ; 0x3067
    dw jumptable_3053_case_11 - IMAGE_BASE     ; 0x3069
    dw jumptable_3053_case_12 - IMAGE_BASE     ; 0x306b
    dw jumptable_3053_case_13 - IMAGE_BASE     ; 0x306d
    dw jumptable_3053_case_14 - IMAGE_BASE     ; 0x306f
    dw jumptable_3053_case_15 - IMAGE_BASE     ; 0x3071
    dw jumptable_3053_case_16 - IMAGE_BASE     ; 0x3073
    dw jumptable_3053_case_15 - IMAGE_BASE     ; 0x3075
    dw jumptable_3053_case_15 - IMAGE_BASE     ; 0x3077
    dw jumptable_3053_case_16 - IMAGE_BASE     ; 0x3079
    dw jumptable_3053_case_20 - IMAGE_BASE     ; 0x307b
cseg_307d:

    db '0123456789abcdef'

cseg_308d:
    db ' -lm first', 0
aztec_format:
    push bp                          ; 0x3098
    mov bp, sp                       ; 0x3099
    sub sp, strict word 0x154        ; 0x309b
@..aztec_format.l4:
    push di                          ; 0x309f
    push si                          ; 0x30a0
    cld                              ; 0x30a1
    mov si, word [bp + 0x6]          ; 0x30a2
    mov word [bp - 0x0002], 0        ; 0x30a5
@..aztec_format.main_loop:
    mov byte [bp - 0x000b], 0        ; 0x30aa
@..aztec_format.l5:
    lodsb                            ; 0x30ae
    cmp al, 0x25                     ; 0x30af
    je short @..aztec_format.ispercent ; 0x30b1
jumptable_3053_case_20:
    test al, al                      ; 0x30b3
    je short @..aztec_format.finishup ; 0x30b5
    call @..aztec_format.emitchar    ; 0x30b7
    jmp short @..aztec_format.main_loop ; 0x30ba
@..aztec_format.finishup:
    mov ax, word [bp - 0x0002]       ; 0x30bc
    pop si                           ; 0x30bf
    pop di                           ; 0x30c0
    mov sp, bp                       ; 0x30c1
    pop bp                           ; 0x30c3
    ret                              ; 0x30c4
@..aztec_format.ispercent:
    mov byte [bp - 0x000c], 0x20     ; 0x30c5
    mov byte [bp - 0x000e], 0        ; 0x30c9
    mov byte [bp - 0x000d], 0        ; 0x30cd
    mov word [bp - 0x0006], 0xffff   ; 0x30d1
@..aztec_format.next_flag:
    lodsb                            ; 0x30d6
    cmp al, 0x2d                     ; 0x30d7
    jne short @..aztec_format.not_minus ; 0x30d9
    or byte [bp - 0x000b], 8         ; 0x30db
    jmp short @..aztec_format.next_flag ; 0x30df
@..aztec_format.not_minus:
    cmp al, 0x2b                     ; 0x30e1
    jne short @..aztec_format.not_plus ; 0x30e3
    mov byte [bp - 0x000e], 0x2b     ; 0x30e5
    jmp short @..aztec_format.next_flag ; 0x30e9
@..aztec_format.not_plus:
    cmp al, 0x20                     ; 0x30eb
    jne short @..aztec_format.not_space ; 0x30ed
    cmp byte [bp - 0x000e], 0        ; 0x30ef
    jne short @..aztec_format.next_flag ; 0x30f3
    mov byte [bp - 0x000e], 0x20     ; 0x30f5
    jmp short @..aztec_format.next_flag ; 0x30f9
@..aztec_format.not_space:
    cmp al, 0x23                     ; 0x30fb
    jne short @..aztec_format.not_alter ; 0x30fd
    or byte [bp - 0x000b], 0x10      ; 0x30ff
    jmp short @..aztec_format.next_flag ; 0x3103
@..aztec_format.not_alter:
    cmp al, 0x30                     ; 0x3105
    jne short @..aztec_format.not_zero ; 0x3107
@..aztec_format.l6:
    mov byte [bp - 0x000c], 0x30     ; 0x3109
    lodsb                            ; 0x310d
@..aztec_format.not_zero:
    call string_loc_TRQP             ; 0x310e
    test dx, dx                      ; 0x3111
    jns short @..aztec_format.pos_width ; 0x3113
    neg dx                           ; 0x3115
    or byte [bp - 0x000b], 8         ; 0x3117
@..aztec_format.pos_width:
    mov word [bp - 0x0004], dx       ; 0x311b
    cmp al, 0x2e                     ; 0x311e
    jne short @..aztec_format.no_precision ; 0x3120
    lodsb                            ; 0x3122
    call string_loc_TRQP             ; 0x3123
    mov word [bp - 0x0006], dx       ; 0x3126
@..aztec_format.no_precision:
    mov di, cs                       ; 0x3129
    mov es, di                       ; 0x312b
@..aztec_format.convert_again:
    mov di, cseg_303e - IMAGE_BASE   ; 0x312d
    mov cx, 0x15                     ; 0x3130
    repne scasb                      ; 0x3133
    sub di, strict word cseg_303e + 0x1 - IMAGE_BASE ; 0x3135
    shl di, 1                        ; 0x3139
    jmp [cs:di + jumptable_3053 - IMAGE_BASE] ; 0x313b
jumptable_3053_case_0:
    or byte [bp - 0x000b], 1         ; 0x3140
    lodsb                            ; 0x3144
    jmp short @..aztec_format.convert_again ; 0x3145
jumptable_3053_case_1:
    or byte [bp - 0x000b], 2         ; 0x3147
jumptable_3053_case_2:
    lodsb                            ; 0x314b
    jmp short @..aztec_format.convert_again ; 0x314c
jumptable_3053_case_3:
    or byte [bp - 0x000b], 4         ; 0x314e
    lodsb                            ; 0x3152
    jmp short @..aztec_format.convert_again ; 0x3153
jumptable_3053_case_5:
    mov cx, 8                        ; 0x3155
    jmp short @..aztec_format.intconv ; 0x3158
jumptable_3053_case_7:
    or byte [bp - 0x000b], 0x20      ; 0x315a
jumptable_3053_case_6:
    mov cx, 0x10                     ; 0x315e
    jmp short @..aztec_format.intconv ; 0x3161
jumptable_3053_case_8:
    mov cx, 0xa                      ; 0x3163
    jmp short @..aztec_format.intconv ; 0x3166
jumptable_3053_case_9:
    mov cx, 0xff0a                   ; 0x3168
@..aztec_format.intconv:
    push ds                          ; 0x316b
    pop es                           ; 0x316c
    mov di, word [bp + 0x8]          ; 0x316d
    mov ax, word [es:di]             ; 0x3170
    add di, byte 2                   ; 0x3173
    test byte [bp - 0x000b], 2       ; 0x3176
    je short @..aztec_format.shortload ; 0x317a
    mov dx, word [es:di]             ; 0x317c
    add di, byte 2                   ; 0x317f
    jmp short @..aztec_format.signcheck ; 0x3182
@..aztec_format.shortload:
    sub dx, dx                       ; 0x3184
    test ch, ch                      ; 0x3186
    je short @..aztec_format.nosign  ; 0x3188
    cwd                              ; 0x318a
@..aztec_format.signcheck:
    test ch, ch                      ; 0x318b
    je short @..aztec_format.nosign  ; 0x318d
    mov ch, byte [bp - 0x000e]       ; 0x318f
    mov byte [bp - 0x000d], ch       ; 0x3192
    test dx, dx                      ; 0x3195
    jns short @..aztec_format.nosign ; 0x3197
    mov byte [bp - 0x000d], 0x2d     ; 0x3199
    neg dx                           ; 0x319d
    neg ax                           ; 0x319f
    sbb dx, byte 0                   ; 0x31a1
@..aztec_format.nosign:
    mov word [bp + 0x8], di          ; 0x31a4
    cmp word [bp - 0x0006], byte 0   ; 0x31a7
    jge short @..aztec_format.prec_ok ; 0x31ab
    mov word [bp - 0x0006], 1        ; 0x31ad
@..aztec_format.prec_ok:
    mov ch, 0                        ; 0x31b2
    mov di, ss                       ; 0x31b4
    mov es, di                       ; 0x31b6
    lea di, word [bp - 0x0140]       ; 0x31b8
@..aztec_format.digit_loop:
    test dx, dx                      ; 0x31bc
    jne short @..aztec_format.l19    ; 0x31be
    test ax, ax                      ; 0x31c0
    je short @..aztec_format.digits_done ; 0x31c2
@..aztec_format.l19:
    sub bx, bx                       ; 0x31c4
    cmp cx, dx                       ; 0x31c6
    ja short @..aztec_format.veryeasy ; 0x31c8
    push ax                          ; 0x31ca
    mov ax, dx                       ; 0x31cb
    sub dx, dx                       ; 0x31cd
    div cx                           ; 0x31cf
    mov bx, ax                       ; 0x31d1
    pop ax                           ; 0x31d3
    div cx                           ; 0x31d4
    jmp short @..aztec_format.div_done ; 0x31d6
@..aztec_format.veryeasy:
    div cx                           ; 0x31d8
@..aztec_format.div_done:
    xchg bx, dx                      ; 0x31da
    mov bl, byte [cs:bx + cseg_307d - IMAGE_BASE] ; 0x31dc
    dec di                           ; 0x31e1
    mov byte [es:di], bl             ; 0x31e2
    jmp short @..aztec_format.digit_loop ; 0x31e5
@..aztec_format.digits_done:
    test byte [bp - 0x000b], 0x10    ; 0x31e7
    je short @..aztec_format.normalform ; 0x31eb
    cmp cl, 0xa                      ; 0x31ed
    je short @..aztec_format.normalform ; 0x31f0
    cmp cl, 0x10                     ; 0x31f2
    jne short @..aztec_format.nothex ; 0x31f5
    mov byte [bp - 0x000d], 0x78     ; 0x31f7
    jmp short @..aztec_format.normalform ; 0x31fb
@..aztec_format.nothex:
    dec di                           ; 0x31fd
    mov byte [es:di], 0x30           ; 0x31fe
@..aztec_format.normalform:
    lea cx, word [bp - 0x0140]       ; 0x3202
    sub cx, di                       ; 0x3206
    mov ax, word [bp - 0x0006]       ; 0x3208
    sub ax, cx                       ; 0x320b
    mov word [bp - 0x0006], ax       ; 0x320d
    jle short @..aztec_format.output_string ; 0x3210
    sub word [bp - 0x0004], ax       ; 0x3212
@..aztec_format.output_string:
    mov word [bp - 0x0008], cx       ; 0x3215
    cmp byte [bp - 0x000d], 0        ; 0x3218
    je short @..aztec_format.width_ok ; 0x321c
    cmp byte [bp - 0x000d], 0x78     ; 0x321e
    jne short @..aztec_format.nothex_prefix ; 0x3222
    dec word [bp - 0x0004]           ; 0x3224
@..aztec_format.nothex_prefix:
    dec word [bp - 0x0004]           ; 0x3227
@..aztec_format.width_ok:
    sub word [bp - 0x0004], cx       ; 0x322a
    jle short @..aztec_format.left_justify ; 0x322d
    test byte [bp - 0x000b], 8       ; 0x322f
    jne short @..aztec_format.left_justify ; 0x3233
    cmp byte [bp - 0x000c], 0x30     ; 0x3235
    jne short @..aztec_format.wpad_loop ; 0x3239
    call loc_MRST                    ; 0x323b
@..aztec_format.wpad_loop:
    mov al, byte [bp - 0x000c]       ; 0x323e
    call @..aztec_format.emitchar    ; 0x3241
    dec word [bp - 0x0004]           ; 0x3244
    jg short @..aztec_format.wpad_loop ; 0x3247
@..aztec_format.left_justify:
    call loc_MRST                    ; 0x3249
@..aztec_format.zpad_loop:
    dec word [bp - 0x0006]           ; 0x324c
    js short @..aztec_format.outchars ; 0x324f
    mov al, 0x30                     ; 0x3251
    call @..aztec_format.emitchar    ; 0x3253
    jmp short @..aztec_format.zpad_loop ; 0x3256
@..aztec_format.outchars:
    dec word [bp - 0x0008]           ; 0x3258
    js short @..aztec_format.trail_pad ; 0x325b
    mov al, byte [es:di]             ; 0x325d
    inc di                           ; 0x3260
    call @..aztec_format.emitchar    ; 0x3261
    jmp short @..aztec_format.outchars ; 0x3264
@..aztec_format.trail_pad:
    dec word [bp - 0x0004]           ; 0x3266
    js short @..aztec_format.outdone ; 0x3269
    mov al, 0x20                     ; 0x326b
    call @..aztec_format.emitchar    ; 0x326d
    jmp short @..aztec_format.trail_pad ; 0x3270
@..aztec_format.outdone:
    jmp near @..aztec_format.main_loop ; 0x3272
jumptable_3053_case_16:
    or byte [bp - 0x000b], 0x20      ; 0x3275
    add al, 0x20                     ; 0x3279
jumptable_3053_case_15:
    add word [bp + 0x8], byte 8      ; 0x327b
    mov ax, cs                       ; 0x327f
    mov es, ax                       ; 0x3281
    mov di, cseg_308d - IMAGE_BASE   ; 0x3283
    sub word [bp - 0x0004], byte 0x0a ; 0x3286
    jmp short @..aztec_format.outchars ; 0x328a
jumptable_3053_case_11:
    call leaf_loc_GSJQ               ; 0x328c
    push di                          ; 0x328f
    mov al, 0                        ; 0x3290
    mov cx, 0xffff                   ; 0x3292
    repne scasb                      ; 0x3295
    not cx                           ; 0x3297
    dec cx                           ; 0x3299
    cmp cx, word [bp - 0x0006]       ; 0x329a
    jbe short @..aztec_format.strlen_ok ; 0x329d
    mov cx, word [bp - 0x0006]       ; 0x329f
@..aztec_format.strlen_ok:
    pop di                           ; 0x32a2
    mov word [bp - 0x0006], 0        ; 0x32a3
    jmp near @..aztec_format.output_string ; 0x32a8
jumptable_3053_case_12:
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
    jmp near @..aztec_format.output_string ; 0x32cd
jumptable_3053_case_13:
    jmp near @..aztec_format.main_loop ; 0x32d0
jumptable_3053_case_14:
    call leaf_loc_GSJQ               ; 0x32d3
    mov ax, word [bp - 0x0002]       ; 0x32d6
    mov word [es:di], ax             ; 0x32d9
    test byte [bp - 0x000b], 2       ; 0x32dc
    je short @..aztec_format.nc_done ; 0x32e0
    mov word [es:di + 0x2], 0        ; 0x32e2
@..aztec_format.nc_done:
    jmp near @..aztec_format.main_loop ; 0x32e8
loc_MRST:
    mov al, byte [bp - 0x000d]       ; 0x32eb
    test al, al                      ; 0x32ee
    je short @..aztec_format.emitreturn ; 0x32f0
    cmp al, 0x78                     ; 0x32f2
    jne short @..loc_MRST.l1         ; 0x32f4
    mov al, 0x30                     ; 0x32f6
    call @..aztec_format.emitchar    ; 0x32f8
    mov al, 0x78                     ; 0x32fb
@..loc_MRST.l1:
    mov byte [bp - 0x000d], 0        ; 0x32fd
@..aztec_format.emitchar:
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
@..aztec_format.emitreturn:
    ret                              ; 0x331d
leaf_loc_GSJQ:
    push ds                          ; 0x331e
    pop es                           ; 0x331f
    mov di, word [bp + 0x8]          ; 0x3320
    test byte [bp - 0x000b], 4       ; 0x3323
    jne short @..leaf_loc_GSJQ.l1    ; 0x3327
    mov di, word [di]                ; 0x3329
    add word [bp + 0x8], byte 2      ; 0x332b
    ret                              ; 0x332f
@..leaf_loc_GSJQ.l1:
    les di, word [es:di]             ; 0x3330
    add word [bp + 0x8], byte 4      ; 0x3333
    ret                              ; 0x3337
string_loc_TRQP:
    cmp al, 0x2a                     ; 0x3338
    jne short @..string_loc_TRQP.l1  ; 0x333a
    push ds                          ; 0x333c
    pop es                           ; 0x333d
    mov di, word [bp + 0x8]          ; 0x333e
    mov dx, word [es:di]             ; 0x3341
    add di, byte 2                   ; 0x3344
    mov word [bp + 0x8], di          ; 0x3347
    lodsb                            ; 0x334a
    ret                              ; 0x334b
@..string_loc_TRQP.l1:
    sub dx, dx                       ; 0x334c
    mov ah, 0                        ; 0x334e
@..string_loc_TRQP.l2:
    cmp al, 0x30                     ; 0x3350
    jb short @..string_loc_TRQP.l3   ; 0x3352
    cmp al, 0x39                     ; 0x3354
    ja short @..string_loc_TRQP.l3   ; 0x3356
    sub al, 0x30                     ; 0x3358
    shl dx, 1                        ; 0x335a
    mov cx, dx                       ; 0x335c
    shl dx, 1                        ; 0x335e
    shl dx, 1                        ; 0x3360
    add dx, cx                       ; 0x3362
    add dx, ax                       ; 0x3364
    lodsb                            ; 0x3366
    jmp short @..string_loc_TRQP.l2  ; 0x3367
@..string_loc_TRQP.l3:
    ret                              ; 0x3369
