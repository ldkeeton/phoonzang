; auto-generated
api_idx_0038_2:
    mov ax, 0xffc8                   ; 0x2fef
    call aztec_csav                  ; 0x2ff2
    mov word [bp - 0x000c], 0        ; 0x2ff5
    mov ax, word [bss_5218]          ; 0x2ffa
    mov word [bp - 0x000e], ax       ; 0x2ffd
    cmp byte [bss_5987], 5           ; 0x3000
    jne short @..api_idx_0038_2.l1   ; 0x3005
    cmp ax, strict word 0            ; 0x3007
    jle short @..api_idx_0038_2.l1   ; 0x300a
    inc ax                           ; 0x300c
    inc ax                           ; 0x300d
    jmp short @..api_idx_0038_2.l2   ; 0x300e
@..api_idx_0038_2.l1:
    mov ax, word [bp - 0x000e]       ; 0x3010
@..api_idx_0038_2.l2:
    mov word [bp - 0x000e], ax       ; 0x3013
    mov ax, 0                        ; 0x3016
    push ax                          ; 0x3019
    call ds_loc_415b                 ; 0x301a
    pop cx                           ; 0x301d
    lea ax, word [bp - 0x0024]       ; 0x301e
    push ax                          ; 0x3021
    mov ax, 0x58c                    ; 0x3022
    push ax                          ; 0x3025
    call ds_app_mem_0782             ; 0x3026
    add sp, byte 4                   ; 0x3029
    lea ax, word [bp - 0x0038]       ; 0x302c
    push ax                          ; 0x302f
    mov ax, 0x58d                    ; 0x3030
    push ax                          ; 0x3033
    call ds_app_mem_0782             ; 0x3034
    add sp, byte 4                   ; 0x3037
    mov word [bp - 0x0010], 1        ; 0x303a
    cmp word [bp + 0x4], byte 0      ; 0x303f
    je short @..api_idx_0038_2.l3    ; 0x3043
    mov ax, word [bp + 0x4]          ; 0x3045
    cmp ax, strict word 2            ; 0x3048
    jne short @..api_idx_0038_2.l4   ; 0x304b
@..api_idx_0038_2.l3:
    mov word [bss_95b2], 4           ; 0x304d
    mov ax, 1                        ; 0x3053
    push ax                          ; 0x3056
    mov ax, 0x90cf                   ; 0x3057
    push ax                          ; 0x305a
    call ds_app_23a8                 ; 0x305b
    add sp, byte 4                   ; 0x305e
    push ax                          ; 0x3061
    mov ax, 0x91ee                   ; 0x3062
    push ax                          ; 0x3065
    call aztec_strcpy                ; 0x3066
    add sp, byte 4                   ; 0x3069
    jmp near @..api_idx_0038_2.l13   ; 0x306c
@..api_idx_0038_2.l4:
    mov word [bss_95b2], 0           ; 0x306f
    mov ax, 0x594e                   ; 0x3075
    push ax                          ; 0x3078
    mov ax, 0x593a                   ; 0x3079
    push ax                          ; 0x307c
    mov ax, 1                        ; 0x307d
    push ax                          ; 0x3080
    push ax                          ; 0x3081
    mov ax, 0                        ; 0x3082
    push ax                          ; 0x3085
    mov ax, 0x578                    ; 0x3086
    push ax                          ; 0x3089
    call api_idx_0028                ; 0x308a
    add sp, byte 0x0c                ; 0x308d
    cmp ax, strict word 2            ; 0x3090
    jne short @..api_idx_0038_2.l5   ; 0x3093
    mov ax, 0xffff                   ; 0x3095
    ret                              ; 0x3098
@..api_idx_0038_2.l5:
    mov ax, 0x3a                     ; 0x3099
    push ax                          ; 0x309c
    mov ax, 0x5912                   ; 0x309d
    push ax                          ; 0x30a0
    mov ax, 0x91c6                   ; 0x30a1
    push ax                          ; 0x30a4
    call ds_app_2359                 ; 0x30a5
    add sp, byte 6                   ; 0x30a8
    mov ax, 0x3a                     ; 0x30ab
    push ax                          ; 0x30ae
    mov ax, 0x593a                   ; 0x30af
    push ax                          ; 0x30b2
    mov ax, 0x91da                   ; 0x30b3
    push ax                          ; 0x30b6
    call ds_app_2359                 ; 0x30b7
    add sp, byte 6                   ; 0x30ba
    mov ax, 0x593a                   ; 0x30bd
    push ax                          ; 0x30c0
    mov ax, 0x91ee                   ; 0x30c1
    push ax                          ; 0x30c4
    call aztec_strcpy                ; 0x30c5
    add sp, byte 4                   ; 0x30c8
    mov ax, 0x91ee                   ; 0x30cb
    push ax                          ; 0x30ce
    call aztec_strlen                ; 0x30cf
    pop cx                           ; 0x30d2
    cmp ax, strict word 0            ; 0x30d3
    jle short @..api_idx_0038_2.l6   ; 0x30d6
    mov ax, 0x91ee                   ; 0x30d8
    push ax                          ; 0x30db
    call aztec_strlen                ; 0x30dc
    pop cx                           ; 0x30df
    dec ax                           ; 0x30e0
    mov word [bp - 0x0002], ax       ; 0x30e1
    mov bx, ax                       ; 0x30e4
    cmp byte [bx - 0x6e12], 0x5c     ; 0x30e6
    je short @..api_idx_0038_2.l6    ; 0x30eb
    mov byte [bx - 0x6e11], 0x5c     ; 0x30ed
    mov byte [bx - 0x6e10], 0        ; 0x30f2
@..api_idx_0038_2.l6:
    mov ax, 0x594e                   ; 0x30f7
    push ax                          ; 0x30fa
    mov ax, 0x91ee                   ; 0x30fb
    push ax                          ; 0x30fe
    call ds_string_loc_4574          ; 0x30ff
    add sp, byte 4                   ; 0x3102
    cmp byte [bss_5987], 1           ; 0x3105
    jne short @..api_idx_0038_2.l7   ; 0x310a
    mov ax, 0x91da                   ; 0x310c
    push ax                          ; 0x310f
    mov ax, 0x91c6                   ; 0x3110
    push ax                          ; 0x3113
    call aztec_strcmp                ; 0x3114
    add sp, byte 4                   ; 0x3117
    test ax, ax                      ; 0x311a
    jne short @..api_idx_0038_2.l7   ; 0x311c
    jmp near @..api_idx_0038_2.l13   ; 0x311e
@..api_idx_0038_2.l7:
    mov ax, 0x91da                   ; 0x3121
    push ax                          ; 0x3124
    call aztec_strlen                ; 0x3125
    pop cx                           ; 0x3128
    cmp ax, strict word 0            ; 0x3129
    jle short @..api_idx_0038_2.l11  ; 0x312c
    mov ax, 0x91da                   ; 0x312e
    push ax                          ; 0x3131
    mov ax, 0x91c6                   ; 0x3132
    push ax                          ; 0x3135
    call aztec_strcmp                ; 0x3136
    add sp, byte 4                   ; 0x3139
    test ax, ax                      ; 0x313c
    je short @..api_idx_0038_2.l8    ; 0x313e
    cmp byte [bss_5987], 5           ; 0x3140
    jne short @..api_idx_0038_2.l9   ; 0x3145
@..api_idx_0038_2.l8:
    mov word [bp - 0x000c], 1        ; 0x3147
@..api_idx_0038_2.l9:
    mov ax, 0                        ; 0x314c
    push ax                          ; 0x314f
    push word [bp - 0x000c]          ; 0x3150
    mov ax, 0xffff                   ; 0x3153
    push ax                          ; 0x3156
    mov ax, 0x91da                   ; 0x3157
    push ax                          ; 0x315a
    call ds_app_file_23ef            ; 0x315b
    add sp, byte 8                   ; 0x315e
    mov ax, 1                        ; 0x3161
    cmp word [bp - 0x000c], byte 0   ; 0x3164
    je short @..api_idx_0038_2.l10   ; 0x3168
    mov ax, 0                        ; 0x316a
@..api_idx_0038_2.l10:
    mov word [bp - 0x0010], ax       ; 0x316d
    jmp short @..api_idx_0038_2.l13  ; 0x3170
@..api_idx_0038_2.l11:
    cmp byte [bss_5987], 1           ; 0x3172
    jbe short @..api_idx_0038_2.l13  ; 0x3177
    mov word [bp - 0x000c], 1        ; 0x3179
    mov ax, 0                        ; 0x317e
    push ax                          ; 0x3181
    push word [bp - 0x000c]          ; 0x3182
    mov ax, 0xffff                   ; 0x3185
    push ax                          ; 0x3188
    mov ax, 0x91c6                   ; 0x3189
    push ax                          ; 0x318c
    call ds_app_file_23ef            ; 0x318d
    add sp, byte 8                   ; 0x3190
    mov ax, 1                        ; 0x3193
    cmp word [bp - 0x000c], byte 0   ; 0x3196
    je short @..api_idx_0038_2.l12   ; 0x319a
    mov ax, 0                        ; 0x319c
@..api_idx_0038_2.l12:
    mov word [bp - 0x0010], ax       ; 0x319f
@..api_idx_0038_2.l13:
    cmp word [bp + 0x4], byte 2      ; 0x31a2
    je short @..api_idx_0038_2.l14   ; 0x31a6
    mov ax, 0xc7                     ; 0x31a8
    push ax                          ; 0x31ab
    mov ax, 0x13f                    ; 0x31ac
    push ax                          ; 0x31af
    mov ax, 0                        ; 0x31b0
    push ax                          ; 0x31b3
    push ax                          ; 0x31b4
    call ds_loc_3b21                 ; 0x31b5
    add sp, byte 8                   ; 0x31b8
@..api_idx_0038_2.l14:
    mov ax, 0                        ; 0x31bb
    push ax                          ; 0x31be
    mov ax, 0x91ee                   ; 0x31bf
    push ax                          ; 0x31c2
    call aztec_open                  ; 0x31c3
    add sp, byte 4                   ; 0x31c6
    mov word [bp - 0x000a], ax       ; 0x31c9
    cmp ax, strict word 0xffff       ; 0x31cc
    jne short @..api_idx_0038_2.l16  ; 0x31cf
    lea ax, word [bp - 0x0024]       ; 0x31d1
    push ax                          ; 0x31d4
    call loc_150d                    ; 0x31d5
    pop cx                           ; 0x31d8
    cmp word [bp - 0x000c], byte 0   ; 0x31d9
    je short @..api_idx_0038_2.l15   ; 0x31dd
    mov ax, 1                        ; 0x31df
    push ax                          ; 0x31e2
    push word [bp - 0x0010]          ; 0x31e3
    push word [bp - 0x000e]          ; 0x31e6
    mov ax, 0x91c6                   ; 0x31e9
    push ax                          ; 0x31ec
    call ds_app_file_23ef            ; 0x31ed
    add sp, byte 8                   ; 0x31f0
@..api_idx_0038_2.l15:
    mov ax, 0xffff                   ; 0x31f3
    ret                              ; 0x31f6
@..api_idx_0038_2.l16:
    cmp word [bp + 0x4], byte 0      ; 0x31f7
    je short @..api_idx_0038_2.l17   ; 0x31fb
    mov ax, word [bp + 0x4]          ; 0x31fd
    cmp ax, strict word 2            ; 0x3200
    jne short @..api_idx_0038_2.l18  ; 0x3203
@..api_idx_0038_2.l17:
    jmp short @..api_idx_0038_2.l19  ; 0x3205
@..api_idx_0038_2.l18:
    mov ax, 0xc7                     ; 0x3207
    push ax                          ; 0x320a
    mov ax, 0x13f                    ; 0x320b
    push ax                          ; 0x320e
    mov ax, 0                        ; 0x320f
    push ax                          ; 0x3212
    push ax                          ; 0x3213
    call ds_loc_3b21                 ; 0x3214
    add sp, byte 8                   ; 0x3217
    mov ax, 1                        ; 0x321a
    push ax                          ; 0x321d
    mov ax, 0xd                      ; 0x321e
    push ax                          ; 0x3221
    mov ax, 0x12                     ; 0x3222
    push ax                          ; 0x3225
    mov ax, 0x24                     ; 0x3226
    push ax                          ; 0x3229
    mov ax, 0x61                     ; 0x322a
    push ax                          ; 0x322d
    mov ax, 3                        ; 0x322e
    push ax                          ; 0x3231
    lea ax, word [bp - 0x0038]       ; 0x3232
    push ax                          ; 0x3235
    call api_idx_0004                ; 0x3236
    add sp, byte 0x0e                ; 0x3239
@..api_idx_0038_2.l19:
    mov si, bss_5642                 ; 0x323c
    mov di, bss_95b4                 ; 0x323f
    mov cx, ds                       ; 0x3242
    mov es, cx                       ; 0x3244
    mov cx, 0x1a6                    ; 0x3246
    rep movsw                        ; 0x3249
    mov ax, 0                        ; 0x324b
    push ax                          ; 0x324e
    mov ax, 0                        ; 0x324f
    mov dx, 0                        ; 0x3252
    push dx                          ; 0x3255
    push ax                          ; 0x3256
    push word [bp - 0x000a]          ; 0x3257
    call aztec_lseek                 ; 0x325a
    add sp, byte 8                   ; 0x325d
    mov ax, 0x34c                    ; 0x3260
    push ax                          ; 0x3263
    mov ax, 0x5642                   ; 0x3264
    push ax                          ; 0x3267
    push word [bp - 0x000a]          ; 0x3268
    call ds_leaf_loc_4fb6            ; 0x326b
    add sp, byte 6                   ; 0x326e
    mov word [bp - 0x0008], ax       ; 0x3271
    cmp ax, strict word 0            ; 0x3274
    jg short @..api_idx_0038_2.l21   ; 0x3277
    lea ax, word [bp - 0x0024]       ; 0x3279
    push ax                          ; 0x327c
    call loc_150d                    ; 0x327d
    pop cx                           ; 0x3280
    push word [bp - 0x000a]          ; 0x3281
    call aztec_close                 ; 0x3284
    pop cx                           ; 0x3287
    cmp word [bp - 0x000c], byte 0   ; 0x3288
    je short @..api_idx_0038_2.l20   ; 0x328c
    mov ax, 1                        ; 0x328e
    push ax                          ; 0x3291
    push word [bp - 0x0010]          ; 0x3292
    push word [bp - 0x000e]          ; 0x3295
    mov ax, 0x91c6                   ; 0x3298
    push ax                          ; 0x329b
    call ds_app_file_23ef            ; 0x329c
    add sp, byte 8                   ; 0x329f
@..api_idx_0038_2.l20:
    mov ax, 0xffff                   ; 0x32a2
    ret                              ; 0x32a5
@..api_idx_0038_2.l21:
    mov word [bp - 0x0002], 0        ; 0x32a6
@..api_idx_0038_2.l22:
    mov ax, 0x14                     ; 0x32ab
    imul word [bp - 0x0002]          ; 0x32ae
    add ax, 0x9884                   ; 0x32b1
    push ax                          ; 0x32b4
    mov ax, 0x14                     ; 0x32b5
    imul word [bp - 0x0002]          ; 0x32b8
    add ax, 0x5912                   ; 0x32bb
    push ax                          ; 0x32be
    call aztec_strcpy                ; 0x32bf
    add sp, byte 4                   ; 0x32c2
    inc word [bp - 0x0002]           ; 0x32c5
    mov ax, word [bp - 0x0002]       ; 0x32c8
    cmp ax, strict word 4            ; 0x32cb
    jl short @..api_idx_0038_2.l22   ; 0x32ce
    mov al, byte [bss_98d4]          ; 0x32d0
    mov byte [bss_5962], al          ; 0x32d3
    mov al, byte [bss_98d5]          ; 0x32d6
    mov byte [bss_5963], al          ; 0x32d9
    mov ax, 0x98d6                   ; 0x32dc
    push ax                          ; 0x32df
    mov ax, 0x5964                   ; 0x32e0
    push ax                          ; 0x32e3
    call aztec_strcpy                ; 0x32e4
    add sp, byte 4                   ; 0x32e7
    mov al, byte [bss_98ea]          ; 0x32ea
    mov byte [bss_5978], al          ; 0x32ed
    mov al, byte [bss_98eb]          ; 0x32f0
    mov byte [bss_5979], al          ; 0x32f3
    mov word [bp - 0x0002], 0        ; 0x32f6
@..api_idx_0038_2.l23:
    mov bx, word [bp - 0x0002]       ; 0x32fb
    mov al, byte [bx - 0x6712]       ; 0x32fe
    mov byte [bx + 0x597c], al       ; 0x3302
    inc word [bp - 0x0002]           ; 0x3306
    mov ax, word [bp - 0x0002]       ; 0x3309
    cmp ax, strict word 4            ; 0x330c
    jl short @..api_idx_0038_2.l23   ; 0x330f
    mov al, byte [bss_98f6]          ; 0x3311
    mov byte [bss_5984], al          ; 0x3314
    mov al, byte [bss_98f7]          ; 0x3317
    mov byte [bss_5985], al          ; 0x331a
    mov ax, word [bss_98f2]          ; 0x331d
    mov word [bss_5980], ax          ; 0x3320
    mov ax, word [bss_98f4]          ; 0x3323
    mov word [bss_5982], ax          ; 0x3326
    mov al, byte [bss_98f8]          ; 0x3329
    mov byte [bss_5986], al          ; 0x332c
    mov al, byte [bss_98f9]          ; 0x332f
    mov byte [bss_5987], al          ; 0x3332
    mov al, byte [bss_98fa]          ; 0x3335
    mov byte [bss_5988], al          ; 0x3338
    mov al, byte [bss_98fb]          ; 0x333b
    mov byte [bss_5989], al          ; 0x333e
    mov al, byte [bss_98fc]          ; 0x3341
    mov byte [bss_598a], al          ; 0x3344
    mov al, byte [bss_98fd]          ; 0x3347
    mov byte [bss_598b], al          ; 0x334a
    mov al, byte [bss_98fe]          ; 0x334d
    mov byte [bss_598c], al          ; 0x3350
    mov al, byte [bss_5986]          ; 0x3353
    sub ah, ah                       ; 0x3356
    mov word [bss_9058], ax          ; 0x3358
    mov ax, 6                        ; 0x335b
    imul word [bss_590e]             ; 0x335e
    mov word [bp - 0x0006], ax       ; 0x3362
    cmp ax, strict word 0            ; 0x3365
    jle short @..api_idx_0038_2.l25  ; 0x3368
    push ax                          ; 0x336a
    push word [bss_0e10]             ; 0x336b
    push word [bp - 0x000a]          ; 0x336f
    call ds_leaf_loc_4fb6            ; 0x3372
    add sp, byte 6                   ; 0x3375
    mov word [bp - 0x0008], ax       ; 0x3378
    cmp ax, strict word 0            ; 0x337b
    jg short @..api_idx_0038_2.l25   ; 0x337e
    lea ax, word [bp - 0x0024]       ; 0x3380
    push ax                          ; 0x3383
    call loc_150d                    ; 0x3384
    pop cx                           ; 0x3387
    push word [bp - 0x000a]          ; 0x3388
    call aztec_close                 ; 0x338b
    pop cx                           ; 0x338e
    cmp word [bp - 0x000c], byte 0   ; 0x338f
    je short @..api_idx_0038_2.l24   ; 0x3393
    mov ax, 1                        ; 0x3395
    push ax                          ; 0x3398
    push word [bp - 0x0010]          ; 0x3399
    push word [bp - 0x000e]          ; 0x339c
    mov ax, 0x91c6                   ; 0x339f
    push ax                          ; 0x33a2
    call ds_app_file_23ef            ; 0x33a3
    add sp, byte 8                   ; 0x33a6
@..api_idx_0038_2.l24:
    mov ax, 0xffff                   ; 0x33a9
    ret                              ; 0x33ac
@..api_idx_0038_2.l25:
    mov ax, word [bss_5910]          ; 0x33ad
    shl ax, 1                        ; 0x33b0
    shl ax, 1                        ; 0x33b2
    shl ax, 1                        ; 0x33b4
    mov word [bp - 0x0006], ax       ; 0x33b6
    cmp ax, strict word 0            ; 0x33b9
    jle short @..api_idx_0038_2.l27  ; 0x33bc
    push ax                          ; 0x33be
    push word [bss_0e0e]             ; 0x33bf
    push word [bp - 0x000a]          ; 0x33c3
    call ds_leaf_loc_4fb6            ; 0x33c6
    add sp, byte 6                   ; 0x33c9
    mov word [bp - 0x0008], ax       ; 0x33cc
    cmp ax, strict word 0            ; 0x33cf
    jg short @..api_idx_0038_2.l27   ; 0x33d2
    lea ax, word [bp - 0x0024]       ; 0x33d4
    push ax                          ; 0x33d7
    call loc_150d                    ; 0x33d8
    pop cx                           ; 0x33db
    push word [bp - 0x000a]          ; 0x33dc
    call aztec_close                 ; 0x33df
    pop cx                           ; 0x33e2
    cmp word [bp - 0x000c], byte 0   ; 0x33e3
    je short @..api_idx_0038_2.l26   ; 0x33e7
    mov ax, 1                        ; 0x33e9
    push ax                          ; 0x33ec
    push word [bp - 0x0010]          ; 0x33ed
    push word [bp - 0x000e]          ; 0x33f0
    mov ax, 0x91c6                   ; 0x33f3
    push ax                          ; 0x33f6
    call ds_app_file_23ef            ; 0x33f7
    add sp, byte 8                   ; 0x33fa
@..api_idx_0038_2.l26:
    mov ax, 0xffff                   ; 0x33fd
    ret                              ; 0x3400
@..api_idx_0038_2.l27:
    mov word [bp - 0x0004], 0        ; 0x3401
@..api_idx_0038_2.l28:
    mov ax, 0x80                     ; 0x3406
    push ax                          ; 0x3409
    mov ax, 0x9900                   ; 0x340a
    push ax                          ; 0x340d
    push word [bp - 0x000a]          ; 0x340e
    call ds_leaf_loc_4fb6            ; 0x3411
    add sp, byte 6                   ; 0x3414
    mov word [bp - 0x0008], ax       ; 0x3417
    cmp ax, strict word 0            ; 0x341a
    jg short @..api_idx_0038_2.l30   ; 0x341d
    lea ax, word [bp - 0x0024]       ; 0x341f
    push ax                          ; 0x3422
    call loc_150d                    ; 0x3423
    pop cx                           ; 0x3426
    push word [bp - 0x000a]          ; 0x3427
    call aztec_close                 ; 0x342a
    pop cx                           ; 0x342d
    cmp word [bp - 0x000c], byte 0   ; 0x342e
    je short @..api_idx_0038_2.l29   ; 0x3432
    mov ax, 1                        ; 0x3434
    push ax                          ; 0x3437
    push word [bp - 0x0010]          ; 0x3438
    push word [bp - 0x000e]          ; 0x343b
    mov ax, 0x91c6                   ; 0x343e
    push ax                          ; 0x3441
    call ds_app_file_23ef            ; 0x3442
    add sp, byte 8                   ; 0x3445
@..api_idx_0038_2.l29:
    mov ax, 0xffff                   ; 0x3448
    ret                              ; 0x344b
@..api_idx_0038_2.l30:
    mov ax, 0x80                     ; 0x344c
    push ax                          ; 0x344f
    mov ax, 0x9980                   ; 0x3450
    push ax                          ; 0x3453
    push word [bp - 0x000a]          ; 0x3454
    call ds_leaf_loc_4fb6            ; 0x3457
    add sp, byte 6                   ; 0x345a
    mov word [bp - 0x0008], ax       ; 0x345d
    cmp ax, strict word 0            ; 0x3460
    jg short @..api_idx_0038_2.l32   ; 0x3463
    lea ax, word [bp - 0x0024]       ; 0x3465
    push ax                          ; 0x3468
    call loc_150d                    ; 0x3469
    pop cx                           ; 0x346c
    push word [bp - 0x000a]          ; 0x346d
    call aztec_close                 ; 0x3470
    pop cx                           ; 0x3473
    cmp word [bp - 0x000c], byte 0   ; 0x3474
    je short @..api_idx_0038_2.l31   ; 0x3478
    mov ax, 1                        ; 0x347a
    push ax                          ; 0x347d
    push word [bp - 0x0010]          ; 0x347e
    push word [bp - 0x000e]          ; 0x3481
    mov ax, 0x91c6                   ; 0x3484
    push ax                          ; 0x3487
    call ds_app_file_23ef            ; 0x3488
    add sp, byte 8                   ; 0x348b
@..api_idx_0038_2.l31:
    mov ax, 0xffff                   ; 0x348e
    ret                              ; 0x3491
@..api_idx_0038_2.l32:
    mov ax, 0x80                     ; 0x3492
    push ax                          ; 0x3495
    mov ax, word [bp - 0x0004]       ; 0x3496
    mov cx, 7                        ; 0x3499
    shl ax, cl                       ; 0x349c
    mov cx, ax                       ; 0x349e
    mov ax, word [bss_0e1a]          ; 0x34a0
    mov dx, word [bss_0e1c]          ; 0x34a3
    add ax, cx                       ; 0x34a7
    push dx                          ; 0x34a9
    push ax                          ; 0x34aa
    push ds                          ; 0x34ab
    mov ax, 0x9900                   ; 0x34ac
    push ax                          ; 0x34af
    call app_memmove                 ; 0x34b0
    add sp, byte 0x0a                ; 0x34b3
    mov ax, 0x80                     ; 0x34b6
    push ax                          ; 0x34b9
    mov ax, word [bp - 0x0004]       ; 0x34ba
    mov cx, 7                        ; 0x34bd
    shl ax, cl                       ; 0x34c0
    mov cx, ax                       ; 0x34c2
    mov ax, word [bss_0e16]          ; 0x34c4
    mov dx, word [bss_0e18]          ; 0x34c7
    add ax, cx                       ; 0x34cb
    push dx                          ; 0x34cd
    push ax                          ; 0x34ce
    push ds                          ; 0x34cf
    mov ax, 0x9980                   ; 0x34d0
    push ax                          ; 0x34d3
    call app_memmove                 ; 0x34d4
    add sp, byte 0x0a                ; 0x34d7
    inc word [bp - 0x0004]           ; 0x34da
    mov ax, word [bp - 0x0004]       ; 0x34dd
    cmp ax, strict word 0x20         ; 0x34e0
    jge short @..api_idx_0038_2.l33  ; 0x34e3
    jmp near @..api_idx_0038_2.l28   ; 0x34e5
@..api_idx_0038_2.l33:
    mov ax, 0x4c                     ; 0x34e8
    push ax                          ; 0x34eb
    mov ax, 0x9a00                   ; 0x34ec
    push ax                          ; 0x34ef
    push word [bp - 0x000a]          ; 0x34f0
    call ds_leaf_loc_4fb6            ; 0x34f3
    add sp, byte 6                   ; 0x34f6
    mov word [bp - 0x0008], ax       ; 0x34f9
    cmp ax, strict word 0            ; 0x34fc
    jg short @..api_idx_0038_2.l35   ; 0x34ff
    lea ax, word [bp - 0x0024]       ; 0x3501
    push ax                          ; 0x3504
    call loc_150d                    ; 0x3505
    pop cx                           ; 0x3508
    push word [bp - 0x000a]          ; 0x3509
    call aztec_close                 ; 0x350c
    pop cx                           ; 0x350f
    cmp word [bp - 0x000c], byte 0   ; 0x3510
    je short @..api_idx_0038_2.l34   ; 0x3514
    mov ax, 1                        ; 0x3516
    push ax                          ; 0x3519
    push word [bp - 0x0010]          ; 0x351a
    push word [bp - 0x000e]          ; 0x351d
    mov ax, 0x91c6                   ; 0x3520
    push ax                          ; 0x3523
    call ds_app_file_23ef            ; 0x3524
    add sp, byte 8                   ; 0x3527
@..api_idx_0038_2.l34:
    mov ax, 0xffff                   ; 0x352a
    ret                              ; 0x352d
@..api_idx_0038_2.l35:
    cmp word [bss_9a00], byte 0xff   ; 0x352e
    jne short @..api_idx_0038_2.l37  ; 0x3533
    lea ax, word [bp - 0x0024]       ; 0x3535
    push ax                          ; 0x3538
    call loc_150d                    ; 0x3539
    pop cx                           ; 0x353c
    push word [bp - 0x000a]          ; 0x353d
    call aztec_close                 ; 0x3540
    pop cx                           ; 0x3543
    cmp word [bp - 0x000c], byte 0   ; 0x3544
    je short @..api_idx_0038_2.l36   ; 0x3548
    mov ax, 1                        ; 0x354a
    push ax                          ; 0x354d
    push word [bp - 0x0010]          ; 0x354e
    push word [bp - 0x000e]          ; 0x3551
    mov ax, 0x91c6                   ; 0x3554
    push ax                          ; 0x3557
    call ds_app_file_23ef            ; 0x3558
    add sp, byte 8                   ; 0x355b
@..api_idx_0038_2.l36:
    mov ax, 0xffff                   ; 0x355e
    ret                              ; 0x3561
@..api_idx_0038_2.l37:
    mov ax, word [bss_9a02]          ; 0x3562
    mov word [bss_8f46], ax          ; 0x3565
    mov ax, word [bss_9a04]          ; 0x3568
    mov word [bss_8f44], ax          ; 0x356b
    mov ax, word [bss_9a06]          ; 0x356e
    mov word [bss_8f42], ax          ; 0x3571
    mov ax, word [bss_9a08]          ; 0x3574
    mov word [bss_8f40], ax          ; 0x3577
    mov ax, word [bss_9a0a]          ; 0x357a
    mov word [bss_8f3e], ax          ; 0x357d
    mov ax, word [bss_9a0c]          ; 0x3580
    mov word [bss_82ee], ax          ; 0x3583
    mov ax, word [bss_9a00]          ; 0x3586
    mov word [bss_830c], ax          ; 0x3589
    mov ax, word [bss_9a10]          ; 0x358c
    mov word [bss_8f3a], ax          ; 0x358f
    mov ax, word [bss_9a12]          ; 0x3592
    mov word [bss_8f38], ax          ; 0x3595
    mov ax, word [bss_9a14]          ; 0x3598
    mov word [bss_8f36], ax          ; 0x359b
    mov ax, word [bss_9a16]          ; 0x359e
    mov word [bss_8f34], ax          ; 0x35a1
    mov ax, word [bss_9a18]          ; 0x35a4
    mov word [bss_8f32], ax          ; 0x35a7
    mov ax, word [bss_9a1a]          ; 0x35aa
    mov word [bss_8f30], ax          ; 0x35ad
    mov ax, word [bss_9a0e]          ; 0x35b0
    mov word [bss_8f3c], ax          ; 0x35b3
    mov ax, word [bss_9a1c]          ; 0x35b6
    mov word [bss_8f2e], ax          ; 0x35b9
    mov ax, word [bss_9a1e]          ; 0x35bc
    mov word [bss_8f2c], ax          ; 0x35bf
    mov ax, word [bss_9a20]          ; 0x35c2
    mov word [bss_8f2a], ax          ; 0x35c5
    mov ax, word [bss_9a22]          ; 0x35c8
    mov word [bss_8f28], ax          ; 0x35cb
    mov ax, word [bss_9a24]          ; 0x35ce
    mov word [bss_8f26], ax          ; 0x35d1
    mov word [bp - 0x0002], 0        ; 0x35d4
@..api_idx_0038_2.l38:
    mov ax, word [bp - 0x0002]       ; 0x35d9
    shl ax, 1                        ; 0x35dc
    shl ax, 1                        ; 0x35de
    mov bx, ax                       ; 0x35e0
    mov ax, word [bx - 0x65ce]       ; 0x35e2
    mov word [bx - 0x7d0e], ax       ; 0x35e6
    mov ax, word [bx - 0x65cc]       ; 0x35ea
    mov word [bx - 0x7d0c], ax       ; 0x35ee
    inc word [bp - 0x0002]           ; 0x35f2
    mov ax, word [bp - 0x0002]       ; 0x35f5
    cmp ax, strict word 6            ; 0x35f8
    jl short @..api_idx_0038_2.l38   ; 0x35fb
    mov ax, word [bss_9a26]          ; 0x35fd
    mov dx, word [bss_9a28]          ; 0x3600
    mov word [bss_8f1e], dx          ; 0x3604
    mov word [bss_8f1c], ax          ; 0x3608
    mov ax, word [bss_9a2a]          ; 0x360b
    mov dx, word [bss_9a2c]          ; 0x360e
    mov word [bss_8f1a], dx          ; 0x3612
    mov word [bss_8f18], ax          ; 0x3616
    mov ax, word [bss_9a2e]          ; 0x3619
    mov dx, word [bss_9a30]          ; 0x361c
    mov word [bss_8f16], dx          ; 0x3620
    mov word [bss_8f14], ax          ; 0x3624
    mov ax, 0x80                     ; 0x3627
    push ax                          ; 0x362a
    mov ax, 0x8a6e                   ; 0x362b
    push ax                          ; 0x362e
    push word [bp - 0x000a]          ; 0x362f
    call ds_leaf_loc_4fb6            ; 0x3632
    add sp, byte 6                   ; 0x3635
    mov word [bp - 0x0008], ax       ; 0x3638
    mov ax, 0x90                     ; 0x363b
    push ax                          ; 0x363e
    mov ax, 0x89de                   ; 0x363f
    push ax                          ; 0x3642
    push word [bp - 0x000a]          ; 0x3643
    call ds_leaf_loc_4fb6            ; 0x3646
    add sp, byte 6                   ; 0x3649
    mov word [bp - 0x0008], ax       ; 0x364c
    mov ax, 0x68                     ; 0x364f
    push ax                          ; 0x3652
    mov ax, 0x8976                   ; 0x3653
    push ax                          ; 0x3656
    push word [bp - 0x000a]          ; 0x3657
    call ds_leaf_loc_4fb6            ; 0x365a
    add sp, byte 6                   ; 0x365d
    mov word [bp - 0x0008], ax       ; 0x3660
    mov ax, 0x14a                    ; 0x3663
    push ax                          ; 0x3666
    mov ax, 0x882c                   ; 0x3667
    push ax                          ; 0x366a
    push word [bp - 0x000a]          ; 0x366b
    call ds_leaf_loc_4fb6            ; 0x366e
    add sp, byte 6                   ; 0x3671
    mov word [bp - 0x0008], ax       ; 0x3674
    mov ax, 0x344                    ; 0x3677
    push ax                          ; 0x367a
    mov ax, 0x84e8                   ; 0x367b
    push ax                          ; 0x367e
    push word [bp - 0x000a]          ; 0x367f
    call ds_leaf_loc_4fb6            ; 0x3682
    add sp, byte 6                   ; 0x3685
    mov word [bp - 0x0008], ax       ; 0x3688
    mov ax, 0x42                     ; 0x368b
    push ax                          ; 0x368e
    mov ax, 0x84a6                   ; 0x368f
    push ax                          ; 0x3692
    push word [bp - 0x000a]          ; 0x3693
    call ds_leaf_loc_4fb6            ; 0x3696
    add sp, byte 6                   ; 0x3699
    mov word [bp - 0x0008], ax       ; 0x369c
    cmp ax, strict word 0            ; 0x369f
    jg short @..api_idx_0038_2.l40   ; 0x36a2
    lea ax, word [bp - 0x0024]       ; 0x36a4
    push ax                          ; 0x36a7
    call loc_150d                    ; 0x36a8
    pop cx                           ; 0x36ab
    push word [bp - 0x000a]          ; 0x36ac
    call aztec_close                 ; 0x36af
    pop cx                           ; 0x36b2
    cmp word [bp - 0x000c], byte 0   ; 0x36b3
    je short @..api_idx_0038_2.l39   ; 0x36b7
    mov ax, 1                        ; 0x36b9
    push ax                          ; 0x36bc
    push word [bp - 0x0010]          ; 0x36bd
    push word [bp - 0x000e]          ; 0x36c0
    mov ax, 0x91c6                   ; 0x36c3
    push ax                          ; 0x36c6
    call ds_app_file_23ef            ; 0x36c7
    add sp, byte 8                   ; 0x36ca
@..api_idx_0038_2.l39:
    mov ax, 0xffff                   ; 0x36cd
    ret                              ; 0x36d0
@..api_idx_0038_2.l40:
    mov word [bp - 0x0002], 0        ; 0x36d1
@..api_idx_0038_2.l41:
    mov ax, 0x64                     ; 0x36d6
    push ax                          ; 0x36d9
    call ds_app_09f0                 ; 0x36da
    pop cx                           ; 0x36dd
    mov bx, word [bp - 0x0002]       ; 0x36de
    mov byte [bx + 0x5990], al       ; 0x36e1
    inc word [bp - 0x0002]           ; 0x36e5
    mov ax, word [bp - 0x0002]       ; 0x36e8
    cmp ax, strict word 0x64         ; 0x36eb
    jl short @..api_idx_0038_2.l41   ; 0x36ee
    cmp word [bp + 0x4], byte 1      ; 0x36f0
    je short @..api_idx_0038_2.l42   ; 0x36f4
    jmp near @..api_idx_0038_2.l49   ; 0x36f6
@..api_idx_0038_2.l42:
    mov ax, 0x64                     ; 0x36f9
    push ax                          ; 0x36fc
    mov ax, 0x5990                   ; 0x36fd
    push ax                          ; 0x3700
    push word [bp - 0x000a]          ; 0x3701
    call ds_leaf_loc_4fb6            ; 0x3704
    add sp, byte 6                   ; 0x3707
    mov word [bp - 0x0008], ax       ; 0x370a
    cmp ax, strict word 0            ; 0x370d
    jg short @..api_idx_0038_2.l44   ; 0x3710
    lea ax, word [bp - 0x0024]       ; 0x3712
    push ax                          ; 0x3715
    call loc_150d                    ; 0x3716
    pop cx                           ; 0x3719
    push word [bp - 0x000a]          ; 0x371a
    call aztec_close                 ; 0x371d
    pop cx                           ; 0x3720
    cmp word [bp - 0x000c], byte 0   ; 0x3721
    je short @..api_idx_0038_2.l43   ; 0x3725
    mov ax, 1                        ; 0x3727
    push ax                          ; 0x372a
    push word [bp - 0x0010]          ; 0x372b
    push word [bp - 0x000e]          ; 0x372e
    mov ax, 0x91c6                   ; 0x3731
    push ax                          ; 0x3734
    call ds_app_file_23ef            ; 0x3735
    add sp, byte 8                   ; 0x3738
@..api_idx_0038_2.l43:
    mov ax, 0xffff                   ; 0x373b
    ret                              ; 0x373e
@..api_idx_0038_2.l44:
    mov word [bss_69c8], 0           ; 0x373f
    mov word [bp - 0x0002], 0        ; 0x3745
    jmp near @..api_idx_0038_2.l48   ; 0x374a
@..api_idx_0038_2.l45:
    mov ax, 0x248                    ; 0x374d
    push ax                          ; 0x3750
    mov ax, 0x9a4c                   ; 0x3751
    push ax                          ; 0x3754
    push word [bp - 0x000a]          ; 0x3755
    call ds_leaf_loc_4fb6            ; 0x3758
    add sp, byte 6                   ; 0x375b
    mov word [bp - 0x0008], ax       ; 0x375e
    cmp ax, strict word 0            ; 0x3761
    jg short @..api_idx_0038_2.l47   ; 0x3764
    lea ax, word [bp - 0x0024]       ; 0x3766
    push ax                          ; 0x3769
    call loc_150d                    ; 0x376a
    pop cx                           ; 0x376d
    push word [bp - 0x000a]          ; 0x376e
    call aztec_close                 ; 0x3771
    pop cx                           ; 0x3774
    cmp word [bp - 0x000c], byte 0   ; 0x3775
    je short @..api_idx_0038_2.l46   ; 0x3779
    mov ax, 1                        ; 0x377b
    push ax                          ; 0x377e
    push word [bp - 0x0010]          ; 0x377f
    push word [bp - 0x000e]          ; 0x3782
    mov ax, 0x91c6                   ; 0x3785
    push ax                          ; 0x3788
    call ds_app_file_23ef            ; 0x3789
    add sp, byte 8                   ; 0x378c
@..api_idx_0038_2.l46:
    mov ax, 0xffff                   ; 0x378f
    ret                              ; 0x3792
@..api_idx_0038_2.l47:
    push word [bss_69c8]             ; 0x3793
    call api_idx_0006                ; 0x3797
    pop cx                           ; 0x379a
    mov cx, word [bss_69c8]          ; 0x379b
    shl cx, 1                        ; 0x379f
    mov bx, cx                       ; 0x37a1
    mov word [bx + 0x69bc], ax       ; 0x37a3
    mov si, bss_9a4c                 ; 0x37a7
    mov ax, 0x248                    ; 0x37aa
    imul word [bss_69c8]             ; 0x37ad
    mov di, ax                       ; 0x37b1
    add ax, 0x5bf4                   ; 0x37b3
    mov di, ax                       ; 0x37b6
    mov cx, ds                       ; 0x37b8
    mov es, cx                       ; 0x37ba
    mov cx, 0x124                    ; 0x37bc
    rep movsw                        ; 0x37bf
    inc word [bss_69c8]              ; 0x37c1
    inc word [bp - 0x0002]           ; 0x37c5
@..api_idx_0038_2.l48:
    mov ax, word [bp - 0x0002]       ; 0x37c8
    cmp ax, word [bss_9a4a]          ; 0x37cb
    jge short @..api_idx_0038_2.l49  ; 0x37cf
    jmp near @..api_idx_0038_2.l45   ; 0x37d1
@..api_idx_0038_2.l49:
    push word [bp - 0x000a]          ; 0x37d4
    call aztec_close                 ; 0x37d7
    pop cx                           ; 0x37da
    cmp word [bp - 0x000c], byte 0   ; 0x37db
    je short @..api_idx_0038_2.l50   ; 0x37df
    mov ax, 1                        ; 0x37e1
    push ax                          ; 0x37e4
    push word [bp - 0x0010]          ; 0x37e5
    push word [bp - 0x000e]          ; 0x37e8
    mov ax, 0x91c6                   ; 0x37eb
    push ax                          ; 0x37ee
    call ds_app_file_23ef            ; 0x37ef
    add sp, byte 8                   ; 0x37f2
@..api_idx_0038_2.l50:
    cmp word [bp + 0x4], byte 2      ; 0x37f5
    jne short @..api_idx_0038_2.l52  ; 0x37f9
    mov word [bp - 0x0002], 0        ; 0x37fb
@..api_idx_0038_2.l51:
    mov ax, 0                        ; 0x3800
    push ax                          ; 0x3803
    mov ax, 0x248                    ; 0x3804
    push ax                          ; 0x3807
    mov ax, 0x248                    ; 0x3808
    imul word [bp - 0x0002]          ; 0x380b
    add ax, 0x5bf4                   ; 0x380e
    push ax                          ; 0x3811
    call aztec_setmem                ; 0x3812
    add sp, byte 6                   ; 0x3815
    inc word [bp - 0x0002]           ; 0x3818
    mov ax, word [bp - 0x0002]       ; 0x381b
    cmp ax, strict word 6            ; 0x381e
    jl short @..api_idx_0038_2.l51   ; 0x3821
    call api_idx_0072                ; 0x3823
    cmp ax, strict word 0xffff       ; 0x3826
    jne short @..api_idx_0038_2.l52  ; 0x3829
    mov ax, 0xffff                   ; 0x382b
    ret                              ; 0x382e
@..api_idx_0038_2.l52:
    mov word [bp - 0x0002], 0        ; 0x382f
    jmp short @..api_idx_0038_2.l55  ; 0x3834
@..api_idx_0038_2.l53:
    mov ax, word [bp - 0x0002]       ; 0x3836
    shl ax, 1                        ; 0x3839
    mov bx, ax                       ; 0x383b
    push word [bx + 0x69bc]          ; 0x383d
    mov ax, 0x248                    ; 0x3841
    imul word [bp - 0x0002]          ; 0x3844
    mov bx, ax                       ; 0x3847
    mov al, byte [bx + 0x5e2a]       ; 0x3849
    sub ah, ah                       ; 0x384d
    push ax                          ; 0x384f
    call api_idx_0016                ; 0x3850
    add sp, byte 4                   ; 0x3853
    cmp word [bp + 0x4], byte 2      ; 0x3856
    je short @..api_idx_0038_2.l54   ; 0x385a
    mov ax, 0                        ; 0x385c
    push ax                          ; 0x385f
    push word [bp - 0x0002]          ; 0x3860
    call ds_app_1d81                 ; 0x3863
    add sp, byte 4                   ; 0x3866
@..api_idx_0038_2.l54:
    inc word [bp - 0x0002]           ; 0x3869
@..api_idx_0038_2.l55:
    mov ax, word [bp - 0x0002]       ; 0x386c
    cmp ax, word [bss_69c8]          ; 0x386f
    jl short @..api_idx_0038_2.l53   ; 0x3873
    mov ax, 0xc7                     ; 0x3875
    push ax                          ; 0x3878
    mov ax, 0x13f                    ; 0x3879
    push ax                          ; 0x387c
    mov ax, 0                        ; 0x387d
    push ax                          ; 0x3880
    push ax                          ; 0x3881
    call ds_loc_3b21                 ; 0x3882
    add sp, byte 8                   ; 0x3885
    mov ax, 0                        ; 0x3888
    ret                              ; 0x388b
