api_idx_0002_13:
    mov ax, 0xfffe                   ; 0x8f74
    call ds_aztec_csav               ; 0x8f77
    call loc_85f0                    ; 0x8f7a
    cmp word [bss_0e32], byte 1      ; 0x8f7d
    jne short @..api_idx_0002_13.l1  ; 0x8f82
    call ds_loc_4280                 ; 0x8f84
@..api_idx_0002_13.l1:
    mov word [bss_0e32], 0           ; 0x8f87
    call ds_app_2bed                 ; 0x8f8d
    mov word [bss_8450], ax          ; 0x8f90
    test ax, ax                      ; 0x8f93
    je short @..api_idx_0002_13.l2   ; 0x8f95
    mov ax, 0                        ; 0x8f97
    push ax                          ; 0x8f9a
    mov ax, 5                        ; 0x8f9b
    push ax                          ; 0x8f9e
    call ds_app_file_2a2e            ; 0x8f9f
    add sp, byte 4                   ; 0x8fa2
    mov ax, word [dseg_0116]         ; 0x8fa5
    mov word [bss_844e], ax          ; 0x8fa8
    mov ax, 1                        ; 0x8fab
    push ax                          ; 0x8fae
    push word [bss_844e]             ; 0x8faf
    mov ax, 0                        ; 0x8fb3
    push ax                          ; 0x8fb6
    call ds_app_2bab                 ; 0x8fb7
    add sp, byte 6                   ; 0x8fba
    mov word [bss_844c], ax          ; 0x8fbd
@..api_idx_0002_13.l2:
    mov ax, word [bp + 0x4]          ; 0x8fc0
    jmp near @..api_idx_0002_13.l9   ; 0x8fc3
@..api_idx_0002_13.l3:
    cmp word [bp + 0x4], byte 4      ; 0x8fc6
    jne short @..api_idx_0002_13.l4  ; 0x8fca
    mov ax, 0x63                     ; 0x8fcc
    push ax                          ; 0x8fcf
    push ax                          ; 0x8fd0
    mov ax, 1                        ; 0x8fd1
    push ax                          ; 0x8fd4
    mov ax, 0x63                     ; 0x8fd5
    push ax                          ; 0x8fd8
    mov ax, 0x7ba2                   ; 0x8fd9
    push ax                          ; 0x8fdc
    call loc_8634                    ; 0x8fdd
    add sp, byte 0x0a                ; 0x8fe0
    jmp short @..api_idx_0002_13.l5  ; 0x8fe3
@..api_idx_0002_13.l4:
    mov ax, 0x63                     ; 0x8fe5
    push ax                          ; 0x8fe8
    push ax                          ; 0x8fe9
    mov ax, 1                        ; 0x8fea
    push ax                          ; 0x8fed
    mov ax, 0                        ; 0x8fee
    push ax                          ; 0x8ff1
    mov ax, 0x7b0c                   ; 0x8ff2
    push ax                          ; 0x8ff5
    call loc_8634                    ; 0x8ff6
    add sp, byte 0x0a                ; 0x8ff9
@..api_idx_0002_13.l5:
    mov ax, 0x63                     ; 0x8ffc
    push ax                          ; 0x8fff
    push ax                          ; 0x9000
    mov ax, 0                        ; 0x9001
    push ax                          ; 0x9004
    mov ax, 0x7b20                   ; 0x9005
    push ax                          ; 0x9008
    call api_idx_0002_7              ; 0x9009
    add sp, byte 8                   ; 0x900c
    mov ax, 0x63                     ; 0x900f
    push ax                          ; 0x9012
    push ax                          ; 0x9013
    mov ax, 0                        ; 0x9014
    push ax                          ; 0x9017
    mov ax, 0x7b2a                   ; 0x9018
    push ax                          ; 0x901b
    call api_idx_0002_8              ; 0x901c
    add sp, byte 8                   ; 0x901f
    mov ax, 0                        ; 0x9022
    push ax                          ; 0x9025
    mov ax, 0x7b2f                   ; 0x9026
    push ax                          ; 0x9029
    call api_idx_0002_11             ; 0x902a
    add sp, byte 4                   ; 0x902d
    mov ax, 0                        ; 0x9030
    push ax                          ; 0x9033
    mov ax, 0x7b3e                   ; 0x9034
    push ax                          ; 0x9037
    call api_idx_0002_10             ; 0x9038
    add sp, byte 4                   ; 0x903b
    mov ax, 0x63                     ; 0x903e
    push ax                          ; 0x9041
    mov ax, 0                        ; 0x9042
    push ax                          ; 0x9045
    mov ax, 0x7b48                   ; 0x9046
    push ax                          ; 0x9049
    call api_idx_0002_12             ; 0x904a
    add sp, byte 6                   ; 0x904d
    mov ax, 0                        ; 0x9050
    push ax                          ; 0x9053
    mov ax, 0x63                     ; 0x9054
    push ax                          ; 0x9057
    mov ax, 0x7b4d                   ; 0x9058
    push ax                          ; 0x905b
    call api_idx_0002_12             ; 0x905c
    add sp, byte 6                   ; 0x905f
    mov ax, 0x63                     ; 0x9062
    push ax                          ; 0x9065
    push ax                          ; 0x9066
    mov ax, 0                        ; 0x9067
    push ax                          ; 0x906a
    cmp word [bp + 0x4], byte 4      ; 0x906b
    jne short @..api_idx_0002_13.l6  ; 0x906f
    mov ax, 0x63                     ; 0x9071
@..api_idx_0002_13.l6:
    push ax                          ; 0x9074
    mov ax, 0x7b52                   ; 0x9075
    push ax                          ; 0x9078
    call loc_8634                    ; 0x9079
    add sp, byte 0x0a                ; 0x907c
    mov ax, 0x63                     ; 0x907f
    push ax                          ; 0x9082
    mov ax, 0                        ; 0x9083
    push ax                          ; 0x9086
    mov ax, 1                        ; 0x9087
    push ax                          ; 0x908a
    mov ax, 0x7b5c                   ; 0x908b
    push ax                          ; 0x908e
    call api_idx_0002_7              ; 0x908f
    add sp, byte 8                   ; 0x9092
    mov ax, 0                        ; 0x9095
    push ax                          ; 0x9098
    mov ax, 0x7b66                   ; 0x9099
    push ax                          ; 0x909c
    call loc_8a74                    ; 0x909d
    add sp, byte 4                   ; 0x90a0
    mov ax, 0                        ; 0x90a3
    push ax                          ; 0x90a6
    mov ax, 0x7b70                   ; 0x90a7
    push ax                          ; 0x90aa
    call api_idx_0002_9              ; 0x90ab
    add sp, byte 4                   ; 0x90ae
    jmp near @..api_idx_0002_13.l13  ; 0x90b1
@..api_idx_0002_13.l7:
    mov ax, 0                        ; 0x90b4
    push ax                          ; 0x90b7
    push ax                          ; 0x90b8
    mov ax, 0x63                     ; 0x90b9
    push ax                          ; 0x90bc
    push ax                          ; 0x90bd
    mov ax, 0x7bd4                   ; 0x90be
    push ax                          ; 0x90c1
    call loc_8634                    ; 0x90c2
    add sp, byte 0x0a                ; 0x90c5
    mov ax, 0                        ; 0x90c8
    push ax                          ; 0x90cb
    mov ax, 0x63                     ; 0x90cc
    push ax                          ; 0x90cf
    mov ax, 0x7be3                   ; 0x90d0
    push ax                          ; 0x90d3
    call api_idx_0002_12             ; 0x90d4
    add sp, byte 6                   ; 0x90d7
    mov ax, 0x63                     ; 0x90da
    push ax                          ; 0x90dd
    push ax                          ; 0x90de
    mov ax, 0                        ; 0x90df
    push ax                          ; 0x90e2
    mov ax, 0x7be8                   ; 0x90e3
    push ax                          ; 0x90e6
    call api_idx_0002_7              ; 0x90e7
    add sp, byte 8                   ; 0x90ea
    mov ax, 0x63                     ; 0x90ed
    push ax                          ; 0x90f0
    mov ax, 0                        ; 0x90f1
    push ax                          ; 0x90f4
    mov ax, 0x7bf2                   ; 0x90f5
    push ax                          ; 0x90f8
    call api_idx_0002_12             ; 0x90f9
    add sp, byte 6                   ; 0x90fc
    mov ax, 0x63                     ; 0x90ff
    push ax                          ; 0x9102
    push ax                          ; 0x9103
    mov ax, 0                        ; 0x9104
    push ax                          ; 0x9107
    mov ax, 0x7bf7                   ; 0x9108
    push ax                          ; 0x910b
    call api_idx_0002_8              ; 0x910c
    add sp, byte 8                   ; 0x910f
    mov ax, 0                        ; 0x9112
    push ax                          ; 0x9115
    mov ax, 0x7bfc                   ; 0x9116
    push ax                          ; 0x9119
    call api_idx_0002_11             ; 0x911a
    add sp, byte 4                   ; 0x911d
    mov ax, 0                        ; 0x9120
    push ax                          ; 0x9123
    mov ax, 0x7c06                   ; 0x9124
    push ax                          ; 0x9127
    call api_idx_0002_10             ; 0x9128
    add sp, byte 4                   ; 0x912b
    mov ax, 0                        ; 0x912e
    push ax                          ; 0x9131
    push ax                          ; 0x9132
    mov ax, 0x63                     ; 0x9133
    push ax                          ; 0x9136
    push ax                          ; 0x9137
    mov ax, 0x7c0b                   ; 0x9138
    push ax                          ; 0x913b
    call loc_8634                    ; 0x913c
    add sp, byte 0x0a                ; 0x913f
    mov ax, 0x63                     ; 0x9142
    push ax                          ; 0x9145
    push ax                          ; 0x9146
    mov ax, 1                        ; 0x9147
    push ax                          ; 0x914a
    mov ax, 0                        ; 0x914b
    push ax                          ; 0x914e
    mov ax, 0x7c10                   ; 0x914f
    push ax                          ; 0x9152
    call loc_8634                    ; 0x9153
    add sp, byte 0x0a                ; 0x9156
    mov ax, 0                        ; 0x9159
    push ax                          ; 0x915c
    push ax                          ; 0x915d
    mov ax, 0x63                     ; 0x915e
    push ax                          ; 0x9161
    push ax                          ; 0x9162
    mov ax, 0x7c1a                   ; 0x9163
    push ax                          ; 0x9166
    call loc_8634                    ; 0x9167
    add sp, byte 0x0a                ; 0x916a
    mov ax, 0x63                     ; 0x916d
    push ax                          ; 0x9170
    mov ax, 0                        ; 0x9171
    push ax                          ; 0x9174
    mov ax, 1                        ; 0x9175
    push ax                          ; 0x9178
    mov ax, 0x7c24                   ; 0x9179
    push ax                          ; 0x917c
    call api_idx_0002_7              ; 0x917d
    add sp, byte 8                   ; 0x9180
    mov ax, 0                        ; 0x9183
    push ax                          ; 0x9186
    mov ax, 0x7c38                   ; 0x9187
    push ax                          ; 0x918a
    call loc_8a74                    ; 0x918b
    add sp, byte 4                   ; 0x918e
    mov ax, 0                        ; 0x9191
    push ax                          ; 0x9194
    mov ax, 0x7c42                   ; 0x9195
    push ax                          ; 0x9198
    call api_idx_0002_9              ; 0x9199
    add sp, byte 4                   ; 0x919c
    jmp near @..api_idx_0002_13.l13  ; 0x919f
@..api_idx_0002_13.l8:
    mov ax, 0                        ; 0x91a2
    push ax                          ; 0x91a5
    mov ax, 0x63                     ; 0x91a6
    push ax                          ; 0x91a9
    push ax                          ; 0x91aa
    push ax                          ; 0x91ab
    mov ax, 0x797c                   ; 0x91ac
    push ax                          ; 0x91af
    call loc_8634                    ; 0x91b0
    add sp, byte 0x0a                ; 0x91b3
    mov ax, 0x63                     ; 0x91b6
    push ax                          ; 0x91b9
    mov ax, 0                        ; 0x91ba
    push ax                          ; 0x91bd
    mov ax, 0x63                     ; 0x91be
    push ax                          ; 0x91c1
    mov ax, 0x7986                   ; 0x91c2
    push ax                          ; 0x91c5
    call api_idx_0002_7              ; 0x91c6
    add sp, byte 8                   ; 0x91c9
    mov ax, 1                        ; 0x91cc
    push ax                          ; 0x91cf
    push ax                          ; 0x91d0
    mov ax, 0                        ; 0x91d1
    push ax                          ; 0x91d4
    mov ax, 0x7990                   ; 0x91d5
    push ax                          ; 0x91d8
    call api_idx_0002_8              ; 0x91d9
    add sp, byte 8                   ; 0x91dc
    mov ax, 0x63                     ; 0x91df
    push ax                          ; 0x91e2
    mov ax, 0x799a                   ; 0x91e3
    push ax                          ; 0x91e6
    call api_idx_0002_10             ; 0x91e7
    add sp, byte 4                   ; 0x91ea
    mov ax, 0                        ; 0x91ed
    push ax                          ; 0x91f0
    mov ax, 0x79ae                   ; 0x91f1
    push ax                          ; 0x91f4
    call api_idx_0002_11             ; 0x91f5
    add sp, byte 4                   ; 0x91f8
    mov ax, 0x63                     ; 0x91fb
    push ax                          ; 0x91fe
    push ax                          ; 0x91ff
    mov ax, 0                        ; 0x9200
    push ax                          ; 0x9203
    mov ax, 0x79b8                   ; 0x9204
    push ax                          ; 0x9207
    call api_idx_0002_7              ; 0x9208
    add sp, byte 8                   ; 0x920b
    mov ax, 0                        ; 0x920e
    push ax                          ; 0x9211
    mov ax, 0x79c2                   ; 0x9212
    push ax                          ; 0x9215
    call api_idx_0002_11             ; 0x9216
    add sp, byte 4                   ; 0x9219
    mov ax, 0x63                     ; 0x921c
    push ax                          ; 0x921f
    mov ax, 0                        ; 0x9220
    push ax                          ; 0x9223
    mov ax, 0x79d6                   ; 0x9224
    push ax                          ; 0x9227
    call api_idx_0002_12             ; 0x9228
    add sp, byte 6                   ; 0x922b
    mov ax, 0                        ; 0x922e
    push ax                          ; 0x9231
    mov ax, 0x79e0                   ; 0x9232
    push ax                          ; 0x9235
    call api_idx_0002_11             ; 0x9236
    add sp, byte 4                   ; 0x9239
    mov ax, 0                        ; 0x923c
    push ax                          ; 0x923f
    mov ax, 0x79ea                   ; 0x9240
    push ax                          ; 0x9243
    call api_idx_0002_10             ; 0x9244
    add sp, byte 4                   ; 0x9247
    mov ax, 0x63                     ; 0x924a
    push ax                          ; 0x924d
    mov ax, 0                        ; 0x924e
    push ax                          ; 0x9251
    mov ax, 1                        ; 0x9252
    push ax                          ; 0x9255
    mov ax, 0x79f4                   ; 0x9256
    push ax                          ; 0x9259
    call api_idx_0002_7              ; 0x925a
    add sp, byte 8                   ; 0x925d
    mov ax, 0                        ; 0x9260
    push ax                          ; 0x9263
    mov ax, 0x79fe                   ; 0x9264
    push ax                          ; 0x9267
    call loc_8a74                    ; 0x9268
    add sp, byte 4                   ; 0x926b
    mov ax, 0                        ; 0x926e
    push ax                          ; 0x9271
    mov ax, 0x7a08                   ; 0x9272
    push ax                          ; 0x9275
    call api_idx_0002_9              ; 0x9276
    add sp, byte 4                   ; 0x9279
    jmp short @..api_idx_0002_13.l13 ; 0x927c
@..api_idx_0002_13.l9:
    cmp ax, strict word 1            ; 0x927e
    jne short @..api_idx_0002_13.l10 ; 0x9281
    jmp near @..api_idx_0002_13.l3   ; 0x9283
@..api_idx_0002_13.l10:
    cmp ax, strict word 2            ; 0x9286
    jne short @..api_idx_0002_13.l11 ; 0x9289
    jmp near @..api_idx_0002_13.l7   ; 0x928b
@..api_idx_0002_13.l11:
    cmp ax, strict word 3            ; 0x928e
    jne short @..api_idx_0002_13.l12 ; 0x9291
    jmp near @..api_idx_0002_13.l8   ; 0x9293
@..api_idx_0002_13.l12:
    cmp ax, strict word 4            ; 0x9296
    jne short @..api_idx_0002_13.l13 ; 0x9299
    jmp near @..api_idx_0002_13.l3   ; 0x929b
@..api_idx_0002_13.l13:
    cmp word [bss_8450], byte 0      ; 0x929e
    je short @..api_idx_0002_13.l14  ; 0x92a3
    push word [bss_844c]             ; 0x92a5
    push word [bss_844e]             ; 0x92a9
    call ds_app_2b62                 ; 0x92ad
    add sp, byte 4                   ; 0x92b0
    mov ax, 0                        ; 0x92b3
    push ax                          ; 0x92b6
    call ds_app_2b4e                 ; 0x92b7
    pop cx                           ; 0x92ba
@..api_idx_0002_13.l14:
    test word [bss_9056], 0x1000     ; 0x92bb
    je short @..api_idx_0002_13.l16  ; 0x92c1
    cmp byte [bss_5989], 1           ; 0x92c3
    jne short @..api_idx_0002_13.l16 ; 0x92c8
    cmp word [bss_0e32], byte 0      ; 0x92ca
    jne short @..api_idx_0002_13.l15 ; 0x92cf
    call ds_bios_mouse_loc_4273      ; 0x92d1
@..api_idx_0002_13.l15:
    mov word [bss_0e32], 1           ; 0x92d4
@..api_idx_0002_13.l16:
    mov ax, 0                        ; 0x92da
    push ax                          ; 0x92dd
    mov ax, 0x91ae                   ; 0x92de
    push ax                          ; 0x92e1
    call api_idx_0002_5              ; 0x92e2
    add sp, byte 4                   ; 0x92e5
    mov word [bp - 0x0002], 0        ; 0x92e8
    jmp short @..api_idx_0002_13.l18 ; 0x92ed
@..api_idx_0002_13.l17:
    mov ax, 0                        ; 0x92ef
    push ax                          ; 0x92f2
    push word [bp - 0x0002]          ; 0x92f3
    call ds_app_1d81                 ; 0x92f6
    add sp, byte 4                   ; 0x92f9
    inc word [bp - 0x0002]           ; 0x92fc
@..api_idx_0002_13.l18:
    mov ax, word [bp - 0x0002]       ; 0x92ff
    cmp ax, word [bss_69c8]          ; 0x9302
    jl short @..api_idx_0002_13.l17  ; 0x9306
    mov ax, 0                        ; 0x9308
    push ax                          ; 0x930b
    push ax                          ; 0x930c
    push ax                          ; 0x930d
    call ds_loc_431e                 ; 0x930e
    add sp, byte 6                   ; 0x9311
    mov ax, 0xc7                     ; 0x9314
    push ax                          ; 0x9317
    mov ax, 0x13f                    ; 0x9318
    push ax                          ; 0x931b
    mov ax, 0                        ; 0x931c
    push ax                          ; 0x931f
    push ax                          ; 0x9320
    call ds_loc_3b21                 ; 0x9321
    add sp, byte 8                   ; 0x9324
    mov ax, 0                        ; 0x9327
    push ax                          ; 0x932a
    call ds_loc_4304                 ; 0x932b
    pop cx                           ; 0x932e
    ret                              ; 0x932f
