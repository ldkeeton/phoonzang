; auto-generated
api_idx_000e_IIQQ:
    mov ax, 0xfff2                   ; 0x2138
    call aztec_csav                  ; 0x213b
    mov bx, word [bp + 0xe]          ; 0x213e
    mov byte [bx], 0                 ; 0x2141
    mov ax, word [bp + 0x4]          ; 0x2144
    shl ax, 1                        ; 0x2147
    mov bx, ax                       ; 0x2149
    mov bx, word [bx - 0x7b7e]       ; 0x214b
    cmp byte [bx + 0x19f], 0xff      ; 0x214f
    jne short @..api_idx_000e_IIQQ.l1 ; 0x2154
    ret                              ; 0x2156
@..api_idx_000e_IIQQ.l1:
    mov al, byte [bx + 0x19f]        ; 0x2157
    cbw                              ; 0x215b
    mov word [bp - 0x0002], ax       ; 0x215c
    mov word [bp - 0x000e], 0        ; 0x215f
    mov cx, 0x15e                    ; 0x2164
    imul cx                          ; 0x2167
    push ax                          ; 0x2169
    mov ax, 3                        ; 0x216a
    imul word [bp + 0x8]             ; 0x216d
    add ax, word [bp + 0xa]          ; 0x2170
    mov bx, ax                       ; 0x2173
    mov al, byte [bx - 0x7bd0]       ; 0x2175
    sub ah, ah                       ; 0x2179
    mov cx, ax                       ; 0x217b
    pop ax                           ; 0x217d
    add ax, cx                       ; 0x217e
    mov bx, ax                       ; 0x2180
    mov al, byte [bx + 0x6a1a]       ; 0x2182
    sub ah, ah                       ; 0x2186
    mov word [bp - 0x0004], ax       ; 0x2188
    jmp near @..api_idx_000e_IIQQ.l15 ; 0x218b
@..api_idx_000e_IIQQ.l2:
    mov ax, 0x2c                     ; 0x218e
    imul word [bp + 0x6]             ; 0x2191
    mov si, ax                       ; 0x2194
    mov ax, word [bp + 0x4]          ; 0x2196
    shl ax, 1                        ; 0x2199
    mov bx, ax                       ; 0x219b
    mov bx, word [bx - 0x7b7e]       ; 0x219d
    cmp byte [bx + si + 0x22], 2     ; 0x21a1
    je short @..api_idx_000e_IIQQ.l3 ; 0x21a5
    cmp byte [bx + si + 0x11], 0     ; 0x21a7
    ja short @..api_idx_000e_IIQQ.l3 ; 0x21ab
    cmp byte [bx + si + 0x10], 0     ; 0x21ad
    jbe short @..api_idx_000e_IIQQ.l4 ; 0x21b1
@..api_idx_000e_IIQQ.l3:
    mov ax, 0x5a                     ; 0x21b3
    imul word [bp + 0x8]             ; 0x21b6
    push ax                          ; 0x21b9
    mov ax, 0x1e                     ; 0x21ba
    imul word [bp + 0xa]             ; 0x21bd
    mov cx, ax                       ; 0x21c0
    pop ax                           ; 0x21c2
    add ax, cx                       ; 0x21c3
    push ax                          ; 0x21c5
    mov ax, 3                        ; 0x21c6
    imul word [bp - 0x0004]          ; 0x21c9
    mov cx, ax                       ; 0x21cc
    pop ax                           ; 0x21ce
    add ax, cx                       ; 0x21cf
    mov bx, ax                       ; 0x21d1
    mov al, byte [bx - 0x7cde]       ; 0x21d3
    sub ah, ah                       ; 0x21d7
    mov word [bp - 0x0006], ax       ; 0x21d9
    mov ax, 0x15e                    ; 0x21dc
    imul word [bp - 0x0002]          ; 0x21df
    mov cx, ax                       ; 0x21e2
    mov ax, word [bp - 0x0006]       ; 0x21e4
    add cx, ax                       ; 0x21e7
    mov bx, cx                       ; 0x21e9
    mov al, byte [bx + 0x6a40]       ; 0x21eb
    sub ah, ah                       ; 0x21ef
    mov word [bp - 0x0008], ax       ; 0x21f1
    jmp near @..api_idx_000e_IIQQ.l11 ; 0x21f4
@..api_idx_000e_IIQQ.l4:
    mov ax, 0x5a                     ; 0x21f7
    imul word [bp + 0x8]             ; 0x21fa
    push ax                          ; 0x21fd
    mov ax, 0x1e                     ; 0x21fe
    imul word [bp + 0xa]             ; 0x2201
    mov cx, ax                       ; 0x2204
    pop ax                           ; 0x2206
    add ax, cx                       ; 0x2207
    push ax                          ; 0x2209
    mov ax, 3                        ; 0x220a
    imul word [bp - 0x0004]          ; 0x220d
    mov cx, ax                       ; 0x2210
    pop ax                           ; 0x2212
    add ax, cx                       ; 0x2213
    mov bx, ax                       ; 0x2215
    mov al, byte [bx - 0x7cdd]       ; 0x2217
    sub ah, ah                       ; 0x221b
    mov word [bp - 0x0008], ax       ; 0x221d
    mov al, byte [bx - 0x7cdc]       ; 0x2220
    sub ah, ah                       ; 0x2224
    mov word [bp - 0x000a], ax       ; 0x2226
    cmp word [bp + 0xc], byte 0      ; 0x2229
    je short @..api_idx_000e_IIQQ.l5 ; 0x222d
    dec word [bp - 0x000a]           ; 0x222f
@..api_idx_000e_IIQQ.l5:
    cmp word [bp - 0x000a], byte 0   ; 0x2232
    jle short @..api_idx_000e_IIQQ.l6 ; 0x2236
    jmp near @..api_idx_000e_IIQQ.l10 ; 0x2238
@..api_idx_000e_IIQQ.l6:
    mov al, byte [bx - 0x7cde]       ; 0x223b
    sub ah, ah                       ; 0x223f
    mov word [bp - 0x0006], ax       ; 0x2241
    inc word [bp - 0x0008]           ; 0x2244
    mov ax, 0x15e                    ; 0x2247
    imul word [bp - 0x0002]          ; 0x224a
    mov cx, ax                       ; 0x224d
    mov ax, word [bp - 0x0006]       ; 0x224f
    add cx, ax                       ; 0x2252
    mov bx, cx                       ; 0x2254
    mov al, byte [bx + 0x6a40]       ; 0x2256
    sub ah, ah                       ; 0x225a
    push ax                          ; 0x225c
    mov al, byte [bx + 0x6a4a]       ; 0x225d
    sub ah, ah                       ; 0x2261
    mov cx, ax                       ; 0x2263
    pop ax                           ; 0x2265
    add ax, cx                       ; 0x2266
    dec ax                           ; 0x2268
    cmp ax, word [bp - 0x0008]       ; 0x2269
    jl short @..api_idx_000e_IIQQ.l7 ; 0x226c
    jmp near @..api_idx_000e_IIQQ.l9 ; 0x226e
@..api_idx_000e_IIQQ.l7:
    mov ax, 3                        ; 0x2271
    imul word [bp + 0x8]             ; 0x2274
    add ax, word [bp + 0xa]          ; 0x2277
    mov bx, ax                       ; 0x227a
    cmp byte [bx - 0x7bd0], 0        ; 0x227c
    je short @..api_idx_000e_IIQQ.l8 ; 0x2281
    mov byte [bx - 0x7bd0], 0        ; 0x2283
    mov ax, 0                        ; 0x2288
    push ax                          ; 0x228b
    push word [bp + 0xa]             ; 0x228c
    push word [bp + 0x8]             ; 0x228f
    push word [bp + 0x4]             ; 0x2292
    call api_idx_000a_NJRP           ; 0x2295
    add sp, byte 8                   ; 0x2298
    push word [bp + 0xe]             ; 0x229b
    mov ax, 0                        ; 0x229e
    push ax                          ; 0x22a1
    push word [bp + 0xa]             ; 0x22a2
    push word [bp + 0x8]             ; 0x22a5
    push word [bp + 0x6]             ; 0x22a8
    push word [bp + 0x4]             ; 0x22ab
    call api_idx_000e_IIQQ           ; 0x22ae
    add sp, byte 0x0c                ; 0x22b1
    ret                              ; 0x22b4
@..api_idx_000e_IIQQ.l8:
    mov ax, 0x15e                    ; 0x22b5
    imul word [bp - 0x0002]          ; 0x22b8
    add ax, word [bp - 0x0004]       ; 0x22bb
    mov bx, ax                       ; 0x22be
    mov al, byte [bx + 0x6a2c]       ; 0x22c0
    sub ah, ah                       ; 0x22c4
    push ax                          ; 0x22c6
    call ds_app_GGUI                 ; 0x22c7
    pop cx                           ; 0x22ca
    push ax                          ; 0x22cb
    mov ax, 0x15e                    ; 0x22cc
    imul word [bp - 0x0002]          ; 0x22cf
    add ax, word [bp - 0x0004]       ; 0x22d2
    mov bx, ax                       ; 0x22d5
    mov al, byte [bx + 0x6a22]       ; 0x22d7
    sub ah, ah                       ; 0x22db
    mov cx, ax                       ; 0x22dd
    pop ax                           ; 0x22df
    add ax, cx                       ; 0x22e0
    mov word [bp - 0x0006], ax       ; 0x22e2
    mov al, byte [bp - 0x0006]       ; 0x22e5
    push ax                          ; 0x22e8
    mov ax, 0x5a                     ; 0x22e9
    imul word [bp + 0x8]             ; 0x22ec
    mov cx, ax                       ; 0x22ef
    mov ax, 0x1e                     ; 0x22f1
    imul word [bp + 0xa]             ; 0x22f4
    mov dx, ax                       ; 0x22f7
    add cx, ax                       ; 0x22f9
    mov ax, 3                        ; 0x22fb
    imul word [bp - 0x0004]          ; 0x22fe
    mov dx, ax                       ; 0x2301
    add cx, ax                       ; 0x2303
    mov bx, cx                       ; 0x2305
    pop ax                           ; 0x2307
    mov byte [bx - 0x7cde], al       ; 0x2308
    mov ax, 0x15e                    ; 0x230c
    imul word [bp - 0x0002]          ; 0x230f
    add ax, word [bp - 0x0006]       ; 0x2312
    mov bx, ax                       ; 0x2315
    mov al, byte [bx + 0x6a40]       ; 0x2317
    sub ah, ah                       ; 0x231b
    mov word [bp - 0x0008], ax       ; 0x231d
@..api_idx_000e_IIQQ.l9:
    mov al, byte [bp - 0x0008]       ; 0x2320
    push ax                          ; 0x2323
    mov ax, 0x5a                     ; 0x2324
    imul word [bp + 0x8]             ; 0x2327
    mov cx, ax                       ; 0x232a
    mov ax, 0x1e                     ; 0x232c
    imul word [bp + 0xa]             ; 0x232f
    mov dx, ax                       ; 0x2332
    add cx, ax                       ; 0x2334
    mov ax, 3                        ; 0x2336
    imul word [bp - 0x0004]          ; 0x2339
    mov dx, ax                       ; 0x233c
    add cx, ax                       ; 0x233e
    mov bx, cx                       ; 0x2340
    pop ax                           ; 0x2342
    mov byte [bx - 0x7cdd], al       ; 0x2343
    mov ax, 0x15e                    ; 0x2347
    imul word [bp - 0x0002]          ; 0x234a
    mov cx, word [bp - 0x0008]       ; 0x234d
    shl cx, 1                        ; 0x2350
    shl cx, 1                        ; 0x2352
    add ax, cx                       ; 0x2354
    mov bx, ax                       ; 0x2356
    mov al, byte [bx + 0x6ac2]       ; 0x2358
    sub ah, ah                       ; 0x235c
    push ax                          ; 0x235e
    call ds_app_GGUI                 ; 0x235f
    pop cx                           ; 0x2362
    push ax                          ; 0x2363
    mov ax, 0x15e                    ; 0x2364
    imul word [bp - 0x0002]          ; 0x2367
    mov cx, word [bp - 0x0008]       ; 0x236a
    shl cx, 1                        ; 0x236d
    shl cx, 1                        ; 0x236f
    add ax, cx                       ; 0x2371
    mov bx, ax                       ; 0x2373
    mov al, byte [bx + 0x6ac1]       ; 0x2375
    sub ah, ah                       ; 0x2379
    mov cx, ax                       ; 0x237b
    pop ax                           ; 0x237d
    add ax, cx                       ; 0x237e
    mov word [bp - 0x000a], ax       ; 0x2380
@..api_idx_000e_IIQQ.l10:
    mov al, byte [bp - 0x000a]       ; 0x2383
    push ax                          ; 0x2386
    mov ax, 0x5a                     ; 0x2387
    imul word [bp + 0x8]             ; 0x238a
    mov cx, ax                       ; 0x238d
    mov ax, 0x1e                     ; 0x238f
    imul word [bp + 0xa]             ; 0x2392
    mov dx, ax                       ; 0x2395
    add cx, ax                       ; 0x2397
    mov ax, 3                        ; 0x2399
    imul word [bp - 0x0004]          ; 0x239c
    mov dx, ax                       ; 0x239f
    add cx, ax                       ; 0x23a1
    mov bx, cx                       ; 0x23a3
    pop ax                           ; 0x23a5
    mov byte [bx - 0x7cdc], al       ; 0x23a6
@..api_idx_000e_IIQQ.l11:
    mov ax, 0x15e                    ; 0x23aa
    imul word [bp - 0x0002]          ; 0x23ad
    mov cx, word [bp - 0x0008]       ; 0x23b0
    shl cx, 1                        ; 0x23b3
    shl cx, 1                        ; 0x23b5
    add ax, cx                       ; 0x23b7
    mov bx, ax                       ; 0x23b9
    mov al, byte [bx + 0x6ac0]       ; 0x23bb
    mov bx, word [bp + 0xe]          ; 0x23bf
    mov si, word [bp - 0x000e]       ; 0x23c2
    mov byte [bx + si], al           ; 0x23c5
    mov ax, word [bp + 0x4]          ; 0x23c7
    shl ax, 1                        ; 0x23ca
    mov bx, ax                       ; 0x23cc
    mov bx, word [bx - 0x7b7e]       ; 0x23ce
    cmp byte [bx + 0x19e], 0x79      ; 0x23d2
    je short @..api_idx_000e_IIQQ.l12 ; 0x23d7
    mov al, byte [bx + 0x19e]        ; 0x23d9
    sub ah, ah                       ; 0x23dd
    cmp ax, 0x8d                     ; 0x23df
    jne short @..api_idx_000e_IIQQ.l13 ; 0x23e2
@..api_idx_000e_IIQQ.l12:
    inc word [bp - 0x000e]           ; 0x23e4
    mov bx, word [bp + 0xe]          ; 0x23e7
    mov si, word [bp - 0x000e]       ; 0x23ea
    mov al, byte [bx + si - 0x0001]  ; 0x23ed
    mov byte [bx + si], al           ; 0x23f0
    mov ax, 0x15e                    ; 0x23f2
    imul word [bp - 0x0002]          ; 0x23f5
    mov bx, ax                       ; 0x23f8
    mov al, byte [bx + 0x6b76]       ; 0x23fa
    mov bx, word [bp + 0xe]          ; 0x23fe
    mov si, word [bp - 0x000e]       ; 0x2401
    mov byte [bx + si - 0x0001], al  ; 0x2404
@..api_idx_000e_IIQQ.l13:
    mov bx, word [bp + 0xe]          ; 0x2407
    mov si, word [bp - 0x000e]       ; 0x240a
    cmp byte [bx + si], 0            ; 0x240d
    je short @..api_idx_000e_IIQQ.l14 ; 0x2410
    inc word [bp - 0x000e]           ; 0x2412
@..api_idx_000e_IIQQ.l14:
    inc word [bp - 0x0004]           ; 0x2415
@..api_idx_000e_IIQQ.l15:
    mov ax, 0x15e                    ; 0x2418
    imul word [bp - 0x0002]          ; 0x241b
    push ax                          ; 0x241e
    mov ax, 3                        ; 0x241f
    imul word [bp + 0x8]             ; 0x2422
    add ax, word [bp + 0xa]          ; 0x2425
    mov bx, ax                       ; 0x2428
    mov al, byte [bx - 0x7bd0]       ; 0x242a
    sub ah, ah                       ; 0x242e
    mov cx, ax                       ; 0x2430
    pop ax                           ; 0x2432
    add ax, cx                       ; 0x2433
    mov bx, ax                       ; 0x2435
    mov al, byte [bx + 0x6a1a]       ; 0x2437
    sub ah, ah                       ; 0x243b
    push ax                          ; 0x243d
    mov al, byte [bx + 0x6a1e]       ; 0x243e
    sub ah, ah                       ; 0x2442
    mov cx, ax                       ; 0x2444
    pop ax                           ; 0x2446
    add ax, cx                       ; 0x2447
    cmp ax, word [bp - 0x0004]       ; 0x2449
    jle short @..api_idx_000e_IIQQ.l16 ; 0x244c
    jmp near @..api_idx_000e_IIQQ.l2 ; 0x244e
@..api_idx_000e_IIQQ.l16:
    mov bx, word [bp + 0xe]          ; 0x2451
    mov si, word [bp - 0x000e]       ; 0x2454
    mov byte [bx + si], 0            ; 0x2457
    ret                              ; 0x245a
