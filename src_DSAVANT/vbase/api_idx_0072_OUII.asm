; auto-generated
api_idx_0072_OUII:
    mov ax, 0xff8e                   ; 0x1faf
    call aztec_csav                  ; 0x1fb2
    mov word [bp - 0xe], 0           ; 0x1fb5
    mov ax, word [disk_header]       ; 0x1fba
    mov word [bp - 0x10], ax         ; 0x1fbd
    cmp byte [install_mode], 5       ; 0x1fc0
    jne short .forward1              ; 0x1fc5
    cmp ax, strict word 0            ; 0x1fc7
    jle short .forward1              ; 0x1fca
    inc ax                           ; 0x1fcc
    inc ax                           ; 0x1fcd
    jmp short .forward2              ; 0x1fce
.forward1:
    mov ax, word [bp - 0x10]         ; 0x1fd0
.forward2:
    mov word [bp - 0x10], ax         ; 0x1fd3
    mov ax, 0                        ; 0x1fd6
    push ax                          ; 0x1fd9
    call call_wait_sound             ; 0x1fda
    pop cx                           ; 0x1fdd
    lea ax, word [bp - 0x5e]         ; 0x1fde
    push ax                          ; 0x1fe1
    mov ax, MSG_DISK_ERROR           ; 0x1fe2
    push ax                          ; 0x1fe5
    call load_message_string         ; 0x1fe6
    add sp, byte 4                   ; 0x1fe9
    lea ax, word [bp - 0x72]         ; 0x1fec
    push ax                          ; 0x1fef
    mov ax, MSG_LOADING              ; 0x1ff0
    push ax                          ; 0x1ff3
    call load_message_string         ; 0x1ff4
    add sp, byte 4                   ; 0x1ff7
    mov ax, dseg_90c2                ; 0x1ffa
    push ax                          ; 0x1ffd
    lea ax, word [bp - 0x36]         ; 0x1ffe
    push ax                          ; 0x2001
    call aztec_strcpy                ; 0x2002
    add sp, byte 4                   ; 0x2005
    mov ax, bss_593a                 ; 0x2008
    push ax                          ; 0x200b
    lea ax, word [bp - 0x4a]         ; 0x200c
    push ax                          ; 0x200f
    call aztec_strcpy                ; 0x2010
    add sp, byte 4                   ; 0x2013
    mov word [bp - 0x12], 1          ; 0x2016
    lea ax, word [bp - 0x36]         ; 0x201b
    push ax                          ; 0x201e
    lea ax, word [bp - 0x4a]         ; 0x201f
    push ax                          ; 0x2022
    mov ax, 1                        ; 0x2023
    push ax                          ; 0x2026
    push ax                          ; 0x2027
    mov ax, 0                        ; 0x2028
    push ax                          ; 0x202b
    mov ax, MSG_IMPORT_BANE_1415     ; 0x202c
    push ax                          ; 0x202f
    call api_idx_0028_NRJN           ; 0x2030
    add sp, byte 0xc                 ; 0x2033
    cmp ax, strict word 2            ; 0x2036
    jne short .forward3              ; 0x2039
    mov ax, 0xffff                   ; 0x203b
    ret                              ; 0x203e
.forward3:
    mov ax, 0x3a                     ; 0x203f
    push ax                          ; 0x2042
    mov ax, data_path_prefixes       ; 0x2043
    push ax                          ; 0x2046
    mov ax, bss_91c6                 ; 0x2047
    push ax                          ; 0x204a
    call copy_through_char           ; 0x204b
    add sp, byte 6                   ; 0x204e
    mov ax, 0x3a                     ; 0x2051
    push ax                          ; 0x2054
    lea ax, word [bp - 0x4a]         ; 0x2055
    push ax                          ; 0x2058
    mov ax, bss_91da                 ; 0x2059
    push ax                          ; 0x205c
    call copy_through_char           ; 0x205d
    add sp, byte 6                   ; 0x2060
    lea ax, word [bp - 0x4a]         ; 0x2063
    push ax                          ; 0x2066
    mov ax, bss_91ee                 ; 0x2067
    push ax                          ; 0x206a
    call aztec_strcpy                ; 0x206b
    add sp, byte 4                   ; 0x206e
    mov ax, bss_91ee                 ; 0x2071
    push ax                          ; 0x2074
    call aztec_strlen                ; 0x2075
    pop cx                           ; 0x2078
    cmp ax, strict word 0            ; 0x2079
    jle short .forward4              ; 0x207c
    mov ax, bss_91ee                 ; 0x207e
    push ax                          ; 0x2081
    call aztec_strlen                ; 0x2082
    pop cx                           ; 0x2085
    dec ax                           ; 0x2086
    mov word [bp - 2], ax            ; 0x2087
    mov bx, ax                       ; 0x208a
    cmp byte [bx + bss_91ee], 0x5c   ; 0x208c
    je short .forward4               ; 0x2091
    mov byte [bx + bss_91ef], 0x5c   ; 0x2093
    mov byte [bx + bss_91f0], 0      ; 0x2098
.forward4:
    lea ax, word [bp - 0x36]         ; 0x209d
    push ax                          ; 0x20a0
    mov ax, bss_91ee                 ; 0x20a1
    push ax                          ; 0x20a4
    call aztec_strcat                ; 0x20a5
    add sp, byte 4                   ; 0x20a8
    cmp byte [install_mode], 1       ; 0x20ab
    jne short .forward5              ; 0x20b0
    mov ax, bss_91da                 ; 0x20b2
    push ax                          ; 0x20b5
    mov ax, bss_91c6                 ; 0x20b6
    push ax                          ; 0x20b9
    call aztec_strcmp                ; 0x20ba
    add sp, byte 4                   ; 0x20bd
    test ax, ax                      ; 0x20c0
    jne short .forward5              ; 0x20c2
    jmp near .forward11              ; 0x20c4
.forward5:
    mov ax, bss_91da                 ; 0x20c7
    push ax                          ; 0x20ca
    call aztec_strlen                ; 0x20cb
    pop cx                           ; 0x20ce
    cmp ax, strict word 0            ; 0x20cf
    jle short .forward9              ; 0x20d2
    mov ax, bss_91da                 ; 0x20d4
    push ax                          ; 0x20d7
    mov ax, bss_91c6                 ; 0x20d8
    push ax                          ; 0x20db
    call aztec_strcmp                ; 0x20dc
    add sp, byte 4                   ; 0x20df
    test ax, ax                      ; 0x20e2
    je short .forward6               ; 0x20e4
    cmp byte [install_mode], 5       ; 0x20e6
    jne short .forward7              ; 0x20eb
.forward6:
    mov word [bp - 0xe], 1           ; 0x20ed
.forward7:
    mov ax, 0                        ; 0x20f2
    push ax                          ; 0x20f5
    push word [bp - 0xe]             ; 0x20f6
    mov ax, 0xffff                   ; 0x20f9
    push ax                          ; 0x20fc
    mov ax, bss_91da                 ; 0x20fd
    push ax                          ; 0x2100
    call prompt_disk_swap            ; 0x2101
    add sp, byte 8                   ; 0x2104
    mov ax, 1                        ; 0x2107
    cmp word [bp - 0xe], byte 0      ; 0x210a
    je short .forward8               ; 0x210e
    mov ax, 0                        ; 0x2110
.forward8:
    mov word [bp - 0x12], ax         ; 0x2113
    jmp short .forward11             ; 0x2116
.forward9:
    cmp byte [install_mode], 1       ; 0x2118
    jbe short .forward11             ; 0x211d
    mov word [bp - 0xe], 1           ; 0x211f
    mov ax, 0                        ; 0x2124
    push ax                          ; 0x2127
    push word [bp - 0xe]             ; 0x2128
    mov ax, 0xffff                   ; 0x212b
    push ax                          ; 0x212e
    mov ax, bss_91c6                 ; 0x212f
    push ax                          ; 0x2132
    call prompt_disk_swap            ; 0x2133
    add sp, byte 8                   ; 0x2136
    mov ax, 1                        ; 0x2139
    cmp word [bp - 0xe], byte 0      ; 0x213c
    je short .forward10              ; 0x2140
    mov ax, 0                        ; 0x2142
.forward10:
    mov word [bp - 0x12], ax         ; 0x2145
.forward11:
    mov ax, 0xc7                     ; 0x2148
    push ax                          ; 0x214b
    mov ax, 0x13f                    ; 0x214c
    push ax                          ; 0x214f
    mov ax, 0                        ; 0x2150
    push ax                          ; 0x2153
    push ax                          ; 0x2154
    call call_show_area              ; 0x2155
    add sp, byte 8                   ; 0x2158
    mov ax, 1                        ; 0x215b
    push ax                          ; 0x215e
    mov ax, 0xd                      ; 0x215f
    push ax                          ; 0x2162
    mov ax, 0x12                     ; 0x2163
    push ax                          ; 0x2166
    mov ax, 0x24                     ; 0x2167
    push ax                          ; 0x216a
    mov ax, 0x61                     ; 0x216b
    push ax                          ; 0x216e
    mov ax, 3                        ; 0x216f
    push ax                          ; 0x2172
    lea ax, word [bp - 0x72]         ; 0x2173
    push ax                          ; 0x2176
    call api_idx_0004_VUIP           ; 0x2177
    add sp, byte 0xe                 ; 0x217a
    mov ax, 0                        ; 0x217d
    push ax                          ; 0x2180
    mov ax, bss_91ee                 ; 0x2181
    push ax                          ; 0x2184
    call aztec_open                  ; 0x2185
    add sp, byte 4                   ; 0x2188
    mov word [bp - 0xa], ax          ; 0x218b
    cmp ax, strict word 0xffff       ; 0x218e
    jne short .forward13             ; 0x2191
    lea ax, word [bp - 0x5e]         ; 0x2193
    push ax                          ; 0x2196
    call loc_KPLK                    ; 0x2197
    pop cx                           ; 0x219a
    cmp word [bp - 0xe], byte 0      ; 0x219b
    je short .forward12              ; 0x219f
    mov ax, 1                        ; 0x21a1
    push ax                          ; 0x21a4
    push word [bp - 0x12]            ; 0x21a5
    push word [bp - 0x10]            ; 0x21a8
    mov ax, bss_91c6                 ; 0x21ab
    push ax                          ; 0x21ae
    call prompt_disk_swap            ; 0x21af
    add sp, byte 8                   ; 0x21b2
.forward12:
    mov ax, 0xffff                   ; 0x21b5
    ret                              ; 0x21b8
.forward13:
    mov ax, 0                        ; 0x21b9
    push ax                          ; 0x21bc
    mov ax, 0                        ; 0x21bd
    mov dx, 0                        ; 0x21c0
    push dx                          ; 0x21c3
    push ax                          ; 0x21c4
    push word [bp - 0xa]             ; 0x21c5
    call aztec_lseek                 ; 0x21c8
    add sp, byte 8                   ; 0x21cb
    mov ax, 0x19e                    ; 0x21ce
    push ax                          ; 0x21d1
    mov ax, bss_9220                 ; 0x21d2
    push ax                          ; 0x21d5
    push word [bp - 0xa]             ; 0x21d6
    call aztec_read                  ; 0x21d9
    add sp, byte 6                   ; 0x21dc
    mov word [bp - 0xc], ax          ; 0x21df
    cmp ax, strict word 0            ; 0x21e2
    jg short .forward15              ; 0x21e5
    lea ax, word [bp - 0x5e]         ; 0x21e7
    push ax                          ; 0x21ea
    call loc_KPLK                    ; 0x21eb
    pop cx                           ; 0x21ee
    push word [bp - 0xa]             ; 0x21ef
    call aztec_close                 ; 0x21f2
    pop cx                           ; 0x21f5
    cmp word [bp - 0xe], byte 0      ; 0x21f6
    je short .forward14              ; 0x21fa
    mov ax, 1                        ; 0x21fc
    push ax                          ; 0x21ff
    push word [bp - 0x12]            ; 0x2200
    push word [bp - 0x10]            ; 0x2203
    mov ax, bss_91c6                 ; 0x2206
    push ax                          ; 0x2209
    call prompt_disk_swap            ; 0x220a
    add sp, byte 8                   ; 0x220d
.forward14:
    mov ax, 0xffff                   ; 0x2210
    ret                              ; 0x2213
.forward15:
    mov ax, 0x6d6                    ; 0x2214
    push ax                          ; 0x2217
    call aztec_malloc                ; 0x2218
    pop cx                           ; 0x221b
    mov word [bss_93be], ax          ; 0x221c
    cmp word [bss_93be], byte 0      ; 0x221f
    jne short .forward16             ; 0x2224
    mov ax, 0x1d                     ; 0x2226
    push ax                          ; 0x2229
    call release_and_exit            ; 0x222a
    pop cx                           ; 0x222d
.forward16:
    mov word [bp - 8], 0             ; 0x222e
.back1:
    mov ax, 0x542                    ; 0x2233
    push ax                          ; 0x2236
    push word [bss_93be]             ; 0x2237
    push word [bp - 0xa]             ; 0x223b
    call aztec_read                  ; 0x223e
    add sp, byte 6                   ; 0x2241
    mov word [bp - 0xc], ax          ; 0x2244
    cmp ax, strict word 0            ; 0x2247
    jg short .forward18              ; 0x224a
    push word [bss_93be]             ; 0x224c
    call aztec_free                  ; 0x2250
    pop cx                           ; 0x2253
    lea ax, word [bp - 0x5e]         ; 0x2254
    push ax                          ; 0x2257
    call loc_KPLK                    ; 0x2258
    pop cx                           ; 0x225b
    push word [bp - 0xa]             ; 0x225c
    call aztec_close                 ; 0x225f
    pop cx                           ; 0x2262
    cmp word [bp - 0xe], byte 0      ; 0x2263
    je short .forward17              ; 0x2267
    mov ax, 1                        ; 0x2269
    push ax                          ; 0x226c
    push word [bp - 0x12]            ; 0x226d
    push word [bp - 0x10]            ; 0x2270
    mov ax, bss_91c6                 ; 0x2273
    push ax                          ; 0x2276
    call prompt_disk_swap            ; 0x2277
    add sp, byte 8                   ; 0x227a
.forward17:
    mov ax, 0xffff                   ; 0x227d
    ret                              ; 0x2280
.forward18:
    mov ax, 0x6cc                    ; 0x2281
    push ax                          ; 0x2284
    push word [bss_93be]             ; 0x2285
    push word [bp - 0xa]             ; 0x2289
    call aztec_read                  ; 0x228c
    add sp, byte 6                   ; 0x228f
    mov word [bp - 0xc], ax          ; 0x2292
    cmp ax, strict word 0            ; 0x2295
    jg short .forward20              ; 0x2298
    push word [bss_93be]             ; 0x229a
    call aztec_free                  ; 0x229e
    pop cx                           ; 0x22a1
    lea ax, word [bp - 0x5e]         ; 0x22a2
    push ax                          ; 0x22a5
    call loc_KPLK                    ; 0x22a6
    pop cx                           ; 0x22a9
    push word [bp - 0xa]             ; 0x22aa
    call aztec_close                 ; 0x22ad
    pop cx                           ; 0x22b0
    cmp word [bp - 0xe], byte 0      ; 0x22b1
    je short .forward19              ; 0x22b5
    mov ax, 1                        ; 0x22b7
    push ax                          ; 0x22ba
    push word [bp - 0x12]            ; 0x22bb
    push word [bp - 0x10]            ; 0x22be
    mov ax, bss_91c6                 ; 0x22c1
    push ax                          ; 0x22c4
    call prompt_disk_swap            ; 0x22c5
    add sp, byte 8                   ; 0x22c8
.forward19:
    mov ax, 0xffff                   ; 0x22cb
    ret                              ; 0x22ce
.forward20:
    inc word [bp - 8]                ; 0x22cf
    mov ax, word [bp - 8]            ; 0x22d2
    cmp ax, strict word 0x10         ; 0x22d5
    jge short .forward21             ; 0x22d8
    jmp near .back1                  ; 0x22da
.forward21:
    push word [bss_93be]             ; 0x22dd
    call aztec_free                  ; 0x22e1
    pop cx                           ; 0x22e4
    mov ax, 0x42                     ; 0x22e5
    push ax                          ; 0x22e8
    mov ax, bss_93c0                 ; 0x22e9
    push ax                          ; 0x22ec
    push word [bp - 0xa]             ; 0x22ed
    call aztec_read                  ; 0x22f0
    add sp, byte 6                   ; 0x22f3
    mov word [bp - 0xc], ax          ; 0x22f6
    cmp ax, strict word 0            ; 0x22f9
    jg short .forward23              ; 0x22fc
    lea ax, word [bp - 0x5e]         ; 0x22fe
    push ax                          ; 0x2301
    call loc_KPLK                    ; 0x2302
    pop cx                           ; 0x2305
    push word [bp - 0xa]             ; 0x2306
    call aztec_close                 ; 0x2309
    pop cx                           ; 0x230c
    cmp word [bp - 0xe], byte 0      ; 0x230d
    je short .forward22              ; 0x2311
    mov ax, 1                        ; 0x2313
    push ax                          ; 0x2316
    push word [bp - 0x12]            ; 0x2317
    push word [bp - 0x10]            ; 0x231a
    mov ax, bss_91c6                 ; 0x231d
    push ax                          ; 0x2320
    call prompt_disk_swap            ; 0x2321
    add sp, byte 8                   ; 0x2324
.forward22:
    mov ax, 0xffff                   ; 0x2327
    ret                              ; 0x232a
.forward23:
    mov word [party_char_count], 0   ; 0x232b
    mov word [bp - 2], 0             ; 0x2331
    jmp near .forward76              ; 0x2336
.back2:
    mov ax, 0x1b0                    ; 0x2339
    push ax                          ; 0x233c
    mov ax, bss_9402                 ; 0x233d
    push ax                          ; 0x2340
    push word [bp - 0xa]             ; 0x2341
    call aztec_read                  ; 0x2344
    add sp, byte 6                   ; 0x2347
    mov word [bp - 0xc], ax          ; 0x234a
    cmp ax, strict word 0            ; 0x234d
    jg short .forward25              ; 0x2350
    lea ax, word [bp - 0x5e]         ; 0x2352
    push ax                          ; 0x2355
    call loc_KPLK                    ; 0x2356
    pop cx                           ; 0x2359
    push word [bp - 0xa]             ; 0x235a
    call aztec_close                 ; 0x235d
    pop cx                           ; 0x2360
    cmp word [bp - 0xe], byte 0      ; 0x2361
    je short .forward24              ; 0x2365
    mov ax, 1                        ; 0x2367
    push ax                          ; 0x236a
    push word [bp - 0x12]            ; 0x236b
    push word [bp - 0x10]            ; 0x236e
    mov ax, bss_91c6                 ; 0x2371
    push ax                          ; 0x2374
    call prompt_disk_swap            ; 0x2375
    add sp, byte 8                   ; 0x2378
.forward24:
    mov ax, 0xffff                   ; 0x237b
    ret                              ; 0x237e
.forward25:
    push word [party_char_count]     ; 0x237f
    call api_idx_0006_MHOR           ; 0x2383
    pop cx                           ; 0x2386
    mov cx, word [party_char_count]  ; 0x2387
    shl cx, 1                        ; 0x238b
    mov bx, cx                       ; 0x238d
    mov word [bx + member_icon], ax  ; 0x238f
    mov ax, 0x248                    ; 0x2393
    imul word [party_char_count]     ; 0x2396
    add ax, party_records            ; 0x239a
    mov word [bp - 0x14], ax         ; 0x239d
    mov ax, word [bss_9426]          ; 0x23a0
    push ax                          ; 0x23a3
    cmp ax, strict word 5            ; 0x23a4
    pop ax                           ; 0x23a7
    jle short .forward26             ; 0x23a8
    mov ax, 5                        ; 0x23aa
.forward26:
    mov bx, word [bp - 0x14]         ; 0x23ad
    mov word [bx + 0x24], ax         ; 0x23b0
    mov ax, bss_9402                 ; 0x23b3
    push ax                          ; 0x23b6
    push word [bp - 0x14]            ; 0x23b7
    call aztec_strcpy                ; 0x23ba
    add sp, byte 4                   ; 0x23bd
    mov ax, word [bss_940a]          ; 0x23c0
    mov dx, word [bss_940c]          ; 0x23c3
    mov bx, word [bp - 0x14]         ; 0x23c7
    mov word [bx + 0xa], dx          ; 0x23ca
    mov word [bx + 8], ax            ; 0x23cd
    mov bx, word [bp - 0x14]         ; 0x23d0
    mov word [bx + 0x12], 0          ; 0x23d3
    mov word [bx + 0x10], 0          ; 0x23d8
    mov bx, word [bp - 0x14]         ; 0x23dd
    mov word [bx + 0x16], 0          ; 0x23e0
    mov word [bx + 0x14], 0          ; 0x23e5
    mov word [bp - 4], 0             ; 0x23ea
.back3:
    mov bx, word [bp - 4]            ; 0x23ef
    mov al, byte [bx + bss_952e]     ; 0x23f2
    mov si, bx                       ; 0x23f6
    mov bx, word [bp - 0x14]         ; 0x23f8
    mov byte [bx + si + 0x170], al   ; 0x23fb
    cmp word [bss_9426], byte 5      ; 0x23ff
    jle short .forward27             ; 0x2404
    mov bx, word [bp - 0x14]         ; 0x2406
    mov si, word [bp - 4]            ; 0x2409
    cmp byte [bx + si + 0x170], 0xe  ; 0x240c
    jbe short .forward27             ; 0x2411
    mov al, byte [bx + si + 0x170]   ; 0x2413
    sub ah, ah                       ; 0x2417
    push ax                          ; 0x2419
    mov ax, 4                        ; 0x241a
    push ax                          ; 0x241d
    call random_below                ; 0x241e
    pop cx                           ; 0x2421
    mov cx, ax                       ; 0x2422
    pop ax                           ; 0x2424
    sub ax, cx                       ; 0x2425
    mov bx, word [bp - 0x14]         ; 0x2427
    mov si, word [bp - 4]            ; 0x242a
    mov byte [bx + si + 0x170], al   ; 0x242d
.forward27:
    inc word [bp - 4]                ; 0x2431
    mov ax, word [bp - 4]            ; 0x2434
    cmp ax, strict word 8            ; 0x2437
    jl short .back3                  ; 0x243a
    mov ax, word [bss_941c]          ; 0x243c
    cwd                              ; 0x243f
    idiv word [bss_9426]             ; 0x2440
    mov bx, word [bp - 0x14]         ; 0x2444
    mov cx, word [bx + 0x24]         ; 0x2447
    imul cx                          ; 0x244a
    mov word [bx + 0x1a], ax         ; 0x244c
    mov bx, word [bp - 0x14]         ; 0x244f
    cmp word [bx + 0x1a], byte 7     ; 0x2452
    jge short .forward28             ; 0x2456
    mov word [bx + 0x1a], 7          ; 0x2458
.forward28:
    mov bx, word [bp - 0x14]         ; 0x245d
    mov ax, word [bx + 0x24]         ; 0x2460
    shl ax, 1                        ; 0x2463
    shl ax, 1                        ; 0x2465
    shl ax, 1                        ; 0x2467
    add ax, strict word 8            ; 0x2469
    mov cx, word [bx + 0x1a]         ; 0x246c
    cmp ax, cx                       ; 0x246f
    jge short .forward29             ; 0x2471
    mov ax, 8                        ; 0x2473
    push ax                          ; 0x2476
    call random_below                ; 0x2477
    pop cx                           ; 0x247a
    mov bx, word [bp - 0x14]         ; 0x247b
    mov cx, word [bx + 0x24]         ; 0x247e
    shl cx, 1                        ; 0x2481
    shl cx, 1                        ; 0x2483
    shl cx, 1                        ; 0x2485
    add ax, cx                       ; 0x2487
    mov word [bx + 0x1a], ax         ; 0x2489
.forward29:
    mov bx, word [bp - 0x14]         ; 0x248c
    mov ax, word [bx + 0x1a]         ; 0x248f
    mov word [bx + 0x18], ax         ; 0x2492
    mov bx, word [bp - 0x14]         ; 0x2495
    mov al, byte [bx + 0x170]        ; 0x2498
    sub ah, ah                       ; 0x249c
    mov word [bp - 0x1a], ax         ; 0x249e
    mov al, byte [bx + 0x173]        ; 0x24a1
    sub ah, ah                       ; 0x24a5
    mov word [bp - 0x1c], ax         ; 0x24a7
    shl ax, 1                        ; 0x24aa
    add ax, word [bp - 0x1a]         ; 0x24ac
    mov cx, 3                        ; 0x24af
    imul cx                          ; 0x24b2
    mov word [bp - 0x1e], ax         ; 0x24b4
    mov ax, word [bp - 0x1a]         ; 0x24b7
    shl ax, 1                        ; 0x24ba
    add ax, word [bp - 0x1c]         ; 0x24bc
    imul cx                          ; 0x24bf
    mov word [bp - 0x20], ax         ; 0x24c1
    cmp word [bp - 0x1c], byte 0xf   ; 0x24c4
    jle short .forward30             ; 0x24c8
    mov ax, word [bp - 0x1c]         ; 0x24ca
    add word [bp - 0x1e], ax         ; 0x24cd
.forward30:
    cmp word [bp - 0x1c], byte 0x11  ; 0x24d0
    jle short .forward31             ; 0x24d4
    mov ax, word [bp - 0x1c]         ; 0x24d6
    add word [bp - 0x1e], ax         ; 0x24d9
.forward31:
    cmp word [bp - 0x1a], byte 0xf   ; 0x24dc
    jle short .forward32             ; 0x24e0
    mov ax, word [bp - 0x1a]         ; 0x24e2
    add word [bp - 0x20], ax         ; 0x24e5
.forward32:
    cmp word [bp - 0x1a], byte 0x11  ; 0x24e8
    jle short .forward33             ; 0x24ec
    mov ax, word [bp - 0x1a]         ; 0x24ee
    add word [bp - 0x20], ax         ; 0x24f1
.forward33:
    mov ax, 5                        ; 0x24f4
    imul word [bx + 0x24]            ; 0x24f7
    add word [bp - 0x1e], ax         ; 0x24fa
    mov ax, word [bp - 0x1e]         ; 0x24fd
    mov word [bx + 0x1c], ax         ; 0x2500
    mov ax, word [bp - 0x1e]         ; 0x2503
    mov bx, word [bp - 0x14]         ; 0x2506
    mov word [bx + 0x1e], ax         ; 0x2509
    mov bx, word [bp - 0x14]         ; 0x250c
    mov word [bx + 0x20], 0          ; 0x250f
    mov ax, 0xf                      ; 0x2514
    imul word [bp - 0x20]            ; 0x2517
    mov bx, word [bp - 0x14]         ; 0x251a
    mov word [bx + 0x22], ax         ; 0x251d
    mov bx, word [bp - 0x14]         ; 0x2520
    cmp byte [bx + 0x237], 5         ; 0x2523
    jne short .forward34             ; 0x2528
    mov ax, word [bx + 0x22]         ; 0x252a
    shl ax, 1                        ; 0x252d
    cwd                              ; 0x252f
    idiv cx                          ; 0x2530
    mov word [bx + 0x22], ax         ; 0x2532
.forward34:
    mov ax, word [bss_9428]          ; 0x2535
    mov bx, word [bp - 0x14]         ; 0x2538
    mov word [bx + 0x26], ax         ; 0x253b
    mov word [bp - 4], 0             ; 0x253e
.back4:
    mov ax, word [bp - 4]            ; 0x2543
    shl ax, 1                        ; 0x2546
    shl ax, 1                        ; 0x2548
    mov bx, ax                       ; 0x254a
    mov ax, word [bx + bss_942c]     ; 0x254c
    cwd                              ; 0x2550
    idiv word [bss_9426]             ; 0x2551
    mov bx, word [bp - 0x14]         ; 0x2555
    mov cx, word [bx + 0x24]         ; 0x2558
    imul cx                          ; 0x255b
    mov cx, word [bp - 4]            ; 0x255d
    shl cx, 1                        ; 0x2560
    shl cx, 1                        ; 0x2562
    mov si, cx                       ; 0x2564
    mov word [bx + si + 0x2a], ax    ; 0x2566
    mov bx, word [bp - 0x14]         ; 0x2569
    mov ax, word [bx + 0x24]         ; 0x256c
    mov cx, 7                        ; 0x256f
    imul cx                          ; 0x2572
    add ax, strict word 7            ; 0x2574
    mov cx, word [bp - 4]            ; 0x2577
    shl cx, 1                        ; 0x257a
    shl cx, 1                        ; 0x257c
    mov si, cx                       ; 0x257e
    mov cx, word [bx + si + 0x2a]    ; 0x2580
    cmp ax, cx                       ; 0x2583
    jge short .forward35             ; 0x2585
    mov ax, 7                        ; 0x2587
    push ax                          ; 0x258a
    call random_below                ; 0x258b
    pop cx                           ; 0x258e
    push ax                          ; 0x258f
    mov bx, word [bp - 0x14]         ; 0x2590
    mov ax, word [bx + 0x24]         ; 0x2593
    mov cx, 7                        ; 0x2596
    imul cx                          ; 0x2599
    mov cx, ax                       ; 0x259b
    pop ax                           ; 0x259d
    add ax, cx                       ; 0x259e
    mov cx, word [bp - 4]            ; 0x25a0
    shl cx, 1                        ; 0x25a3
    shl cx, 1                        ; 0x25a5
    mov si, cx                       ; 0x25a7
    mov word [bx + si + 0x2a], ax    ; 0x25a9
.forward35:
    mov ax, word [bp - 4]            ; 0x25ac
    shl ax, 1                        ; 0x25af
    shl ax, 1                        ; 0x25b1
    mov si, ax                       ; 0x25b3
    mov bx, word [bp - 0x14]         ; 0x25b5
    mov ax, word [bx + si + 0x2a]    ; 0x25b8
    mov word [bx + si + 0x28], ax    ; 0x25bb
    inc word [bp - 4]                ; 0x25be
    mov ax, word [bp - 4]            ; 0x25c1
    cmp ax, strict word 6            ; 0x25c4
    jge short .forward36             ; 0x25c7
    jmp near .back4                  ; 0x25c9
.forward36:
    mov word [bp - 4], 0             ; 0x25cc
.back5:
    mov ax, word [bp - 4]            ; 0x25d1
    mov word [bp - 0x1a], ax         ; 0x25d4
    jmp near .forward37              ; 0x25d7
jumptable_2668_case_0:
    mov word [bp - 0x1a], 0xc        ; 0x25da
    jmp near api_idx_0072_OUII.forward38 ; 0x25df
jumptable_2668_case_1:
    mov word [bp - 0x1a], 0xd        ; 0x25e2
    jmp near api_idx_0072_OUII.forward38 ; 0x25e7
jumptable_2668_case_2:
    mov word [bp - 0x1a], 0xe        ; 0x25ea
    jmp near api_idx_0072_OUII.forward38 ; 0x25ef
jumptable_2668_case_3:
    mov word [bp - 0x1a], 0xf        ; 0x25f2
    jmp near api_idx_0072_OUII.forward38 ; 0x25f7
jumptable_2668_case_4:
    mov word [bp - 0x1a], 0x10       ; 0x25fa
    jmp near api_idx_0072_OUII.forward38 ; 0x25ff
jumptable_2668_case_5:
    mov word [bp - 0x1a], 0x11       ; 0x2602
    jmp near api_idx_0072_OUII.forward38 ; 0x2607
jumptable_2668_case_6:
    mov word [bp - 0x1a], 0xffff     ; 0x260a
    jmp near api_idx_0072_OUII.forward38 ; 0x260f
jumptable_2668_case_7:
    mov word [bp - 0x1a], 0xffff     ; 0x2612
    jmp near api_idx_0072_OUII.forward38 ; 0x2617
jumptable_2668_case_8:
    mov word [bp - 0x1a], 0xffff     ; 0x261a
    jmp near api_idx_0072_OUII.forward38 ; 0x261f
jumptable_2668_case_9:
    mov word [bp - 0x1a], 0xffff     ; 0x2622
    jmp short api_idx_0072_OUII.forward38 ; 0x2627
jumptable_2668_case_10:
    mov word [bp - 0x1a], 0xffff     ; 0x2629
    jmp short api_idx_0072_OUII.forward38 ; 0x262e
jumptable_2668_case_11:
    mov word [bp - 0x1a], 0x18       ; 0x2630
    jmp short api_idx_0072_OUII.forward38 ; 0x2635
jumptable_2668_case_12:
    mov word [bp - 0x1a], 0xffff     ; 0x2637
    jmp short api_idx_0072_OUII.forward38 ; 0x263c
jumptable_2668_case_13:
    mov word [bp - 0x1a], 0x1b       ; 0x263e
    jmp short api_idx_0072_OUII.forward38 ; 0x2643
jumptable_2668_case_14:
    mov word [bp - 0x1a], 0x1d       ; 0x2645
    jmp short api_idx_0072_OUII.forward38 ; 0x264a
jumptable_2668_case_15:
    mov word [bp - 0x1a], 0x1e       ; 0x264c
    jmp short api_idx_0072_OUII.forward38 ; 0x2651
jumptable_2668_case_16:
    mov word [bp - 0x1a], 0x1f       ; 0x2653
    jmp short api_idx_0072_OUII.forward38 ; 0x2658
jumptable_2668_case_17:
    mov word [bp - 0x1a], 0x20       ; 0x265a
    jmp short api_idx_0072_OUII.forward38 ; 0x265f
jumptable_2668_case_18:
    mov word [bp - 0x1a], 0x21       ; 0x2661
    jmp short api_idx_0072_OUII.forward38 ; 0x2666
jumptable_2668:
    dw jumptable_2668_case_0 - IMAGE_BASE + __zres_end ; 0x2668
    dw jumptable_2668_case_1 - IMAGE_BASE + __zres_end ; 0x266a
    dw jumptable_2668_case_2 - IMAGE_BASE + __zres_end ; 0x266c
    dw jumptable_2668_case_3 - IMAGE_BASE + __zres_end ; 0x266e
    dw jumptable_2668_case_4 - IMAGE_BASE + __zres_end ; 0x2670
    dw jumptable_2668_case_5 - IMAGE_BASE + __zres_end ; 0x2672
    dw jumptable_2668_case_6 - IMAGE_BASE + __zres_end ; 0x2674
    dw jumptable_2668_case_7 - IMAGE_BASE + __zres_end ; 0x2676
    dw jumptable_2668_case_8 - IMAGE_BASE + __zres_end ; 0x2678
    dw jumptable_2668_case_9 - IMAGE_BASE + __zres_end ; 0x267a
    dw jumptable_2668_case_10 - IMAGE_BASE + __zres_end ; 0x267c
    dw jumptable_2668_case_11 - IMAGE_BASE + __zres_end ; 0x267e
    dw jumptable_2668_case_12 - IMAGE_BASE + __zres_end ; 0x2680
    dw jumptable_2668_case_13 - IMAGE_BASE + __zres_end ; 0x2682
    dw jumptable_2668_case_14 - IMAGE_BASE + __zres_end ; 0x2684
    dw jumptable_2668_case_15 - IMAGE_BASE + __zres_end ; 0x2686
    dw jumptable_2668_case_16 - IMAGE_BASE + __zres_end ; 0x2688
    dw jumptable_2668_case_17 - IMAGE_BASE + __zres_end ; 0x268a
    dw jumptable_2668_case_18 - IMAGE_BASE + __zres_end ; 0x268c
api_idx_0072_OUII.forward37:
    sub ax, strict word 0xb          ; 0x268e
    cmp ax, strict word 0x13         ; 0x2691
    jae short api_idx_0072_OUII.forward38 ; 0x2694
    xchg bx, ax                      ; 0x2696
    shl bx, 1                        ; 0x2697
    jmp [cs:bx + jumptable_2668 - IMAGE_BASE + __zres_end] ; 0x2699
api_idx_0072_OUII.forward38:
    cmp word [bp - 0x1a], byte 0     ; 0x269e
    jl short api_idx_0072_OUII.forward40 ; 0x26a2
    mov ax, word [bss_9426]          ; 0x26a4
    mov word [bp - 0x1c], ax         ; 0x26a7
    cmp ax, strict word 0x12         ; 0x26aa
    jle short api_idx_0072_OUII.back6 ; 0x26ad
    mov word [bp - 0x1c], 0x12       ; 0x26af
api_idx_0072_OUII.back6:
    cmp word [bp - 0x1c], byte 0     ; 0x26b4
    jle short api_idx_0072_OUII.forward39 ; 0x26b8
    mov bx, word [bp - 4]            ; 0x26ba
    mov cl, byte [bx + bss_9536]     ; 0x26bd
    mov bx, word [bp - 0x14]         ; 0x26c1
    mov si, word [bp - 0x1a]         ; 0x26c4
    mov al, byte [bx + si + 0x178]   ; 0x26c7
    cmp al, cl                       ; 0x26cb
    jae short api_idx_0072_OUII.forward39 ; 0x26cd
    mov al, byte [bx + si + 0x178]   ; 0x26cf
    sub ah, ah                       ; 0x26d3
    mov cx, ax                       ; 0x26d5
    push cx                          ; 0x26d7
    mov ax, 3                        ; 0x26d8
    push ax                          ; 0x26db
    call random_below                ; 0x26dc
    pop cx                           ; 0x26df
    pop cx                           ; 0x26e0
    add ax, cx                       ; 0x26e1
    inc ax                           ; 0x26e3
    mov bx, word [bp - 0x14]         ; 0x26e4
    mov si, word [bp - 0x1a]         ; 0x26e7
    mov byte [bx + si + 0x178], al   ; 0x26ea
    dec word [bp - 0x1c]             ; 0x26ee
    jmp short api_idx_0072_OUII.back6 ; 0x26f1
api_idx_0072_OUII.forward39:
    mov bx, word [bp - 4]            ; 0x26f3
    mov cl, byte [bx + bss_9536]     ; 0x26f6
    mov bx, word [bp - 0x14]         ; 0x26fa
    mov si, word [bp - 0x1a]         ; 0x26fd
    mov al, byte [bx + si + 0x178]   ; 0x2700
    cmp al, cl                       ; 0x2704
    jbe short api_idx_0072_OUII.forward40 ; 0x2706
    mov byte [bx + si + 0x178], cl   ; 0x2708
api_idx_0072_OUII.forward40:
    inc word [bp - 4]                ; 0x270c
    mov ax, word [bp - 4]            ; 0x270f
    cmp ax, strict word 0x1e         ; 0x2712
    jge short api_idx_0072_OUII.forward41 ; 0x2715
    jmp near api_idx_0072_OUII.back5 ; 0x2717
api_idx_0072_OUII.forward41:
    mov word [bp - 4], 0             ; 0x271a
api_idx_0072_OUII.back7:
    mov bx, word [bp - 4]            ; 0x271f
    mov al, byte [bx + bss_9554]     ; 0x2722
    sub ah, ah                       ; 0x2726
    cwd                              ; 0x2728
    idiv word [bss_9426]             ; 0x2729
    mov bx, word [bp - 0x14]         ; 0x272d
    mov cx, word [bx + 0x24]         ; 0x2730
    imul cx                          ; 0x2733
    mov si, word [bp - 4]            ; 0x2735
    mov byte [bx + si + 0x1a8], al   ; 0x2738
    mov bx, word [bp - 0x14]         ; 0x273c
    mov si, word [bp - 4]            ; 0x273f
    mov al, byte [bx + si + 0x1a8]   ; 0x2742
    mov byte [bx + si + 0x19a], al   ; 0x2746
    inc word [bp - 4]                ; 0x274a
    mov ax, word [bp - 4]            ; 0x274d
    cmp ax, strict word 0xe          ; 0x2750
    jl short api_idx_0072_OUII.back7 ; 0x2753
    mov word [bp - 4], 0             ; 0x2755
api_idx_0072_OUII.back8:
    push word [bp - 4]               ; 0x275a
    mov ax, bss_958a                 ; 0x275d
    push ax                          ; 0x2760
    call test_bit                    ; 0x2761
    add sp, byte 4                   ; 0x2764
    test ax, ax                      ; 0x2767
    je short api_idx_0072_OUII.forward42 ; 0x2769
    push word [bp - 4]               ; 0x276b
    call loc_GLHQ                    ; 0x276e
    pop cx                           ; 0x2771
    mov word [bp - 6], ax            ; 0x2772
    cmp ax, strict word 0            ; 0x2775
    jl short api_idx_0072_OUII.forward42 ; 0x2778
    mov cx, 6                        ; 0x277a
    imul cx                          ; 0x277d
    mov bx, ax                       ; 0x277f
    cmp byte [bx + spell_table + spell_table_rec.f_0001], 4 ; 0x2781
    jae short api_idx_0072_OUII.forward42 ; 0x2786
    push cx                          ; 0x2788
    call random_below                ; 0x2789
    pop cx                           ; 0x278c
    push ax                          ; 0x278d
    mov ax, 6                        ; 0x278e
    imul word [bp - 6]               ; 0x2791
    mov bx, ax                       ; 0x2794
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x2796
    sub ah, ah                       ; 0x279a
    mov cx, ax                       ; 0x279c
    pop ax                           ; 0x279e
    cmp ax, cx                       ; 0x279f
    jl short api_idx_0072_OUII.forward42 ; 0x27a1
    mov ax, 1                        ; 0x27a3
    push ax                          ; 0x27a6
    push word [bp - 6]               ; 0x27a7
    mov ax, word [bp - 0x14]         ; 0x27aa
    add ax, 0x21e                    ; 0x27ad
    push ax                          ; 0x27b0
    call set_bitmap_bit              ; 0x27b1
    add sp, byte 6                   ; 0x27b4
api_idx_0072_OUII.forward42:
    inc word [bp - 4]                ; 0x27b7
    mov ax, word [bp - 4]            ; 0x27ba
    cmp ax, strict word 0x4f         ; 0x27bd
    jl short api_idx_0072_OUII.back8 ; 0x27c0
    mov word [bp - 4], 0             ; 0x27c2
api_idx_0072_OUII.back9:
    mov bx, word [bp - 4]            ; 0x27c7
    mov al, byte [bx + bss_9596]     ; 0x27ca
    mov si, bx                       ; 0x27ce
    mov bx, word [bp - 0x14]         ; 0x27d0
    mov byte [bx + si + 0x22e], al   ; 0x27d3
    mov bx, word [bp - 4]            ; 0x27d7
    mov al, byte [bx + bss_959a]     ; 0x27da
    mov si, bx                       ; 0x27de
    mov bx, word [bp - 0x14]         ; 0x27e0
    mov byte [bx + si + 0x232], al   ; 0x27e3
    inc word [bp - 4]                ; 0x27e7
    mov ax, word [bp - 4]            ; 0x27ea
    cmp ax, strict word 4            ; 0x27ed
    jl short api_idx_0072_OUII.back9 ; 0x27f0
    mov al, byte [bss_959f]          ; 0x27f2
    mov bx, word [bp - 0x14]         ; 0x27f5
    mov byte [bx + 0x237], al        ; 0x27f8
    mov al, byte [bss_95a0]          ; 0x27fc
    mov bx, word [bp - 0x14]         ; 0x27ff
    mov byte [bx + 0x238], al        ; 0x2802
    mov al, byte [bss_95a1]          ; 0x2806
    mov bx, word [bp - 0x14]         ; 0x2809
    mov byte [bx + 0x239], al        ; 0x280c
    mov bx, word [bp - 0x14]         ; 0x2810
    push word [bx + 0x24]            ; 0x2813
    mov al, byte [bx + 0x239]        ; 0x2816
    sub ah, ah                       ; 0x281a
    push ax                          ; 0x281c
    call api_idx_0040_TGSS           ; 0x281d
    add sp, byte 4                   ; 0x2820
    mov bx, word [bp - 0x14]         ; 0x2823
    mov word [bx + 0xe], dx          ; 0x2826
    mov word [bx + 0xc], ax          ; 0x2829
    mov bx, word [bp - 0x14]         ; 0x282c
    mov al, byte [bx + 0x239]        ; 0x282f
    sub ah, ah                       ; 0x2833
    push ax                          ; 0x2835
    mov al, byte [bx + 0x238]        ; 0x2836
    sub ah, ah                       ; 0x283a
    push ax                          ; 0x283c
    mov al, byte [bx + 0x237]        ; 0x283d
    sub ah, ah                       ; 0x2841
    push ax                          ; 0x2843
    call loc_UOUN                    ; 0x2844
    add sp, byte 6                   ; 0x2847
    mov bx, word [bp - 0x14]         ; 0x284a
    mov byte [bx + 0x236], al        ; 0x284d
    mov al, byte [bss_95a2]          ; 0x2851
    mov bx, word [bp - 0x14]         ; 0x2854
    mov byte [bx + 0x23a], al        ; 0x2857
    mov bx, word [bp - 0x14]         ; 0x285b
    mov byte [bx + 0x23b], 0         ; 0x285e
    mov bx, word [bp - 0x14]         ; 0x2863
    mov byte [bx + 0x23f], 0         ; 0x2866
    mov bx, word [bp - 0x14]         ; 0x286b
    mov byte [bx + 0x240], 1         ; 0x286e
    mov bx, word [bp - 0x14]         ; 0x2873
    mov byte [bx + 0x241], 0xa       ; 0x2876
    mov bx, word [bp - 0x14]         ; 0x287b
    mov byte [bx + 0x243], 1         ; 0x287e
    mov bx, word [bp - 0x14]         ; 0x2883
    mov byte [bx + 0x244], 1         ; 0x2886
    mov bx, word [bp - 0x14]         ; 0x288b
    mov al, byte [bx + 0x175]        ; 0x288e
    sub ah, ah                       ; 0x2892
    mov cx, word [bx + 0x24]         ; 0x2894
    add ax, cx                       ; 0x2897
    mov byte [bx + 0x245], al        ; 0x2899
    mov ax, 3                        ; 0x289d
    imul word [bss_9426]             ; 0x28a0
    push ax                          ; 0x28a4
    mov al, byte [bss_95b0]          ; 0x28a5
    cbw                              ; 0x28a8
    mov cx, ax                       ; 0x28a9
    pop ax                           ; 0x28ab
    add ax, cx                       ; 0x28ac
    push ax                          ; 0x28ae
    mov bx, word [bp - 0x14]         ; 0x28af
    mov ax, word [bx + 0x24]         ; 0x28b2
    mov cx, 3                        ; 0x28b5
    imul cx                          ; 0x28b8
    mov cx, ax                       ; 0x28ba
    pop ax                           ; 0x28bc
    sub ax, cx                       ; 0x28bd
    mov word [bp - 4], ax            ; 0x28bf
    mov cx, 0x64                     ; 0x28c2
    mov ax, word [bx + 0x24]         ; 0x28c5
    shl ax, 1                        ; 0x28c8
    shl ax, 1                        ; 0x28ca
    shl ax, 1                        ; 0x28cc
    sub cx, ax                       ; 0x28ce
    mov ax, word [bp - 4]            ; 0x28d0
    cmp cx, ax                       ; 0x28d3
    jle short api_idx_0072_OUII.forward43 ; 0x28d5
    mov ax, 5                        ; 0x28d7
    push ax                          ; 0x28da
    call random_below                ; 0x28db
    pop cx                           ; 0x28de
    mov cx, 0x64                     ; 0x28df
    mov bx, word [bp - 0x14]         ; 0x28e2
    mov dx, word [bx + 0x24]         ; 0x28e5
    shl dx, 1                        ; 0x28e8
    shl dx, 1                        ; 0x28ea
    shl dx, 1                        ; 0x28ec
    sub cx, dx                       ; 0x28ee
    add ax, cx                       ; 0x28f0
    mov word [bp - 4], ax            ; 0x28f2
api_idx_0072_OUII.forward43:
    cmp word [bp - 4], byte 0x64     ; 0x28f5
    jle short api_idx_0072_OUII.forward44 ; 0x28f9
    mov word [bp - 4], 0x64          ; 0x28fb
api_idx_0072_OUII.forward44:
    mov al, byte [bp - 4]            ; 0x2900
    mov bx, word [bp - 0x14]         ; 0x2903
    mov byte [bx + 0x246], al        ; 0x2906
    mov word [bp - 4], 0             ; 0x290a
api_idx_0072_OUII.back10:
    push word [bp - 4]               ; 0x290f
    push word [party_char_count]     ; 0x2912
    call reset_page_record           ; 0x2916
    add sp, byte 4                   ; 0x2919
    inc word [bp - 4]                ; 0x291c
    mov ax, word [bp - 4]            ; 0x291f
    cmp ax, strict word 2            ; 0x2922
    jl short api_idx_0072_OUII.back10 ; 0x2925
    mov bx, word [bp - 0x14]         ; 0x2927
    mov byte [bx + 0x1b6], 0xa       ; 0x292a
    mov bx, word [bp - 0x14]         ; 0x292f
    cmp byte [bx + 0x175], 0xf       ; 0x2932
    jbe short api_idx_0072_OUII.forward45 ; 0x2937
    mov cx, 1                        ; 0x2939
    jmp short api_idx_0072_OUII.forward46 ; 0x293c
api_idx_0072_OUII.forward45:
    mov cx, 0                        ; 0x293e
api_idx_0072_OUII.forward46:
    mov al, byte [bx + 0x1b6]        ; 0x2941
    cbw                              ; 0x2945
    sub ax, cx                       ; 0x2946
    mov byte [bx + 0x1b6], al        ; 0x2948
    cbw                              ; 0x294c
    mov cx, 0                        ; 0x294d
    cmp byte [bx + 0x175], 0x11      ; 0x2950
    jbe short api_idx_0072_OUII.forward47 ; 0x2955
    mov cx, 1                        ; 0x2957
api_idx_0072_OUII.forward47:
    sub ax, cx                       ; 0x295a
    mov byte [bx + 0x1b6], al        ; 0x295c
    mov al, byte [bx + 0x1b6]        ; 0x2960
    cbw                              ; 0x2964
    mov cx, 0                        ; 0x2965
    cmp byte [bx + 0x237], 5         ; 0x2968
    jne short api_idx_0072_OUII.forward48 ; 0x296d
    mov cx, 2                        ; 0x296f
api_idx_0072_OUII.forward48:
    sub ax, cx                       ; 0x2972
    mov byte [bx + 0x1b6], al        ; 0x2974
    cmp byte [bx + 0x239], 0xd       ; 0x2978
    je short api_idx_0072_OUII.forward49 ; 0x297d
    cmp byte [bx + 0x239], 0xc       ; 0x297f
    jne short api_idx_0072_OUII.forward50 ; 0x2984
api_idx_0072_OUII.forward49:
    mov al, byte [bx + 0x1b6]        ; 0x2986
    cbw                              ; 0x298a
    push ax                          ; 0x298b
    mov al, byte [bx + 0x189]        ; 0x298c
    sub ah, ah                       ; 0x2990
    mov cx, 0xa                      ; 0x2992
    cwd                              ; 0x2995
    idiv cx                          ; 0x2996
    mov cx, ax                       ; 0x2998
    pop ax                           ; 0x299a
    sub ax, cx                       ; 0x299b
    mov byte [bx + 0x1b6], al        ; 0x299d
api_idx_0072_OUII.forward50:
    mov byte [bx + 0x1b7], 0         ; 0x29a1
    mov bx, word [bp - 0x14]         ; 0x29a6
    mov byte [bx + 0x1b8], 0         ; 0x29a9
    mov word [bp - 4], 3             ; 0x29ae
api_idx_0072_OUII.back11:
    mov bx, word [bp - 0x14]         ; 0x29b3
    mov al, byte [bx + 0x1b6]        ; 0x29b6
    mov si, word [bp - 4]            ; 0x29ba
    mov byte [bx + si + 0x1b6], al   ; 0x29bd
    inc word [bp - 4]                ; 0x29c1
    mov ax, word [bp - 4]            ; 0x29c4
    cmp ax, strict word 8            ; 0x29c7
    jl short api_idx_0072_OUII.back11 ; 0x29ca
    mov word [bp - 4], 0             ; 0x29cc
api_idx_0072_OUII.back12:
    mov bx, word [bp - 0x14]         ; 0x29d1
    mov al, byte [bx + 0x177]        ; 0x29d4
    sub ah, ah                       ; 0x29d8
    add ax, strict word 0xfff7       ; 0x29da
    jge short api_idx_0072_OUII.forward51 ; 0x29dd
    neg ax                           ; 0x29df
    mov cx, ax                       ; 0x29e1
    jmp short api_idx_0072_OUII.forward52 ; 0x29e3
api_idx_0072_OUII.forward51:
    mov al, byte [bx + 0x177]        ; 0x29e5
    sub ah, ah                       ; 0x29e9
    mov cx, ax                       ; 0x29eb
    add ax, strict word 0xfff7       ; 0x29ed
    mov cx, ax                       ; 0x29f0
api_idx_0072_OUII.forward52:
    shl cx, 1                        ; 0x29f2
    shl cx, 1                        ; 0x29f4
    mov ax, 0x28                     ; 0x29f6
    sub ax, cx                       ; 0x29f9
    mov si, word [bp - 4]            ; 0x29fb
    mov byte [bx + si + 0x1be], al   ; 0x29fe
    inc word [bp - 4]                ; 0x2a02
    mov ax, word [bp - 4]            ; 0x2a05
    cmp ax, strict word 0x60         ; 0x2a08
    jl short api_idx_0072_OUII.back12 ; 0x2a0b
    mov word [bp - 4], 0             ; 0x2a0d
api_idx_0072_OUII.back13:
    mov bx, word [bp - 0x14]         ; 0x2a12
    mov si, word [bp - 4]            ; 0x2a15
    mov byte [bx + si + 0x154], 0xff ; 0x2a18
    inc word [bp - 4]                ; 0x2a1d
    mov ax, word [bp - 4]            ; 0x2a20
    cmp ax, strict word 8            ; 0x2a23
    jl short api_idx_0072_OUII.back13 ; 0x2a26
    push word [party_char_count]     ; 0x2a28
    call api_idx_0004_MMTP           ; 0x2a2c
    pop cx                           ; 0x2a2f
    mov word [bp - 0x16], 0          ; 0x2a30
    mov word [bp - 0x18], 0          ; 0x2a35
    cmp word [party_char_count], byte 0 ; 0x2a3a
    jne short api_idx_0072_OUII.forward53 ; 0x2a3f
    mov ax, 1                        ; 0x2a41
    push ax                          ; 0x2a44
    mov ax, 0xfffe                   ; 0x2a45
    push ax                          ; 0x2a48
    mov ax, 0x78                     ; 0x2a49
    imul word [bp - 0x16]            ; 0x2a4c
    mov cx, ax                       ; 0x2a4f
    mov ax, 0xc                      ; 0x2a51
    imul word [bp - 0x18]            ; 0x2a54
    add cx, ax                       ; 0x2a57
    mov ax, word [bp - 0x14]         ; 0x2a59
    add ax, cx                       ; 0x2a5c
    add ax, strict word 0x40         ; 0x2a5e
    push ax                          ; 0x2a61
    mov ax, 0x19b                    ; 0x2a62
    push ax                          ; 0x2a65
    push word [party_char_count]     ; 0x2a66
    call api_idx_004c_MUGV           ; 0x2a6a
    add sp, byte 0xa                 ; 0x2a6d
    inc word [bp - 0x18]             ; 0x2a70
api_idx_0072_OUII.forward53:
    mov word [bp - 4], 0             ; 0x2a73
    mov word [bp - 6], 0             ; 0x2a78
    mov al, byte [bss_95a1]          ; 0x2a7d
    sub ah, ah                       ; 0x2a80
    jmp near api_idx_0072_OUII.forward54 ; 0x2a82
jumptable_2af5_case_0:
    mov word [bp - 4], 8             ; 0x2a85
    jmp near api_idx_0072_OUII.forward55 ; 0x2a8a
jumptable_2af5_case_1:
    mov word [bp - 4], 0x12          ; 0x2a8d
    jmp near api_idx_0072_OUII.forward55 ; 0x2a92
jumptable_2af5_case_2:
    mov word [bp - 4], 0x18          ; 0x2a95
    jmp near api_idx_0072_OUII.forward55 ; 0x2a9a
jumptable_2af5_case_3:
    mov word [bp - 4], 6             ; 0x2a9d
    jmp near api_idx_0072_OUII.forward55 ; 0x2aa2
jumptable_2af5_case_4:
    mov word [bp - 4], 0x1f          ; 0x2aa5
    mov word [bp - 6], 0x21          ; 0x2aaa
    jmp short api_idx_0072_OUII.forward55 ; 0x2aaf
jumptable_2af5_case_5:
    mov word [bp - 4], 0x12          ; 0x2ab1
    jmp short api_idx_0072_OUII.forward55 ; 0x2ab6
jumptable_2af5_case_6:
    mov word [bp - 4], 0x1d          ; 0x2ab8
    mov word [bp - 6], 0x1e          ; 0x2abd
    jmp short api_idx_0072_OUII.forward55 ; 0x2ac2
jumptable_2af5_case_7:
    mov word [bp - 4], 1             ; 0x2ac4
    jmp short api_idx_0072_OUII.forward55 ; 0x2ac9
jumptable_2af5_case_8:
    mov word [bp - 4], 0x16          ; 0x2acb
    jmp short api_idx_0072_OUII.forward55 ; 0x2ad0
jumptable_2af5_case_9:
    mov word [bp - 4], 0x18          ; 0x2ad2
    jmp short api_idx_0072_OUII.forward55 ; 0x2ad7
jumptable_2af5_case_10:
    mov word [bp - 4], 9             ; 0x2ad9
    jmp short api_idx_0072_OUII.forward55 ; 0x2ade
jumptable_2af5_case_11:
    mov word [bp - 4], 0xa           ; 0x2ae0
    jmp short api_idx_0072_OUII.forward55 ; 0x2ae5
jumptable_2af5_case_12:
    mov word [bp - 4], 0x19          ; 0x2ae7
    jmp short api_idx_0072_OUII.forward55 ; 0x2aec
jumptable_2af5_case_13:
    mov word [bp - 4], 0x2f          ; 0x2aee
    jmp short api_idx_0072_OUII.forward55 ; 0x2af3
jumptable_2af5:
    dw jumptable_2af5_case_0 - IMAGE_BASE + __zres_end ; 0x2af5
    dw jumptable_2af5_case_1 - IMAGE_BASE + __zres_end ; 0x2af7
    dw jumptable_2af5_case_2 - IMAGE_BASE + __zres_end ; 0x2af9
    dw jumptable_2af5_case_3 - IMAGE_BASE + __zres_end ; 0x2afb
    dw jumptable_2af5_case_4 - IMAGE_BASE + __zres_end ; 0x2afd
    dw jumptable_2af5_case_5 - IMAGE_BASE + __zres_end ; 0x2aff
    dw jumptable_2af5_case_6 - IMAGE_BASE + __zres_end ; 0x2b01
    dw jumptable_2af5_case_7 - IMAGE_BASE + __zres_end ; 0x2b03
    dw jumptable_2af5_case_8 - IMAGE_BASE + __zres_end ; 0x2b05
    dw jumptable_2af5_case_9 - IMAGE_BASE + __zres_end ; 0x2b07
    dw jumptable_2af5_case_10 - IMAGE_BASE + __zres_end ; 0x2b09
    dw jumptable_2af5_case_11 - IMAGE_BASE + __zres_end ; 0x2b0b
    dw jumptable_2af5_case_12 - IMAGE_BASE + __zres_end ; 0x2b0d
    dw jumptable_2af5_case_13 - IMAGE_BASE + __zres_end ; 0x2b0f
api_idx_0072_OUII.forward54:
    cmp ax, strict word 0xe          ; 0x2b11
    jae short api_idx_0072_OUII.forward55 ; 0x2b14
    xchg bx, ax                      ; 0x2b16
    shl bx, 1                        ; 0x2b17
    jmp [cs:bx + jumptable_2af5 - IMAGE_BASE + __zres_end] ; 0x2b19
api_idx_0072_OUII.forward55:
    cmp byte [bss_959f], 5           ; 0x2b1e
    jne short api_idx_0072_OUII.forward56 ; 0x2b23
    mov word [bp - 4], 0x18d         ; 0x2b25
    mov word [bp - 6], 0             ; 0x2b2a
api_idx_0072_OUII.forward56:
    cmp word [bp - 4], byte 0        ; 0x2b2f
    jle short api_idx_0072_OUII.forward57 ; 0x2b33
    mov ax, 1                        ; 0x2b35
    push ax                          ; 0x2b38
    mov ax, 0xfffe                   ; 0x2b39
    push ax                          ; 0x2b3c
    mov ax, 0x78                     ; 0x2b3d
    imul word [bp - 0x16]            ; 0x2b40
    mov cx, ax                       ; 0x2b43
    mov ax, 0xc                      ; 0x2b45
    imul word [bp - 0x18]            ; 0x2b48
    add cx, ax                       ; 0x2b4b
    mov ax, word [bp - 0x14]         ; 0x2b4d
    add ax, cx                       ; 0x2b50
    add ax, strict word 0x40         ; 0x2b52
    push ax                          ; 0x2b55
    push word [bp - 4]               ; 0x2b56
    push word [party_char_count]     ; 0x2b59
    call api_idx_004c_MUGV           ; 0x2b5d
    add sp, byte 0xa                 ; 0x2b60
    inc word [bp - 0x18]             ; 0x2b63
api_idx_0072_OUII.forward57:
    cmp word [bp - 6], byte 0        ; 0x2b66
    jle short api_idx_0072_OUII.forward58 ; 0x2b6a
    mov ax, 1                        ; 0x2b6c
    push ax                          ; 0x2b6f
    mov ax, 0xfffe                   ; 0x2b70
    push ax                          ; 0x2b73
    mov ax, 0x78                     ; 0x2b74
    imul word [bp - 0x16]            ; 0x2b77
    mov cx, ax                       ; 0x2b7a
    mov ax, 0xc                      ; 0x2b7c
    imul word [bp - 0x18]            ; 0x2b7f
    add cx, ax                       ; 0x2b82
    mov ax, word [bp - 0x14]         ; 0x2b84
    add ax, cx                       ; 0x2b87
    add ax, strict word 0x40         ; 0x2b89
    push ax                          ; 0x2b8c
    push word [bp - 6]               ; 0x2b8d
    push word [party_char_count]     ; 0x2b90
    call api_idx_004c_MUGV           ; 0x2b94
    add sp, byte 0xa                 ; 0x2b97
    inc word [bp - 0x18]             ; 0x2b9a
api_idx_0072_OUII.forward58:
    mov word [bp - 0x22], 0xffff     ; 0x2b9d
    mov word [bp - 4], 0             ; 0x2ba2
    jmp near api_idx_0072_OUII.forward64 ; 0x2ba7
api_idx_0072_OUII.back14:
    mov ax, word [bp - 4]            ; 0x2baa
    shl ax, 1                        ; 0x2bad
    shl ax, 1                        ; 0x2baf
    shl ax, 1                        ; 0x2bb1
    mov bx, ax                       ; 0x2bb3
    mov ax, word [bx + bss_9442]     ; 0x2bb5
    mov word [bp - 6], ax            ; 0x2bb9
    cmp ax, strict word 0            ; 0x2bbc
    jg short api_idx_0072_OUII.forward59 ; 0x2bbf
    jmp near api_idx_0072_OUII.forward63 ; 0x2bc1
api_idx_0072_OUII.forward59:
    push ax                          ; 0x2bc4
    call loc_JJHG                    ; 0x2bc5
    pop cx                           ; 0x2bc8
    mov word [bp - 6], ax            ; 0x2bc9
    cmp ax, strict word 0            ; 0x2bcc
    jge short api_idx_0072_OUII.forward62 ; 0x2bcf
    cmp word [bp - 0x22], byte -1    ; 0x2bd1
    je short api_idx_0072_OUII.forward60 ; 0x2bd5
    mov ax, 3                        ; 0x2bd7
    push ax                          ; 0x2bda
    call random_below                ; 0x2bdb
    pop cx                           ; 0x2bde
    test ax, ax                      ; 0x2bdf
    jne short api_idx_0072_OUII.forward61 ; 0x2be1
api_idx_0072_OUII.forward60:
    mov ax, word [bp - 4]            ; 0x2be3
    shl ax, 1                        ; 0x2be6
    shl ax, 1                        ; 0x2be8
    shl ax, 1                        ; 0x2bea
    mov bx, ax                       ; 0x2bec
    mov al, byte [bx + bss_9449]     ; 0x2bee
    sub ah, ah                       ; 0x2bf2
    test ax, 1                       ; 0x2bf4
    je short api_idx_0072_OUII.forward61 ; 0x2bf7
    mov ax, word [bp - 4]            ; 0x2bf9
    mov word [bp - 0x22], ax         ; 0x2bfc
api_idx_0072_OUII.forward61:
    jmp short api_idx_0072_OUII.forward63 ; 0x2bff
api_idx_0072_OUII.forward62:
    cmp word [bp - 6], byte 0        ; 0x2c01
    jle short api_idx_0072_OUII.forward63 ; 0x2c05
    cmp word [bp - 0x16], byte 2     ; 0x2c07
    jge short api_idx_0072_OUII.forward63 ; 0x2c0b
    mov ax, 1                        ; 0x2c0d
    push ax                          ; 0x2c10
    mov ax, word [bp - 4]            ; 0x2c11
    shl ax, 1                        ; 0x2c14
    shl ax, 1                        ; 0x2c16
    shl ax, 1                        ; 0x2c18
    mov bx, ax                       ; 0x2c1a
    mov al, byte [bx + bss_9448]     ; 0x2c1c
    sub ah, ah                       ; 0x2c20
    push ax                          ; 0x2c22
    mov ax, 0x78                     ; 0x2c23
    imul word [bp - 0x16]            ; 0x2c26
    mov cx, ax                       ; 0x2c29
    mov ax, 0xc                      ; 0x2c2b
    imul word [bp - 0x18]            ; 0x2c2e
    add cx, ax                       ; 0x2c31
    mov ax, word [bp - 0x14]         ; 0x2c33
    add ax, cx                       ; 0x2c36
    add ax, strict word 0x40         ; 0x2c38
    push ax                          ; 0x2c3b
    push word [bp - 6]               ; 0x2c3c
    push word [party_char_count]     ; 0x2c3f
    call api_idx_004c_MUGV           ; 0x2c43
    add sp, byte 0xa                 ; 0x2c46
    inc word [bp - 0x18]             ; 0x2c49
    mov ax, word [bp - 0x18]         ; 0x2c4c
    cmp ax, strict word 0xa          ; 0x2c4f
    jl short api_idx_0072_OUII.forward63 ; 0x2c52
    mov word [bp - 0x18], 0          ; 0x2c54
    inc word [bp - 0x16]             ; 0x2c59
api_idx_0072_OUII.forward63:
    inc word [bp - 4]                ; 0x2c5c
api_idx_0072_OUII.forward64:
    mov al, byte [bss_95ae]          ; 0x2c5f
    sub ah, ah                       ; 0x2c62
    cmp ax, word [bp - 4]            ; 0x2c64
    jle short api_idx_0072_OUII.forward65 ; 0x2c67
    jmp near api_idx_0072_OUII.back14 ; 0x2c69
api_idx_0072_OUII.forward65:
    mov word [bp - 4], 0             ; 0x2c6c
    jmp near api_idx_0072_OUII.forward71 ; 0x2c71
api_idx_0072_OUII.back15:
    mov ax, word [bp - 4]            ; 0x2c74
    shl ax, 1                        ; 0x2c77
    shl ax, 1                        ; 0x2c79
    shl ax, 1                        ; 0x2c7b
    mov bx, ax                       ; 0x2c7d
    mov ax, word [bx + bss_9492]     ; 0x2c7f
    mov word [bp - 6], ax            ; 0x2c83
    cmp ax, strict word 0            ; 0x2c86
    jg short api_idx_0072_OUII.forward66 ; 0x2c89
    jmp near api_idx_0072_OUII.forward70 ; 0x2c8b
api_idx_0072_OUII.forward66:
    push ax                          ; 0x2c8e
    call loc_JJHG                    ; 0x2c8f
    pop cx                           ; 0x2c92
    mov word [bp - 6], ax            ; 0x2c93
    cmp ax, strict word 0            ; 0x2c96
    jge short api_idx_0072_OUII.forward69 ; 0x2c99
    cmp word [bp - 0x22], byte -1    ; 0x2c9b
    je short api_idx_0072_OUII.forward67 ; 0x2c9f
    mov ax, 3                        ; 0x2ca1
    push ax                          ; 0x2ca4
    call random_below                ; 0x2ca5
    pop cx                           ; 0x2ca8
    test ax, ax                      ; 0x2ca9
    jne short api_idx_0072_OUII.forward68 ; 0x2cab
api_idx_0072_OUII.forward67:
    mov ax, word [bp - 4]            ; 0x2cad
    shl ax, 1                        ; 0x2cb0
    shl ax, 1                        ; 0x2cb2
    shl ax, 1                        ; 0x2cb4
    mov bx, ax                       ; 0x2cb6
    mov al, byte [bx + bss_9499]     ; 0x2cb8
    sub ah, ah                       ; 0x2cbc
    test ax, 1                       ; 0x2cbe
    je short api_idx_0072_OUII.forward68 ; 0x2cc1
    mov ax, word [bp - 4]            ; 0x2cc3
    add ax, strict word 0xa          ; 0x2cc6
    mov word [bp - 0x22], ax         ; 0x2cc9
api_idx_0072_OUII.forward68:
    jmp short api_idx_0072_OUII.forward70 ; 0x2ccc
api_idx_0072_OUII.forward69:
    cmp word [bp - 6], byte 0        ; 0x2cce
    jle short api_idx_0072_OUII.forward70 ; 0x2cd2
    cmp word [bp - 0x16], byte 2     ; 0x2cd4
    jge short api_idx_0072_OUII.forward70 ; 0x2cd8
    mov ax, 1                        ; 0x2cda
    push ax                          ; 0x2cdd
    mov ax, word [bp - 4]            ; 0x2cde
    shl ax, 1                        ; 0x2ce1
    shl ax, 1                        ; 0x2ce3
    shl ax, 1                        ; 0x2ce5
    mov bx, ax                       ; 0x2ce7
    mov al, byte [bx + bss_9498]     ; 0x2ce9
    sub ah, ah                       ; 0x2ced
    push ax                          ; 0x2cef
    mov ax, 0x78                     ; 0x2cf0
    imul word [bp - 0x16]            ; 0x2cf3
    mov cx, ax                       ; 0x2cf6
    mov ax, 0xc                      ; 0x2cf8
    imul word [bp - 0x18]            ; 0x2cfb
    add cx, ax                       ; 0x2cfe
    mov ax, word [bp - 0x14]         ; 0x2d00
    add ax, cx                       ; 0x2d03
    add ax, strict word 0x40         ; 0x2d05
    push ax                          ; 0x2d08
    push word [bp - 6]               ; 0x2d09
    push word [party_char_count]     ; 0x2d0c
    call api_idx_004c_MUGV           ; 0x2d10
    add sp, byte 0xa                 ; 0x2d13
    inc word [bp - 0x18]             ; 0x2d16
    mov ax, word [bp - 0x18]         ; 0x2d19
    cmp ax, strict word 0xa          ; 0x2d1c
    jl short api_idx_0072_OUII.forward70 ; 0x2d1f
    mov word [bp - 0x18], 0          ; 0x2d21
    inc word [bp - 0x16]             ; 0x2d26
api_idx_0072_OUII.forward70:
    inc word [bp - 4]                ; 0x2d29
api_idx_0072_OUII.forward71:
    mov al, byte [bss_95af]          ; 0x2d2c
    sub ah, ah                       ; 0x2d2f
    cmp ax, word [bp - 4]            ; 0x2d31
    jle short api_idx_0072_OUII.forward72 ; 0x2d34
    jmp near api_idx_0072_OUII.back15 ; 0x2d36
api_idx_0072_OUII.forward72:
    cmp word [bp - 0x22], byte -1    ; 0x2d39
    je short api_idx_0072_OUII.forward75 ; 0x2d3d
    cmp word [bp - 0x16], byte 2     ; 0x2d3f
    jge short api_idx_0072_OUII.forward75 ; 0x2d43
    mov ax, word [bp - 0x22]         ; 0x2d45
    shl ax, 1                        ; 0x2d48
    shl ax, 1                        ; 0x2d4a
    shl ax, 1                        ; 0x2d4c
    mov bx, ax                       ; 0x2d4e
    push word [bx + bss_9442]        ; 0x2d50
    call loc_JJHG                    ; 0x2d54
    pop cx                           ; 0x2d57
    mov word [bp - 6], ax            ; 0x2d58
    cmp ax, strict word 0            ; 0x2d5b
    jge short api_idx_0072_OUII.forward74 ; 0x2d5e
    push ax                          ; 0x2d60
    cmp ax, strict word 0            ; 0x2d61
    pop ax                           ; 0x2d64
    jge short api_idx_0072_OUII.forward73 ; 0x2d65
    neg ax                           ; 0x2d67
api_idx_0072_OUII.forward73:
    mov word [bp - 6], ax            ; 0x2d69
api_idx_0072_OUII.forward74:
    cmp word [bp - 6], byte 0        ; 0x2d6c
    jle short api_idx_0072_OUII.forward75 ; 0x2d70
    mov ax, 1                        ; 0x2d72
    push ax                          ; 0x2d75
    mov ax, word [bp - 0x22]         ; 0x2d76
    shl ax, 1                        ; 0x2d79
    shl ax, 1                        ; 0x2d7b
    shl ax, 1                        ; 0x2d7d
    mov bx, ax                       ; 0x2d7f
    mov al, byte [bx + bss_9448]     ; 0x2d81
    sub ah, ah                       ; 0x2d85
    push ax                          ; 0x2d87
    mov ax, 0x78                     ; 0x2d88
    imul word [bp - 0x16]            ; 0x2d8b
    mov cx, ax                       ; 0x2d8e
    mov ax, 0xc                      ; 0x2d90
    imul word [bp - 0x18]            ; 0x2d93
    add cx, ax                       ; 0x2d96
    mov ax, word [bp - 0x14]         ; 0x2d98
    add ax, cx                       ; 0x2d9b
    add ax, strict word 0x40         ; 0x2d9d
    push ax                          ; 0x2da0
    push word [bp - 6]               ; 0x2da1
    push word [party_char_count]     ; 0x2da4
    call api_idx_004c_MUGV           ; 0x2da8
    add sp, byte 0xa                 ; 0x2dab
api_idx_0072_OUII.forward75:
    inc word [party_char_count]      ; 0x2dae
    inc word [bp - 2]                ; 0x2db2
api_idx_0072_OUII.forward76:
    mov ax, word [bp - 2]            ; 0x2db5
    cmp ax, word [bss_9400]          ; 0x2db8
    jge short api_idx_0072_OUII.forward77 ; 0x2dbc
    jmp near api_idx_0072_OUII.back2 ; 0x2dbe
api_idx_0072_OUII.forward77:
    push word [bp - 0xa]             ; 0x2dc1
    call aztec_close                 ; 0x2dc4
    pop cx                           ; 0x2dc7
    mov word [bp - 0x1a], 0xffff     ; 0x2dc8
    mov word [bp - 4], 0             ; 0x2dcd
    jmp short api_idx_0072_OUII.forward79 ; 0x2dd2
api_idx_0072_OUII.back16:
    mov word [bp - 6], 0             ; 0x2dd4
api_idx_0072_OUII.back17:
    push word [bp - 6]               ; 0x2dd9
    mov ax, 0x248                    ; 0x2ddc
    imul word [bp - 4]               ; 0x2ddf
    add ax, party_records + pc_rec.pad_01be + 0x74 ; 0x2de2
    push ax                          ; 0x2de5
    call test_bit                    ; 0x2de6
    add sp, byte 4                   ; 0x2de9
    test ax, ax                      ; 0x2dec
    je short api_idx_0072_OUII.forward78 ; 0x2dee
    mov ax, word [bp - 6]            ; 0x2df0
    mov word [bp - 0x1a], ax         ; 0x2df3
api_idx_0072_OUII.forward78:
    inc word [bp - 6]                ; 0x2df6
    mov ax, word [bp - 6]            ; 0x2df9
    cmp ax, strict word 3            ; 0x2dfc
    jl short api_idx_0072_OUII.back17 ; 0x2dff
    inc word [bp - 4]                ; 0x2e01
api_idx_0072_OUII.forward79:
    mov ax, word [bp - 4]            ; 0x2e04
    cmp ax, word [party_char_count]  ; 0x2e07
    jl short api_idx_0072_OUII.back16 ; 0x2e0b
    mov ax, word [bp - 0x1a]         ; 0x2e0d
    jmp near api_idx_0072_OUII.forward80 ; 0x2e10
api_idx_0072_OUII.back18:
    mov word [party_world_x], 0x5c   ; 0x2e13
    mov word [party_world_y], 0x4f   ; 0x2e19
    mov word [party_cell_x], 4       ; 0x2e1f
    mov word [party_cell_y], 7       ; 0x2e25
    mov word [party_map_piece], 3    ; 0x2e2b
    mov word [party_tag], 2          ; 0x2e31
    mov word [game_state_arg], 0     ; 0x2e37
    mov word [party_records + pc_rec.f_0016], 0 ; 0x2e3d
    mov word [party_records + pc_rec.f_0014], 0x1388 ; 0x2e43
    mov ax, 0                        ; 0x2e49
    push ax                          ; 0x2e4c
    mov ax, 0x5a                     ; 0x2e4d
    push ax                          ; 0x2e50
    mov ax, 0x14                     ; 0x2e51
    push ax                          ; 0x2e54
    mov ax, 0xffec                   ; 0x2e55
    push ax                          ; 0x2e58
    mov ax, 0                        ; 0x2e59
    push ax                          ; 0x2e5c
    push ax                          ; 0x2e5d
    mov ax, 0xa                      ; 0x2e5e
    push ax                          ; 0x2e61
    push ax                          ; 0x2e62
    mov ax, 0xffec                   ; 0x2e63
    push ax                          ; 0x2e66
    mov ax, 0xffa6                   ; 0x2e67
    push ax                          ; 0x2e6a
    call loc_MJMJ                    ; 0x2e6b
    add sp, byte 0x14                ; 0x2e6e
    mov word [intro_screen_number], 1 ; 0x2e71
    jmp near api_idx_0072_OUII.forward83 ; 0x2e77
api_idx_0072_OUII.back19:
    mov word [party_world_x], 0x8c   ; 0x2e7a
    mov word [party_world_y], 0x7d   ; 0x2e80
    mov word [party_cell_x], 4       ; 0x2e86
    mov word [party_cell_y], 5       ; 0x2e8c
    mov word [party_map_piece], 0xb  ; 0x2e92
    mov word [party_tag], 3          ; 0x2e98
    mov word [game_state_arg], 6     ; 0x2e9e
    mov word [party_records + pc_rec.f_0016], 0 ; 0x2ea4
    mov word [party_records + pc_rec.f_0014], 0x2710 ; 0x2eaa
    mov ax, 0x5a                     ; 0x2eb0
    push ax                          ; 0x2eb3
    mov ax, 0                        ; 0x2eb4
    push ax                          ; 0x2eb7
    mov ax, 0xa                      ; 0x2eb8
    push ax                          ; 0x2ebb
    push ax                          ; 0x2ebc
    mov ax, 0                        ; 0x2ebd
    push ax                          ; 0x2ec0
    mov ax, 0xa                      ; 0x2ec1
    push ax                          ; 0x2ec4
    mov ax, 0xffd8                   ; 0x2ec5
    push ax                          ; 0x2ec8
    mov ax, 0x28                     ; 0x2ec9
    push ax                          ; 0x2ecc
    mov ax, 0xffa6                   ; 0x2ecd
    push ax                          ; 0x2ed0
    mov ax, 0xffce                   ; 0x2ed1
    push ax                          ; 0x2ed4
    call loc_MJMJ                    ; 0x2ed5
    add sp, byte 0x14                ; 0x2ed8
    mov word [intro_screen_number], 2 ; 0x2edb
    jmp near api_idx_0072_OUII.forward83 ; 0x2ee1
api_idx_0072_OUII.back20:
    mov word [party_world_x], 0x6e   ; 0x2ee4
    mov word [party_world_y], 0x8e   ; 0x2eea
    mov word [party_cell_x], 6       ; 0x2ef0
    mov word [party_cell_y], 6       ; 0x2ef6
    mov word [party_map_piece], 1    ; 0x2efc
    mov word [party_tag], 2          ; 0x2f02
    mov word [game_state_arg], 2     ; 0x2f08
    mov ax, 0xffa6                   ; 0x2f0e
    push ax                          ; 0x2f11
    push ax                          ; 0x2f12
    mov ax, 0                        ; 0x2f13
    push ax                          ; 0x2f16
    mov ax, 0x14                     ; 0x2f17
    push ax                          ; 0x2f1a
    mov ax, 0xffec                   ; 0x2f1b
    push ax                          ; 0x2f1e
    mov ax, 0xffce                   ; 0x2f1f
    push ax                          ; 0x2f22
    mov ax, 0x19                     ; 0x2f23
    push ax                          ; 0x2f26
    mov ax, 0xffa1                   ; 0x2f27
    push ax                          ; 0x2f2a
    mov ax, 0x23                     ; 0x2f2b
    push ax                          ; 0x2f2e
    mov ax, 0                        ; 0x2f2f
    push ax                          ; 0x2f32
    call loc_MJMJ                    ; 0x2f33
    add sp, byte 0x14                ; 0x2f36
    mov word [intro_screen_number], 3 ; 0x2f39
    jmp short api_idx_0072_OUII.forward83 ; 0x2f3f
api_idx_0072_OUII.back21:
    mov word [intro_screen_number], 4 ; 0x2f41
    jmp short api_idx_0072_OUII.forward83 ; 0x2f47
api_idx_0072_OUII.forward80:
    cmp ax, strict word 0xffff       ; 0x2f49
    je short api_idx_0072_OUII.back21 ; 0x2f4c
    cmp ax, strict word 0            ; 0x2f4e
    jne short api_idx_0072_OUII.forward81 ; 0x2f51
    jmp near api_idx_0072_OUII.back18 ; 0x2f53
api_idx_0072_OUII.forward81:
    cmp ax, strict word 1            ; 0x2f56
    jne short api_idx_0072_OUII.forward82 ; 0x2f59
    jmp near api_idx_0072_OUII.back19 ; 0x2f5b
api_idx_0072_OUII.forward82:
    cmp ax, strict word 2            ; 0x2f5e
    je short api_idx_0072_OUII.back20 ; 0x2f61
api_idx_0072_OUII.forward83:
    cmp word [bp - 0x1a], byte -1    ; 0x2f63
    jne short api_idx_0072_OUII.forward84 ; 0x2f67
    jmp near api_idx_0072_OUII.forward85 ; 0x2f69
api_idx_0072_OUII.forward84:
    mov ax, 1                        ; 0x2f6c
    push ax                          ; 0x2f6f
    push ax                          ; 0x2f70
    mov ax, scenario_header_data     ; 0x2f71
    push ax                          ; 0x2f74
    call set_bitmap_bit              ; 0x2f75
    add sp, byte 6                   ; 0x2f78
    mov ax, 1                        ; 0x2f7b
    push ax                          ; 0x2f7e
    mov ax, 2                        ; 0x2f7f
    push ax                          ; 0x2f82
    mov ax, scenario_header_data     ; 0x2f83
    push ax                          ; 0x2f86
    call set_bitmap_bit              ; 0x2f87
    add sp, byte 6                   ; 0x2f8a
    mov ax, 0                        ; 0x2f8d
    push ax                          ; 0x2f90
    mov ax, 0x14                     ; 0x2f91
    push ax                          ; 0x2f94
    mov ax, word [game_state_arg]    ; 0x2f95
    mov cx, 4                        ; 0x2f98
    shl ax, cl                       ; 0x2f9b
    add ax, scenario_header_data     ; 0x2f9d
    push ax                          ; 0x2fa0
    call set_bitmap_bit              ; 0x2fa1
    add sp, byte 6                   ; 0x2fa4
    mov ax, 0                        ; 0x2fa7
    push ax                          ; 0x2faa
    mov ax, 0x15                     ; 0x2fab
    push ax                          ; 0x2fae
    mov ax, word [game_state_arg]    ; 0x2faf
    mov cx, 4                        ; 0x2fb2
    shl ax, cl                       ; 0x2fb5
    add ax, scenario_header_data     ; 0x2fb7
    push ax                          ; 0x2fba
    call set_bitmap_bit              ; 0x2fbb
    add sp, byte 6                   ; 0x2fbe
    mov ax, word [party_world_x]     ; 0x2fc1
    mov word [bss_8f3a], ax          ; 0x2fc4
    mov ax, word [party_world_y]     ; 0x2fc7
    mov word [bss_8f38], ax          ; 0x2fca
    mov ax, word [party_cell_x]      ; 0x2fcd
    mov word [bss_8f36], ax          ; 0x2fd0
    mov ax, word [party_cell_y]      ; 0x2fd3
    mov word [bss_8f34], ax          ; 0x2fd6
    mov ax, word [party_map_piece]   ; 0x2fd9
    mov word [bss_8f32], ax          ; 0x2fdc
    mov ax, word [party_tag]         ; 0x2fdf
    mov word [bss_8f30], ax          ; 0x2fe2
    mov ax, word [game_state_arg]    ; 0x2fe5
    mov word [bss_8f3c], ax          ; 0x2fe8
api_idx_0072_OUII.forward85:
    mov ax, 0                        ; 0x2feb
    ret                              ; 0x2fee
