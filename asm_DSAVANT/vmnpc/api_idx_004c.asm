api_idx_004c:
    mov ax, 0xffb4                   ; 0x21d2
    call ds_dispatch_f40b            ; 0x21d5
    mov ax, 0                        ; 0x21d8
    push ax                          ; 0x21db
    push word [bp + 0x6]             ; 0x21dc
    lea ax, word [bp - 0x004c]       ; 0x21df
    push ax                          ; 0x21e2
    mov ax, 1                        ; 0x21e3
    push ax                          ; 0x21e6
    call ds_dispatch_b63c            ; 0x21e7
    add sp, byte 8                   ; 0x21ea
    cmp word [bp + 0xa], byte 0xfe   ; 0x21ed
    jne short @..api_idx_004c.l1     ; 0x21f1
    mov al, byte [bp - 0x0030]       ; 0x21f3
    sub ah, ah                       ; 0x21f6
    push ax                          ; 0x21f8
    mov al, byte [bp - 0x002f]       ; 0x21f9
    sub ah, ah                       ; 0x21fc
    mov cx, ax                       ; 0x21fe
    pop ax                           ; 0x2200
    imul cx                          ; 0x2201
    add ax, word [bp - 0x0032]       ; 0x2203
    mov bx, word [bp + 0x8]          ; 0x2206
    mov byte [bx + 0x6], al          ; 0x2209
    jmp short @..api_idx_004c.l3     ; 0x220c
@..api_idx_004c.l1:
    cmp word [bp + 0xa], byte 0xff   ; 0x220e
    jne short @..api_idx_004c.l2     ; 0x2212
    push word [bp - 0x0030]          ; 0x2214
    push word [bp - 0x0032]          ; 0x2217
    call ds_dispatch_d0be            ; 0x221a
    add sp, byte 4                   ; 0x221d
    mov bx, word [bp + 0x8]          ; 0x2220
    mov byte [bx + 0x6], al          ; 0x2223
    jmp short @..api_idx_004c.l3     ; 0x2226
@..api_idx_004c.l2:
    mov al, byte [bp + 0xa]          ; 0x2228
    mov bx, word [bp + 0x8]          ; 0x222b
    mov byte [bx + 0x6], al          ; 0x222e
@..api_idx_004c.l3:
    mov ax, word [bp + 0x6]          ; 0x2231
    mov bx, word [bp + 0x8]          ; 0x2234
    mov word [bx], ax                ; 0x2237
    mov al, byte [bp - 0x0014]       ; 0x2239
    mov bx, word [bp + 0x8]          ; 0x223c
    mov byte [bx + 0x4], al          ; 0x223f
    mov al, byte [bp - 0x0013]       ; 0x2242
    mov bx, word [bp + 0x8]          ; 0x2245
    mov byte [bx + 0x5], al          ; 0x2248
    mov ax, word [bp - 0x0028]       ; 0x224b
    mov bx, word [bp + 0x8]          ; 0x224e
    mov word [bx + 0x2], ax          ; 0x2251
    mov al, byte [bp - 0x0024]       ; 0x2254
    mov bx, word [bp + 0x8]          ; 0x2257
    mov byte [bx + 0x8], al          ; 0x225a
    mov al, byte [bp - 0x0023]       ; 0x225d
    mov bx, word [bp + 0x8]          ; 0x2260
    mov byte [bx + 0x9], al          ; 0x2263
    mov al, byte [bp - 0x0010]       ; 0x2266
    mov bx, word [bp + 0x8]          ; 0x2269
    mov byte [bx + 0xa], al          ; 0x226c
    mov al, byte [bp - 0x000c]       ; 0x226f
    mov bx, word [bp + 0x8]          ; 0x2272
    mov byte [bx + 0xb], al          ; 0x2275
    mov ax, 0                        ; 0x2278
    cmp word [bp + 0xc], byte 0      ; 0x227b
    je short @..api_idx_004c.l4      ; 0x227f
    mov ax, 0x80                     ; 0x2281
@..api_idx_004c.l4:
    mov bx, word [bp + 0x8]          ; 0x2284
    mov byte [bx + 0x7], al          ; 0x2287
    mov al, byte [bp - 0x0015]       ; 0x228a
    sub ah, ah                       ; 0x228d
    test ax, 8                       ; 0x228f
    je short @..api_idx_004c.l5      ; 0x2292
    mov bx, word [bp + 0x8]          ; 0x2294
    or byte [bx + 0x7], 4            ; 0x2297
@..api_idx_004c.l5:
    mov al, byte [bp - 0x0015]       ; 0x229b
    sub ah, ah                       ; 0x229e
    test ax, 4                       ; 0x22a0
    je short @..api_idx_004c.l6      ; 0x22a3
    mov bx, word [bp + 0x8]          ; 0x22a5
    or byte [bx + 0x7], 8            ; 0x22a8
@..api_idx_004c.l6:
    mov al, byte [bp - 0x0015]       ; 0x22ac
    sub ah, ah                       ; 0x22af
    test ax, 0x10                    ; 0x22b1
    je short @..api_idx_004c.l7      ; 0x22b4
    mov bx, word [bp + 0x8]          ; 0x22b6
    or byte [bx + 0x7], 0x10         ; 0x22b9
@..api_idx_004c.l7:
    mov al, byte [bp - 0x0015]       ; 0x22bd
    sub ah, ah                       ; 0x22c0
    test ax, 0x20                    ; 0x22c2
    je short @..api_idx_004c.l8      ; 0x22c5
    mov bx, word [bp + 0x8]          ; 0x22c7
    or byte [bx + 0x7], 0x20         ; 0x22ca
@..api_idx_004c.l8:
    mov al, byte [bp - 0x0015]       ; 0x22ce
    sub ah, ah                       ; 0x22d1
    test ax, 2                       ; 0x22d3
    je short @..api_idx_004c.l9      ; 0x22d6
    mov bx, word [bp + 0x8]          ; 0x22d8
    or byte [bx + 0x7], 0x40         ; 0x22db
@..api_idx_004c.l9:
    push word [bp + 0x4]             ; 0x22df
    call ds_dispatch_c58f            ; 0x22e2
    pop cx                           ; 0x22e5
    ret                              ; 0x22e6
