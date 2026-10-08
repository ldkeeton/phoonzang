api_idx_0072:
    mov ax, 0xff8e                   ; 0x1faf
    call ds_dispatch_f40b            ; 0x1fb2
    mov word [bp - 0x000e], 0        ; 0x1fb5
    mov ax, word [data_5218]         ; 0x1fba
    mov word [bp - 0x0010], ax       ; 0x1fbd
    cmp byte [data_5987], 5          ; 0x1fc0
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
    call ds_dispatch_ef14            ; 0x1fda
    pop cx                           ; 0x1fdd
    lea ax, word [bp - 0x005e]       ; 0x1fde
    push ax                          ; 0x1fe1
    mov ax, 0x58c                    ; 0x1fe2
    push ax                          ; 0x1fe5
    call ds_dispatch_b53b            ; 0x1fe6
    add sp, byte 4                   ; 0x1fe9
    lea ax, word [bp - 0x0072]       ; 0x1fec
    push ax                          ; 0x1fef
    mov ax, 0x58d                    ; 0x1ff0
    push ax                          ; 0x1ff3
    call ds_dispatch_b53b            ; 0x1ff4
    add sp, byte 4                   ; 0x1ff7
    mov ax, 0x90c2                   ; 0x1ffa
    push ax                          ; 0x1ffd
    lea ax, word [bp - 0x0036]       ; 0x1ffe
    push ax                          ; 0x2001
    call ds_dispatch_f364            ; 0x2002
    add sp, byte 4                   ; 0x2005
    mov ax, 0x593a                   ; 0x2008
    push ax                          ; 0x200b
    lea ax, word [bp - 0x004a]       ; 0x200c
    push ax                          ; 0x200f
    call ds_dispatch_f364            ; 0x2010
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
    call 0xd112                      ; 0x204b
    add sp, byte 6                   ; 0x204e
    mov ax, 0x3a                     ; 0x2051
    push ax                          ; 0x2054
    lea ax, word [bp - 0x004a]       ; 0x2055
    push ax                          ; 0x2058
    mov ax, 0x91da                   ; 0x2059
    push ax                          ; 0x205c
    db 0xe8, 0xb2, 0xb0 ; call 0xd112
    add sp, byte 6                   ; 0x2060
    lea ax, word [bp - 0x004a]       ; 0x2063
    push ax                          ; 0x2066
    mov ax, 0x91ee                   ; 0x2067
    push ax                          ; 0x206a
    call ds_dispatch_f364            ; 0x206b
    add sp, byte 4                   ; 0x206e
    mov ax, 0x91ee                   ; 0x2071
    push ax                          ; 0x2074
    call ds_dispatch_fa90            ; 0x2075
    pop cx                           ; 0x2078
    cmp ax, strict word 0            ; 0x2079
    jle short @..api_idx_0072.l4     ; 0x207c
    mov ax, 0x91ee                   ; 0x207e
    push ax                          ; 0x2081
    call ds_dispatch_fa90            ; 0x2082
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
    call ds_dispatch_f32d            ; 0x20a5
    add sp, byte 4                   ; 0x20a8
    cmp byte [data_5987], 1          ; 0x20ab
    jne short @..api_idx_0072.l5     ; 0x20b0
    mov ax, 0x91da                   ; 0x20b2
    push ax                          ; 0x20b5
    mov ax, 0x91c6                   ; 0x20b6
    push ax                          ; 0x20b9
    call string_loc_9386             ; 0x20ba
    add sp, byte 4                   ; 0x20bd
    test ax, ax                      ; 0x20c0
    jne short @..api_idx_0072.l5     ; 0x20c2
    jmp near @..api_idx_0072.l11     ; 0x20c4
@..api_idx_0072.l5:
    mov ax, 0x91da                   ; 0x20c7
    push ax                          ; 0x20ca
    call ds_dispatch_fa90            ; 0x20cb
    pop cx                           ; 0x20ce
    cmp ax, strict word 0            ; 0x20cf
    jle short @..api_idx_0072.l9     ; 0x20d2
    mov ax, 0x91da                   ; 0x20d4
    push ax                          ; 0x20d7
    mov ax, 0x91c6                   ; 0x20d8
    push ax                          ; 0x20db
    call string_loc_9386             ; 0x20dc
    add sp, byte 4                   ; 0x20df
    test ax, ax                      ; 0x20e2
    je short @..api_idx_0072.l6      ; 0x20e4
    cmp byte [data_5987], 5          ; 0x20e6
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
    call 0xd1a8                      ; 0x2101
    add sp, byte 8                   ; 0x2104
    mov ax, 1                        ; 0x2107
    cmp word [bp - 0x000e], byte 0   ; 0x210a
    je short @..api_idx_0072.l8      ; 0x210e
    mov ax, 0                        ; 0x2110
@..api_idx_0072.l8:
    mov word [bp - 0x0012], ax       ; 0x2113
    jmp short @..api_idx_0072.l11    ; 0x2116
@..api_idx_0072.l9:
    cmp byte [data_5987], 1          ; 0x2118
    jbe short @..api_idx_0072.l11    ; 0x211d
    mov word [bp - 0x000e], 1        ; 0x211f
    mov ax, 0                        ; 0x2124
    push ax                          ; 0x2127
    push word [bp - 0x000e]          ; 0x2128
    mov ax, 0xffff                   ; 0x212b
    push ax                          ; 0x212e
    mov ax, 0x91c6                   ; 0x212f
    push ax                          ; 0x2132
    db 0xe8, 0x72, 0xb0 ; call 0xd1a8
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
    call ds_dispatch_e8da            ; 0x2155
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
    call ds_dispatch_f909            ; 0x2185
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
    db 0xe8, 0xf6, 0xaf ; call 0xd1a8
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
    call ds_dispatch_fdbd            ; 0x21c8
    add sp, byte 8                   ; 0x21cb
    mov ax, 0x19e                    ; 0x21ce
    push ax                          ; 0x21d1
    mov ax, 0x9220                   ; 0x21d2
    push ax                          ; 0x21d5
    push word [bp - 0x000a]          ; 0x21d6
    call ds_dispatch_fd6f            ; 0x21d9
    add sp, byte 6                   ; 0x21dc
    mov word [bp - 0x000c], ax       ; 0x21df
    cmp ax, strict word 0            ; 0x21e2
    jg short @..api_idx_0072.l15     ; 0x21e5
    lea ax, word [bp - 0x005e]       ; 0x21e7
    push ax                          ; 0x21ea
    call loc_150d                    ; 0x21eb
    pop cx                           ; 0x21ee
    push word [bp - 0x000a]          ; 0x21ef
    call ds_dispatch_fda5            ; 0x21f2
    pop cx                           ; 0x21f5
    cmp word [bp - 0x000e], byte 0   ; 0x21f6
    je short @..api_idx_0072.l14     ; 0x21fa
    mov ax, 1                        ; 0x21fc
    push ax                          ; 0x21ff
    push word [bp - 0x0012]          ; 0x2200
    push word [bp - 0x0010]          ; 0x2203
    mov ax, 0x91c6                   ; 0x2206
    push ax                          ; 0x2209
    db 0xe8, 0x9b, 0xaf ; call 0xd1a8
    add sp, byte 8                   ; 0x220d
@..api_idx_0072.l14:
    mov ax, 0xffff                   ; 0x2210
    ret                              ; 0x2213
@..api_idx_0072.l15:
    mov ax, 0x6d6                    ; 0x2214
    push ax                          ; 0x2217
    call ds_dispatch_f4a3            ; 0x2218
    pop cx                           ; 0x221b
    mov word [data_93be], ax         ; 0x221c
    cmp word [data_93be], byte 0     ; 0x221f
    jne short @..api_idx_0072.l16    ; 0x2224
    mov ax, 0x1d                     ; 0x2226
    push ax                          ; 0x2229
    call ds_dispatch_b171            ; 0x222a
    pop cx                           ; 0x222d
@..api_idx_0072.l16:
    mov word [bp - 0x0008], 0        ; 0x222e
@..api_idx_0072.l17:
    mov ax, 0x542                    ; 0x2233
    push ax                          ; 0x2236
    push word [data_93be]            ; 0x2237
    push word [bp - 0x000a]          ; 0x223b
    call ds_dispatch_fd6f            ; 0x223e
    add sp, byte 6                   ; 0x2241
    mov word [bp - 0x000c], ax       ; 0x2244
    cmp ax, strict word 0            ; 0x2247
    jg short @..api_idx_0072.l19     ; 0x224a
    push word [data_93be]            ; 0x224c
    call ds_dispatch_f5a1            ; 0x2250
    pop cx                           ; 0x2253
    lea ax, word [bp - 0x005e]       ; 0x2254
    push ax                          ; 0x2257
    call loc_150d                    ; 0x2258
    pop cx                           ; 0x225b
    push word [bp - 0x000a]          ; 0x225c
    call ds_dispatch_fda5            ; 0x225f
    pop cx                           ; 0x2262
    cmp word [bp - 0x000e], byte 0   ; 0x2263
    je short @..api_idx_0072.l18     ; 0x2267
    mov ax, 1                        ; 0x2269
    push ax                          ; 0x226c
    push word [bp - 0x0012]          ; 0x226d
    push word [bp - 0x0010]          ; 0x2270
    mov ax, 0x91c6                   ; 0x2273
    push ax                          ; 0x2276
    db 0xe8, 0x2e, 0xaf ; call 0xd1a8
    add sp, byte 8                   ; 0x227a
@..api_idx_0072.l18:
    mov ax, 0xffff                   ; 0x227d
    ret                              ; 0x2280
@..api_idx_0072.l19:
    mov ax, 0x6cc                    ; 0x2281
    push ax                          ; 0x2284
    push word [data_93be]            ; 0x2285
    push word [bp - 0x000a]          ; 0x2289
    call ds_dispatch_fd6f            ; 0x228c
    add sp, byte 6                   ; 0x228f
    mov word [bp - 0x000c], ax       ; 0x2292
    cmp ax, strict word 0            ; 0x2295
    jg short @..api_idx_0072.l21     ; 0x2298
    push word [data_93be]            ; 0x229a
    call ds_dispatch_f5a1            ; 0x229e
    pop cx                           ; 0x22a1
    lea ax, word [bp - 0x005e]       ; 0x22a2
    push ax                          ; 0x22a5
    call loc_150d                    ; 0x22a6
    pop cx                           ; 0x22a9
    push word [bp - 0x000a]          ; 0x22aa
    call ds_dispatch_fda5            ; 0x22ad
    pop cx                           ; 0x22b0
    cmp word [bp - 0x000e], byte 0   ; 0x22b1
    je short @..api_idx_0072.l20     ; 0x22b5
    mov ax, 1                        ; 0x22b7
    push ax                          ; 0x22ba
    push word [bp - 0x0012]          ; 0x22bb
    push word [bp - 0x0010]          ; 0x22be
    mov ax, 0x91c6                   ; 0x22c1
    push ax                          ; 0x22c4
    db 0xe8, 0xe0, 0xae ; call 0xd1a8
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
    push word [data_93be]            ; 0x22dd
    call ds_dispatch_f5a1            ; 0x22e1
    pop cx                           ; 0x22e4
    mov ax, 0x42                     ; 0x22e5
    push ax                          ; 0x22e8
    mov ax, 0x93c0                   ; 0x22e9
    push ax                          ; 0x22ec
    push word [bp - 0x000a]          ; 0x22ed
    call ds_dispatch_fd6f            ; 0x22f0
    add sp, byte 6                   ; 0x22f3
    mov word [bp - 0x000c], ax       ; 0x22f6
    cmp ax, strict word 0            ; 0x22f9
    jg short @..api_idx_0072.l24     ; 0x22fc
    lea ax, word [bp - 0x005e]       ; 0x22fe
    push ax                          ; 0x2301
    call loc_150d                    ; 0x2302
    pop cx                           ; 0x2305
    push word [bp - 0x000a]          ; 0x2306
    call ds_dispatch_fda5            ; 0x2309
    pop cx                           ; 0x230c
    cmp word [bp - 0x000e], byte 0   ; 0x230d
    je short @..api_idx_0072.l23     ; 0x2311
    mov ax, 1                        ; 0x2313
    push ax                          ; 0x2316
    push word [bp - 0x0012]          ; 0x2317
    push word [bp - 0x0010]          ; 0x231a
    mov ax, 0x91c6                   ; 0x231d
    push ax                          ; 0x2320
    db 0xe8, 0x84, 0xae ; call 0xd1a8
    add sp, byte 8                   ; 0x2324
@..api_idx_0072.l23:
    mov ax, 0xffff                   ; 0x2327
    ret                              ; 0x232a
@..api_idx_0072.l24:
    mov word [data_69c8], 0          ; 0x232b
    mov word [bp - 0x0002], 0        ; 0x2331
    jmp near @..api_idx_0072.l91     ; 0x2336
