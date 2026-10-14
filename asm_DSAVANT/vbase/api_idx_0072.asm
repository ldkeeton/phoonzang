; auto-generated
api_idx_0072:
    mov ax, 0xff8e                   ; 0x1faf
    call aztec_csav                  ; 0x1fb2
    mov word [bp - 0x000e], 0        ; 0x1fb5
    mov ax, word [bss_5218]          ; 0x1fba
    mov word [bp - 0x0010], ax       ; 0x1fbd
    cmp byte [bss_5987], 5           ; 0x1fc0
    jne short @..api_idx_0072.l1     ; 0x1fc5
    cmp ax, strict word 0            ; 0x1fc7
    jle short @..api_idx_0072.l1     ; 0x1fca
    inc ax                           ; 0x1fcc
    inc ax                           ; 0x1fcd
    jmp short @..api_idx_0072.l2     ; 0x1fce
@..api_idx_0072.l1:
    mov ax, word [bp - 0x0010]       ; 0x1fd0
@..api_idx_0072.l2:
    mov word [bp - 0x0010], ax       ; 0x1fd3
    mov ax, 0                        ; 0x1fd6
    push ax                          ; 0x1fd9
    call thunk_17                    ; 0x1fda
    pop cx                           ; 0x1fdd
    lea ax, word [bp - 0x005e]       ; 0x1fde
    push ax                          ; 0x1fe1
    mov ax, 0x58c                    ; 0x1fe2
    push ax                          ; 0x1fe5
    call ds_app_mem_0782             ; 0x1fe6
    add sp, byte 4                   ; 0x1fe9
    lea ax, word [bp - 0x0072]       ; 0x1fec
    push ax                          ; 0x1fef
    mov ax, 0x58d                    ; 0x1ff0
    push ax                          ; 0x1ff3
    call ds_app_mem_0782             ; 0x1ff4
    add sp, byte 4                   ; 0x1ff7
    mov ax, 0x90c2                   ; 0x1ffa
    push ax                          ; 0x1ffd
    lea ax, word [bp - 0x0036]       ; 0x1ffe
    push ax                          ; 0x2001
    call aztec_strcpy                ; 0x2002
    add sp, byte 4                   ; 0x2005
    mov ax, 0x593a                   ; 0x2008
    push ax                          ; 0x200b
    lea ax, word [bp - 0x004a]       ; 0x200c
    push ax                          ; 0x200f
    call aztec_strcpy                ; 0x2010
    add sp, byte 4                   ; 0x2013
    mov word [bp - 0x0012], 1        ; 0x2016
    lea ax, word [bp - 0x0036]       ; 0x201b
    push ax                          ; 0x201e
    lea ax, word [bp - 0x004a]       ; 0x201f
    push ax                          ; 0x2022
    mov ax, 1                        ; 0x2023
    push ax                          ; 0x2026
    push ax                          ; 0x2027
    mov ax, 0                        ; 0x2028
    push ax                          ; 0x202b
    mov ax, 0x587                    ; 0x202c
    push ax                          ; 0x202f
    call api_idx_0028                ; 0x2030
    add sp, byte 0x0c                ; 0x2033
    cmp ax, strict word 2            ; 0x2036
    jne short @..api_idx_0072.l3     ; 0x2039
    mov ax, 0xffff                   ; 0x203b
    ret                              ; 0x203e
@..api_idx_0072.l3:
    mov ax, 0x3a                     ; 0x203f
    push ax                          ; 0x2042
    mov ax, 0x5912                   ; 0x2043
    push ax                          ; 0x2046
    mov ax, 0x91c6                   ; 0x2047
    push ax                          ; 0x204a
    call ds_app_2359                 ; 0x204b
    add sp, byte 6                   ; 0x204e
    mov ax, 0x3a                     ; 0x2051
    push ax                          ; 0x2054
    lea ax, word [bp - 0x004a]       ; 0x2055
    push ax                          ; 0x2058
    mov ax, 0x91da                   ; 0x2059
    push ax                          ; 0x205c
    call ds_app_2359                 ; 0x205d
    add sp, byte 6                   ; 0x2060
    lea ax, word [bp - 0x004a]       ; 0x2063
    push ax                          ; 0x2066
    mov ax, 0x91ee                   ; 0x2067
    push ax                          ; 0x206a
    call aztec_strcpy                ; 0x206b
    add sp, byte 4                   ; 0x206e
    mov ax, 0x91ee                   ; 0x2071
    push ax                          ; 0x2074
    call aztec_strlen                ; 0x2075
    pop cx                           ; 0x2078
    cmp ax, strict word 0            ; 0x2079
    jle short @..api_idx_0072.l4     ; 0x207c
    mov ax, 0x91ee                   ; 0x207e
    push ax                          ; 0x2081
    call aztec_strlen                ; 0x2082
    pop cx                           ; 0x2085
    dec ax                           ; 0x2086
    mov word [bp - 0x0002], ax       ; 0x2087
    mov bx, ax                       ; 0x208a
    cmp byte [bx - 0x6e12], 0x5c     ; 0x208c
    je short @..api_idx_0072.l4      ; 0x2091
    mov byte [bx - 0x6e11], 0x5c     ; 0x2093
    mov byte [bx - 0x6e10], 0        ; 0x2098
@..api_idx_0072.l4:
    lea ax, word [bp - 0x0036]       ; 0x209d
    push ax                          ; 0x20a0
    mov ax, 0x91ee                   ; 0x20a1
    push ax                          ; 0x20a4
    call ds_string_loc_4574          ; 0x20a5
    add sp, byte 4                   ; 0x20a8
    cmp byte [bss_5987], 1           ; 0x20ab
    jne short @..api_idx_0072.l5     ; 0x20b0
    mov ax, 0x91da                   ; 0x20b2
    push ax                          ; 0x20b5
    mov ax, 0x91c6                   ; 0x20b6
    push ax                          ; 0x20b9
    call aztec_strcmp                ; 0x20ba
    add sp, byte 4                   ; 0x20bd
    test ax, ax                      ; 0x20c0
    jne short @..api_idx_0072.l5     ; 0x20c2
    jmp near @..api_idx_0072.l11     ; 0x20c4
@..api_idx_0072.l5:
    mov ax, 0x91da                   ; 0x20c7
    push ax                          ; 0x20ca
    call aztec_strlen                ; 0x20cb
    pop cx                           ; 0x20ce
    cmp ax, strict word 0            ; 0x20cf
    jle short @..api_idx_0072.l9     ; 0x20d2
    mov ax, 0x91da                   ; 0x20d4
    push ax                          ; 0x20d7
    mov ax, 0x91c6                   ; 0x20d8
    push ax                          ; 0x20db
    call aztec_strcmp                ; 0x20dc
    add sp, byte 4                   ; 0x20df
    test ax, ax                      ; 0x20e2
    je short @..api_idx_0072.l6      ; 0x20e4
    cmp byte [bss_5987], 5           ; 0x20e6
    jne short @..api_idx_0072.l7     ; 0x20eb
@..api_idx_0072.l6:
    mov word [bp - 0x000e], 1        ; 0x20ed
@..api_idx_0072.l7:
    mov ax, 0                        ; 0x20f2
    push ax                          ; 0x20f5
    push word [bp - 0x000e]          ; 0x20f6
    mov ax, 0xffff                   ; 0x20f9
    push ax                          ; 0x20fc
    mov ax, 0x91da                   ; 0x20fd
    push ax                          ; 0x2100
    call ds_app_file_23ef            ; 0x2101
    add sp, byte 8                   ; 0x2104
    mov ax, 1                        ; 0x2107
    cmp word [bp - 0x000e], byte 0   ; 0x210a
    je short @..api_idx_0072.l8      ; 0x210e
    mov ax, 0                        ; 0x2110
@..api_idx_0072.l8:
    mov word [bp - 0x0012], ax       ; 0x2113
    jmp short @..api_idx_0072.l11    ; 0x2116
@..api_idx_0072.l9:
    cmp byte [bss_5987], 1           ; 0x2118
    jbe short @..api_idx_0072.l11    ; 0x211d
    mov word [bp - 0x000e], 1        ; 0x211f
    mov ax, 0                        ; 0x2124
    push ax                          ; 0x2127
    push word [bp - 0x000e]          ; 0x2128
    mov ax, 0xffff                   ; 0x212b
    push ax                          ; 0x212e
    mov ax, 0x91c6                   ; 0x212f
    push ax                          ; 0x2132
    call ds_app_file_23ef            ; 0x2133
    add sp, byte 8                   ; 0x2136
    mov ax, 1                        ; 0x2139
    cmp word [bp - 0x000e], byte 0   ; 0x213c
    je short @..api_idx_0072.l10     ; 0x2140
    mov ax, 0                        ; 0x2142
@..api_idx_0072.l10:
    mov word [bp - 0x0012], ax       ; 0x2145
@..api_idx_0072.l11:
    mov ax, 0xc7                     ; 0x2148
    push ax                          ; 0x214b
    mov ax, 0x13f                    ; 0x214c
    push ax                          ; 0x214f
    mov ax, 0                        ; 0x2150
    push ax                          ; 0x2153
    push ax                          ; 0x2154
    call thunk_4                     ; 0x2155
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
    lea ax, word [bp - 0x0072]       ; 0x2173
    push ax                          ; 0x2176
    call api_idx_0004                ; 0x2177
    add sp, byte 0x0e                ; 0x217a
    mov ax, 0                        ; 0x217d
    push ax                          ; 0x2180
    mov ax, 0x91ee                   ; 0x2181
    push ax                          ; 0x2184
    call aztec_open                  ; 0x2185
    add sp, byte 4                   ; 0x2188
    mov word [bp - 0x000a], ax       ; 0x218b
    cmp ax, strict word 0xffff       ; 0x218e
    jne short @..api_idx_0072.l13    ; 0x2191
    lea ax, word [bp - 0x005e]       ; 0x2193
    push ax                          ; 0x2196
    call loc_150d                    ; 0x2197
    pop cx                           ; 0x219a
    cmp word [bp - 0x000e], byte 0   ; 0x219b
    je short @..api_idx_0072.l12     ; 0x219f
    mov ax, 1                        ; 0x21a1
    push ax                          ; 0x21a4
    push word [bp - 0x0012]          ; 0x21a5
    push word [bp - 0x0010]          ; 0x21a8
    mov ax, 0x91c6                   ; 0x21ab
    push ax                          ; 0x21ae
    call ds_app_file_23ef            ; 0x21af
    add sp, byte 8                   ; 0x21b2
@..api_idx_0072.l12:
    mov ax, 0xffff                   ; 0x21b5
    ret                              ; 0x21b8
@..api_idx_0072.l13:
    mov ax, 0                        ; 0x21b9
    push ax                          ; 0x21bc
    mov ax, 0                        ; 0x21bd
    mov dx, 0                        ; 0x21c0
    push dx                          ; 0x21c3
    push ax                          ; 0x21c4
    push word [bp - 0x000a]          ; 0x21c5
    call aztec_lseek                 ; 0x21c8
    add sp, byte 8                   ; 0x21cb
    mov ax, 0x19e                    ; 0x21ce
    push ax                          ; 0x21d1
    mov ax, 0x9220                   ; 0x21d2
    push ax                          ; 0x21d5
    push word [bp - 0x000a]          ; 0x21d6
    call ds_leaf_loc_4fb6            ; 0x21d9
    add sp, byte 6                   ; 0x21dc
    mov word [bp - 0x000c], ax       ; 0x21df
    cmp ax, strict word 0            ; 0x21e2
    jg short @..api_idx_0072.l15     ; 0x21e5
    lea ax, word [bp - 0x005e]       ; 0x21e7
    push ax                          ; 0x21ea
    call loc_150d                    ; 0x21eb
    pop cx                           ; 0x21ee
    push word [bp - 0x000a]          ; 0x21ef
    call aztec_close                 ; 0x21f2
    pop cx                           ; 0x21f5
    cmp word [bp - 0x000e], byte 0   ; 0x21f6
    je short @..api_idx_0072.l14     ; 0x21fa
    mov ax, 1                        ; 0x21fc
    push ax                          ; 0x21ff
    push word [bp - 0x0012]          ; 0x2200
    push word [bp - 0x0010]          ; 0x2203
    mov ax, 0x91c6                   ; 0x2206
    push ax                          ; 0x2209
    call ds_app_file_23ef            ; 0x220a
    add sp, byte 8                   ; 0x220d
@..api_idx_0072.l14:
    mov ax, 0xffff                   ; 0x2210
    ret                              ; 0x2213
@..api_idx_0072.l15:
    mov ax, 0x6d6                    ; 0x2214
    push ax                          ; 0x2217
    call aztec_malloc                ; 0x2218
    pop cx                           ; 0x221b
    mov word [bss_93be], ax          ; 0x221c
    cmp word [bss_93be], byte 0      ; 0x221f
    jne short @..api_idx_0072.l16    ; 0x2224
    mov ax, 0x1d                     ; 0x2226
    push ax                          ; 0x2229
    call ds_app_03b8                 ; 0x222a
    pop cx                           ; 0x222d
@..api_idx_0072.l16:
    mov word [bp - 0x0008], 0        ; 0x222e
@..api_idx_0072.l17:
    mov ax, 0x542                    ; 0x2233
    push ax                          ; 0x2236
    push word [bss_93be]             ; 0x2237
    push word [bp - 0x000a]          ; 0x223b
    call ds_leaf_loc_4fb6            ; 0x223e
    add sp, byte 6                   ; 0x2241
    mov word [bp - 0x000c], ax       ; 0x2244
    cmp ax, strict word 0            ; 0x2247
    jg short @..api_idx_0072.l19     ; 0x224a
    push word [bss_93be]             ; 0x224c
    call aztec_free                  ; 0x2250
    pop cx                           ; 0x2253
    lea ax, word [bp - 0x005e]       ; 0x2254
    push ax                          ; 0x2257
    call loc_150d                    ; 0x2258
    pop cx                           ; 0x225b
    push word [bp - 0x000a]          ; 0x225c
    call aztec_close                 ; 0x225f
    pop cx                           ; 0x2262
    cmp word [bp - 0x000e], byte 0   ; 0x2263
    je short @..api_idx_0072.l18     ; 0x2267
    mov ax, 1                        ; 0x2269
    push ax                          ; 0x226c
    push word [bp - 0x0012]          ; 0x226d
    push word [bp - 0x0010]          ; 0x2270
    mov ax, 0x91c6                   ; 0x2273
    push ax                          ; 0x2276
    call ds_app_file_23ef            ; 0x2277
    add sp, byte 8                   ; 0x227a
@..api_idx_0072.l18:
    mov ax, 0xffff                   ; 0x227d
    ret                              ; 0x2280
@..api_idx_0072.l19:
    mov ax, 0x6cc                    ; 0x2281
    push ax                          ; 0x2284
    push word [bss_93be]             ; 0x2285
    push word [bp - 0x000a]          ; 0x2289
    call ds_leaf_loc_4fb6            ; 0x228c
    add sp, byte 6                   ; 0x228f
    mov word [bp - 0x000c], ax       ; 0x2292
    cmp ax, strict word 0            ; 0x2295
    jg short @..api_idx_0072.l21     ; 0x2298
    push word [bss_93be]             ; 0x229a
    call aztec_free                  ; 0x229e
    pop cx                           ; 0x22a1
    lea ax, word [bp - 0x005e]       ; 0x22a2
    push ax                          ; 0x22a5
    call loc_150d                    ; 0x22a6
    pop cx                           ; 0x22a9
    push word [bp - 0x000a]          ; 0x22aa
    call aztec_close                 ; 0x22ad
    pop cx                           ; 0x22b0
    cmp word [bp - 0x000e], byte 0   ; 0x22b1
    je short @..api_idx_0072.l20     ; 0x22b5
    mov ax, 1                        ; 0x22b7
    push ax                          ; 0x22ba
    push word [bp - 0x0012]          ; 0x22bb
    push word [bp - 0x0010]          ; 0x22be
    mov ax, 0x91c6                   ; 0x22c1
    push ax                          ; 0x22c4
    call ds_app_file_23ef            ; 0x22c5
    add sp, byte 8                   ; 0x22c8
@..api_idx_0072.l20:
    mov ax, 0xffff                   ; 0x22cb
    ret                              ; 0x22ce
@..api_idx_0072.l21:
    inc word [bp - 0x0008]           ; 0x22cf
    mov ax, word [bp - 0x0008]       ; 0x22d2
    cmp ax, strict word 0x10         ; 0x22d5
    jge short @..api_idx_0072.l22    ; 0x22d8
    jmp near @..api_idx_0072.l17     ; 0x22da
@..api_idx_0072.l22:
    push word [bss_93be]             ; 0x22dd
    call aztec_free                  ; 0x22e1
    pop cx                           ; 0x22e4
    mov ax, 0x42                     ; 0x22e5
    push ax                          ; 0x22e8
    mov ax, 0x93c0                   ; 0x22e9
    push ax                          ; 0x22ec
    push word [bp - 0x000a]          ; 0x22ed
    call ds_leaf_loc_4fb6            ; 0x22f0
    add sp, byte 6                   ; 0x22f3
    mov word [bp - 0x000c], ax       ; 0x22f6
    cmp ax, strict word 0            ; 0x22f9
    jg short @..api_idx_0072.l24     ; 0x22fc
    lea ax, word [bp - 0x005e]       ; 0x22fe
    push ax                          ; 0x2301
    call loc_150d                    ; 0x2302
    pop cx                           ; 0x2305
    push word [bp - 0x000a]          ; 0x2306
    call aztec_close                 ; 0x2309
    pop cx                           ; 0x230c
    cmp word [bp - 0x000e], byte 0   ; 0x230d
    je short @..api_idx_0072.l23     ; 0x2311
    mov ax, 1                        ; 0x2313
    push ax                          ; 0x2316
    push word [bp - 0x0012]          ; 0x2317
    push word [bp - 0x0010]          ; 0x231a
    mov ax, 0x91c6                   ; 0x231d
    push ax                          ; 0x2320
    call ds_app_file_23ef            ; 0x2321
    add sp, byte 8                   ; 0x2324
@..api_idx_0072.l23:
    mov ax, 0xffff                   ; 0x2327
    ret                              ; 0x232a
@..api_idx_0072.l24:
    mov word [bss_69c8], 0           ; 0x232b
    mov word [bp - 0x0002], 0        ; 0x2331
    jmp near loc_2db5                ; 0x2336
loc_2339:
    mov ax, 0x1b0                    ; 0x2339
    push ax                          ; 0x233c
    mov ax, 0x9402                   ; 0x233d
    push ax                          ; 0x2340
    push word [bp - 0x000a]          ; 0x2341
    call ds_leaf_loc_4fb6            ; 0x2344
    add sp, byte 6                   ; 0x2347
    mov word [bp - 0x000c], ax       ; 0x234a
    cmp ax, strict word 0            ; 0x234d
    jg short loc_237f                ; 0x2350
    lea ax, word [bp - 0x005e]       ; 0x2352
    push ax                          ; 0x2355
    call loc_150d                    ; 0x2356
    pop cx                           ; 0x2359
    push word [bp - 0x000a]          ; 0x235a
    call aztec_close                 ; 0x235d
    pop cx                           ; 0x2360
    cmp word [bp - 0x000e], byte 0   ; 0x2361
    je short loc_237b                ; 0x2365
    mov ax, 1                        ; 0x2367
    push ax                          ; 0x236a
    push word [bp - 0x0012]          ; 0x236b
    push word [bp - 0x0010]          ; 0x236e
    mov ax, 0x91c6                   ; 0x2371
    push ax                          ; 0x2374
    call ds_app_file_23ef            ; 0x2375
    add sp, byte 8                   ; 0x2378
loc_237b:
    mov ax, 0xffff                   ; 0x237b
    ret                              ; 0x237e
loc_237f:
    push word [bss_69c8]             ; 0x237f
    call api_idx_0006                ; 0x2383
    pop cx                           ; 0x2386
    mov cx, word [bss_69c8]          ; 0x2387
    shl cx, 1                        ; 0x238b
    mov bx, cx                       ; 0x238d
    mov word [bx + 0x69bc], ax       ; 0x238f
    mov ax, 0x248                    ; 0x2393
    imul word [bss_69c8]             ; 0x2396
    add ax, 0x5bf4                   ; 0x239a
    mov word [bp - 0x0014], ax       ; 0x239d
    mov ax, word [bss_9426]          ; 0x23a0
    push ax                          ; 0x23a3
    cmp ax, strict word 5            ; 0x23a4
    pop ax                           ; 0x23a7
    jle short loc_23ad               ; 0x23a8
    mov ax, 5                        ; 0x23aa
loc_23ad:
    mov bx, word [bp - 0x0014]       ; 0x23ad
    mov word [bx + 0x24], ax         ; 0x23b0
    mov ax, 0x9402                   ; 0x23b3
    push ax                          ; 0x23b6
    push word [bp - 0x0014]          ; 0x23b7
    call aztec_strcpy                ; 0x23ba
    add sp, byte 4                   ; 0x23bd
    mov ax, word [bss_940a]          ; 0x23c0
    mov dx, word [bss_940c]          ; 0x23c3
    mov bx, word [bp - 0x0014]       ; 0x23c7
    mov word [bx + 0xa], dx          ; 0x23ca
    mov word [bx + 0x8], ax          ; 0x23cd
    mov bx, word [bp - 0x0014]       ; 0x23d0
    mov word [bx + 0x12], 0          ; 0x23d3
    mov word [bx + 0x10], 0          ; 0x23d8
    mov bx, word [bp - 0x0014]       ; 0x23dd
    mov word [bx + 0x16], 0          ; 0x23e0
    mov word [bx + 0x14], 0          ; 0x23e5
    mov word [bp - 0x0004], 0        ; 0x23ea
loc_23ef:
    mov bx, word [bp - 0x0004]       ; 0x23ef
    mov al, byte [bx - 0x6ad2]       ; 0x23f2
    mov si, bx                       ; 0x23f6
    mov bx, word [bp - 0x0014]       ; 0x23f8
    mov byte [bx + si + 0x170], al   ; 0x23fb
    cmp word [bss_9426], byte 5      ; 0x23ff
    jle short loc_2431               ; 0x2404
    mov bx, word [bp - 0x0014]       ; 0x2406
    mov si, word [bp - 0x0004]       ; 0x2409
    cmp byte [bx + si + 0x170], 0xe  ; 0x240c
    jbe short loc_2431               ; 0x2411
    mov al, byte [bx + si + 0x170]   ; 0x2413
    sub ah, ah                       ; 0x2417
    push ax                          ; 0x2419
    mov ax, 4                        ; 0x241a
    push ax                          ; 0x241d
    call ds_app_09f0                 ; 0x241e
    pop cx                           ; 0x2421
    mov cx, ax                       ; 0x2422
    pop ax                           ; 0x2424
    sub ax, cx                       ; 0x2425
    mov bx, word [bp - 0x0014]       ; 0x2427
    mov si, word [bp - 0x0004]       ; 0x242a
    mov byte [bx + si + 0x170], al   ; 0x242d
loc_2431:
    inc word [bp - 0x0004]           ; 0x2431
    mov ax, word [bp - 0x0004]       ; 0x2434
    cmp ax, strict word 8            ; 0x2437
    jl short loc_23ef                ; 0x243a
    mov ax, word [bss_941c]          ; 0x243c
    cwd                              ; 0x243f
    idiv word [bss_9426]             ; 0x2440
    mov bx, word [bp - 0x0014]       ; 0x2444
    mov cx, word [bx + 0x24]         ; 0x2447
    imul cx                          ; 0x244a
    mov word [bx + 0x1a], ax         ; 0x244c
    mov bx, word [bp - 0x0014]       ; 0x244f
    cmp word [bx + 0x1a], byte 7     ; 0x2452
    jge short loc_245d               ; 0x2456
    mov word [bx + 0x1a], 7          ; 0x2458
loc_245d:
    mov bx, word [bp - 0x0014]       ; 0x245d
    mov ax, word [bx + 0x24]         ; 0x2460
    shl ax, 1                        ; 0x2463
    shl ax, 1                        ; 0x2465
    shl ax, 1                        ; 0x2467
    add ax, strict word 8            ; 0x2469
    mov cx, word [bx + 0x1a]         ; 0x246c
    cmp ax, cx                       ; 0x246f
    jge short loc_248c               ; 0x2471
    mov ax, 8                        ; 0x2473
    push ax                          ; 0x2476
    call ds_app_09f0                 ; 0x2477
    pop cx                           ; 0x247a
    mov bx, word [bp - 0x0014]       ; 0x247b
    mov cx, word [bx + 0x24]         ; 0x247e
    shl cx, 1                        ; 0x2481
    shl cx, 1                        ; 0x2483
    shl cx, 1                        ; 0x2485
    add ax, cx                       ; 0x2487
    mov word [bx + 0x1a], ax         ; 0x2489
loc_248c:
    mov bx, word [bp - 0x0014]       ; 0x248c
    mov ax, word [bx + 0x1a]         ; 0x248f
    mov word [bx + 0x18], ax         ; 0x2492
    mov bx, word [bp - 0x0014]       ; 0x2495
    mov al, byte [bx + 0x170]        ; 0x2498
    sub ah, ah                       ; 0x249c
    mov word [bp - 0x001a], ax       ; 0x249e
    mov al, byte [bx + 0x173]        ; 0x24a1
    sub ah, ah                       ; 0x24a5
    mov word [bp - 0x001c], ax       ; 0x24a7
    shl ax, 1                        ; 0x24aa
    add ax, word [bp - 0x001a]       ; 0x24ac
    mov cx, 3                        ; 0x24af
    imul cx                          ; 0x24b2
    mov word [bp - 0x001e], ax       ; 0x24b4
    mov ax, word [bp - 0x001a]       ; 0x24b7
    shl ax, 1                        ; 0x24ba
    add ax, word [bp - 0x001c]       ; 0x24bc
    imul cx                          ; 0x24bf
    mov word [bp - 0x0020], ax       ; 0x24c1
    cmp word [bp - 0x001c], byte 0x0f ; 0x24c4
    jle short loc_24d0               ; 0x24c8
    mov ax, word [bp - 0x001c]       ; 0x24ca
    add word [bp - 0x001e], ax       ; 0x24cd
loc_24d0:
    cmp word [bp - 0x001c], byte 0x11 ; 0x24d0
    jle short loc_24dc               ; 0x24d4
    mov ax, word [bp - 0x001c]       ; 0x24d6
    add word [bp - 0x001e], ax       ; 0x24d9
loc_24dc:
    cmp word [bp - 0x001a], byte 0x0f ; 0x24dc
    jle short loc_24e8               ; 0x24e0
    mov ax, word [bp - 0x001a]       ; 0x24e2
    add word [bp - 0x0020], ax       ; 0x24e5
loc_24e8:
    cmp word [bp - 0x001a], byte 0x11 ; 0x24e8
    jle short loc_24f4               ; 0x24ec
    mov ax, word [bp - 0x001a]       ; 0x24ee
    add word [bp - 0x0020], ax       ; 0x24f1
loc_24f4:
    mov ax, 5                        ; 0x24f4
    imul word [bx + 0x24]            ; 0x24f7
    add word [bp - 0x001e], ax       ; 0x24fa
    mov ax, word [bp - 0x001e]       ; 0x24fd
    mov word [bx + 0x1c], ax         ; 0x2500
    mov ax, word [bp - 0x001e]       ; 0x2503
    mov bx, word [bp - 0x0014]       ; 0x2506
    mov word [bx + 0x1e], ax         ; 0x2509
    mov bx, word [bp - 0x0014]       ; 0x250c
    mov word [bx + 0x20], 0          ; 0x250f
    mov ax, 0xf                      ; 0x2514
    imul word [bp - 0x0020]          ; 0x2517
    mov bx, word [bp - 0x0014]       ; 0x251a
    mov word [bx + 0x22], ax         ; 0x251d
    mov bx, word [bp - 0x0014]       ; 0x2520
    cmp byte [bx + 0x237], 5         ; 0x2523
    jne short loc_2535               ; 0x2528
    mov ax, word [bx + 0x22]         ; 0x252a
    shl ax, 1                        ; 0x252d
    cwd                              ; 0x252f
    idiv cx                          ; 0x2530
    mov word [bx + 0x22], ax         ; 0x2532
loc_2535:
    mov ax, word [bss_9428]          ; 0x2535
    mov bx, word [bp - 0x0014]       ; 0x2538
    mov word [bx + 0x26], ax         ; 0x253b
    mov word [bp - 0x0004], 0        ; 0x253e
loc_2543:
    mov ax, word [bp - 0x0004]       ; 0x2543
    shl ax, 1                        ; 0x2546
    shl ax, 1                        ; 0x2548
    mov bx, ax                       ; 0x254a
    mov ax, word [bx - 0x6bd4]       ; 0x254c
    cwd                              ; 0x2550
    idiv word [bss_9426]             ; 0x2551
    mov bx, word [bp - 0x0014]       ; 0x2555
    mov cx, word [bx + 0x24]         ; 0x2558
    imul cx                          ; 0x255b
    mov cx, word [bp - 0x0004]       ; 0x255d
    shl cx, 1                        ; 0x2560
    shl cx, 1                        ; 0x2562
    mov si, cx                       ; 0x2564
    mov word [bx + si + 0x2a], ax    ; 0x2566
    mov bx, word [bp - 0x0014]       ; 0x2569
    mov ax, word [bx + 0x24]         ; 0x256c
    mov cx, 7                        ; 0x256f
    imul cx                          ; 0x2572
    add ax, strict word 7            ; 0x2574
    mov cx, word [bp - 0x0004]       ; 0x2577
    shl cx, 1                        ; 0x257a
    shl cx, 1                        ; 0x257c
    mov si, cx                       ; 0x257e
    mov cx, word [bx + si + 0x2a]    ; 0x2580
    cmp ax, cx                       ; 0x2583
    jge short loc_25ac               ; 0x2585
    mov ax, 7                        ; 0x2587
    push ax                          ; 0x258a
    call ds_app_09f0                 ; 0x258b
    pop cx                           ; 0x258e
    push ax                          ; 0x258f
    mov bx, word [bp - 0x0014]       ; 0x2590
    mov ax, word [bx + 0x24]         ; 0x2593
    mov cx, 7                        ; 0x2596
    imul cx                          ; 0x2599
    mov cx, ax                       ; 0x259b
    pop ax                           ; 0x259d
    add ax, cx                       ; 0x259e
    mov cx, word [bp - 0x0004]       ; 0x25a0
    shl cx, 1                        ; 0x25a3
    shl cx, 1                        ; 0x25a5
    mov si, cx                       ; 0x25a7
    mov word [bx + si + 0x2a], ax    ; 0x25a9
loc_25ac:
    mov ax, word [bp - 0x0004]       ; 0x25ac
    shl ax, 1                        ; 0x25af
    shl ax, 1                        ; 0x25b1
    mov si, ax                       ; 0x25b3
    mov bx, word [bp - 0x0014]       ; 0x25b5
    mov ax, word [bx + si + 0x2a]    ; 0x25b8
    mov word [bx + si + 0x28], ax    ; 0x25bb
    inc word [bp - 0x0004]           ; 0x25be
    mov ax, word [bp - 0x0004]       ; 0x25c1
    cmp ax, strict word 6            ; 0x25c4
    jge short loc_25cc               ; 0x25c7
    jmp near loc_2543                ; 0x25c9
loc_25cc:
    mov word [bp - 0x0004], 0        ; 0x25cc
loc_25d1:
    mov ax, word [bp - 0x0004]       ; 0x25d1
    mov word [bp - 0x001a], ax       ; 0x25d4
    jmp near loc_268e                ; 0x25d7
