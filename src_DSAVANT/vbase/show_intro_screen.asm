; auto-generated
show_intro_screen:
    mov ax, 0xfffe                   ; 0x8f74
    call aztec_csav                  ; 0x8f77
    call blank_scene_screen          ; 0x8f7a
    cmp word [mouse_active], byte 1  ; 0x8f7d
    jne short .forward1              ; 0x8f82
    call call_mouse_off              ; 0x8f84
.forward1:
    mov word [mouse_active], 0       ; 0x8f87
    call score_music_enabled         ; 0x8f8d
    mov word [bss_8450], ax          ; 0x8f90
    test ax, ax                      ; 0x8f93
    je short .forward2               ; 0x8f95
    mov ax, 0                        ; 0x8f97
    push ax                          ; 0x8f9a
    mov ax, 5                        ; 0x8f9b
    push ax                          ; 0x8f9e
    call load_score_files            ; 0x8f9f
    add sp, byte 4                   ; 0x8fa2
    mov ax, word [dseg_0116]         ; 0x8fa5
    mov word [bss_844e], ax          ; 0x8fa8
    mov ax, 1                        ; 0x8fab
    push ax                          ; 0x8fae
    push word [bss_844e]             ; 0x8faf
    mov ax, 0                        ; 0x8fb3
    push ax                          ; 0x8fb6
    call ds_app_UKGP                 ; 0x8fb7
    add sp, byte 6                   ; 0x8fba
    mov word [bss_844c], ax          ; 0x8fbd
.forward2:
    mov ax, word [bp + 4]            ; 0x8fc0
    jmp near .forward6               ; 0x8fc3
.back1:
    cmp word [bp + 4], byte 4        ; 0x8fc6
    jne short .forward3              ; 0x8fca
    mov ax, 0x63                     ; 0x8fcc
    push ax                          ; 0x8fcf
    push ax                          ; 0x8fd0
    mov ax, 1                        ; 0x8fd1
    push ax                          ; 0x8fd4
    mov ax, 0x63                     ; 0x8fd5
    push ax                          ; 0x8fd8
    mov ax, MSG_INSIDE_THE_RUINS_OF_A_31650 ; 0x8fd9
    push ax                          ; 0x8fdc
    call loc_TQHJ                    ; 0x8fdd
    add sp, byte 0xa                 ; 0x8fe0
    jmp short .forward4              ; 0x8fe3
.forward3:
    mov ax, 0x63                     ; 0x8fe5
    push ax                          ; 0x8fe8
    push ax                          ; 0x8fe9
    mov ax, 1                        ; 0x8fea
    push ax                          ; 0x8fed
    mov ax, 0                        ; 0x8fee
    push ax                          ; 0x8ff1
    mov ax, MSG_BEHOLD_THE_COSMIC_FOR_31500 ; 0x8ff2
    push ax                          ; 0x8ff5
    call loc_TQHJ                    ; 0x8ff6
    add sp, byte 0xa                 ; 0x8ff9
.forward4:
    mov ax, 0x63                     ; 0x8ffc
    push ax                          ; 0x8fff
    push ax                          ; 0x9000
    mov ax, 0                        ; 0x9001
    push ax                          ; 0x9004
    mov ax, MSG_IN_THE_DEEP_REGIONS_O_31520 ; 0x9005
    push ax                          ; 0x9008
    call api_idx_0002_GLIS           ; 0x9009
    add sp, byte 8                   ; 0x900c
    mov ax, 0x63                     ; 0x900f
    push ax                          ; 0x9012
    push ax                          ; 0x9013
    mov ax, 0                        ; 0x9014
    push ax                          ; 0x9017
    mov ax, MSG_EVEN_AS_I_SPEAK_AN_EV_31530 ; 0x9018
    push ax                          ; 0x901b
    call api_idx_0002_UUUJ           ; 0x901c
    add sp, byte 8                   ; 0x901f
    mov ax, 0                        ; 0x9022
    push ax                          ; 0x9025
    mov ax, MSG_WITHIN_THE_BLACK_SHIP_31535 ; 0x9026
    push ax                          ; 0x9029
    call api_idx_0002_MIQR           ; 0x902a
    add sp, byte 4                   ; 0x902d
    mov ax, 0                        ; 0x9030
    push ax                          ; 0x9033
    mov ax, MSG_ABOARD_THE_SHIP_OF_TH_31550 ; 0x9034
    push ax                          ; 0x9037
    call api_idx_0002_JHTS           ; 0x9038
    add sp, byte 4                   ; 0x903b
    mov ax, 0x63                     ; 0x903e
    push ax                          ; 0x9041
    mov ax, 0                        ; 0x9042
    push ax                          ; 0x9045
    mov ax, MSG_THE_T_RANG_31560     ; 0x9046
    push ax                          ; 0x9049
    call api_idx_0002_QRJS           ; 0x904a
    add sp, byte 6                   ; 0x904d
    mov ax, 0                        ; 0x9050
    push ax                          ; 0x9053
    mov ax, 0x63                     ; 0x9054
    push ax                          ; 0x9057
    mov ax, MSG_THE_UMPANI_31565     ; 0x9058
    push ax                          ; 0x905b
    call api_idx_0002_QRJS           ; 0x905c
    add sp, byte 6                   ; 0x905f
    mov ax, 0x63                     ; 0x9062
    push ax                          ; 0x9065
    push ax                          ; 0x9066
    mov ax, 0                        ; 0x9067
    push ax                          ; 0x906a
    cmp word [bp + 4], byte 4        ; 0x906b
    jne short .forward5              ; 0x906f
    mov ax, 0x63                     ; 0x9071
.forward5:
    push ax                          ; 0x9074
    mov ax, MSG_THERE_IS_NO_MORE_TIME_31570 ; 0x9075
    push ax                          ; 0x9078
    call loc_TQHJ                    ; 0x9079
    add sp, byte 0xa                 ; 0x907c
    mov ax, 0x63                     ; 0x907f
    push ax                          ; 0x9082
    mov ax, 0                        ; 0x9083
    push ax                          ; 0x9086
    mov ax, 1                        ; 0x9087
    push ax                          ; 0x908a
    mov ax, MSG_INSIDE_A_TINY_BIRD_OF_31580 ; 0x908b
    push ax                          ; 0x908e
    call api_idx_0002_GLIS           ; 0x908f
    add sp, byte 8                   ; 0x9092
    mov ax, 0                        ; 0x9095
    push ax                          ; 0x9098
    mov ax, MSG_31590                ; 0x9099
    push ax                          ; 0x909c
    call loc_JTTS                    ; 0x909d
    add sp, byte 4                   ; 0x90a0
    mov ax, 0                        ; 0x90a3
    push ax                          ; 0x90a6
    mov ax, MSG_WE_HAVE_ARRIVED_EXCLA_31600 ; 0x90a7
    push ax                          ; 0x90aa
    call api_idx_0002_GORG           ; 0x90ab
    add sp, byte 4                   ; 0x90ae
    jmp near .forward10              ; 0x90b1
.back2:
    mov ax, 0                        ; 0x90b4
    push ax                          ; 0x90b7
    push ax                          ; 0x90b8
    mov ax, 0x63                     ; 0x90b9
    push ax                          ; 0x90bc
    push ax                          ; 0x90bd
    mov ax, MSG_PERCHED_UPON_HIS_THRO_31700 ; 0x90be
    push ax                          ; 0x90c1
    call loc_TQHJ                    ; 0x90c2
    add sp, byte 0xa                 ; 0x90c5
    mov ax, 0                        ; 0x90c8
    push ax                          ; 0x90cb
    mov ax, 0x63                     ; 0x90cc
    push ax                          ; 0x90cf
    mov ax, MSG_THEY_CALL_THEMSELVES_31715 ; 0x90d0
    push ax                          ; 0x90d3
    call api_idx_0002_QRJS           ; 0x90d4
    add sp, byte 6                   ; 0x90d7
    mov ax, 0x63                     ; 0x90da
    push ax                          ; 0x90dd
    push ax                          ; 0x90de
    mov ax, 0                        ; 0x90df
    push ax                          ; 0x90e2
    mov ax, MSG_SOMEWHERE_AMONG_THE_S_31720 ; 0x90e3
    push ax                          ; 0x90e6
    call api_idx_0002_GLIS           ; 0x90e7
    add sp, byte 8                   ; 0x90ea
    mov ax, 0x63                     ; 0x90ed
    push ax                          ; 0x90f0
    mov ax, 0                        ; 0x90f1
    push ax                          ; 0x90f4
    mov ax, MSG_THEY_ALSO_SPOKE_OF_TE_31730 ; 0x90f5
    push ax                          ; 0x90f8
    call api_idx_0002_QRJS           ; 0x90f9
    add sp, byte 6                   ; 0x90fc
    mov ax, 0x63                     ; 0x90ff
    push ax                          ; 0x9102
    push ax                          ; 0x9103
    mov ax, 0                        ; 0x9104
    push ax                          ; 0x9107
    mov ax, MSG_AND_OF_A_BLACK_SHIP_A_31735 ; 0x9108
    push ax                          ; 0x910b
    call api_idx_0002_UUUJ           ; 0x910c
    add sp, byte 8                   ; 0x910f
    mov ax, 0                        ; 0x9112
    push ax                          ; 0x9115
    mov ax, MSG_AND_WITHIN_THE_BLACK_31740 ; 0x9116
    push ax                          ; 0x9119
    call api_idx_0002_MIQR           ; 0x911a
    add sp, byte 4                   ; 0x911d
    mov ax, 0                        ; 0x9120
    push ax                          ; 0x9123
    mov ax, MSG_A_YOUNG_GIRL_VI_DOMIN_31750 ; 0x9124
    push ax                          ; 0x9127
    call api_idx_0002_JHTS           ; 0x9128
    add sp, byte 4                   ; 0x912b
    mov ax, 0                        ; 0x912e
    push ax                          ; 0x9131
    push ax                          ; 0x9132
    mov ax, 0x63                     ; 0x9133
    push ax                          ; 0x9136
    push ax                          ; 0x9137
    mov ax, MSG_AFTER_THE_VOICES_CEAS_31755 ; 0x9138
    push ax                          ; 0x913b
    call loc_TQHJ                    ; 0x913c
    add sp, byte 0xa                 ; 0x913f
    mov ax, 0x63                     ; 0x9142
    push ax                          ; 0x9145
    push ax                          ; 0x9146
    mov ax, 1                        ; 0x9147
    push ax                          ; 0x914a
    mov ax, 0                        ; 0x914b
    push ax                          ; 0x914e
    mov ax, MSG_CONCEALED_NEAR_THE_CH_31760 ; 0x914f
    push ax                          ; 0x9152
    call loc_TQHJ                    ; 0x9153
    add sp, byte 0xa                 ; 0x9156
    mov ax, 0                        ; 0x9159
    push ax                          ; 0x915c
    push ax                          ; 0x915d
    mov ax, 0x63                     ; 0x915e
    push ax                          ; 0x9161
    push ax                          ; 0x9162
    mov ax, MSG_THERE_HE_IS_WHISPERS_31770 ; 0x9163
    push ax                          ; 0x9166
    call loc_TQHJ                    ; 0x9167
    add sp, byte 0xa                 ; 0x916a
    mov ax, 0x63                     ; 0x916d
    push ax                          ; 0x9170
    mov ax, 0                        ; 0x9171
    push ax                          ; 0x9174
    mov ax, 1                        ; 0x9175
    push ax                          ; 0x9178
    mov ax, MSG_INSIDE_A_TINY_BIRD_OF_31780 ; 0x9179
    push ax                          ; 0x917c
    call api_idx_0002_GLIS           ; 0x917d
    add sp, byte 8                   ; 0x9180
    mov ax, 0                        ; 0x9183
    push ax                          ; 0x9186
    mov ax, MSG_THE_STRANGE_WORLD_LOS_31800 ; 0x9187
    push ax                          ; 0x918a
    call loc_JTTS                    ; 0x918b
    add sp, byte 4                   ; 0x918e
    mov ax, 0                        ; 0x9191
    push ax                          ; 0x9194
    mov ax, MSG_HERE_AT_LAST_BELA_YEL_31810 ; 0x9195
    push ax                          ; 0x9198
    call api_idx_0002_GORG           ; 0x9199
    add sp, byte 4                   ; 0x919c
    jmp near .forward10              ; 0x919f
.back3:
    mov ax, 0                        ; 0x91a2
    push ax                          ; 0x91a5
    mov ax, 0x63                     ; 0x91a6
    push ax                          ; 0x91a9
    push ax                          ; 0x91aa
    push ax                          ; 0x91ab
    mov ax, MSG_YOU_CONFRONT_A_GIANT_31100 ; 0x91ac
    push ax                          ; 0x91af
    call loc_TQHJ                    ; 0x91b0
    add sp, byte 0xa                 ; 0x91b3
    mov ax, 0x63                     ; 0x91b6
    push ax                          ; 0x91b9
    mov ax, 0                        ; 0x91ba
    push ax                          ; 0x91bd
    mov ax, 0x63                     ; 0x91be
    push ax                          ; 0x91c1
    mov ax, MSG_AND_THEN_THERE_WERE_S_31110 ; 0x91c2
    push ax                          ; 0x91c5
    call api_idx_0002_GLIS           ; 0x91c6
    add sp, byte 8                   ; 0x91c9
    mov ax, 1                        ; 0x91cc
    push ax                          ; 0x91cf
    push ax                          ; 0x91d0
    mov ax, 0                        ; 0x91d1
    push ax                          ; 0x91d4
    mov ax, MSG_AN_EVIL_PRESENCE_APPE_31120 ; 0x91d5
    push ax                          ; 0x91d8
    call api_idx_0002_UUUJ           ; 0x91d9
    add sp, byte 8                   ; 0x91dc
    mov ax, 0x63                     ; 0x91df
    push ax                          ; 0x91e2
    mov ax, MSG_YOU_EMERGE_FROM_YOUR_31130 ; 0x91e3
    push ax                          ; 0x91e6
    call api_idx_0002_JHTS           ; 0x91e7
    add sp, byte 4                   ; 0x91ea
    mov ax, 0                        ; 0x91ed
    push ax                          ; 0x91f0
    mov ax, MSG_I_AM_HE_THAT_IS_CALLE_31150 ; 0x91f1
    push ax                          ; 0x91f4
    call api_idx_0002_MIQR           ; 0x91f5
    add sp, byte 4                   ; 0x91f8
    mov ax, 0x63                     ; 0x91fb
    push ax                          ; 0x91fe
    push ax                          ; 0x91ff
    mov ax, 0                        ; 0x9200
    push ax                          ; 0x9203
    mov ax, MSG_WE_TRAVEL_TO_A_DISTAN_31160 ; 0x9204
    push ax                          ; 0x9207
    call api_idx_0002_GLIS           ; 0x9208
    add sp, byte 8                   ; 0x920b
    mov ax, 0                        ; 0x920e
    push ax                          ; 0x9211
    mov ax, MSG_WITH_IT_I_SHALL_AQUIR_31170 ; 0x9212
    push ax                          ; 0x9215
    call api_idx_0002_MIQR           ; 0x9216
    add sp, byte 4                   ; 0x9219
    mov ax, 0x63                     ; 0x921c
    push ax                          ; 0x921f
    mov ax, 0                        ; 0x9220
    push ax                          ; 0x9223
    mov ax, MSG_I_SHALL_COMMAND_THE_T_31190 ; 0x9224
    push ax                          ; 0x9227
    call api_idx_0002_QRJS           ; 0x9228
    add sp, byte 6                   ; 0x922b
    mov ax, 0                        ; 0x922e
    push ax                          ; 0x9231
    mov ax, MSG_UNTIL_WE_ARRIVE_YOU_W_31200 ; 0x9232
    push ax                          ; 0x9235
    call api_idx_0002_MIQR           ; 0x9236
    add sp, byte 4                   ; 0x9239
    mov ax, 0                        ; 0x923c
    push ax                          ; 0x923f
    mov ax, MSG_A_YOUNG_GIRL_APPROACH_31210 ; 0x9240
    push ax                          ; 0x9243
    call api_idx_0002_JHTS           ; 0x9244
    add sp, byte 4                   ; 0x9247
    mov ax, 0x63                     ; 0x924a
    push ax                          ; 0x924d
    mov ax, 0                        ; 0x924e
    push ax                          ; 0x9251
    mov ax, 1                        ; 0x9252
    push ax                          ; 0x9255
    mov ax, MSG_SEVERAL_DAYS_LATER_YO_31220 ; 0x9256
    push ax                          ; 0x9259
    call api_idx_0002_GLIS           ; 0x925a
    add sp, byte 8                   ; 0x925d
    mov ax, 0                        ; 0x9260
    push ax                          ; 0x9263
    mov ax, MSG_THE_PLANET_GUARDIA_31230 ; 0x9264
    push ax                          ; 0x9267
    call loc_JTTS                    ; 0x9268
    add sp, byte 4                   ; 0x926b
    mov ax, 0                        ; 0x926e
    push ax                          ; 0x9271
    mov ax, MSG_HSSST_WE_HAVE_ARRIVED_31240 ; 0x9272
    push ax                          ; 0x9275
    call api_idx_0002_GORG           ; 0x9276
    add sp, byte 4                   ; 0x9279
    jmp short .forward10             ; 0x927c
.forward6:
    cmp ax, strict word 1            ; 0x927e
    jne short .forward7              ; 0x9281
    jmp near .back1                  ; 0x9283
.forward7:
    cmp ax, strict word 2            ; 0x9286
    jne short .forward8              ; 0x9289
    jmp near .back2                  ; 0x928b
.forward8:
    cmp ax, strict word 3            ; 0x928e
    jne short .forward9              ; 0x9291
    jmp near .back3                  ; 0x9293
.forward9:
    cmp ax, strict word 4            ; 0x9296
    jne short .forward10             ; 0x9299
    jmp near .back1                  ; 0x929b
.forward10:
    cmp word [bss_8450], byte 0      ; 0x929e
    je short .forward11              ; 0x92a3
    push word [bss_844c]             ; 0x92a5
    push word [bss_844e]             ; 0x92a9
    call fade_out_music              ; 0x92ad
    add sp, byte 4                   ; 0x92b0
    mov ax, 0                        ; 0x92b3
    push ax                          ; 0x92b6
    call free_loaded_score           ; 0x92b7
    pop cx                           ; 0x92ba
.forward11:
    test word [bss_9056], 0x1000     ; 0x92bb
    je short .forward13              ; 0x92c1
    cmp byte [bss_5989], 1           ; 0x92c3
    jne short .forward13             ; 0x92c8
    cmp word [mouse_active], byte 0  ; 0x92ca
    jne short .forward12             ; 0x92cf
    call call_mouse_init             ; 0x92d1
.forward12:
    mov word [mouse_active], 1       ; 0x92d4
.forward13:
    mov ax, 0                        ; 0x92da
    push ax                          ; 0x92dd
    mov ax, dseg_91ae                ; 0x92de
    push ax                          ; 0x92e1
    call load_screen_file            ; 0x92e2
    add sp, byte 4                   ; 0x92e5
    mov word [bp - 2], 0             ; 0x92e8
    jmp short .forward14             ; 0x92ed
.back4:
    mov ax, 0                        ; 0x92ef
    push ax                          ; 0x92f2
    push word [bp - 2]               ; 0x92f3
    call draw_party_member_panel     ; 0x92f6
    add sp, byte 4                   ; 0x92f9
    inc word [bp - 2]                ; 0x92fc
.forward14:
    mov ax, word [bp - 2]            ; 0x92ff
    cmp ax, word [party_char_count]  ; 0x9302
    jl short .back4                  ; 0x9306
    mov ax, 0                        ; 0x9308
    push ax                          ; 0x930b
    push ax                          ; 0x930c
    push ax                          ; 0x930d
    call call_reset_rgb              ; 0x930e
    add sp, byte 6                   ; 0x9311
    mov ax, 0xc7                     ; 0x9314
    push ax                          ; 0x9317
    mov ax, 0x13f                    ; 0x9318
    push ax                          ; 0x931b
    mov ax, 0                        ; 0x931c
    push ax                          ; 0x931f
    push ax                          ; 0x9320
    call call_show_area              ; 0x9321
    add sp, byte 8                   ; 0x9324
    mov ax, 0                        ; 0x9327
    push ax                          ; 0x932a
    call call_fade_in                ; 0x932b
    pop cx                           ; 0x932e
    ret                              ; 0x932f
