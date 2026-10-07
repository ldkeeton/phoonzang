api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x21fd
    call ds_dispatch_f40b            ; 0x2200
    mov ax, word [bp + 0x6]          ; 0x2203
    jmp near @..api_idx_0008_2.l4    ; 0x2206
    mov ax, 0x32                     ; 0x2209
    imul word [bp + 0x8]             ; 0x220c
    add word [data_82fe], ax         ; 0x220f
    mov ax, 0                        ; 0x2213
    push ax                          ; 0x2216
    push word [data_8300]            ; 0x2217
    mov ax, 5                        ; 0x221b
    imul word [bp + 0x8]             ; 0x221e
    add ax, strict word 0x46         ; 0x2221
    push ax                          ; 0x2224
    call math_loc_21ad               ; 0x2225
    add sp, byte 6                   ; 0x2228
    mov word [data_8300], ax         ; 0x222b
    jmp near @..api_idx_0008_2.l16   ; 0x222e
    mov ax, 0x23                     ; 0x2231
    imul word [bp + 0x8]             ; 0x2234
    add word [data_82f2], ax         ; 0x2237
    mov ax, 0                        ; 0x223b
    push ax                          ; 0x223e
    push word [data_82f4]            ; 0x223f
    mov ax, word [bp + 0x8]          ; 0x2243
    dec ax                           ; 0x2246
    mov cx, data_0002                ; 0x2247
    cwd                              ; 0x224a
    idiv cx                          ; 0x224b
    inc ax                           ; 0x224d
    push ax                          ; 0x224e
    call math_loc_21ad               ; 0x224f
    add sp, byte 6                   ; 0x2252
    mov word [data_82f4], ax         ; 0x2255
    jmp near @..api_idx_0008_2.l16   ; 0x2258
    mov ax, 0x32                     ; 0x225b
    imul word [bp + 0x8]             ; 0x225e
    add word [data_82f6], ax         ; 0x2261
    mov ax, 0                        ; 0x2265
    push ax                          ; 0x2268
    push word [data_82f8]            ; 0x2269
    mov ax, word [bp + 0x8]          ; 0x226d
    dec ax                           ; 0x2270
    mov cx, data_0002                ; 0x2271
    cwd                              ; 0x2274
    idiv cx                          ; 0x2275
    inc ax                           ; 0x2277
    push ax                          ; 0x2278
    call math_loc_21ad               ; 0x2279
    add sp, byte 6                   ; 0x227c
    mov word [data_82f8], ax         ; 0x227f
    jmp near @..api_idx_0008_2.l16   ; 0x2282
    mov ax, 5                        ; 0x2285
    imul word [bp + 0x8]             ; 0x2288
    add word [data_8306], ax         ; 0x228b
    jmp near @..api_idx_0008_2.l16   ; 0x228f
    mov ax, 0x64                     ; 0x2292
    imul word [bp + 0x8]             ; 0x2295
    add word [data_8302], ax         ; 0x2298
    jmp near @..api_idx_0008_2.l16   ; 0x229c
    mov ax, 0x32                     ; 0x229f
    imul word [bp + 0x8]             ; 0x22a2
    add word [data_82fa], ax         ; 0x22a5
    mov ax, 0                        ; 0x22a9
    push ax                          ; 0x22ac
    push word [data_82fc]            ; 0x22ad
    mov ax, 5                        ; 0x22b1
    imul word [bp + 0x8]             ; 0x22b4
    push ax                          ; 0x22b7
    call math_loc_21ad               ; 0x22b8
    add sp, byte 6                   ; 0x22bb
    mov word [data_82fc], ax         ; 0x22be
    jmp near @..api_idx_0008_2.l16   ; 0x22c1
    mov ax, 0                        ; 0x22c4
    cmp word [bp + 0x6], byte 0x13   ; 0x22c7
    je short loc_22d0                ; 0x22cb
    mov ax, word [bp + 0xa]          ; 0x22cd
    mov word [bp - 0x0002], ax       ; 0x22d0
    mov ax, word [data_69c8]         ; 0x22d3
    cmp word [bp + 0x6], byte 0x13   ; 0x22d6
    je short loc_22e0                ; 0x22da
    mov ax, word [bp + 0xa]          ; 0x22dc
    inc ax                           ; 0x22df
    mov word [bp - 0x0004], ax       ; 0x22e0
    mov ax, word [bp + 0x8]          ; 0x22e3
    cmp word [bp + 0x6], byte 0x13   ; 0x22e6
    je short loc_22ee                ; 0x22ea
    shl ax, 1                        ; 0x22ec
    mov word [bp - 0x0006], ax       ; 0x22ee
    mov ax, 0                        ; 0x22f1
    cmp word [bp + 0x6], byte 0x13   ; 0x22f4
    je short loc_22fd                ; 0x22f8
    mov ax, word [bp + 0x8]          ; 0x22fa
    mov word [bp - 0x0008], ax       ; 0x22fd
    jmp short loc_236c               ; 0x2300
    mov ax, 0x248                    ; 0x2302
    imul word [bp - 0x0002]          ; 0x2305
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c12]          ; 0x230a
    mov ax, 0                        ; 0x230e
    push ax                          ; 0x2311
    push word [bp - 0x0008]          ; 0x2312
    mov ax, 8                        ; 0x2315
    push ax                          ; 0x2318
    push word [bp - 0x0006]          ; 0x2319
    db 0xe8, 0xcb, 0xad ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x231f
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x2324
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x2329
    mov es, dx                       ; 0x232b
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x2331
    movsw                            ; 0x2332
    db 0xe8, 0x88, 0xad ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x2336
    push ax                          ; 0x2339
    mov ax, 0x248                    ; 0x233a
    imul word [bp - 0x0002]          ; 0x233d
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x2342
    add ax, word [bx + 0x5c10]       ; 0x2343
    push ax                          ; 0x2347
    db 0xe8, 0x77, 0x94 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x234b
    push ax                          ; 0x234e
    mov ax, 0x248                    ; 0x234f
    imul word [bp - 0x0002]          ; 0x2352
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x2357
    mov word [bx + 0x5c10], ax       ; 0x2358
    cmp word [bp + 0x6], byte 0x13   ; 0x235c
    je short loc_2369                ; 0x2360
    push word [bp - 0x0002]          ; 0x2362
    call math_loc_2190               ; 0x2365
    pop cx                           ; 0x2368
    inc word [bp - 0x0002]           ; 0x2369
    mov ax, word [bp - 0x0002]       ; 0x236c
    cmp ax, word [bp - 0x0004]       ; 0x236f
    jl short loc_2302                ; 0x2372
    jmp near @..api_idx_0008_2.l16   ; 0x2374
    mov ax, 0x248                    ; 0x2377
    imul word [bp + 0xa]             ; 0x237a
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5d]       ; 0x237f
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x2385
    mov ax, 0x19                     ; 0x2386
    imul word [bp + 0x8]             ; 0x2389
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x238e
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x2391
    cmp ax, strict word 0            ; 0x2394
    jge short loc_239e               ; 0x2397
    mov word [bp - 0x0002], 0        ; 0x2399
    mov al, byte [bp - 0x0002]       ; 0x239e
    mov byte [bx + 0x5d5d], al       ; 0x23a1
    push word [bp + 0xa]             ; 0x23a5
    call math_loc_2190               ; 0x23a8
    pop cx                           ; 0x23ab
    jmp near @..api_idx_0008_2.l16   ; 0x23ac
    mov ax, 0x248                    ; 0x23af
    imul word [bp + 0xa]             ; 0x23b2
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5e32]       ; 0x23b7
    db 0x2a, 0xe4 ; sub ah, ah
    sub ax, word [bp + 0x8]          ; 0x23bd
    mov word [bp - 0x0002], ax       ; 0x23c0
    cmp ax, strict word 0            ; 0x23c3
    jg short loc_23d2                ; 0x23c6
    mov word [bp - 0x0002], 0        ; 0x23c8
    mov byte [bx + 0x5d5f], 0        ; 0x23cd
    mov al, byte [bp - 0x0002]       ; 0x23d2
    mov byte [bx + 0x5e32], al       ; 0x23d5
    mov al, byte [bx + 0x5d5f]       ; 0x23d9
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x23df
    mov ax, 5                        ; 0x23e0
    imul word [bp + 0x8]             ; 0x23e3
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x23e8
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x23eb
    cmp ax, strict word 0            ; 0x23ee
    jg short loc_23fd                ; 0x23f1
    mov word [bp - 0x0002], 0        ; 0x23f3
    mov byte [bx + 0x5e32], 0        ; 0x23f8
