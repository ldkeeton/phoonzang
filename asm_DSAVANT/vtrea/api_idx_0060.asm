; auto-generated
api_idx_0060:
    mov ax, 0xffa0                   ; 0x1fd5
    call aztec_csav                  ; 0x1fd8
    mov word [bss_91fe], 0           ; 0x1fdb
    mov ax, 0x64                     ; 0x1fe1
    push ax                          ; 0x1fe4
    call ds_app_09f0                 ; 0x1fe5
    pop cx                           ; 0x1fe8
    inc ax                           ; 0x1fe9
    mov word [bp - 0x0002], ax       ; 0x1fea
    mov word [bp - 0x0004], 0        ; 0x1fed
@..api_idx_0060.l1:
    cmp word [bp - 0x0002], byte 0   ; 0x1ff2
    jle short @..api_idx_0060.l4     ; 0x1ff6
    cmp word [bp - 0x0004], byte 0x64 ; 0x1ff8
    jge short @..api_idx_0060.l4     ; 0x1ffc
    inc word [bss_91fe]              ; 0x1ffe
    mov ax, word [bss_91fe]          ; 0x2002
    cmp ax, strict word 0x12         ; 0x2005
    jl short @..api_idx_0060.l2      ; 0x2008
    mov word [bss_91fe], 0           ; 0x200a
    inc word [bp - 0x0004]           ; 0x2010
@..api_idx_0060.l2:
    push word [bss_91fe]             ; 0x2013
    mov ax, word [bp + 0x4]          ; 0x2017
    add ax, strict word 0x30         ; 0x201a
    push ax                          ; 0x201d
    call ds_leaf_loc_3ebb            ; 0x201e
    add sp, byte 4                   ; 0x2021
    test ax, ax                      ; 0x2024
    je short @..api_idx_0060.l3      ; 0x2026
    dec word [bp - 0x0002]           ; 0x2028
@..api_idx_0060.l3:
    jmp short @..api_idx_0060.l1     ; 0x202b
@..api_idx_0060.l4:
    mov ax, 0x91d6                   ; 0x202d
    push ax                          ; 0x2030
    mov ax, word [bss_91fe]          ; 0x2031
    add ax, 0x14b4                   ; 0x2034
    push ax                          ; 0x2037
    call ds_app_mem_0782             ; 0x2038
    add sp, byte 4                   ; 0x203b
    mov ax, 0                        ; 0x203e
    push ax                          ; 0x2041
    mov ax, 0x30                     ; 0x2042
    push ax                          ; 0x2045
    mov ax, 0x9200                   ; 0x2046
    push ax                          ; 0x2049
    call aztec_setmem                ; 0x204a
    add sp, byte 6                   ; 0x204d
    mov ax, word [bss_91fe]          ; 0x2050
    shl ax, 1                        ; 0x2053
    mov bx, ax                       ; 0x2055
    mov word [bx - 0x6e00], 1        ; 0x2057
    mov ax, 0                        ; 0x205d
    push ax                          ; 0x2060
    mov ax, 0x10                     ; 0x2061
    push ax                          ; 0x2064
    mov ax, 0x9230                   ; 0x2065
    push ax                          ; 0x2068
    call aztec_setmem                ; 0x2069
    add sp, byte 6                   ; 0x206c
    mov word [bp - 0x002e], 0        ; 0x206f
    mov ax, 0                        ; 0x2074
    push ax                          ; 0x2077
    mov ax, 0x20                     ; 0x2078
    push ax                          ; 0x207b
    lea ax, word [bp - 0x002c]       ; 0x207c
    push ax                          ; 0x207f
    call aztec_setmem                ; 0x2080
    add sp, byte 6                   ; 0x2083
    mov word [bp - 0x0002], 0        ; 0x2086
@..api_idx_0060.l5:
    mov ax, word [bss_91fe]          ; 0x208b
    mov cx, 4                        ; 0x208e
    shl ax, cl                       ; 0x2091
    mov cx, word [bp - 0x0002]       ; 0x2093
    shl cx, 1                        ; 0x2096
    add ax, cx                       ; 0x2098
    mov bx, ax                       ; 0x209a
    cmp word [bx + 0x99a], strict word 0xff ; 0x209c
    je short @..api_idx_0060.l6      ; 0x20a2
    mov ax, word [bx + 0x99a]        ; 0x20a4
    shl ax, 1                        ; 0x20a8
    mov bx, ax                       ; 0x20aa
    add bx, bp                       ; 0x20ac
    mov word [bx - 0x002c], 1        ; 0x20ae
    inc word [bp - 0x002e]           ; 0x20b3
@..api_idx_0060.l6:
    inc word [bp - 0x0002]           ; 0x20b6
    mov ax, word [bp - 0x0002]       ; 0x20b9
    cmp ax, strict word 8            ; 0x20bc
    jl short @..api_idx_0060.l5      ; 0x20bf
    mov word [bp - 0x000a], 0        ; 0x20c1
@..api_idx_0060.l7:
    mov ax, 1                        ; 0x20c6
    cmp word [bp - 0x000a], byte 0   ; 0x20c9
    jne short @..api_idx_0060.l8     ; 0x20cd
    mov ax, word [bss_91fe]          ; 0x20cf
    shl ax, 1                        ; 0x20d2
    mov bx, ax                       ; 0x20d4
    mov ax, word [bx + 0x96a]        ; 0x20d6
@..api_idx_0060.l8:
    mov word [bp - 0x000c], ax       ; 0x20da
    mov word [bp - 0x0002], ax       ; 0x20dd
    jmp near @..api_idx_0060.l17     ; 0x20e0
@..api_idx_0060.l9:
    mov ax, word [bp - 0x0002]       ; 0x20e3
    shl ax, 1                        ; 0x20e6
    mov bx, ax                       ; 0x20e8
    cmp word [bx - 0x6e00], byte 0   ; 0x20ea
    je short @..api_idx_0060.l10     ; 0x20ef
    jmp near @..api_idx_0060.l16     ; 0x20f1
@..api_idx_0060.l10:
    cmp word [bp - 0x000a], byte 2   ; 0x20f4
    je short @..api_idx_0060.l11     ; 0x20f8
    push word [bp - 0x0002]          ; 0x20fa
    mov ax, word [bp + 0x4]          ; 0x20fd
    add ax, strict word 0x30         ; 0x2100
    push ax                          ; 0x2103
    call ds_leaf_loc_3ebb            ; 0x2104
    add sp, byte 4                   ; 0x2107
    test ax, ax                      ; 0x210a
    jne short @..api_idx_0060.l11    ; 0x210c
    jmp near @..api_idx_0060.l16     ; 0x210e
@..api_idx_0060.l11:
    mov ax, word [bp - 0x0002]       ; 0x2111
    shl ax, 1                        ; 0x2114
    mov bx, ax                       ; 0x2116
    add bx, bp                       ; 0x2118
    mov word [bx - 0x005e], 0        ; 0x211a
    mov word [bp - 0x0006], 0        ; 0x211f
@..api_idx_0060.l12:
    mov ax, word [bp - 0x0002]       ; 0x2124
    mov cx, 4                        ; 0x2127
    shl ax, cl                       ; 0x212a
    mov cx, word [bp - 0x0006]       ; 0x212c
    shl cx, 1                        ; 0x212f
    add ax, cx                       ; 0x2131
    mov bx, ax                       ; 0x2133
    cmp word [bx + 0x99a], strict word 0xff ; 0x2135
    je short @..api_idx_0060.l13     ; 0x213b
    mov ax, word [bx + 0x99a]        ; 0x213d
    shl ax, 1                        ; 0x2141
    mov bx, ax                       ; 0x2143
    add bx, bp                       ; 0x2145
    cmp word [bx - 0x002c], byte 0   ; 0x2147
    jne short @..api_idx_0060.l13    ; 0x214b
    mov ax, word [bp - 0x0002]       ; 0x214d
    shl ax, 1                        ; 0x2150
    mov bx, ax                       ; 0x2152
    add bx, bp                       ; 0x2154
    inc word [bx - 0x005e]           ; 0x2156
@..api_idx_0060.l13:
    inc word [bp - 0x0006]           ; 0x2159
    mov ax, word [bp - 0x0006]       ; 0x215c
    cmp ax, strict word 8            ; 0x215f
    jl short @..api_idx_0060.l12     ; 0x2162
    mov ax, word [bp - 0x0002]       ; 0x2164
    shl ax, 1                        ; 0x2167
    mov bx, ax                       ; 0x2169
    add bx, bp                       ; 0x216b
    mov ax, word [bx - 0x005e]       ; 0x216d
    add ax, word [bp - 0x002e]       ; 0x2170
    cmp ax, strict word 8            ; 0x2173
    jg short @..api_idx_0060.l16     ; 0x2176
    mov ax, word [bp - 0x0002]       ; 0x2178
    shl ax, 1                        ; 0x217b
    mov bx, ax                       ; 0x217d
    mov word [bx - 0x6e00], 1        ; 0x217f
    mov word [bp - 0x0006], 0        ; 0x2185
@..api_idx_0060.l14:
    mov ax, word [bp - 0x0002]       ; 0x218a
    mov cx, 4                        ; 0x218d
    shl ax, cl                       ; 0x2190
    mov cx, word [bp - 0x0006]       ; 0x2192
    shl cx, 1                        ; 0x2195
    add ax, cx                       ; 0x2197
    mov bx, ax                       ; 0x2199
    cmp word [bx + 0x99a], strict word 0xff ; 0x219b
    je short @..api_idx_0060.l15     ; 0x21a1
    mov ax, word [bx + 0x99a]        ; 0x21a3
    shl ax, 1                        ; 0x21a7
    mov bx, ax                       ; 0x21a9
    add bx, bp                       ; 0x21ab
    cmp word [bx - 0x002c], byte 0   ; 0x21ad
    jne short @..api_idx_0060.l15    ; 0x21b1
    mov word [bx - 0x002c], 1        ; 0x21b3
    inc word [bp - 0x002e]           ; 0x21b8
@..api_idx_0060.l15:
    inc word [bp - 0x0006]           ; 0x21bb
    mov ax, word [bp - 0x0006]       ; 0x21be
    cmp ax, strict word 8            ; 0x21c1
    jl short @..api_idx_0060.l14     ; 0x21c4
@..api_idx_0060.l16:
    inc word [bp - 0x0002]           ; 0x21c6
@..api_idx_0060.l17:
    cmp word [bp - 0x0002], byte 0x12 ; 0x21c9
    jge short @..api_idx_0060.l18    ; 0x21cd
    jmp near @..api_idx_0060.l9      ; 0x21cf
@..api_idx_0060.l18:
    inc word [bp - 0x000a]           ; 0x21d2
    mov ax, word [bp - 0x000a]       ; 0x21d5
    cmp ax, strict word 3            ; 0x21d8
    jge short @..api_idx_0060.l19    ; 0x21db
    jmp near @..api_idx_0060.l7      ; 0x21dd
@..api_idx_0060.l19:
    cmp word [bp - 0x002e], byte 8   ; 0x21e0
    jge short @..api_idx_0060.l22    ; 0x21e4
    mov word [bp - 0x0002], 0        ; 0x21e6
@..api_idx_0060.l20:
    cmp word [bp - 0x002e], byte 8   ; 0x21eb
    jge short @..api_idx_0060.l22    ; 0x21ef
    mov ax, word [bp - 0x0002]       ; 0x21f1
    shl ax, 1                        ; 0x21f4
    mov bx, ax                       ; 0x21f6
    add bx, bp                       ; 0x21f8
    cmp word [bx - 0x002c], byte 0   ; 0x21fa
    jne short @..api_idx_0060.l21    ; 0x21fe
    mov word [bx - 0x002c], 1        ; 0x2200
    inc word [bp - 0x002e]           ; 0x2205
@..api_idx_0060.l21:
    inc word [bp - 0x0002]           ; 0x2208
    jmp short @..api_idx_0060.l20    ; 0x220b
@..api_idx_0060.l22:
    mov word [bp - 0x0004], 0        ; 0x220d
    mov word [bp - 0x0002], 0        ; 0x2212
@..api_idx_0060.l23:
    mov ax, word [bp - 0x0002]       ; 0x2217
    shl ax, 1                        ; 0x221a
    mov bx, ax                       ; 0x221c
    add bx, bp                       ; 0x221e
    cmp word [bx - 0x002c], byte 0   ; 0x2220
    je short @..api_idx_0060.l24     ; 0x2224
    mov ax, word [bp - 0x0002]       ; 0x2226
    mov cx, word [bp - 0x0004]       ; 0x2229
    shl cx, 1                        ; 0x222c
    mov bx, cx                       ; 0x222e
    mov word [bx - 0x6dc0], ax       ; 0x2230
    inc word [bp - 0x0004]           ; 0x2234
@..api_idx_0060.l24:
    inc word [bp - 0x0002]           ; 0x2237
    mov ax, word [bp - 0x0002]       ; 0x223a
    cmp ax, strict word 0x10         ; 0x223d
    jl short @..api_idx_0060.l23     ; 0x2240
    mov word [bp - 0x0008], 0        ; 0x2242
    mov word [bss_9200], 0           ; 0x2247
    mov word [bss_9250], 0xffff      ; 0x224d
    mov word [bp - 0x0002], 1        ; 0x2253
@..api_idx_0060.l25:
    mov ax, word [bp - 0x0002]       ; 0x2258
    shl ax, 1                        ; 0x225b
    mov bx, ax                       ; 0x225d
    cmp word [bx - 0x6e00], byte 0   ; 0x225f
    jne short @..api_idx_0060.l26    ; 0x2264
    jmp near @..api_idx_0060.l32     ; 0x2266
@..api_idx_0060.l26:
    mov ax, 0x90bb                   ; 0x2269
    push ax                          ; 0x226c
    mov ax, 0xa                      ; 0x226d
    imul word [bp - 0x0008]          ; 0x2270
    add ax, 0x9252                   ; 0x2273
    push ax                          ; 0x2276
    call aztec_strcpy                ; 0x2277
    add sp, byte 4                   ; 0x227a
    mov word [bp - 0x0004], 0        ; 0x227d
@..api_idx_0060.l27:
    mov ax, word [bp - 0x0002]       ; 0x2282
    mov cx, 4                        ; 0x2285
    shl ax, cl                       ; 0x2288
    mov cx, word [bp - 0x0004]       ; 0x228a
    shl cx, 1                        ; 0x228d
    add ax, cx                       ; 0x228f
    mov bx, ax                       ; 0x2291
    cmp word [bx + 0x99a], strict word 0xff ; 0x2293
    je short @..api_idx_0060.l30     ; 0x2299
    mov word [bp - 0x0006], 0        ; 0x229b
@..api_idx_0060.l28:
    mov ax, word [bp - 0x0002]       ; 0x22a0
    mov cx, 4                        ; 0x22a3
    shl ax, cl                       ; 0x22a6
    mov cx, word [bp - 0x0004]       ; 0x22a8
    shl cx, 1                        ; 0x22ab
    add ax, cx                       ; 0x22ad
    mov bx, ax                       ; 0x22af
    mov ax, word [bx + 0x99a]        ; 0x22b1
    mov cx, word [bp - 0x0006]       ; 0x22b5
    shl cx, 1                        ; 0x22b8
    mov bx, cx                       ; 0x22ba
    mov cx, word [bx - 0x6dc0]       ; 0x22bc
    cmp ax, cx                       ; 0x22c0
    jne short @..api_idx_0060.l29    ; 0x22c2
    mov ax, word [bp - 0x0004]       ; 0x22c4
    add ax, strict word 0x31         ; 0x22c7
    push ax                          ; 0x22ca
    mov ax, 0xa                      ; 0x22cb
    imul word [bp - 0x0008]          ; 0x22ce
    mov cx, ax                       ; 0x22d1
    add ax, word [bp - 0x0006]       ; 0x22d3
    mov bx, ax                       ; 0x22d6
    pop ax                           ; 0x22d8
    mov byte [bx - 0x6dae], al       ; 0x22d9
@..api_idx_0060.l29:
    inc word [bp - 0x0006]           ; 0x22dd
    mov ax, word [bp - 0x0006]       ; 0x22e0
    cmp ax, strict word 8            ; 0x22e3
    jl short @..api_idx_0060.l28     ; 0x22e6
@..api_idx_0060.l30:
    inc word [bp - 0x0004]           ; 0x22e8
    mov ax, word [bp - 0x0004]       ; 0x22eb
    cmp ax, strict word 8            ; 0x22ee
    jl short @..api_idx_0060.l27     ; 0x22f1
    mov ax, word [bp - 0x0002]       ; 0x22f3
    mov cx, word [bp - 0x0008]       ; 0x22f6
    shl cx, 1                        ; 0x22f9
    mov bx, cx                       ; 0x22fb
    mov word [bx - 0x6cbe], ax       ; 0x22fd
    cmp ax, word [bss_91fe]          ; 0x2301
    jne short @..api_idx_0060.l31    ; 0x2305
    mov ax, word [bp - 0x0008]       ; 0x2307
    mov word [bss_9250], ax          ; 0x230a
@..api_idx_0060.l31:
    inc word [bp - 0x0008]           ; 0x230d
@..api_idx_0060.l32:
    inc word [bp - 0x0002]           ; 0x2310
    mov ax, word [bp - 0x0002]       ; 0x2313
    cmp ax, strict word 0x12         ; 0x2316
    jge short @..api_idx_0060.l33    ; 0x2319
    jmp near @..api_idx_0060.l25     ; 0x231b
@..api_idx_0060.l33:
    mov word [bp - 0x0002], 0        ; 0x231e
    jmp near @..api_idx_0060.l44     ; 0x2323
@..api_idx_0060.l34:
    mov ax, 0x90c4                   ; 0x2326
    push ax                          ; 0x2329
    mov ax, 0xa                      ; 0x232a
    imul word [bp - 0x0002]          ; 0x232d
    add ax, 0x9372                   ; 0x2330
    push ax                          ; 0x2333
    call aztec_strcpy                ; 0x2334
    add sp, byte 4                   ; 0x2337
    mov word [bp - 0x0006], 0xfffb   ; 0x233a
    mov ax, 0x248                    ; 0x233f
    imul word [bp - 0x0002]          ; 0x2342
    mov bx, ax                       ; 0x2345
    mov al, byte [bx + 0x5e2d]       ; 0x2347
    sub ah, ah                       ; 0x234b
    jmp short @..api_idx_0060.l37    ; 0x234d
@..api_idx_0060.l35:
    mov word [bp - 0x0006], 0x14     ; 0x234f
    jmp short @..api_idx_0060.l38    ; 0x2354
@..api_idx_0060.l36:
    mov word [bp - 0x0006], 0xf      ; 0x2356
    jmp short @..api_idx_0060.l38    ; 0x235b
@..api_idx_0060.l37:
    cmp ax, strict word 3            ; 0x235d
    je short @..api_idx_0060.l35     ; 0x2360
    cmp ax, strict word 4            ; 0x2362
    je short @..api_idx_0060.l36     ; 0x2365
    cmp ax, strict word 6            ; 0x2367
    je short @..api_idx_0060.l36     ; 0x236a
    cmp ax, strict word 0xd          ; 0x236c
    je short @..api_idx_0060.l36     ; 0x236f
@..api_idx_0060.l38:
    mov ax, 0x5a                     ; 0x2371
    push ax                          ; 0x2374
    mov ax, 0                        ; 0x2375
    push ax                          ; 0x2378
    mov ax, 0x248                    ; 0x2379
    imul word [bp - 0x0002]          ; 0x237c
    mov bx, ax                       ; 0x237f
    mov al, byte [bx + 0x5d7c]       ; 0x2381
    sub ah, ah                       ; 0x2385
    mov cx, 2                        ; 0x2387
    cwd                              ; 0x238a
    idiv cx                          ; 0x238b
    mov cx, word [bx + 0x5c18]       ; 0x238d
    add ax, cx                       ; 0x2391
    push ax                          ; 0x2393
    mov bx, word [bp + 0x4]          ; 0x2394
    mov al, byte [bx + 0x34]         ; 0x2397
    sub ah, ah                       ; 0x239a
    mov cx, ax                       ; 0x239c
    pop ax                           ; 0x239e
    sub ax, cx                       ; 0x239f
    add ax, word [bp - 0x0006]       ; 0x23a1
    push ax                          ; 0x23a4
    call ds_app_0a09                 ; 0x23a5
    add sp, byte 6                   ; 0x23a8
    mov word [bp - 0x0060], ax       ; 0x23ab
    mov word [bp - 0x0004], 0        ; 0x23ae
@..api_idx_0060.l39:
    mov ax, 0x64                     ; 0x23b3
    push ax                          ; 0x23b6
    call ds_app_09f0                 ; 0x23b7
    pop cx                           ; 0x23ba
    cmp ax, word [bp - 0x0060]       ; 0x23bb
    jge short @..api_idx_0060.l43    ; 0x23be
    cmp word [bss_91fe], byte 0      ; 0x23c0
    jle short @..api_idx_0060.l42    ; 0x23c5
    cmp word [bss_9250], byte 0xff   ; 0x23c7
    je short @..api_idx_0060.l42     ; 0x23cc
    mov ax, 0xa                      ; 0x23ce
    imul word [bss_9250]             ; 0x23d1
    add ax, word [bp - 0x0004]       ; 0x23d5
    mov bx, ax                       ; 0x23d8
    cmp byte [bx - 0x6dae], 0x2d     ; 0x23da
    jne short @..api_idx_0060.l40    ; 0x23df
    mov ax, 0x2d                     ; 0x23e1
    jmp short @..api_idx_0060.l41    ; 0x23e4
@..api_idx_0060.l40:
    mov ax, 0x2a                     ; 0x23e6
@..api_idx_0060.l41:
    push ax                          ; 0x23e9
    mov ax, 0xa                      ; 0x23ea
    imul word [bp - 0x0002]          ; 0x23ed
    mov cx, ax                       ; 0x23f0
    add ax, word [bp - 0x0004]       ; 0x23f2
    mov bx, ax                       ; 0x23f5
    pop ax                           ; 0x23f7
    mov byte [bx - 0x6c8e], al       ; 0x23f8
    jmp short @..api_idx_0060.l43    ; 0x23fc
@..api_idx_0060.l42:
    mov ax, 0xa                      ; 0x23fe
    imul word [bp - 0x0002]          ; 0x2401
    add ax, word [bp - 0x0004]       ; 0x2404
    mov bx, ax                       ; 0x2407
    mov byte [bx - 0x6c8e], 0x2d     ; 0x2409
@..api_idx_0060.l43:
    inc word [bp - 0x0004]           ; 0x240e
    mov ax, word [bp - 0x0004]       ; 0x2411
    cmp ax, strict word 8            ; 0x2414
    jl short @..api_idx_0060.l39     ; 0x2417
    inc word [bp - 0x0002]           ; 0x2419
@..api_idx_0060.l44:
    mov ax, word [bp - 0x0002]       ; 0x241c
    cmp ax, word [bss_69c8]          ; 0x241f
    jge short @..api_idx_0060.l45    ; 0x2423
    jmp near @..api_idx_0060.l34     ; 0x2425
@..api_idx_0060.l45:
    mov ax, word [bp - 0x0008]       ; 0x2428
    ret                              ; 0x242b
loc_242c:
    mov ax, 0                        ; 0x242c
    call aztec_csav                  ; 0x242f
    mov ax, 0xc0                     ; 0x2432
    cmp word [bp + 0xc], byte 0      ; 0x2435
    je short @..loc_242c.l1          ; 0x2439
    mov ax, 0xc2                     ; 0x243b
@..loc_242c.l1:
    push ax                          ; 0x243e
    push word [bp + 0xa]             ; 0x243f
    push word [bp + 0x8]             ; 0x2442
    push word [bp + 0x6]             ; 0x2445
    push word [bp + 0x4]             ; 0x2448
    call thunk_7                     ; 0x244b
    add sp, byte 0x0a                ; 0x244e
    push word [bp + 0xa]             ; 0x2451
    push word [bp + 0x8]             ; 0x2454
    push word [bp + 0x6]             ; 0x2457
    push word [bp + 0x4]             ; 0x245a
    call ds_app_0e03                 ; 0x245d
    add sp, byte 8                   ; 0x2460
    mov ax, 0xc5                     ; 0x2463
    cmp word [bp + 0xc], byte 0      ; 0x2466
    je short @..loc_242c.l2          ; 0x246a
    mov ax, 0xc6                     ; 0x246c
@..loc_242c.l2:
    push ax                          ; 0x246f
    mov ax, 0xb0                     ; 0x2470
    cmp word [bp + 0xc], byte 0      ; 0x2473
    je short @..loc_242c.l3          ; 0x2477
    mov ax, 0xc4                     ; 0x2479
@..loc_242c.l3:
    push ax                          ; 0x247c
    push word [bp + 0xa]             ; 0x247d
    push word [bp + 0x8]             ; 0x2480
    push word [bp + 0x6]             ; 0x2483
    push word [bp + 0x4]             ; 0x2486
    call ds_app_0e82                 ; 0x2489
    add sp, byte 0x0c                ; 0x248c
    mov ax, 0xb4                     ; 0x248f
    push ax                          ; 0x2492
    mov ax, 0xc5                     ; 0x2493
    push ax                          ; 0x2496
    mov ax, word [bp + 0xa]          ; 0x2497
    inc ax                           ; 0x249a
    inc ax                           ; 0x249b
    push ax                          ; 0x249c
    mov ax, word [bp + 0x8]          ; 0x249d
    inc ax                           ; 0x24a0
    inc ax                           ; 0x24a1
    push ax                          ; 0x24a2
    mov ax, word [bp + 0x6]          ; 0x24a3
    dec ax                           ; 0x24a6
    dec ax                           ; 0x24a7
    push ax                          ; 0x24a8
    mov ax, word [bp + 0x4]          ; 0x24a9
    dec ax                           ; 0x24ac
    dec ax                           ; 0x24ad
    push ax                          ; 0x24ae
    call ds_app_0e82                 ; 0x24af
    add sp, byte 0x0c                ; 0x24b2
    mov ax, 0x51                     ; 0x24b5
    cmp word [bp + 0xc], byte 0      ; 0x24b8
    je short @..loc_242c.l4          ; 0x24bc
    mov ax, 0xc3                     ; 0x24be
@..loc_242c.l4:
    push ax                          ; 0x24c1
    push word [bp + 0x6]             ; 0x24c2
    push word [bp + 0x4]             ; 0x24c5
    call thunk_6                     ; 0x24c8
    add sp, byte 6                   ; 0x24cb
    mov ax, 0xb6                     ; 0x24ce
    cmp word [bp + 0xc], byte 0      ; 0x24d1
    je short @..loc_242c.l5          ; 0x24d5
    mov ax, 0xc5                     ; 0x24d7
@..loc_242c.l5:
    push ax                          ; 0x24da
    push word [bp + 0x6]             ; 0x24db
    push word [bp + 0x8]             ; 0x24de
    call thunk_6                     ; 0x24e1
    add sp, byte 6                   ; 0x24e4
    mov ax, 0xb6                     ; 0x24e7
    cmp word [bp + 0xc], byte 0      ; 0x24ea
    je short @..loc_242c.l6          ; 0x24ee
    mov ax, 0xc5                     ; 0x24f0
@..loc_242c.l6:
    push ax                          ; 0x24f3
    push word [bp + 0xa]             ; 0x24f4
    push word [bp + 0x4]             ; 0x24f7
    call thunk_6                     ; 0x24fa
    add sp, byte 6                   ; 0x24fd
    mov ax, 0xc6                     ; 0x2500
    cmp word [bp + 0xc], byte 0      ; 0x2503
    je short @..loc_242c.l7          ; 0x2507
    mov ax, 0xc7                     ; 0x2509
@..loc_242c.l7:
    push ax                          ; 0x250c
    push word [bp + 0xa]             ; 0x250d
    push word [bp + 0x8]             ; 0x2510
    call thunk_6                     ; 0x2513
    add sp, byte 6                   ; 0x2516
    ret                              ; 0x2519
