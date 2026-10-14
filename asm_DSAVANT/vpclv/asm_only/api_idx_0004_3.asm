; auto-generated
; asm only
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x21be
    call aztec_csav                  ; 0x21c1
    mov bx, word [bp + 0x8]          ; 0x21c4
    mov al, byte [bx + 0x44]         ; 0x21c7
    push ax                          ; 0x21ca
    mov ax, 0x248                    ; 0x21cb
    imul word [bp + 0x4]             ; 0x21ce
    mov cx, ax                       ; 0x21d1
    mov ax, 0x12                     ; 0x21d3
    imul word [bp + 0x6]             ; 0x21d6
    mov dx, ax                       ; 0x21d9
    add cx, ax                       ; 0x21db
    mov bx, cx                       ; 0x21dd
    pop ax                           ; 0x21df
    mov byte [bx + 0x5d31], al       ; 0x21e0
    mov word [bp - 0x0004], 0        ; 0x21e4
@..api_idx_0004_3.l1:
    mov bx, word [bp + 0x8]          ; 0x21e9
    mov si, word [bp - 0x0004]       ; 0x21ec
    mov al, byte [bx + si + 0x2a]    ; 0x21ef
    push ax                          ; 0x21f2
    mov ax, 0x248                    ; 0x21f3
    imul word [bp + 0x4]             ; 0x21f6
    mov cx, ax                       ; 0x21f9
    mov ax, 0x12                     ; 0x21fb
    imul word [bp + 0x6]             ; 0x21fe
    mov dx, ax                       ; 0x2201
    add cx, ax                       ; 0x2203
    add cx, si                       ; 0x2205
    mov bx, cx                       ; 0x2207
    pop ax                           ; 0x2209
    mov byte [bx + 0x5d28], al       ; 0x220a
    inc word [bp - 0x0004]           ; 0x220e
    mov ax, word [bp - 0x0004]       ; 0x2211
    cmp ax, strict word 8            ; 0x2214
    jl short @..api_idx_0004_3.l1    ; 0x2217
    mov ax, 0x248                    ; 0x2219
    imul word [bp + 0x4]             ; 0x221c
    mov bx, ax                       ; 0x221f
    mov al, byte [bx + 0x5d8d]       ; 0x2221
    sub ah, ah                       ; 0x2225
    mov cx, 5                        ; 0x2227
    cwd                              ; 0x222a
    idiv cx                          ; 0x222b
    mov word [bp - 0x0004], ax       ; 0x222d
    cmp byte [bx + 0x5e2d], 0xc      ; 0x2230
    je short @..api_idx_0004_3.l2    ; 0x2235
    cmp byte [bx + 0x5e2d], 0xd      ; 0x2237
    jne short @..api_idx_0004_3.l3   ; 0x223c
@..api_idx_0004_3.l2:
    mov ax, 0x12                     ; 0x223e
    imul word [bp + 0x6]             ; 0x2241
    add bx, ax                       ; 0x2244
    mov al, byte [bx + 0x5d2e]       ; 0x2246
    sub ah, ah                       ; 0x224a
    mov cx, ax                       ; 0x224c
    mov ax, word [bp - 0x0004]       ; 0x224e
    add cx, ax                       ; 0x2251
    mov ax, cx                       ; 0x2253
    add ax, strict word 5            ; 0x2255
    mov byte [bx + 0x5d2e], al       ; 0x2258
    jmp short @..api_idx_0004_3.l4   ; 0x225c
@..api_idx_0004_3.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x225e
    jle short @..api_idx_0004_3.l4   ; 0x2262
    mov ax, 0x248                    ; 0x2264
    imul word [bp + 0x4]             ; 0x2267
    push ax                          ; 0x226a
    mov ax, 0x12                     ; 0x226b
    imul word [bp + 0x6]             ; 0x226e
    mov cx, ax                       ; 0x2271
    pop ax                           ; 0x2273
    add ax, cx                       ; 0x2274
    mov bx, ax                       ; 0x2276
    mov al, byte [bx + 0x5d2e]       ; 0x2278
    sub ah, ah                       ; 0x227c
    add ax, word [bp - 0x0004]       ; 0x227e
    mov byte [bx + 0x5d2e], al       ; 0x2281
@..api_idx_0004_3.l4:
    mov bx, word [bp + 0x8]          ; 0x2285
    mov al, byte [bx + 0x45]         ; 0x2288
    push ax                          ; 0x228b
    mov ax, 0x248                    ; 0x228c
    imul word [bp + 0x4]             ; 0x228f
    mov cx, ax                       ; 0x2292
    mov ax, 0x12                     ; 0x2294
    imul word [bp + 0x6]             ; 0x2297
    mov dx, ax                       ; 0x229a
    add cx, ax                       ; 0x229c
    mov bx, cx                       ; 0x229e
    pop ax                           ; 0x22a0
    mov byte [bx + 0x5d30], al       ; 0x22a1
    mov bx, word [bp + 0x8]          ; 0x22a5
    cmp byte [bx + 0x38], 4          ; 0x22a8
    jne short @..api_idx_0004_3.l6   ; 0x22ac
    mov al, byte [bx + 0x41]         ; 0x22ae
    cbw                              ; 0x22b1
    mov cx, 5                        ; 0x22b2
    imul cx                          ; 0x22b5
    mov cx, ax                       ; 0x22b7
    mov ax, 0                        ; 0x22b9
    sub ax, cx                       ; 0x22bc
    push ax                          ; 0x22be
    mov ax, 0x248                    ; 0x22bf
    imul word [bp + 0x4]             ; 0x22c2
    mov cx, ax                       ; 0x22c5
    mov ax, 0x12                     ; 0x22c7
    imul word [bp + 0x6]             ; 0x22ca
    mov dx, ax                       ; 0x22cd
    add cx, ax                       ; 0x22cf
    mov bx, cx                       ; 0x22d1
    pop ax                           ; 0x22d3
    mov byte [bx + 0x5d32], al       ; 0x22d4
    mov ax, 0x248                    ; 0x22d8
    imul word [bp + 0x4]             ; 0x22db
    mov bx, ax                       ; 0x22de
    cmp byte [bx + 0x5e2d], 4        ; 0x22e0
    jne short @..api_idx_0004_3.l5   ; 0x22e5
    mov bx, cx                       ; 0x22e7
    add byte [bx + 0x5d32], 0xf1     ; 0x22e9
    mov al, byte [bx + 0x5d2e]       ; 0x22ee
    sub ah, ah                       ; 0x22f2
    shl ax, 1                        ; 0x22f4
    mov byte [bx + 0x5d2e], al       ; 0x22f6
@..api_idx_0004_3.l5:
    jmp near @..api_idx_0004_3.l12   ; 0x22fa
@..api_idx_0004_3.l6:
    mov ax, 0x248                    ; 0x22fd
    imul word [bp + 0x4]             ; 0x2300
    push ax                          ; 0x2303
    mov ax, 0x12                     ; 0x2304
    imul word [bp + 0x6]             ; 0x2307
    mov cx, ax                       ; 0x230a
    pop ax                           ; 0x230c
    add ax, cx                       ; 0x230d
    mov bx, ax                       ; 0x230f
    mov byte [bx + 0x5d32], 0        ; 0x2311
    cmp word [bp + 0x6], byte 0      ; 0x2316
    jne short @..api_idx_0004_3.l9   ; 0x231a
    mov ax, 0x248                    ; 0x231c
    imul word [bp + 0x4]             ; 0x231f
    mov bx, ax                       ; 0x2322
    mov al, byte [bx + 0x5d32]       ; 0x2324
    cbw                              ; 0x2328
    mov cx, 0                        ; 0x2329
    cmp byte [bx + 0x5d68], 0xf      ; 0x232c
    jbe short @..api_idx_0004_3.l7   ; 0x2331
    mov cx, 5                        ; 0x2333
@..api_idx_0004_3.l7:
    sub ax, cx                       ; 0x2336
    mov byte [bx + 0x5d32], al       ; 0x2338
    cbw                              ; 0x233c
    mov cx, 0                        ; 0x233d
    cmp byte [bx + 0x5d68], 0x11     ; 0x2340
    jbe short @..api_idx_0004_3.l8   ; 0x2345
    mov cx, 5                        ; 0x2347
@..api_idx_0004_3.l8:
    sub ax, cx                       ; 0x234a
    mov byte [bx + 0x5d32], al       ; 0x234c
    jmp short @..api_idx_0004_3.l11  ; 0x2350
@..api_idx_0004_3.l9:
    mov ax, 0x248                    ; 0x2352
    imul word [bp + 0x4]             ; 0x2355
    mov bx, ax                       ; 0x2358
    mov al, byte [bx + 0x5d44]       ; 0x235a
    cbw                              ; 0x235e
    mov cx, 0                        ; 0x235f
    cmp byte [bx + 0x5d68], 0x11     ; 0x2362
    jbe short @..api_idx_0004_3.l10  ; 0x2367
    mov cx, 5                        ; 0x2369
@..api_idx_0004_3.l10:
    sub ax, cx                       ; 0x236c
    mov byte [bx + 0x5d44], al       ; 0x236e
@..api_idx_0004_3.l11:
    mov ax, 0x248                    ; 0x2372
    imul word [bp + 0x4]             ; 0x2375
    push ax                          ; 0x2378
    mov ax, 0x12                     ; 0x2379
    imul word [bp + 0x6]             ; 0x237c
    mov cx, ax                       ; 0x237f
    pop ax                           ; 0x2381
    add ax, cx                       ; 0x2382
    mov bx, ax                       ; 0x2384
    mov al, byte [bx + 0x5d32]       ; 0x2386
    cbw                              ; 0x238a
    push ax                          ; 0x238b
    mov bx, word [bp + 0x8]          ; 0x238c
    mov al, byte [bx + 0x41]         ; 0x238f
    cbw                              ; 0x2392
    mov cx, 5                        ; 0x2393
    imul cx                          ; 0x2396
    mov cx, ax                       ; 0x2398
    pop ax                           ; 0x239a
    sub ax, cx                       ; 0x239b
    push ax                          ; 0x239d
    mov ax, 0x248                    ; 0x239e
    imul word [bp + 0x4]             ; 0x23a1
    mov cx, ax                       ; 0x23a4
    mov ax, 0x12                     ; 0x23a6
    imul word [bp + 0x6]             ; 0x23a9
    mov dx, ax                       ; 0x23ac
    add cx, ax                       ; 0x23ae
    mov bx, cx                       ; 0x23b0
    pop ax                           ; 0x23b2
    mov byte [bx + 0x5d32], al       ; 0x23b3
@..api_idx_0004_3.l12:
    mov si, word [bp + 0x8]          ; 0x23b7
    add si, byte 0x1e                ; 0x23ba
    mov ax, 0x248                    ; 0x23bd
    imul word [bp + 0x4]             ; 0x23c0
    push ax                          ; 0x23c3
    mov ax, 0x12                     ; 0x23c4
    imul word [bp + 0x6]             ; 0x23c7
    mov cx, ax                       ; 0x23ca
    pop ax                           ; 0x23cc
    add ax, cx                       ; 0x23cd
    mov di, ax                       ; 0x23cf
    add ax, 0x5d24                   ; 0x23d1
    mov di, ax                       ; 0x23d4
    mov cx, ds                       ; 0x23d6
    mov es, cx                       ; 0x23d8
    movsw                            ; 0x23da
    movsw                            ; 0x23db
    cmp word [bp + 0x6], byte 0      ; 0x23dc
    jne short @..api_idx_0004_3.l16  ; 0x23e0
    mov ax, 0x248                    ; 0x23e2
    imul word [bp + 0x4]             ; 0x23e5
    mov bx, ax                       ; 0x23e8
    cmp byte [bx + 0x5d64], 0xf      ; 0x23ea
    jbe short @..api_idx_0004_3.l13  ; 0x23ef
    mov ax, 1                        ; 0x23f1
    jmp short @..api_idx_0004_3.l14  ; 0x23f4
@..api_idx_0004_3.l13:
    mov ax, 0                        ; 0x23f6
@..api_idx_0004_3.l14:
    add word [bx + 0x5d24], ax       ; 0x23f9
    mov ax, 0                        ; 0x23fd
    cmp byte [bx + 0x5d64], 0x11     ; 0x2400
    jbe short @..api_idx_0004_3.l15  ; 0x2405
    mov ax, 1                        ; 0x2407
@..api_idx_0004_3.l15:
    add word [bx + 0x5d24], ax       ; 0x240a
@..api_idx_0004_3.l16:
    mov bx, word [bp + 0x8]          ; 0x240e
    mov al, byte [bx + 0x46]         ; 0x2411
    push ax                          ; 0x2414
    mov ax, 0x248                    ; 0x2415
    imul word [bp + 0x4]             ; 0x2418
    mov cx, ax                       ; 0x241b
    mov ax, 0x12                     ; 0x241d
    imul word [bp + 0x6]             ; 0x2420
    mov dx, ax                       ; 0x2423
    add cx, ax                       ; 0x2425
    mov bx, cx                       ; 0x2427
    pop ax                           ; 0x2429
    mov byte [bx + 0x5d33], al       ; 0x242a
    mov bx, word [bp + 0x8]          ; 0x242e
    mov al, byte [bx + 0x42]         ; 0x2431
    mov bx, cx                       ; 0x2434
    mov byte [bx + 0x5d34], al       ; 0x2436
    mov bx, word [bp + 0x8]          ; 0x243a
    mov al, byte [bx + 0x43]         ; 0x243d
    mov bx, cx                       ; 0x2440
    mov byte [bx + 0x5d35], al       ; 0x2442
    ret                              ; 0x2446
