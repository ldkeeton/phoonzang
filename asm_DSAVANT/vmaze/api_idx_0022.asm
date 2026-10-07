api_idx_0022:
    mov ax, 0xffde                   ; 0x2215
    call ds_dispatch_f40b            ; 0x2218
    cmp word [data_8d12], byte 0     ; 0x221b
    jl short @..api_idx_0022.l1      ; 0x2220
    mov bx, word [data_0e12]         ; 0x2222
    mov si, word [data_8f3e]         ; 0x2226
    mov al, byte [bx + si + 0xb40]   ; 0x222a
    sub ah, ah                       ; 0x222e
    cmp ax, word [data_8d12]         ; 0x2230
    jle short @..api_idx_0022.l1     ; 0x2234
    mov word [data_8d12], ax         ; 0x2236
@..api_idx_0022.l1:
    cmp word [data_905e], byte 0x17  ; 0x2239
    je short @..api_idx_0022.l2      ; 0x223e
    mov ax, 0                        ; 0x2240
    push ax                          ; 0x2243
    push word [data_8f40]            ; 0x2244
    push word [data_8f42]            ; 0x2248
    push word [data_8f3e]            ; 0x224c
    call api_idx_0002_7              ; 0x2250
    add sp, byte 8                   ; 0x2253
@..api_idx_0022.l2:
    mov word [bp - 0x0004], 0        ; 0x2256
    jmp short @..api_idx_0022.l4     ; 0x225b
@..api_idx_0022.l3:
    mov ax, 1                        ; 0x225d
    push ax                          ; 0x2260
    push word [bp - 0x0004]          ; 0x2261
    call ds_dispatch_cb3a            ; 0x2264
    add sp, byte 4                   ; 0x2267
    inc word [bp - 0x0004]           ; 0x226a
@..api_idx_0022.l4:
    mov ax, word [bp - 0x0004]       ; 0x226d
    cmp ax, word [data_69c8]         ; 0x2270
    jl short @..api_idx_0022.l3      ; 0x2274
    mov word [data_91aa], 1          ; 0x2276
    mov word [data_91a8], 1          ; 0x227c
    mov word [data_82e8], 0          ; 0x2282
    mov word [data_82ec], 0          ; 0x2288
    mov word [data_831a], 0          ; 0x228e
    call api_idx_0002_8              ; 0x2294
    mov word [data_905e], 5          ; 0x2297
    mov word [data_830a], 5          ; 0x229d
    mov word [data_91b2], 1          ; 0x22a3
    mov word [data_91b4], 1          ; 0x22a9
    mov word [data_91b0], 0          ; 0x22af
@..api_idx_0022.l5:
    cmp word [data_91aa], byte 1     ; 0x22b5
    jne short @..api_idx_0022.l6     ; 0x22ba
    call loc_676c                    ; 0x22bc
@..api_idx_0022.l6:
    mov ax, word [data_8f3e]         ; 0x22bf
    mov cx, 6                        ; 0x22c2
    shl ax, cl                       ; 0x22c5
    mov cx, word [data_8f40]         ; 0x22c7
    shl cx, 1                        ; 0x22cb
    shl cx, 1                        ; 0x22cd
    shl cx, 1                        ; 0x22cf
    add ax, cx                       ; 0x22d1
    add ax, word [data_8f42]         ; 0x22d3
    mov word [bp - 0x000a], ax       ; 0x22d7
    push ax                          ; 0x22da
    mov ax, 0x8bfe                   ; 0x22db
    push ax                          ; 0x22de
    call ds_dispatch_ec74            ; 0x22df
    add sp, byte 4                   ; 0x22e2
    test ax, ax                      ; 0x22e5
    je short @..api_idx_0022.l7      ; 0x22e7
    call api_idx_0006_4              ; 0x22e9
    mov word [data_91b4], ax         ; 0x22ec
    jmp short @..api_idx_0022.l8     ; 0x22ef
@..api_idx_0022.l7:
    cmp word [data_91b4], byte 0     ; 0x22f1
    je short @..api_idx_0022.l8      ; 0x22f6
    mov word [data_91b4], 0          ; 0x22f8
    mov ax, 0                        ; 0x22fe
    push ax                          ; 0x2301
    push word [0x8d08]               ; 0x2302
    push word [data_8d06]            ; 0x2306
    call ds_dispatch_e94f            ; 0x230a
    add sp, byte 6                   ; 0x230d
    mov ax, 0xc4                     ; 0x2310
    push ax                          ; 0x2313
    mov ax, 0x13c                    ; 0x2314
    push ax                          ; 0x2317
    mov ax, 0xb9                     ; 0x2318
    push ax                          ; 0x231b
    mov ax, 0x131                    ; 0x231c
    push ax                          ; 0x231f
    call ds_dispatch_e8da            ; 0x2320
    add sp, byte 8                   ; 0x2323
@..api_idx_0022.l8:
    add word [data_8f1c], byte 1     ; 0x2326
    adc word [data_8f1e], byte 0     ; 0x232b
    call api_idx_0002_8              ; 0x2330
    mov ax, word [data_9198]         ; 0x2333
    jmp short @..api_idx_0022.l12    ; 0x2336
@..api_idx_0022.l9:
    mov ax, 1                        ; 0x2338
    push ax                          ; 0x233b
    mov ax, 0                        ; 0x233c
    push ax                          ; 0x233f
    mov ax, 0x17                     ; 0x2340
    push ax                          ; 0x2343
    mov ax, 0x16                     ; 0x2344
    push ax                          ; 0x2347
    mov ax, 0x14                     ; 0x2348
    push ax                          ; 0x234b
    mov ax, 0x15                     ; 0x234c
    push ax                          ; 0x234f
    call api_idx_0008                ; 0x2350
    add sp, byte 0x0c                ; 0x2353
    jmp short @..api_idx_0022.l13    ; 0x2356
@..api_idx_0022.l10:
    mov ax, 2                        ; 0x2358
    push ax                          ; 0x235b
    mov ax, 0                        ; 0x235c
    push ax                          ; 0x235f
    push ax                          ; 0x2360
    mov ax, 0x1c                     ; 0x2361
    push ax                          ; 0x2364
    mov ax, 0                        ; 0x2365
    push ax                          ; 0x2368
    mov ax, api_idx_0002             ; 0x2369
    push ax                          ; 0x236c
    call api_idx_0008                ; 0x236d
    add sp, byte 0x0c                ; 0x2370
    jmp short @..api_idx_0022.l13    ; 0x2373
@..api_idx_0022.l11:
    mov ax, 3                        ; 0x2375
    push ax                          ; 0x2378
    mov ax, 0                        ; 0x2379
    push ax                          ; 0x237c
    mov ax, 0x17                     ; 0x237d
    push ax                          ; 0x2380
    mov ax, 0x16                     ; 0x2381
    push ax                          ; 0x2384
    mov ax, 0                        ; 0x2385
    push ax                          ; 0x2388
    mov ax, 0x1b                     ; 0x2389
    push ax                          ; 0x238c
    call api_idx_0008                ; 0x238d
    add sp, byte 0x0c                ; 0x2390
    jmp short @..api_idx_0022.l13    ; 0x2393
@..api_idx_0022.l12:
    cmp ax, strict word 1            ; 0x2395
    je short @..api_idx_0022.l9      ; 0x2398
    cmp ax, strict word 2            ; 0x239a
    je short @..api_idx_0022.l10     ; 0x239d
    cmp ax, strict word 3            ; 0x239f
    je short @..api_idx_0022.l11     ; 0x23a2
@..api_idx_0022.l13:
    mov ax, word [data_8f1c]         ; 0x23a4
    mov dx, word [data_8f1e]         ; 0x23a7
    mov cx, 0x3c                     ; 0x23ab
    mov bx, 0                        ; 0x23ae
    call ds_dispatch_f9cd            ; 0x23b1
    or dx, ax                        ; 0x23b4
    jne short @..api_idx_0022.l14    ; 0x23b6
    call api_idx_0032                ; 0x23b8
@..api_idx_0022.l14:
    mov ax, word [data_8f1c]         ; 0x23bb
    mov dx, word [data_8f1e]         ; 0x23be
    mov cx, 0xf0                     ; 0x23c2
    mov bx, 0                        ; 0x23c5
    call ds_dispatch_f9cd            ; 0x23c8
    or dx, ax                        ; 0x23cb
    jne short @..api_idx_0022.l15    ; 0x23cd
    mov ax, 0x64                     ; 0x23cf
    push ax                          ; 0x23d2
    call ds_dispatch_b7a9            ; 0x23d3
    pop cx                           ; 0x23d6
    mov word [bp - 0x0004], ax       ; 0x23d7
    mov ax, 0x64                     ; 0x23da
    push ax                          ; 0x23dd
    call ds_dispatch_b7a9            ; 0x23de
    pop cx                           ; 0x23e1
    mov bx, word [bp - 0x0004]       ; 0x23e2
    mov byte [bx + 0x5990], al       ; 0x23e5
@..api_idx_0022.l15:
    mov ax, word [data_8f1c]         ; 0x23e9
    mov dx, word [data_8f1e]         ; 0x23ec
    mov cx, 0xa                      ; 0x23f0
    mov bx, 0                        ; 0x23f3
    call ds_dispatch_f9cd            ; 0x23f6
    cmp dx, byte 0                   ; 0x23f9
    jne short @..api_idx_0022.l16    ; 0x23fc
    cmp ax, strict word 5            ; 0x23fe
@..api_idx_0022.l16:
    je short @..api_idx_0022.l17     ; 0x2401
    jmp near @..api_idx_0022.l26     ; 0x2403
@..api_idx_0022.l17:
    mov word [bp - 0x0004], 0        ; 0x2406
    jmp near @..api_idx_0022.l25     ; 0x240b
@..api_idx_0022.l18:
    mov ax, 0x248                    ; 0x240e
    imul word [bp - 0x0004]          ; 0x2411
