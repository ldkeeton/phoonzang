; auto-generated
ds_app_io_VGOM: ; Aztec csav frame=0x0012
    mov ax, 0xffee                   ; 0x20f8
    call aztec_csav                  ; 0x20fb
    cmp word [bss_0e32], byte 0      ; 0x20fe
    je short @..ds_app_io_VGOM.l1    ; 0x2103
    jmp near @..ds_app_io_VGOM.l6    ; 0x2105
@..ds_app_io_VGOM.l1:
    mov ax, 0xa3                     ; 0x2108
    push ax                          ; 0x210b
    mov ax, 0xb1                     ; 0x210c
    push ax                          ; 0x210f
    mov ax, 0x90                     ; 0x2110
    push ax                          ; 0x2113
    mov ax, 0x9a                     ; 0x2114
    push ax                          ; 0x2117
    call gfx_save_area               ; 0x2118
    add sp, byte 8                   ; 0x211b
    mov word [bp - 0x0010], dx       ; 0x211e
    mov word [bp - 0x0012], ax       ; 0x2121
    mov ax, 0x90                     ; 0x2124
    push ax                          ; 0x2127
    mov ax, 0x9a                     ; 0x2128
    push ax                          ; 0x212b
    call gfx_entry_13                ; 0x212c
    add sp, byte 4                   ; 0x212f
    mov ax, 7                        ; 0x2132
    push ax                          ; 0x2135
    mov ax, 0x12                     ; 0x2136
    push ax                          ; 0x2139
    call ds_loc_TJTV                 ; 0x213a
    add sp, byte 4                   ; 0x213d
    mov ax, 0x9c                     ; 0x2140
    push ax                          ; 0x2143
    mov ax, 0x9a                     ; 0x2144
    push ax                          ; 0x2147
    call gfx_entry_13                ; 0x2148
    add sp, byte 4                   ; 0x214b
    mov ax, 7                        ; 0x214e
    push ax                          ; 0x2151
    mov ax, 0x13                     ; 0x2152
    push ax                          ; 0x2155
    call ds_loc_TJTV                 ; 0x2156
    add sp, byte 4                   ; 0x2159
    mov ax, 0x9c                     ; 0x215c
    push ax                          ; 0x215f
    mov ax, 0xa6                     ; 0x2160
    push ax                          ; 0x2163
    call gfx_entry_13                ; 0x2164
    add sp, byte 4                   ; 0x2167
    mov ax, 7                        ; 0x216a
    push ax                          ; 0x216d
    mov ax, 0x14                     ; 0x216e
    push ax                          ; 0x2171
    call ds_loc_TJTV                 ; 0x2172
    add sp, byte 4                   ; 0x2175
    mov ax, 0xa3                     ; 0x2178
    push ax                          ; 0x217b
    mov ax, 0xb1                     ; 0x217c
    push ax                          ; 0x217f
    mov ax, 0x90                     ; 0x2180
    push ax                          ; 0x2183
    mov ax, 0x9a                     ; 0x2184
    push ax                          ; 0x2187
    call gfx_entry_16                ; 0x2188
    add sp, byte 8                   ; 0x218b
    mov word [bp - 0x0004], 0xfffe   ; 0x218e
@..ds_app_io_VGOM.l2:
    cmp word [bp - 0x0004], byte 0xfe ; 0x2193
    jne short @..ds_app_io_VGOM.l5   ; 0x2197
    mov ax, 1                        ; 0x2199
    push ax                          ; 0x219c
    call dos_con_in_noecho_2         ; 0x219d
    pop cx                           ; 0x21a0
    sub ah, ah                       ; 0x21a1
    mov word [bp - 0x0002], ax       ; 0x21a3
    cmp ax, strict word 0x1b         ; 0x21a6
    jne short @..ds_app_io_VGOM.l3   ; 0x21a9
    mov word [bp - 0x0004], 0xffff   ; 0x21ab
@..ds_app_io_VGOM.l3:
    cmp ax, strict word 0x31         ; 0x21b0
    jl short @..ds_app_io_VGOM.l4    ; 0x21b3
    mov cx, word [bss_69c8]          ; 0x21b5
    add cx, byte 0x31                ; 0x21b9
    cmp cx, ax                       ; 0x21bc
    jle short @..ds_app_io_VGOM.l4   ; 0x21be
    add ax, strict word 0xffcf       ; 0x21c0
    mov word [bp - 0x0004], ax       ; 0x21c3
@..ds_app_io_VGOM.l4:
    jmp short @..ds_app_io_VGOM.l2   ; 0x21c6
@..ds_app_io_VGOM.l5:
    mov ax, 1                        ; 0x21c8
    push ax                          ; 0x21cb
    push word [bp - 0x0010]          ; 0x21cc
    push word [bp - 0x0012]          ; 0x21cf
    call gfx_restore_area            ; 0x21d2
    add sp, byte 6                   ; 0x21d5
    mov ax, 0xa3                     ; 0x21d8
    push ax                          ; 0x21db
    mov ax, 0xb1                     ; 0x21dc
    push ax                          ; 0x21df
    mov ax, 0x90                     ; 0x21e0
    push ax                          ; 0x21e3
    mov ax, 0x9a                     ; 0x21e4
    push ax                          ; 0x21e7
    call gfx_entry_16                ; 0x21e8
    add sp, byte 8                   ; 0x21eb
    mov ax, word [bp - 0x0004]       ; 0x21ee
    ret                              ; 0x21f1
@..ds_app_io_VGOM.l6:
    push word [bss_0e30]             ; 0x21f2
    push word [bss_0e2e]             ; 0x21f6
    call ds_app_io_TSGV              ; 0x21fa
    add sp, byte 4                   ; 0x21fd
    mov word [bp - 0x0002], 0        ; 0x2200
    jmp short @..ds_app_io_VGOM.l8   ; 0x2205
@..ds_app_io_VGOM.l7:
    mov ax, word [bp - 0x0002]       ; 0x2207
    mov cx, 2                        ; 0x220a
    cwd                              ; 0x220d
    idiv cx                          ; 0x220e
    mov ax, dx                       ; 0x2210
    mov cx, 0xfc                     ; 0x2212
    imul cx                          ; 0x2215
    add ax, strict word 5            ; 0x2217
    mov word [bp - 0x000a], ax       ; 0x221a
    mov ax, word [bp - 0x0002]       ; 0x221d
    mov cx, 2                        ; 0x2220
    cwd                              ; 0x2223
    idiv cx                          ; 0x2224
    mov cx, 0x2d                     ; 0x2226
    imul cx                          ; 0x2229
    add ax, strict word 0x12         ; 0x222b
    mov word [bp - 0x000c], ax       ; 0x222e
    mov ax, 0                        ; 0x2231
    push ax                          ; 0x2234
    mov ax, word [bp - 0x0002]       ; 0x2235
    add ax, strict word 0x31         ; 0x2238
    cbw                              ; 0x223b
    push ax                          ; 0x223c
    mov ax, word [bp - 0x000c]       ; 0x223d
    add ax, strict word 0x2b         ; 0x2240
    push ax                          ; 0x2243
    mov ax, word [bp - 0x000a]       ; 0x2244
    add ax, strict word 0x3b         ; 0x2247
    push ax                          ; 0x224a
    push word [bp - 0x000c]          ; 0x224b
    push word [bp - 0x000a]          ; 0x224e
    push word [bp - 0x0002]          ; 0x2251
    call ds_app_NGUR                 ; 0x2254
    add sp, byte 0x0e                ; 0x2257
    inc word [bp - 0x0002]           ; 0x225a
@..ds_app_io_VGOM.l8:
    mov ax, word [bp - 0x0002]       ; 0x225d
    cmp ax, word [bss_69c8]          ; 0x2260
    jl short @..ds_app_io_VGOM.l7    ; 0x2264
    mov ax, 0                        ; 0x2266
    push ax                          ; 0x2269
    push ax                          ; 0x226a
    push ax                          ; 0x226b
    push ax                          ; 0x226c
    push ax                          ; 0x226d
    mov ax, 0xffff                   ; 0x226e
    push ax                          ; 0x2271
    push word [bss_69c8]             ; 0x2272
    call ds_app_NGUR                 ; 0x2276
    add sp, byte 0x0e                ; 0x2279
    mov word [bp - 0x0008], 0        ; 0x227c
@..ds_app_io_VGOM.l9:
    lea ax, word [bp - 0x000c]       ; 0x2281
    push ax                          ; 0x2284
    lea ax, word [bp - 0x000a]       ; 0x2285
    push ax                          ; 0x2288
    call gfx_entry_23                ; 0x2289
    add sp, byte 4                   ; 0x228c
    mov word [bp - 0x0006], ax       ; 0x228f
    mov ax, 0                        ; 0x2292
    cmp word [bp - 0x0006], byte 0   ; 0x2295
    jne short @..ds_app_io_VGOM.l10  ; 0x2299
    mov ax, 1                        ; 0x229b
@..ds_app_io_VGOM.l10:
    or word [bp - 0x0008], ax        ; 0x229e
    mov ax, 0x14                     ; 0x22a1
    push ax                          ; 0x22a4
    call ds_leaf_loc_UJPS            ; 0x22a5
    pop cx                           ; 0x22a8
    mov ax, 0x59fe                   ; 0x22a9
    push ax                          ; 0x22ac
    call ds_app_io_UHMG              ; 0x22ad
    pop cx                           ; 0x22b0
    dec ax                           ; 0x22b1
    mov word [bp - 0x0004], ax       ; 0x22b2
    cmp word [bss_59fa], byte 0      ; 0x22b5
    je short @..ds_app_io_VGOM.l11   ; 0x22ba
    mov ax, 0                        ; 0x22bc
    mov dx, 0                        ; 0x22bf
    push dx                          ; 0x22c2
    push ax                          ; 0x22c3
    call ds_app_io_TSGV              ; 0x22c4
    add sp, byte 4                   ; 0x22c7
    mov ax, 0xffff                   ; 0x22ca
    ret                              ; 0x22cd
@..ds_app_io_VGOM.l11:
    cmp word [bss_5b3e], byte 1      ; 0x22ce
    jne short @..ds_app_io_VGOM.l12  ; 0x22d3
    mov ax, 0                        ; 0x22d5
    mov dx, 0                        ; 0x22d8
    push dx                          ; 0x22db
    push ax                          ; 0x22dc
    call ds_app_io_TSGV              ; 0x22dd
    add sp, byte 4                   ; 0x22e0
    mov ax, word [bp - 0x0004]       ; 0x22e3
    ret                              ; 0x22e6
@..ds_app_io_VGOM.l12:
    cmp word [bp - 0x0006], byte 0   ; 0x22e7
    je short @..ds_app_io_VGOM.l9    ; 0x22eb
    cmp word [bp - 0x0008], byte 0   ; 0x22ed
    je short @..ds_app_io_VGOM.l9    ; 0x22f1
    mov ax, 0                        ; 0x22f3
    mov dx, 0                        ; 0x22f6
    push dx                          ; 0x22f9
    push ax                          ; 0x22fa
    call ds_app_io_TSGV              ; 0x22fb
    add sp, byte 4                   ; 0x22fe
    mov ax, 0xffff                   ; 0x2301
    ret                              ; 0x2304
