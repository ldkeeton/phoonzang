; auto-generated
api_idx_000c_RLGP:
    mov ax, 0xfff4                   ; 0x5161
    call aztec_csav                  ; 0x5164
    mov word [bss_905e], 5           ; 0x5167
    mov word [game_state], 5         ; 0x516d
    mov word [banner_offset], 0x14   ; 0x5173
    mov word [banner_plain_flag], 0  ; 0x5179
    mov word [bss_943a], 0           ; 0x517f
    mov word [bss_9704], 0xffff      ; 0x5185
    mov word [bp - 0x0004], 0        ; 0x518b
    mov word [bp - 0x0002], 0        ; 0x5190
    jmp short @..api_idx_000c_RLGP.l2 ; 0x5195
@..api_idx_000c_RLGP.l1:
    mov ax, 0                        ; 0x5197
    push ax                          ; 0x519a
    push word [bp - 0x0002]          ; 0x519b
    call api_idx_0046_NOMK           ; 0x519e
    add sp, byte 4                   ; 0x51a1
    or word [bp - 0x0004], ax        ; 0x51a4
    inc word [bp - 0x0002]           ; 0x51a7
@..api_idx_000c_RLGP.l2:
    mov ax, word [bp - 0x0002]       ; 0x51aa
    cmp ax, word [bss_69c8]          ; 0x51ad
    jl short @..api_idx_000c_RLGP.l1 ; 0x51b1
    cmp word [bp - 0x0004], byte 0   ; 0x51b3
    jne short @..api_idx_000c_RLGP.l3 ; 0x51b7
    ret                              ; 0x51b9
@..api_idx_000c_RLGP.l3:
    call free_current_maze           ; 0x51ba
    mov ax, 1                        ; 0x51bd
    push ax                          ; 0x51c0
    mov ax, 2                        ; 0x51c1
    push ax                          ; 0x51c4
    call load_monster_picture        ; 0x51c5
    add sp, byte 4                   ; 0x51c8
    mov ax, 2                        ; 0x51cb
    push ax                          ; 0x51ce
    mov ax, 3                        ; 0x51cf
    push ax                          ; 0x51d2
    call load_monster_picture        ; 0x51d3
    add sp, byte 4                   ; 0x51d6
    mov ax, 0                        ; 0x51d9
    push ax                          ; 0x51dc
    mov ax, 2                        ; 0x51dd
    push ax                          ; 0x51e0
    mov ax, 0xc7                     ; 0x51e1
    push ax                          ; 0x51e4
    mov ax, 0x13f                    ; 0x51e5
    push ax                          ; 0x51e8
    mov ax, 0                        ; 0x51e9
    push ax                          ; 0x51ec
    push ax                          ; 0x51ed
    call gfx_cache_area              ; 0x51ee
    add sp, byte 0x0c                ; 0x51f1
    mov word [bp - 0x000a], dx       ; 0x51f4
    mov word [bp - 0x000c], ax       ; 0x51f7
    mov ax, 0                        ; 0x51fa
    push ax                          ; 0x51fd
    mov ax, dseg_93f0                ; 0x51fe
    push ax                          ; 0x5201
    call api_idx_0002_OOKN           ; 0x5202
    add sp, byte 4                   ; 0x5205
    mov ax, 0                        ; 0x5208
    push ax                          ; 0x520b
    mov ax, 2                        ; 0x520c
    push ax                          ; 0x520f
    mov ax, 0x67                     ; 0x5210
    push ax                          ; 0x5213
    mov ax, 0xa2                     ; 0x5214
    push ax                          ; 0x5217
    mov ax, 6                        ; 0x5218
    push ax                          ; 0x521b
    push ax                          ; 0x521c
    call gfx_cache_area              ; 0x521d
    add sp, byte 0x0c                ; 0x5220
    mov word [bss_9418], dx          ; 0x5223
    mov word [bss_9416], ax          ; 0x5227
    mov ax, 0                        ; 0x522a
    push ax                          ; 0x522d
    mov ax, 2                        ; 0x522e
    push ax                          ; 0x5231
    mov ax, 0x16                     ; 0x5232
    push ax                          ; 0x5235
    mov ax, 0x136                    ; 0x5236
    push ax                          ; 0x5239
    mov ax, 6                        ; 0x523a
    push ax                          ; 0x523d
    mov ax, 0xe4                     ; 0x523e
    push ax                          ; 0x5241
    call gfx_cache_area              ; 0x5242
    add sp, byte 0x0c                ; 0x5245
    mov word [bss_941c], dx          ; 0x5248
    mov word [bss_941a], ax          ; 0x524c
    mov ax, 0                        ; 0x524f
    push ax                          ; 0x5252
    mov ax, 2                        ; 0x5253
    push ax                          ; 0x5256
    mov ax, 0xbb                     ; 0x5257
    push ax                          ; 0x525a
    mov ax, 0xab                     ; 0x525b
    push ax                          ; 0x525e
    mov ax, 0x70                     ; 0x525f
    push ax                          ; 0x5262
    mov ax, 1                        ; 0x5263
    push ax                          ; 0x5266
    call gfx_cache_area              ; 0x5267
    add sp, byte 0x0c                ; 0x526a
    mov word [roster_screen_a], dx   ; 0x526d
    mov word [roster_screen_b], ax   ; 0x5271
    mov ax, 0                        ; 0x5274
    push ax                          ; 0x5277
    mov ax, 2                        ; 0x5278
    push ax                          ; 0x527b
    mov ax, 0x23                     ; 0x527c
    push ax                          ; 0x527f
    mov ax, 0x13f                    ; 0x5280
    push ax                          ; 0x5283
    mov ax, 0x1e                     ; 0x5284
    push ax                          ; 0x5287
    mov ax, 0xdc                     ; 0x5288
    push ax                          ; 0x528b
    call gfx_cache_area              ; 0x528c
    add sp, byte 0x0c                ; 0x528f
    mov word [bss_9424], dx          ; 0x5292
    mov word [bss_9422], ax          ; 0x5296
    mov ax, 0                        ; 0x5299
    push ax                          ; 0x529c
    mov ax, 2                        ; 0x529d
    push ax                          ; 0x52a0
    mov ax, 0x74                     ; 0x52a1
    push ax                          ; 0x52a4
    mov ax, 0x136                    ; 0x52a5
    push ax                          ; 0x52a8
    mov ax, 0x2e                     ; 0x52a9
    push ax                          ; 0x52ac
    mov ax, 0x114                    ; 0x52ad
    push ax                          ; 0x52b0
    call gfx_cache_area              ; 0x52b1
    add sp, byte 0x0c                ; 0x52b4
    mov word [bss_9428], dx          ; 0x52b7
    mov word [bss_9426], ax          ; 0x52bb
    mov ax, 0                        ; 0x52be
    push ax                          ; 0x52c1
    mov ax, 2                        ; 0x52c2
    push ax                          ; 0x52c5
    mov ax, 0xbf                     ; 0x52c6
    push ax                          ; 0x52c9
    mov ax, 0x13f                    ; 0x52ca
    push ax                          ; 0x52cd
    mov ax, 0x7e                     ; 0x52ce
    push ax                          ; 0x52d1
    mov ax, 0xb8                     ; 0x52d2
    push ax                          ; 0x52d5
    call gfx_cache_area              ; 0x52d6
    add sp, byte 0x0c                ; 0x52d9
    mov word [bss_942c], dx          ; 0x52dc
    mov word [bss_942a], ax          ; 0x52e0
    mov ax, 0                        ; 0x52e3
    push ax                          ; 0x52e6
    mov ax, 2                        ; 0x52e7
    push ax                          ; 0x52ea
    mov ax, 0x41                     ; 0x52eb
    push ax                          ; 0x52ee
    mov ax, 0x65                     ; 0x52ef
    push ax                          ; 0x52f2
    mov ax, 0x19                     ; 0x52f3
    push ax                          ; 0x52f6
    mov ax, 0x5a                     ; 0x52f7
    push ax                          ; 0x52fa
    call gfx_cache_area              ; 0x52fb
    add sp, byte 0x0c                ; 0x52fe
    mov word [bss_9434], dx          ; 0x5301
    mov word [saved_screen], ax      ; 0x5305
    mov ax, 0xf                      ; 0x5308
    push ax                          ; 0x530b
    mov ax, 0xb                      ; 0x530c
    push ax                          ; 0x530f
    call load_monster_picture        ; 0x5310
    add sp, byte 4                   ; 0x5313
    call ds_app_NNSU                 ; 0x5316
    mov word [bss_8450], ax          ; 0x5319
    test ax, ax                      ; 0x531c
    je short @..api_idx_000c_RLGP.l4 ; 0x531e
    mov ax, 0                        ; 0x5320
    push ax                          ; 0x5323
    push ax                          ; 0x5324
    call load_score_files            ; 0x5325
    add sp, byte 4                   ; 0x5328
    mov ax, word [dseg_010c]         ; 0x532b
    mov word [bss_844e], ax          ; 0x532e
    mov ax, 1                        ; 0x5331
    push ax                          ; 0x5334
    push word [bss_844e]             ; 0x5335
    mov ax, 0                        ; 0x5339
    push ax                          ; 0x533c
    call ds_app_UKGP                 ; 0x533d
    add sp, byte 6                   ; 0x5340
    mov word [bss_844c], ax          ; 0x5343
@..api_idx_000c_RLGP.l4:
    mov word [roster_drawn], 0       ; 0x5346
    mov word [roster_alt_mode], 0    ; 0x534c
    mov word [roster_page], 0        ; 0x5352
    mov word [bp - 0x0002], 0        ; 0x5358
    jmp short @..api_idx_000c_RLGP.l6 ; 0x535d
@..api_idx_000c_RLGP.l5:
    mov ax, 1                        ; 0x535f
    push ax                          ; 0x5362
    push word [bp - 0x0002]          ; 0x5363
    call api_idx_0046_NOMK           ; 0x5366
    add sp, byte 4                   ; 0x5369
    inc word [bp - 0x0002]           ; 0x536c
@..api_idx_000c_RLGP.l6:
    mov ax, word [bp - 0x0002]       ; 0x536f
    cmp ax, word [bss_69c8]          ; 0x5372
    jl short @..api_idx_000c_RLGP.l5 ; 0x5376
    cmp word [bss_8450], byte 0      ; 0x5378
    je short @..api_idx_000c_RLGP.l7 ; 0x537d
    push word [bss_844c]             ; 0x537f
    push word [bss_844e]             ; 0x5383
    call fade_out_music              ; 0x5387
    add sp, byte 4                   ; 0x538a
    mov ax, 0                        ; 0x538d
    push ax                          ; 0x5390
    call app_gfx_free_score          ; 0x5391
    pop cx                           ; 0x5394
@..api_idx_000c_RLGP.l7:
    mov ax, 0xf                      ; 0x5395
    push ax                          ; 0x5398
    call free_picture_slot           ; 0x5399
    pop cx                           ; 0x539c
    mov ax, 0                        ; 0x539d
    push ax                          ; 0x53a0
    mov ax, 1                        ; 0x53a1
    push ax                          ; 0x53a4
    push word [bss_9434]             ; 0x53a5
    push word [saved_screen]         ; 0x53a9
    call gfx_restore_screen          ; 0x53ad
    add sp, byte 8                   ; 0x53b0
    mov ax, 0                        ; 0x53b3
    push ax                          ; 0x53b6
    mov ax, 1                        ; 0x53b7
    push ax                          ; 0x53ba
    push word [bss_942c]             ; 0x53bb
    push word [bss_942a]             ; 0x53bf
    call gfx_restore_screen          ; 0x53c3
    add sp, byte 8                   ; 0x53c6
    mov ax, 0                        ; 0x53c9
    push ax                          ; 0x53cc
    mov ax, 1                        ; 0x53cd
    push ax                          ; 0x53d0
    push word [bss_9428]             ; 0x53d1
    push word [bss_9426]             ; 0x53d5
    call gfx_restore_screen          ; 0x53d9
    add sp, byte 8                   ; 0x53dc
    mov ax, 0                        ; 0x53df
    push ax                          ; 0x53e2
    mov ax, 1                        ; 0x53e3
    push ax                          ; 0x53e6
    push word [bss_9424]             ; 0x53e7
    push word [bss_9422]             ; 0x53eb
    call gfx_restore_screen          ; 0x53ef
    add sp, byte 8                   ; 0x53f2
    mov ax, 0                        ; 0x53f5
    push ax                          ; 0x53f8
    mov ax, 1                        ; 0x53f9
    push ax                          ; 0x53fc
    push word [roster_screen_a]      ; 0x53fd
    push word [roster_screen_b]      ; 0x5401
    call gfx_restore_screen          ; 0x5405
    add sp, byte 8                   ; 0x5408
    mov ax, 0                        ; 0x540b
    push ax                          ; 0x540e
    mov ax, 1                        ; 0x540f
    push ax                          ; 0x5412
    push word [bss_941c]             ; 0x5413
    push word [bss_941a]             ; 0x5417
    call gfx_restore_screen          ; 0x541b
    add sp, byte 8                   ; 0x541e
    mov ax, 0                        ; 0x5421
    push ax                          ; 0x5424
    mov ax, 1                        ; 0x5425
    push ax                          ; 0x5428
    push word [bss_9418]             ; 0x5429
    push word [bss_9416]             ; 0x542d
    call gfx_restore_screen          ; 0x5431
    add sp, byte 8                   ; 0x5434
    mov ax, 0                        ; 0x5437
    push ax                          ; 0x543a
    mov ax, 1                        ; 0x543b
    push ax                          ; 0x543e
    push word [bp - 0x000a]          ; 0x543f
    push word [bp - 0x000c]          ; 0x5442
    call gfx_restore_screen          ; 0x5445
    add sp, byte 8                   ; 0x5448
    mov ax, 1                        ; 0x544b
    push ax                          ; 0x544e
    call free_picture_slot           ; 0x544f
    pop cx                           ; 0x5452
    mov ax, 2                        ; 0x5453
    push ax                          ; 0x5456
    call free_picture_slot           ; 0x5457
    pop cx                           ; 0x545a
    call draw_party_glyph_row        ; 0x545b
    mov ax, 0xc7                     ; 0x545e
    push ax                          ; 0x5461
    mov ax, 0x13f                    ; 0x5462
    push ax                          ; 0x5465
    mov ax, 0                        ; 0x5466
    push ax                          ; 0x5469
    push ax                          ; 0x546a
    call gfx_show_area               ; 0x546b
    add sp, byte 8                   ; 0x546e
    ret                              ; 0x5471
