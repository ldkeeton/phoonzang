; auto-generated
api_idx_0006_QJOL:
    mov ax, 0xfffa                   ; 0x209c
    call aztec_csav                  ; 0x209f
    mov ax, 0x2c                     ; 0x20a2
    imul word [bp + 0x6]             ; 0x20a5
    mov si, ax                       ; 0x20a8
    mov ax, word [bp + 0x4]          ; 0x20aa
    shl ax, 1                        ; 0x20ad
    mov bx, ax                       ; 0x20af
    mov bx, word [bx + party_char]   ; 0x20b1
    cmp byte [bx + si + member_rec.item_state], 2 ; 0x20b5
    jae short @..api_idx_0006_QJOL.l1 ; 0x20b9
    push word [bp + 0x6]             ; 0x20bb
    push word [bp + 0x4]             ; 0x20be
    call item_slot_usable            ; 0x20c1
    add sp, byte 4                   ; 0x20c4
    test ax, ax                      ; 0x20c7
    je short @..api_idx_0006_QJOL.l2 ; 0x20c9
@..api_idx_0006_QJOL.l1:
    ret                              ; 0x20cb
@..api_idx_0006_QJOL.l2:
    cmp word [bp + 0x4], byte 0      ; 0x20cc
    jne short @..api_idx_0006_QJOL.l4 ; 0x20d0
    mov ax, 0xe                      ; 0x20d2
    push ax                          ; 0x20d5
    mov ax, word [party_char_ext]    ; 0x20d6
    add ax, 0x9a                     ; 0x20d9
    push ax                          ; 0x20dc
    mov ax, 0x248                    ; 0x20dd
    imul word [bp + 0x6]             ; 0x20e0
    add ax, party_records + pc_rec.cur ; 0x20e3
    push ax                          ; 0x20e6
    call aztec_movmem                ; 0x20e7
    add sp, byte 6                   ; 0x20ea
    cmp word [bp + 0xa], byte 1      ; 0x20ed
    je short @..api_idx_0006_QJOL.l3 ; 0x20f1
    cmp word [bp + 0xa], byte 7      ; 0x20f3
    jne short @..api_idx_0006_QJOL.l4 ; 0x20f7
@..api_idx_0006_QJOL.l3:
    mov ax, 0x248                    ; 0x20f9
    imul word [bp + 0x6]             ; 0x20fc
    mov bx, ax                       ; 0x20ff
    mov al, byte [bx + party_records + pc_rec.flag + 0x17] ; 0x2101
    sub ah, ah                       ; 0x2105
    mov cx, 2                        ; 0x2107
    cwd                              ; 0x210a
    idiv cx                          ; 0x210b
    sub word [bp + 0xe], ax          ; 0x210d
@..api_idx_0006_QJOL.l4:
    push word [bp + 0x14]            ; 0x2110
    push word [bp + 0x12]            ; 0x2113
    push word [bp + 0x10]            ; 0x2116
    call store_word_and_pair         ; 0x2119
    add sp, byte 6                   ; 0x211c
    mov cx, ax                       ; 0x211f
    sub sp, byte 4                   ; 0x2121
    mov ax, sp                       ; 0x2124
    mov dx, ss                       ; 0x2126
    mov es, dx                       ; 0x2128
    mov si, cx                       ; 0x212a
    mov di, ax                       ; 0x212c
    movsw                            ; 0x212e
    movsw                            ; 0x212f
    call add_random_steps            ; 0x2130
    add sp, byte 4                   ; 0x2133
    mov word [bp - 0x0006], ax       ; 0x2136
    push word [bp + 0xe]             ; 0x2139
    push word [bp + 0xa]             ; 0x213c
    push ax                          ; 0x213f
    push word [bp + 0x4]             ; 0x2140
    call api_idx_0002_NHHH           ; 0x2143
    add sp, byte 8                   ; 0x2146
    mov word [bp - 0x0006], ax       ; 0x2149
    cmp ax, strict word 0            ; 0x214c
    jg short @..api_idx_0006_QJOL.l5 ; 0x214f
    jmp near @..api_idx_0006_QJOL.l11 ; 0x2151
@..api_idx_0006_QJOL.l5:
    mov ax, 0x64                     ; 0x2154
    push ax                          ; 0x2157
    call random_below                ; 0x2158
    pop cx                           ; 0x215b
    push ax                          ; 0x215c
    mov ax, word [bp + 0x4]          ; 0x215d
    shl ax, 1                        ; 0x2160
    mov bx, ax                       ; 0x2162
    mov bx, word [bx + party_char_ext] ; 0x2164
    mov si, word [bp + 0xa]          ; 0x2168
    mov al, byte [bx + si + member_ext.f_009a] ; 0x216b
    sub ah, ah                       ; 0x216f
    mov cx, ax                       ; 0x2171
    sub ax, word [bp + 0xe]          ; 0x2173
    mov cx, ax                       ; 0x2176
    pop ax                           ; 0x2178
    cmp ax, cx                       ; 0x2179
    jg short @..api_idx_0006_QJOL.l6 ; 0x217b
    jmp near @..api_idx_0006_QJOL.l11 ; 0x217d
@..api_idx_0006_QJOL.l6:
    cmp word [bp + 0x14], strict word 0xff ; 0x2180
    jne short @..api_idx_0006_QJOL.l7 ; 0x2185
    mov ax, 0x2c                     ; 0x2187
    imul word [bp + 0x6]             ; 0x218a
    add ax, word [bp + 0xc]          ; 0x218d
    mov si, ax                       ; 0x2190
    mov ax, word [bp + 0x4]          ; 0x2192
    shl ax, 1                        ; 0x2195
    mov bx, ax                       ; 0x2197
    mov bx, word [bx + party_char]   ; 0x2199
    mov byte [bx + si + member_rec.item_counter], 0xff ; 0x219d
    jmp short @..api_idx_0006_QJOL.l9 ; 0x21a1
@..api_idx_0006_QJOL.l7:
    mov ax, 0x2c                     ; 0x21a3
    imul word [bp + 0x6]             ; 0x21a6
    add ax, word [bp + 0xc]          ; 0x21a9
    mov si, ax                       ; 0x21ac
    mov ax, word [bp + 0x4]          ; 0x21ae
    shl ax, 1                        ; 0x21b1
    mov bx, ax                       ; 0x21b3
    mov bx, word [bx + party_char]   ; 0x21b5
    mov al, byte [bx + si + member_rec.item_counter] ; 0x21b9
    sub ah, ah                       ; 0x21bc
    add ax, word [bp - 0x0006]       ; 0x21be
    cmp ax, 0xfa                     ; 0x21c1
    jle short @..api_idx_0006_QJOL.l8 ; 0x21c4
    mov byte [bx + si + 0xe], 0xfa   ; 0x21c6
    jmp short @..api_idx_0006_QJOL.l9 ; 0x21ca
@..api_idx_0006_QJOL.l8:
    mov al, byte [bp - 0x0006]       ; 0x21cc
    push ax                          ; 0x21cf
    mov ax, 0x2c                     ; 0x21d0
    imul word [bp + 0x6]             ; 0x21d3
    mov cx, ax                       ; 0x21d6
    add ax, word [bp + 0xc]          ; 0x21d8
    mov si, ax                       ; 0x21db
    mov ax, word [bp + 0x4]          ; 0x21dd
    shl ax, 1                        ; 0x21e0
    mov bx, ax                       ; 0x21e2
    mov bx, word [bx + party_char]   ; 0x21e4
    pop ax                           ; 0x21e8
    add byte [bx + si + member_rec.item_counter], al ; 0x21e9
@..api_idx_0006_QJOL.l9:
    cmp word [bp + 0xc], byte 5      ; 0x21ec
    jne short @..api_idx_0006_QJOL.l10 ; 0x21f0
    mov al, byte [bp + 0x14]         ; 0x21f2
    push ax                          ; 0x21f5
    mov ax, 0x2c                     ; 0x21f6
    imul word [bp + 0x6]             ; 0x21f9
    mov si, ax                       ; 0x21fc
    mov ax, word [bp + 0x4]          ; 0x21fe
    shl ax, 1                        ; 0x2201
    mov bx, ax                       ; 0x2203
    mov bx, word [bx + party_char]   ; 0x2205
    pop ax                           ; 0x2209
    mov byte [bx + si + member_rec.item_resist], al ; 0x220a
@..api_idx_0006_QJOL.l10:
    mov ax, 0                        ; 0x220d
    push ax                          ; 0x2210
    mov ax, 1                        ; 0x2211
    push ax                          ; 0x2214
    push word [bp + 0x8]             ; 0x2215
    push word [bp + 0x6]             ; 0x2218
    push word [bp + 0x4]             ; 0x221b
    call loc_NJKR                    ; 0x221e
    add sp, byte 0x0a                ; 0x2221
    jmp short @..api_idx_0006_QJOL.l12 ; 0x2224
@..api_idx_0006_QJOL.l11:
    cmp word [bp + 0x18], byte 1     ; 0x2226
    jne short @..api_idx_0006_QJOL.l12 ; 0x222a
    mov ax, 0                        ; 0x222c
    push ax                          ; 0x222f
    push ax                          ; 0x2230
    mov ax, MSG_UNAFFECTED_3471      ; 0x2231
    push ax                          ; 0x2234
    push word [bp + 0x6]             ; 0x2235
    push word [bp + 0x4]             ; 0x2238
    call loc_NJKR                    ; 0x223b
    add sp, byte 0x0a                ; 0x223e
@..api_idx_0006_QJOL.l12:
    ret                              ; 0x2241
