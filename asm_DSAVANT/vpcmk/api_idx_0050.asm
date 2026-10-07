api_idx_0050:
    mov ax, 0xffb0                   ; 0x3069
    call ds_dispatch_f40b            ; 0x306c
    mov word [bp - 0x0002], 0        ; 0x306f
@..api_idx_0050.l1:
    mov ax, word [bp - 0x0002]       ; 0x3074
    shl ax, 1                        ; 0x3077
    mov bx, ax                       ; 0x3079
    mov ax, word [bx - 0x7cf2]       ; 0x307b
    add bx, bp                       ; 0x307f
    mov word [bx - 0x0050], ax       ; 0x3081
    mov ax, word [bp - 0x0002]       ; 0x3084
    shl ax, 1                        ; 0x3087
    mov bx, ax                       ; 0x3089
    mov word [bx - 0x7cf2], 0        ; 0x308b
    inc word [bp - 0x0002]           ; 0x3091
    mov ax, word [bp - 0x0002]       ; 0x3094
    cmp ax, strict word 6            ; 0x3097
    jl short @..api_idx_0050.l1      ; 0x309a
    mov word [data_904e], 0xffff     ; 0x309c
    mov word [bp - 0x0004], 0x32     ; 0x30a2
    mov word [bp - 0x0006], 0x73     ; 0x30a7
    mov word [bp - 0x0008], 0x10d    ; 0x30ac
    mov word [bp - 0x000a], 0xc5     ; 0x30b1
    mov word [bp - 0x000c], 0x95     ; 0x30b6
    mov word [bp - 0x0014], 0x16     ; 0x30bb
    mov ax, 0x92d6                   ; 0x30c0
    push ax                          ; 0x30c3
    mov ax, word [bp - 0x000a]       ; 0x30c4
    inc ax                           ; 0x30c7
    push ax                          ; 0x30c8
    mov ax, word [bp - 0x0008]       ; 0x30c9
    inc ax                           ; 0x30cc
    push ax                          ; 0x30cd
    mov ax, word [bp - 0x0006]       ; 0x30ce
    dec ax                           ; 0x30d1
    push ax                          ; 0x30d2
    mov ax, word [bp - 0x0004]       ; 0x30d3
    dec ax                           ; 0x30d6
    push ax                          ; 0x30d7
    call ds_dispatch_c283            ; 0x30d8
    add sp, byte 0x0a                ; 0x30db
    mov word [bp - 0x003a], ax       ; 0x30de
    push word [bp - 0x000a]          ; 0x30e1
    push word [bp - 0x0008]          ; 0x30e4
    push word [bp - 0x0006]          ; 0x30e7
    push word [bp - 0x0004]          ; 0x30ea
    call ds_dispatch_bc9a            ; 0x30ed
    add sp, byte 8                   ; 0x30f0
    push word [bp - 0x000a]          ; 0x30f3
    push word [bp - 0x0008]          ; 0x30f6
    push word [bp - 0x0006]          ; 0x30f9
    mov ax, 0x95                     ; 0x30fc
    push ax                          ; 0x30ff
    call ds_dispatch_bc9a            ; 0x3100
    add sp, byte 8                   ; 0x3103
    call api_idx_000a_2              ; 0x3106
    push word [bp + 0x4]             ; 0x3109
    call api_idx_000c_2              ; 0x310c
    pop cx                           ; 0x310f
    mov ax, 1                        ; 0x3110
    push ax                          ; 0x3113
    mov ax, 0x73                     ; 0x3114
    push ax                          ; 0x3117
    mov ax, 0x32                     ; 0x3118
    push ax                          ; 0x311b
    call api_idx_000c                ; 0x311c
    add sp, byte 6                   ; 0x311f
    lea ax, word [bp - 0x0038]       ; 0x3122
    push ax                          ; 0x3125
    push word [bp + 0x6]             ; 0x3126
    call ds_dispatch_b53b            ; 0x3129
    add sp, byte 4                   ; 0x312c
    lea ax, word [bp - 0x0038]       ; 0x312f
    push ax                          ; 0x3132
    push word [bp + 0x8]             ; 0x3133
    mov ax, 1                        ; 0x3136
    push ax                          ; 0x3139
    mov ax, 8                        ; 0x313a
    push ax                          ; 0x313d
    mov ax, word [bp - 0x0006]       ; 0x313e
    add ax, strict word 6            ; 0x3141
    push ax                          ; 0x3144
    mov ax, word [bp - 0x000c]       ; 0x3145
    add ax, strict word 6            ; 0x3148
    push ax                          ; 0x314b
    call ds_dispatch_c0c1            ; 0x314c
    add sp, byte 0x0c                ; 0x314f
    lea ax, word [bp - 0x0038]       ; 0x3152
    push ax                          ; 0x3155
    mov ax, word [bp + 0x6]          ; 0x3156
    inc ax                           ; 0x3159
    push ax                          ; 0x315a
    call ds_dispatch_b53b            ; 0x315b
    add sp, byte 4                   ; 0x315e
    lea ax, word [bp - 0x0038]       ; 0x3161
    push ax                          ; 0x3164
    mov ax, 1                        ; 0x3165
    push ax                          ; 0x3168
    push ax                          ; 0x3169
    mov ax, 8                        ; 0x316a
    push ax                          ; 0x316d
    mov ax, word [bp - 0x0006]       ; 0x316e
    add ax, strict word 6            ; 0x3171
    push ax                          ; 0x3174
    mov ax, word [bp - 0x000c]       ; 0x3175
    add ax, strict word 0x42         ; 0x3178
    push ax                          ; 0x317b
    call ds_dispatch_c0c1            ; 0x317c
    add sp, byte 0x0c                ; 0x317f
    mov ax, word [bp - 0x0006]       ; 0x3182
    add ax, strict word 0x14         ; 0x3185
    push ax                          ; 0x3188
    mov ax, word [bp - 0x000c]       ; 0x3189
    add ax, strict word 0x48         ; 0x318c
    push ax                          ; 0x318f
    call ds_dispatch_e809            ; 0x3190
    add sp, byte 4                   ; 0x3193
    mov ax, 0                        ; 0x3196
    push ax                          ; 0x3199
    mov ax, 0xcd                     ; 0x319a
    push ax                          ; 0x319d
    call ds_dispatch_e823            ; 0x319e
    add sp, byte 4                   ; 0x31a1
    mov ax, data_0002                ; 0x31a4
    push ax                          ; 0x31a7
    mov ax, 0xa                      ; 0x31a8
    push ax                          ; 0x31ab
    call ds_dispatch_e830            ; 0x31ac
    add sp, byte 4                   ; 0x31af
    mov word [bp - 0x003c], 0xffff   ; 0x31b2
    mov word [bp - 0x003e], 0        ; 0x31b7
    mov word [bp - 0x0040], 0        ; 0x31bc
    mov word [bp - 0x0002], 0        ; 0x31c1
@..api_idx_0050.l2:
    mov ax, 0                        ; 0x31c6
    mov cx, word [bp - 0x0002]       ; 0x31c9
    cmp cx, word [bp - 0x003e]       ; 0x31cc
    jne short @..api_idx_0050.l3     ; 0x31cf
    mov ax, 1                        ; 0x31d1
@..api_idx_0050.l3:
    push ax                          ; 0x31d4
    push cx                          ; 0x31d5
    mov ax, word [bp - 0x0006]       ; 0x31d6
    add ax, strict word 0x14         ; 0x31d9
    push ax                          ; 0x31dc
    mov ax, word [bp - 0x000c]       ; 0x31dd
    add ax, strict word 0xc          ; 0x31e0
    push ax                          ; 0x31e3
    call math_loc_2e12               ; 0x31e4
    add sp, byte 8                   ; 0x31e7
    inc word [bp - 0x0002]           ; 0x31ea
    mov ax, word [bp - 0x0002]       ; 0x31ed
    cmp ax, strict word 7            ; 0x31f0
    jl short @..api_idx_0050.l2      ; 0x31f3
    mov word [bp - 0x0042], 0        ; 0x31f5
    mov ax, 0                        ; 0x31fa
    push ax                          ; 0x31fd
    push ax                          ; 0x31fe
    push word [bp - 0x0042]          ; 0x31ff
    mov ax, word [bp - 0x0006]       ; 0x3202
    add ax, strict word 0x15         ; 0x3205
    push ax                          ; 0x3208
    mov ax, word [bp - 0x000c]       ; 0x3209
    add ax, strict word 0x5e         ; 0x320c
    push ax                          ; 0x320f
    call loc_2e9e                    ; 0x3210
    add sp, byte 0x0a                ; 0x3213
    push word [bp - 0x0042]          ; 0x3216
    push word [bp + 0x4]             ; 0x3219
    call api_idx_0004_5              ; 0x321c
    add sp, byte 4                   ; 0x321f
    mov word [bp - 0x0044], ax       ; 0x3222
    mov ax, 7                        ; 0x3225
    cmp word [bp - 0x0044], byte 7   ; 0x3228
    jge short @..api_idx_0050.l4     ; 0x322c
    mov ax, word [bp - 0x0044]       ; 0x322e
@..api_idx_0050.l4:
    mov word [bp - 0x0024], ax       ; 0x3231
    mov word [bp - 0x0018], 0        ; 0x3234
    mov word [bp - 0x0022], 0xffff   ; 0x3239
    push ax                          ; 0x323e
    push word [bp - 0x0022]          ; 0x323f
    push word [bp - 0x0018]          ; 0x3242
    mov ax, 7                        ; 0x3245
    push ax                          ; 0x3248
    mov ax, 0xf                      ; 0x3249
    push ax                          ; 0x324c
    mov ax, word [bp - 0x0006]       ; 0x324d
    add ax, strict word 0x22         ; 0x3250
    push ax                          ; 0x3253
    mov ax, word [bp - 0x000c]       ; 0x3254
    add ax, strict word 6            ; 0x3257
    push ax                          ; 0x325a
    call ds_dispatch_bf97            ; 0x325b
    add sp, byte 0x0e                ; 0x325e
    mov word [bp - 0x0012], 0        ; 0x3261
    push word [bp - 0x0012]          ; 0x3266
