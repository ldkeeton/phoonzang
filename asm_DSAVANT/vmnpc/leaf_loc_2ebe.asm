leaf_loc_2ebe:
    mov ax, word [bp - 0x0026]       ; 0x2ebe
    mov cx, word [bp - 0x0028]       ; 0x2ec1
    mov bx, cx                       ; 0x2ec4
    imul bx                          ; 0x2ec6
    mov word [bp - 0x0034], dx       ; 0x2ec8
    mov word [bp - 0x0036], ax       ; 0x2ecb
    mov ax, word [bp - 0x0036]       ; 0x2ece
    mov dx, word [bp - 0x0034]       ; 0x2ed1
    push ax                          ; 0x2ed4
    push dx                          ; 0x2ed5
    mov ax, 0x248                    ; 0x2ed6
    imul word [bp + 0x4]             ; 0x2ed9
    mov bx, ax                       ; 0x2edc
    pop dx                           ; 0x2ede
    pop ax                           ; 0x2edf
    add word [bx + 0x5c08], ax       ; 0x2ee0
    adc word [bx + 0x5c0a], dx       ; 0x2ee4
    mov ax, word [bp - 0x0036]       ; 0x2ee8
    mov dx, word [bp - 0x0034]       ; 0x2eeb
    sub word [bss_91b6], ax          ; 0x2eee
    sbb word [bss_91b8], dx          ; 0x2ef2
    cmp word [bss_91b8], byte 0      ; 0x2ef6
    jg short @..leaf_loc_2ebe.l1     ; 0x2efb
    jne short @..leaf_loc_2ebe.l2    ; 0x2efd
    cmp word [bss_91b6], byte 0      ; 0x2eff
    jb short @..leaf_loc_2ebe.l2     ; 0x2f04
@..leaf_loc_2ebe.l1:
    jmp short @..leaf_loc_2ebe.l3    ; 0x2f06
@..leaf_loc_2ebe.l2:
    mov word [bss_91b8], 0           ; 0x2f08
    mov word [bss_91b6], 0           ; 0x2f0e
@..leaf_loc_2ebe.l3:
    jmp near loc_3769                ; 0x2f14
loc_2f17:
    mov ax, word [bp - 0x0026]       ; 0x2f17
    mov bx, 0xa                      ; 0x2f1a
    imul bx                          ; 0x2f1d
    mov word [bp - 0x0034], dx       ; 0x2f1f
    mov word [bp - 0x0036], ax       ; 0x2f22
    cmp word [bp - 0x0034], byte 0   ; 0x2f25
    jne short loc_2f2f               ; 0x2f29
    cmp word [bp - 0x0036], byte 0   ; 0x2f2b
loc_2f2f:
    jne short loc_2f9f               ; 0x2f2f
    mov word [bp - 0x002c], 0        ; 0x2f31
    jmp short loc_2f96               ; 0x2f36
loc_2f38:
    cmp word [bp - 0x0028], byte 0   ; 0x2f38
    jle short loc_2f7f               ; 0x2f3c
    mov ax, 0x248                    ; 0x2f3e
    imul word [bp - 0x002c]          ; 0x2f41
    mov bx, ax                       ; 0x2f44
    mov ax, word [bx + 0x5c08]       ; 0x2f46
    mov dx, word [bx + 0x5c0a]       ; 0x2f4a
    push ax                          ; 0x2f4e
    push dx                          ; 0x2f4f
    mov ax, word [bp - 0x0028]       ; 0x2f50
    cwd                              ; 0x2f53
    mov cx, ax                       ; 0x2f54
    mov bx, dx                       ; 0x2f56
    pop dx                           ; 0x2f58
    pop ax                           ; 0x2f59
    call ds_aztec_ldv                ; 0x2f5a
    mov word [bp - 0x0034], dx       ; 0x2f5d
    mov word [bp - 0x0036], ax       ; 0x2f60
    mov ax, word [bp - 0x0036]       ; 0x2f63
    mov dx, word [bp - 0x0034]       ; 0x2f66
    push ax                          ; 0x2f69
    push dx                          ; 0x2f6a
    mov ax, 0x248                    ; 0x2f6b
    imul word [bp - 0x002c]          ; 0x2f6e
    mov bx, ax                       ; 0x2f71
    pop dx                           ; 0x2f73
    pop ax                           ; 0x2f74
    sub word [bx + 0x5c08], ax       ; 0x2f75
    sbb word [bx + 0x5c0a], dx       ; 0x2f79
    jmp short loc_2f93               ; 0x2f7d
loc_2f7f:
    mov ax, 0x248                    ; 0x2f7f
    imul word [bp - 0x002c]          ; 0x2f82
    mov bx, ax                       ; 0x2f85
    mov word [bx + 0x5c0a], 0        ; 0x2f87
    mov word [bx + 0x5c08], 0        ; 0x2f8d
loc_2f93:
    inc word [bp - 0x002c]           ; 0x2f93
loc_2f96:
    mov ax, word [bp - 0x002c]       ; 0x2f96
    cmp ax, word [bss_69c8]          ; 0x2f99
    jl short loc_2f38                ; 0x2f9d
loc_2f9f:
    mov ax, 0x248                    ; 0x2f9f
    imul word [bp + 0x4]             ; 0x2fa2
    mov bx, ax                       ; 0x2fa5
    mov ax, word [bx + 0x5c08]       ; 0x2fa7
    mov dx, word [bx + 0x5c0a]       ; 0x2fab
    cmp dx, word [bp - 0x0034]       ; 0x2faf
    jg short loc_2fbb                ; 0x2fb2
    jne short loc_2fbd               ; 0x2fb4
    cmp ax, word [bp - 0x0036]       ; 0x2fb6
    jb short loc_2fbd                ; 0x2fb9
loc_2fbb:
    jmp short loc_3001               ; 0x2fbb
loc_2fbd:
    push word [bp + 0x4]             ; 0x2fbd
    call api_idx_0006_7              ; 0x2fc0
    pop cx                           ; 0x2fc3
    mov ax, 0x248                    ; 0x2fc4
    imul word [bp + 0x4]             ; 0x2fc7
    mov bx, ax                       ; 0x2fca
    mov ax, word [bx + 0x5c08]       ; 0x2fcc
    mov dx, word [bx + 0x5c0a]       ; 0x2fd0
    cmp dx, word [bp - 0x0034]       ; 0x2fd4
    jg short loc_2fe0                ; 0x2fd7
    jne short loc_2fe2               ; 0x2fd9
    cmp ax, word [bp - 0x0036]       ; 0x2fdb
    jb short loc_2fe2                ; 0x2fde
loc_2fe0:
    jmp short loc_3001               ; 0x2fe0
loc_2fe2:
    cmp word [bp - 0x0028], byte 0   ; 0x2fe2
    jle short loc_3001               ; 0x2fe6
    push word [bp - 0x0028]          ; 0x2fe8
    push word [bp + 0x4]             ; 0x2feb
    call api_idx_0040                ; 0x2fee
    add sp, byte 4                   ; 0x2ff1
    cmp ax, strict word 1            ; 0x2ff4
    jne short loc_2ffd               ; 0x2ff7
    mov ax, 1                        ; 0x2ff9
    ret                              ; 0x2ffc
loc_2ffd:
    mov ax, 0                        ; 0x2ffd
    ret                              ; 0x3000
loc_3001:
    mov ax, word [bp - 0x0036]       ; 0x3001
    mov dx, word [bp - 0x0034]       ; 0x3004
    push ax                          ; 0x3007
    push dx                          ; 0x3008
    mov ax, 0x248                    ; 0x3009
    imul word [bp + 0x4]             ; 0x300c
    mov bx, ax                       ; 0x300f
    pop dx                           ; 0x3011
    pop ax                           ; 0x3012
    sub word [bx + 0x5c08], ax       ; 0x3013
    sbb word [bx + 0x5c0a], dx       ; 0x3017
    mov ax, word [bp - 0x0036]       ; 0x301b
    mov dx, word [bp - 0x0034]       ; 0x301e
    add word [bss_91b6], ax          ; 0x3021
    adc word [bss_91b8], dx          ; 0x3025
    jmp near loc_3769                ; 0x3029
loc_302c:
    mov word [bp - 0x002c], 0        ; 0x302c
loc_3031:
    mov ax, 3                        ; 0x3031
    push ax                          ; 0x3034
    call ds_app_09f0                 ; 0x3035
    pop cx                           ; 0x3038
    test ax, ax                      ; 0x3039
    jne short loc_3084               ; 0x303b
    mov ax, 0x248                    ; 0x303d
    imul word [bp + 0x4]             ; 0x3040
    push ax                          ; 0x3043
    mov ax, 0xc                      ; 0x3044
    imul word [bp - 0x002c]          ; 0x3047
    mov cx, ax                       ; 0x304a
    pop ax                           ; 0x304c
    add ax, cx                       ; 0x304d
    mov bx, ax                       ; 0x304f
    cmp word [bx + 0x5cac], byte 0   ; 0x3051
    jle short loc_3084               ; 0x3056
    mov al, byte [bx + 0x5cb3]       ; 0x3058
    sub ah, ah                       ; 0x305c
    test ax, 0x40                    ; 0x305e
    jne short loc_3084               ; 0x3061
    push word [bp - 0x002c]          ; 0x3063
    mov ax, 1                        ; 0x3066
    push ax                          ; 0x3069
    push word [bp + 0x4]             ; 0x306a
    call ds_app_1c2f                 ; 0x306d
    add sp, byte 6                   ; 0x3070
    mov ax, 3                        ; 0x3073
    push ax                          ; 0x3076
    call ds_app_09f0                 ; 0x3077
    pop cx                           ; 0x307a
    test ax, ax                      ; 0x307b
    jne short loc_3084               ; 0x307d
    mov word [bp - 0x002c], 0xa      ; 0x307f
loc_3084:
    inc word [bp - 0x002c]           ; 0x3084
    mov ax, word [bp - 0x002c]       ; 0x3087
    cmp ax, strict word 0xa          ; 0x308a
    jl short loc_3031                ; 0x308d
    jmp near loc_3769                ; 0x308f
loc_3092:
    mov ax, word [bp - 0x0026]       ; 0x3092
    cmp ax, strict word 0            ; 0x3095
    jle short loc_30b5               ; 0x3098
    cmp ax, strict word 0x7f         ; 0x309a
    jge short loc_30b5               ; 0x309d
    push word [bp - 0x0028]          ; 0x309f
    push ax                          ; 0x30a2
    mov ax, word [bss_830c]          ; 0x30a3
    mov cx, 4                        ; 0x30a6
    shl ax, cl                       ; 0x30a9
    add ax, 0x8d14                   ; 0x30ab
    push ax                          ; 0x30ae
    call ds_leaf_loc_3e88            ; 0x30af
    add sp, byte 6                   ; 0x30b2
loc_30b5:
    jmp near loc_3769                ; 0x30b5
loc_30b8:
    mov ax, word [bp - 0x0026]       ; 0x30b8
    cmp ax, strict word 0            ; 0x30bb
    jle short loc_30f3               ; 0x30be
    cmp ax, strict word 0x7f         ; 0x30c0
    jge short loc_30f3               ; 0x30c3
    push word [bp - 0x0028]          ; 0x30c5
    push ax                          ; 0x30c8
    mov ax, word [bss_830c]          ; 0x30c9
    mov cx, 4                        ; 0x30cc
    shl ax, cl                       ; 0x30cf
    add ax, 0x8d14                   ; 0x30d1
    push ax                          ; 0x30d4
    call ds_leaf_loc_3e88            ; 0x30d5
    add sp, byte 6                   ; 0x30d8
    push word [bp - 0x0028]          ; 0x30db
    push word [bp - 0x0026]          ; 0x30de
    mov ax, word [bss_830c]          ; 0x30e1
    mov cx, 4                        ; 0x30e4
    shl ax, cl                       ; 0x30e7
    add ax, 0x5642                   ; 0x30e9
    push ax                          ; 0x30ec
    call ds_leaf_loc_3e88            ; 0x30ed
    add sp, byte 6                   ; 0x30f0
loc_30f3:
    jmp near loc_3769                ; 0x30f3
loc_30f6:
    mov ax, word [bp - 0x0026]       ; 0x30f6
    cmp ax, strict word 0            ; 0x30f9
    jle short loc_3111               ; 0x30fc
    cmp ax, strict word 0xf          ; 0x30fe
    jge short loc_3111               ; 0x3101
    push word [bp - 0x0028]          ; 0x3103
    push ax                          ; 0x3106
    mov ax, 0x95f8                   ; 0x3107
    push ax                          ; 0x310a
    call ds_leaf_loc_3e88            ; 0x310b
    add sp, byte 6                   ; 0x310e
loc_3111:
    jmp near loc_3769                ; 0x3111
loc_3114:
    mov ax, word [bp - 0x0026]       ; 0x3114
    cmp ax, strict word 0            ; 0x3117
    jle short loc_3144               ; 0x311a
    cmp ax, strict word 0xf          ; 0x311c
    jge short loc_3144               ; 0x311f
    push word [bp - 0x0028]          ; 0x3121
    push ax                          ; 0x3124
    mov ax, 0x95f8                   ; 0x3125
    push ax                          ; 0x3128
    call ds_leaf_loc_3e88            ; 0x3129
    add sp, byte 6                   ; 0x312c
    push word [bp - 0x0028]          ; 0x312f
    push word [bp - 0x0026]          ; 0x3132
    mov ax, word [bss_9136]          ; 0x3135
    shl ax, 1                        ; 0x3138
    add ax, 0x584e                   ; 0x313a
    push ax                          ; 0x313d
    call ds_leaf_loc_3e88            ; 0x313e
    add sp, byte 6                   ; 0x3141
loc_3144:
    jmp near loc_3769                ; 0x3144
loc_3147:
    push word [bp - 0x0026]          ; 0x3147
    mov ax, word [bss_830c]          ; 0x314a
    mov cx, 4                        ; 0x314d
    shl ax, cl                       ; 0x3150
    add ax, 0x8d14                   ; 0x3152
    push ax                          ; 0x3155
    call ds_leaf_loc_3ebb            ; 0x3156
    add sp, byte 4                   ; 0x3159
    cmp ax, strict word 1            ; 0x315c
    jne short loc_3165               ; 0x315f
    mov ax, 0                        ; 0x3161
    ret                              ; 0x3164
loc_3165:
    jmp near loc_3769                ; 0x3165
loc_3168:
    push word [bp - 0x0026]          ; 0x3168
    mov ax, word [bss_830c]          ; 0x316b
    mov cx, 4                        ; 0x316e
    shl ax, cl                       ; 0x3171
    add ax, 0x8d14                   ; 0x3173
    push ax                          ; 0x3176
    call ds_leaf_loc_3ebb            ; 0x3177
    add sp, byte 4                   ; 0x317a
    test ax, ax                      ; 0x317d
    jne short loc_3185               ; 0x317f
    mov ax, 0                        ; 0x3181
    ret                              ; 0x3184
loc_3185:
    jmp near loc_3769                ; 0x3185
loc_3188:
    push word [bp - 0x0026]          ; 0x3188
    mov ax, 0x95f8                   ; 0x318b
    push ax                          ; 0x318e
    call ds_leaf_loc_3ebb            ; 0x318f
    add sp, byte 4                   ; 0x3192
    cmp ax, strict word 1            ; 0x3195
    jne short loc_319e               ; 0x3198
    mov ax, 0                        ; 0x319a
    ret                              ; 0x319d
loc_319e:
    jmp near loc_3769                ; 0x319e
loc_31a1:
    push word [bp - 0x0026]          ; 0x31a1
    mov ax, 0x95f8                   ; 0x31a4
    push ax                          ; 0x31a7
    call ds_leaf_loc_3ebb            ; 0x31a8
    add sp, byte 4                   ; 0x31ab
    test ax, ax                      ; 0x31ae
    jne short loc_31b6               ; 0x31b0
    mov ax, 0                        ; 0x31b2
    ret                              ; 0x31b5
loc_31b6:
    jmp near loc_3769                ; 0x31b6
loc_31b9:
    cmp word [bp - 0x0028], byte 0   ; 0x31b9
    jne short loc_31d0               ; 0x31bd
    push word [bp - 0x0026]          ; 0x31bf
    push word [bp + 0x4]             ; 0x31c2
    call api_idx_0004_8              ; 0x31c5
    add sp, byte 4                   ; 0x31c8
    mov word [bp - 0x003a], ax       ; 0x31cb
    jmp short loc_31fd               ; 0x31ce
loc_31d0:
    mov word [bp - 0x003a], 0xffff   ; 0x31d0
    mov word [bp - 0x002c], 0        ; 0x31d5
    jmp short loc_31ee               ; 0x31da
loc_31dc:
    push word [bp - 0x0026]          ; 0x31dc
    push word [bp - 0x002c]          ; 0x31df
    call api_idx_0004_8              ; 0x31e2
    add sp, byte 4                   ; 0x31e5
    mov word [bp - 0x003a], ax       ; 0x31e8
    inc word [bp - 0x002c]           ; 0x31eb
loc_31ee:
    mov ax, word [bp - 0x002c]       ; 0x31ee
    cmp ax, word [bss_69c8]          ; 0x31f1
    jge short loc_31fd               ; 0x31f5
    cmp word [bp - 0x003a], byte 0xff ; 0x31f7
    je short loc_31dc                ; 0x31fb
loc_31fd:
    mov ax, word [bp - 0x0002]       ; 0x31fd
    shl ax, 1                        ; 0x3200
    shl ax, 1                        ; 0x3202
    mov bx, ax                       ; 0x3204
    add bx, bp                       ; 0x3206
    cmp byte [bx - 0x0021], 0x16     ; 0x3208
    jne short loc_3214               ; 0x320c
    cmp word [bp - 0x003a], byte 0xff ; 0x320e
    je short loc_3220                ; 0x3212
loc_3214:
    cmp byte [bx - 0x0021], 0x17     ; 0x3214
    jne short loc_3224               ; 0x3218
    cmp word [bp - 0x003a], byte 0xff ; 0x321a
    je short loc_3224                ; 0x321e
loc_3220:
    mov ax, 0                        ; 0x3220
    ret                              ; 0x3223
loc_3224:
    jmp near loc_3769                ; 0x3224
loc_3227:
    mov ax, 0x64                     ; 0x3227
    push ax                          ; 0x322a
    call ds_app_09f0                 ; 0x322b
    pop cx                           ; 0x322e
    cmp ax, word [bp - 0x0026]       ; 0x322f
    jle short loc_3238               ; 0x3232
    mov ax, 0                        ; 0x3234
    ret                              ; 0x3237
loc_3238:
    jmp near loc_3769                ; 0x3238
loc_323b:
    push word [bp - 0x0026]          ; 0x323b
    mov ax, word [bss_830c]          ; 0x323e
    mov cx, 4                        ; 0x3241
    shl ax, cl                       ; 0x3244
    add ax, 0x8d14                   ; 0x3246
    push ax                          ; 0x3249
    call ds_leaf_loc_3ebb            ; 0x324a
    add sp, byte 4                   ; 0x324d
    test ax, ax                      ; 0x3250
    jne short loc_3269               ; 0x3252
    push word [bp - 0x0028]          ; 0x3254
    push word [bp + 0x4]             ; 0x3257
    call api_idx_0040                ; 0x325a
    add sp, byte 4                   ; 0x325d
    cmp ax, strict word 1            ; 0x3260
    jne short loc_3269               ; 0x3263
    mov ax, 1                        ; 0x3265
    ret                              ; 0x3268
loc_3269:
    jmp near loc_3769                ; 0x3269
loc_326c:
    push word [bp - 0x0026]          ; 0x326c
    mov ax, word [bss_830c]          ; 0x326f
    mov cx, 4                        ; 0x3272
    shl ax, cl                       ; 0x3275
    add ax, 0x8d14                   ; 0x3277
    push ax                          ; 0x327a
    call ds_leaf_loc_3ebb            ; 0x327b
    add sp, byte 4                   ; 0x327e
    cmp ax, strict word 1            ; 0x3281
    jne short loc_329b               ; 0x3284
    push word [bp - 0x0028]          ; 0x3286
    push word [bp + 0x4]             ; 0x3289
    call api_idx_0040                ; 0x328c
    add sp, byte 4                   ; 0x328f
    cmp ax, strict word 1            ; 0x3292
    jne short loc_329b               ; 0x3295
    mov ax, 1                        ; 0x3297
    ret                              ; 0x329a
loc_329b:
    jmp near loc_3769                ; 0x329b
loc_329e:
    push word [bp - 0x0026]          ; 0x329e
    mov ax, 0x95f8                   ; 0x32a1
    push ax                          ; 0x32a4
    call ds_leaf_loc_3ebb            ; 0x32a5
    add sp, byte 4                   ; 0x32a8
    test ax, ax                      ; 0x32ab
    jne short loc_32c4               ; 0x32ad
    push word [bp - 0x0028]          ; 0x32af
    push word [bp + 0x4]             ; 0x32b2
    call api_idx_0040                ; 0x32b5
    add sp, byte 4                   ; 0x32b8
    cmp ax, strict word 1            ; 0x32bb
    jne short loc_32c4               ; 0x32be
    mov ax, 1                        ; 0x32c0
    ret                              ; 0x32c3
loc_32c4:
    jmp near loc_3769                ; 0x32c4
loc_32c7:
    push word [bp - 0x0026]          ; 0x32c7
    mov ax, 0x95f8                   ; 0x32ca
    push ax                          ; 0x32cd
    call ds_leaf_loc_3ebb            ; 0x32ce
    add sp, byte 4                   ; 0x32d1
    cmp ax, strict word 1            ; 0x32d4
    jne short loc_32ee               ; 0x32d7
    push word [bp - 0x0028]          ; 0x32d9
    push word [bp + 0x4]             ; 0x32dc
    call api_idx_0040                ; 0x32df
    add sp, byte 4                   ; 0x32e2
    cmp ax, strict word 1            ; 0x32e5
    jne short loc_32ee               ; 0x32e8
    mov ax, 1                        ; 0x32ea
    ret                              ; 0x32ed
loc_32ee:
    jmp near loc_3769                ; 0x32ee
loc_32f1:
    mov ax, 0x64                     ; 0x32f1
    push ax                          ; 0x32f4
    call ds_app_09f0                 ; 0x32f5
    pop cx                           ; 0x32f8
    cmp ax, word [bp - 0x0026]       ; 0x32f9
    jge short loc_3313               ; 0x32fc
    push word [bp - 0x0028]          ; 0x32fe
    push word [bp + 0x4]             ; 0x3301
    call api_idx_0040                ; 0x3304
    add sp, byte 4                   ; 0x3307
    cmp ax, strict word 1            ; 0x330a
    jne short loc_3313               ; 0x330d
    mov ax, 1                        ; 0x330f
    ret                              ; 0x3312
loc_3313:
    jmp near loc_3769                ; 0x3313
loc_3316:
    mov ax, 0x26                     ; 0x3316
    imul word [bp - 0x0026]          ; 0x3319
    mov bx, ax                       ; 0x331c
    mov al, byte [bx - 0x7aff]       ; 0x331e
    mov byte [bx - 0x7b00], al       ; 0x3322
    mov byte [bx - 0x7b16], 0        ; 0x3326
    mov al, byte [bp - 0x0028]       ; 0x332b
    mov byte [bx - 0x7b14], al       ; 0x332e
    mov byte [bx - 0x7b15], al       ; 0x3332
    jmp near loc_3769                ; 0x3336
loc_3339:
    mov ax, word [bp - 0x0026]       ; 0x3339
    mov word [bp - 0x003a], ax       ; 0x333c
    cmp ax, strict word 0            ; 0x333f
    jge short loc_335e               ; 0x3342
    push ax                          ; 0x3344
    cmp ax, strict word 0            ; 0x3345
    pop ax                           ; 0x3348
    jge short loc_334d               ; 0x3349
    neg ax                           ; 0x334b
loc_334d:
    push ax                          ; 0x334d
    call ds_app_09f0                 ; 0x334e
    pop cx                           ; 0x3351
    mov cx, ax                       ; 0x3352
    mov ax, 0                        ; 0x3354
    sub ax, cx                       ; 0x3357
    mov word [bp - 0x003a], ax       ; 0x3359
    jmp short loc_3368               ; 0x335c
loc_335e:
    push word [bp - 0x003a]          ; 0x335e
    call ds_app_09f0                 ; 0x3361
    pop cx                           ; 0x3364
    mov word [bp - 0x003a], ax       ; 0x3365
loc_3368:
    mov ax, word [bp - 0x0028]       ; 0x3368
    add ax, strict word 0xff9c       ; 0x336b
    mov word [bp - 0x002c], ax       ; 0x336e
    mov ax, 0x64                     ; 0x3371
    push ax                          ; 0x3374
    push word [bp - 0x002c]          ; 0x3375
    mov al, byte [bss_91c7]          ; 0x3378
    sub ah, ah                       ; 0x337b
    mov bx, ax                       ; 0x337d
    mov al, byte [bx - 0x7622]       ; 0x337f
    cbw                              ; 0x3383
    add ax, word [bp - 0x003a]       ; 0x3384
    push ax                          ; 0x3387
    call ds_app_0a09                 ; 0x3388
    add sp, byte 6                   ; 0x338b
    push ax                          ; 0x338e
    mov al, byte [bss_91c7]          ; 0x338f
    sub ah, ah                       ; 0x3392
    mov bx, ax                       ; 0x3394
    pop ax                           ; 0x3396
    mov byte [bx - 0x7622], al       ; 0x3397
    jmp near loc_3769                ; 0x339b
loc_339e:
    mov word [bp - 0x002c], 0        ; 0x339e
    jmp near loc_3432                ; 0x33a3
loc_33a6:
    mov ax, word [bp - 0x0026]       ; 0x33a6
    dec ax                           ; 0x33a9
    mov word [bp - 0x003a], ax       ; 0x33aa
    cmp ax, strict word 7            ; 0x33ad
    jle short loc_33bd               ; 0x33b0
    mov ax, 8                        ; 0x33b2
    push ax                          ; 0x33b5
    call ds_app_09f0                 ; 0x33b6
    pop cx                           ; 0x33b9
    mov word [bp - 0x003a], ax       ; 0x33ba
loc_33bd:
    mov ax, 0x248                    ; 0x33bd
    imul word [bp - 0x002c]          ; 0x33c0
    add ax, word [bp - 0x003a]       ; 0x33c3
    mov bx, ax                       ; 0x33c6
    cmp byte [bx + 0x5d64], 0x13     ; 0x33c8
    jae short loc_342f               ; 0x33cd
    inc byte [bx + 0x5d64]           ; 0x33cf
    mov ax, 0x95a8                   ; 0x33d3
    push ax                          ; 0x33d6
    mov ax, 0x1397                   ; 0x33d7
    push ax                          ; 0x33da
    call ds_app_mem_0782             ; 0x33db
    add sp, byte 4                   ; 0x33de
    mov ax, 0x95fa                   ; 0x33e1
    push ax                          ; 0x33e4
    mov ax, word [bp - 0x003a]       ; 0x33e5
    add ax, 0x13ba                   ; 0x33e8
    push ax                          ; 0x33eb
    call ds_app_mem_0782             ; 0x33ec
    add sp, byte 4                   ; 0x33ef
    mov ax, 0x5e                     ; 0x33f2
    push ax                          ; 0x33f5
    mov ax, 0x248                    ; 0x33f6
    imul word [bp - 0x002c]          ; 0x33f9
    add ax, 0x5bf4                   ; 0x33fc
    push ax                          ; 0x33ff
    mov ax, 0x95a8                   ; 0x3400
    push ax                          ; 0x3403
    call ds_app_string_0547          ; 0x3404
    add sp, byte 6                   ; 0x3407
    mov ax, 0x24                     ; 0x340a
    push ax                          ; 0x340d
    mov ax, 0x95fa                   ; 0x340e
    push ax                          ; 0x3411
    mov ax, 0x95a8                   ; 0x3412
    push ax                          ; 0x3415
    call ds_app_string_0547          ; 0x3416
    add sp, byte 6                   ; 0x3419
    mov ax, 0x55                     ; 0x341c
    push ax                          ; 0x341f
    mov ax, 1                        ; 0x3420
    push ax                          ; 0x3423
    push ax                          ; 0x3424
    mov ax, 0x95a8                   ; 0x3425
    push ax                          ; 0x3428
    call loc_130b                    ; 0x3429
    add sp, byte 8                   ; 0x342c
loc_342f:
    inc word [bp - 0x002c]           ; 0x342f
loc_3432:
    mov ax, word [bp - 0x002c]       ; 0x3432
    cmp ax, word [bss_69c8]          ; 0x3435
    jge short loc_343e               ; 0x3439
    jmp near loc_33a6                ; 0x343b
loc_343e:
    jmp near loc_3769                ; 0x343e
loc_3441:
    mov ax, word [bp - 0x0026]       ; 0x3441
    mov cx, 0x10                     ; 0x3444
    cwd                              ; 0x3447
    idiv cx                          ; 0x3448
    mov word [bp - 0x003e], ax       ; 0x344a
    mov word [bp - 0x003c], dx       ; 0x344d
    mov ax, word [bp - 0x0028]       ; 0x3450
    cwd                              ; 0x3453
    idiv cx                          ; 0x3454
    mov word [bp - 0x002e], ax       ; 0x3456
    mov word [bp - 0x0030], dx       ; 0x3459
    mov ax, 6                        ; 0x345c
    imul word [bp - 0x003e]          ; 0x345f
    mov cx, word [bp - 0x003c]       ; 0x3462
    shl cx, 1                        ; 0x3465
    add ax, cx                       ; 0x3467
    mov bx, ax                       ; 0x3469
    mov ax, word [bx - 0x7bc6]       ; 0x346b
    push ax                          ; 0x346f
    mov ax, 6                        ; 0x3470
    imul word [bp - 0x002e]          ; 0x3473
    mov cx, ax                       ; 0x3476
    mov dx, word [bp - 0x0030]       ; 0x3478
    shl dx, 1                        ; 0x347b
    add ax, dx                       ; 0x347d
    mov bx, ax                       ; 0x347f
    pop ax                           ; 0x3481
    mov word [bx - 0x7bc6], ax       ; 0x3482
    mov ax, 0xffff                   ; 0x3486
    push ax                          ; 0x3489
    push word [bp - 0x0030]          ; 0x348a
    push word [bp - 0x002e]          ; 0x348d
    push word [bx - 0x7bc6]          ; 0x3490
    call api_idx_0008                ; 0x3494
    add sp, byte 8                   ; 0x3497
    mov ax, 6                        ; 0x349a
    imul word [bp - 0x003e]          ; 0x349d
    mov cx, word [bp - 0x003c]       ; 0x34a0
    shl cx, 1                        ; 0x34a3
    add ax, cx                       ; 0x34a5
    mov bx, ax                       ; 0x34a7
    mov word [bx - 0x7bc6], 0        ; 0x34a9
    jmp near loc_3769                ; 0x34af
loc_34b2:
    push word [bp - 0x0028]          ; 0x34b2
    push word [bp + 0x4]             ; 0x34b5
    call api_idx_0040                ; 0x34b8
    add sp, byte 4                   ; 0x34bb
    cmp ax, strict word 1            ; 0x34be
    jne short loc_34c7               ; 0x34c1
    mov ax, 1                        ; 0x34c3
    ret                              ; 0x34c6
loc_34c7:
    jmp near loc_3769                ; 0x34c7
loc_34ca:
    push word [bp - 0x0026]          ; 0x34ca
    call loc_742e                    ; 0x34cd
    pop cx                           ; 0x34d0
    jmp near loc_3769                ; 0x34d1
loc_34d4:
    cmp byte [bss_91c6], 0xff        ; 0x34d4
    je short loc_3518                ; 0x34d9
    mov word [bp - 0x003a], 0        ; 0x34db
loc_34e0:
    push word [bp - 0x003a]          ; 0x34e0
    mov al, byte [bss_91c6]          ; 0x34e3
    cbw                              ; 0x34e6
    mov cx, 0x26                     ; 0x34e7
    imul cx                          ; 0x34ea
    add ax, 0x8502                   ; 0x34ec
    push ax                          ; 0x34ef
    call ds_leaf_loc_3ebb            ; 0x34f0
    add sp, byte 4                   ; 0x34f3
    test ax, ax                      ; 0x34f6
    je short loc_350d                ; 0x34f8
    push word [bp - 0x0028]          ; 0x34fa
    mov ax, word [bp - 0x003a]       ; 0x34fd
    add ax, 0x190                    ; 0x3500
    push ax                          ; 0x3503
    push word [bp + 0x4]             ; 0x3504
    call api_idx_0008_2              ; 0x3507
    add sp, byte 6                   ; 0x350a
loc_350d:
    inc word [bp - 0x003a]           ; 0x350d
    mov ax, word [bp - 0x003a]       ; 0x3510
    cmp ax, strict word 0xb          ; 0x3513
    jl short loc_34e0                ; 0x3516
loc_3518:
    jmp near loc_3769                ; 0x3518
loc_351b:
    push word [bp + 0x4]             ; 0x351b
    call ds_app_1ccc                 ; 0x351e
    pop cx                           ; 0x3521
    test ax, ax                      ; 0x3522
    jne short loc_353b               ; 0x3524
    push word [bp - 0x0028]          ; 0x3526
    push word [bp + 0x4]             ; 0x3529
    call api_idx_0040                ; 0x352c
    add sp, byte 4                   ; 0x352f
    cmp ax, strict word 1            ; 0x3532
    jne short loc_353b               ; 0x3535
    mov ax, 1                        ; 0x3537
    ret                              ; 0x353a
loc_353b:
    jmp near loc_3769                ; 0x353b
loc_353e:
    mov ax, 1                        ; 0x353e
    ret                              ; 0x3541
loc_3542:
    mov word [bss_8f46], 0x7b        ; 0x3542
    mov word [bss_8f44], 0x80        ; 0x3548
    mov word [bss_8f42], 3           ; 0x354e
    mov word [bss_8f40], 0           ; 0x3554
    mov word [bss_8f3e], 2           ; 0x355a
    mov word [bss_82ee], 0           ; 0x3560
    mov word [bss_830c], 0x13        ; 0x3566
    mov word [bss_830a], 6           ; 0x356c
    mov word [bss_905e], 0x12        ; 0x3572
    mov ax, 1                        ; 0x3578
    ret                              ; 0x357b
loc_357c:
    mov al, byte [bss_91c7]          ; 0x357c
    sub ah, ah                       ; 0x357f
    mov bx, ax                       ; 0x3581
    mov al, byte [bx - 0x7622]       ; 0x3583
    cbw                              ; 0x3587
    cmp ax, word [bp - 0x0026]       ; 0x3588
    jge short loc_35a2               ; 0x358b
    push word [bp - 0x0028]          ; 0x358d
    push word [bp + 0x4]             ; 0x3590
    call api_idx_0040                ; 0x3593
    add sp, byte 4                   ; 0x3596
    cmp ax, strict word 1            ; 0x3599
    jne short loc_35a2               ; 0x359c
    mov ax, 1                        ; 0x359e
    ret                              ; 0x35a1
loc_35a2:
    jmp near loc_3769                ; 0x35a2
loc_35a5:
    mov word [bp - 0x003a], 0xffff   ; 0x35a5
    mov word [bp - 0x0030], 0        ; 0x35aa
    jmp near loc_3637                ; 0x35af
loc_35b2:
    push word [bp - 0x0028]          ; 0x35b2
    push word [bp - 0x0030]          ; 0x35b5
    call api_idx_0004_8              ; 0x35b8
    add sp, byte 4                   ; 0x35bb
    mov word [bp - 0x003a], ax       ; 0x35be
    cmp ax, strict word 0xffff       ; 0x35c1
    je short loc_3634                ; 0x35c4
    mov cx, 0x100                    ; 0x35c6
    cwd                              ; 0x35c9
    idiv cx                          ; 0x35ca
    mov word [bp - 0x002a], ax       ; 0x35cc
    mov word [bp - 0x002c], dx       ; 0x35cf
    push dx                          ; 0x35d2
    push ax                          ; 0x35d3
    push word [bp - 0x0030]          ; 0x35d4
    call ds_app_1c2f                 ; 0x35d7
    add sp, byte 6                   ; 0x35da
    mov ax, 1                        ; 0x35dd
    push ax                          ; 0x35e0
    mov ax, 0xffff                   ; 0x35e1
    push ax                          ; 0x35e4
    mov ax, 0x248                    ; 0x35e5
    imul word [bp - 0x0030]          ; 0x35e8
    push ax                          ; 0x35eb
    mov ax, 0x78                     ; 0x35ec
    imul word [bp - 0x002a]          ; 0x35ef
    mov cx, ax                       ; 0x35f2
    pop ax                           ; 0x35f4
    add ax, cx                       ; 0x35f5
    push ax                          ; 0x35f7
    mov ax, 0xc                      ; 0x35f8
    imul word [bp - 0x002c]          ; 0x35fb
    mov cx, ax                       ; 0x35fe
    pop ax                           ; 0x3600
    add ax, cx                       ; 0x3601
    add ax, 0x5c34                   ; 0x3603
    push ax                          ; 0x3606
    push word [bp - 0x0026]          ; 0x3607
    push word [bp - 0x0030]          ; 0x360a
    call api_idx_004c                ; 0x360d
    add sp, byte 0x0a                ; 0x3610
    push word [bp - 0x0026]          ; 0x3613
    call loc_5497                    ; 0x3616
    pop cx                           ; 0x3619
    test ax, ax                      ; 0x361a
    je short loc_3634                ; 0x361c
    mov ax, word [bp - 0x0026]       ; 0x361e
    add ax, 0xfe70                   ; 0x3621
    push ax                          ; 0x3624
    mov al, byte [bss_91c6]          ; 0x3625
    cbw                              ; 0x3628
    push ax                          ; 0x3629
    mov ax, 0x15                     ; 0x362a
    push ax                          ; 0x362d
    call api_idx_0002_5              ; 0x362e
    add sp, byte 6                   ; 0x3631
loc_3634:
    inc word [bp - 0x0030]           ; 0x3634
loc_3637:
    mov ax, word [bp - 0x0030]       ; 0x3637
    cmp ax, word [bss_69c8]          ; 0x363a
    jge short loc_3649               ; 0x363e
    cmp word [bp - 0x003a], byte 0xff ; 0x3640
    jne short loc_3649               ; 0x3644
    jmp near loc_35b2                ; 0x3646
loc_3649:
    jmp near loc_3769                ; 0x3649
loc_364c:
    mov ax, word [bp - 0x0026]       ; 0x364c
    mov cx, 0x100                    ; 0x364f
    cwd                              ; 0x3652
    idiv cx                          ; 0x3653
    add ax, strict word 0xf          ; 0x3655
    mov word [bp - 0x002c], ax       ; 0x3658
    mov word [bp - 0x003a], dx       ; 0x365b
    mov ax, dx                       ; 0x365e
    mov cx, 0x10                     ; 0x3660
    cwd                              ; 0x3663
    idiv cx                          ; 0x3664
    mov word [bp - 0x002e], ax       ; 0x3666
    mov word [bp - 0x0030], dx       ; 0x3669
    push word [bp - 0x0028]          ; 0x366c
    push dx                          ; 0x366f
    push ax                          ; 0x3670
    push word [bp - 0x002c]          ; 0x3671
    call api_idx_0008                ; 0x3674
    add sp, byte 8                   ; 0x3677
    jmp near loc_3769                ; 0x367a
loc_367d:
    mov ax, word [bp - 0x0028]       ; 0x367d
    mov word [bss_9134], ax          ; 0x3680
    jmp near loc_3769                ; 0x3683
loc_3686:
    mov ax, 0                        ; 0x3686
    push ax                          ; 0x3689
    push word [bp - 0x0028]          ; 0x368a
    push word [bp - 0x0026]          ; 0x368d
    call api_idx_0038                ; 0x3690
    add sp, byte 6                   ; 0x3693
    jmp near loc_3769                ; 0x3696
loc_3699:
    mov ax, word [bp - 0x0026]       ; 0x3699
    mov cx, word [bp - 0x0028]       ; 0x369c
    shl cx, 1                        ; 0x369f
    mov bx, cx                       ; 0x36a1
    mov word [bx - 0x6e88], ax       ; 0x36a3
    jmp near loc_3769                ; 0x36a7
loc_36aa:
    mov ax, word [bp - 0x0026]       ; 0x36aa
    dec ax                           ; 0x36ad
    mov word [bp - 0x0002], ax       ; 0x36ae
    jmp near loc_3769                ; 0x36b1
