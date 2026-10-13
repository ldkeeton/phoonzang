api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x201b
    call aztec_csav                  ; 0x201e
    mov al, byte [bp + 0x4]          ; 0x2021
    push ax                          ; 0x2024
    mov ax, 0x11                     ; 0x2025
    imul word [bss_92f2]             ; 0x2028
    mov bx, ax                       ; 0x202c
    pop ax                           ; 0x202e
    mov byte [bx - 0x6d00], al       ; 0x202f
    mov al, byte [bp + 0x18]         ; 0x2033
    mov byte [bx - 0x6cfe], al       ; 0x2036
    cmp word [bp + 0x4], strict word 0xfa ; 0x203a
    jl short @..api_idx_0004_5.l1    ; 0x203f
    jmp near @..api_idx_0004_5.l13   ; 0x2041
@..api_idx_0004_5.l1:
    mov ax, 0x15e                    ; 0x2044
    imul word [bp + 0x4]             ; 0x2047
    mov cx, word [bp + 0xa]          ; 0x204a
    shl cx, 1                        ; 0x204d
    add ax, cx                       ; 0x204f
    add ax, word [bp + 0x1a]         ; 0x2051
    mov bx, ax                       ; 0x2054
    mov al, byte [bx + 0x6a52]       ; 0x2056
    sub ah, ah                       ; 0x205a
    mov word [bp - 0x0002], ax       ; 0x205c
    mov ax, 0x15e                    ; 0x205f
    imul word [bp + 0x4]             ; 0x2062
    add ax, word [bp + 0xa]          ; 0x2065
    mov bx, ax                       ; 0x2068
    mov al, byte [bx + 0x6a9b]       ; 0x206a
    sub ah, ah                       ; 0x206e
    mov word [bp - 0x0004], ax       ; 0x2070
    cmp word [bp + 0x18], byte 0     ; 0x2073
    jg short @..api_idx_0004_5.l2    ; 0x2077
    jmp near @..api_idx_0004_5.l11   ; 0x2079
@..api_idx_0004_5.l2:
    cmp word [bp + 0x1e], byte 0     ; 0x207c
    jg short @..api_idx_0004_5.l3    ; 0x2080
    jmp near @..api_idx_0004_5.l11   ; 0x2082
@..api_idx_0004_5.l3:
    mov ax, 0x64                     ; 0x2085
    sub ax, word [bp + 0x18]         ; 0x2088
    mov cx, 0x64                     ; 0x208b
    cwd                              ; 0x208e
    idiv cx                          ; 0x208f
    mov ax, dx                       ; 0x2091
    push ax                          ; 0x2093
    mov ax, 0x11                     ; 0x2094
    imul word [bss_92f2]             ; 0x2097
    mov bx, ax                       ; 0x209b
    pop ax                           ; 0x209d
    mov byte [bx - 0x6cfe], al       ; 0x209e
    cmp word [bp + 0x1e], byte 1     ; 0x20a2
    je short @..api_idx_0004_5.l4    ; 0x20a6
    jmp near @..api_idx_0004_5.l6    ; 0x20a8
@..api_idx_0004_5.l4:
    mov ax, word [dseg_03ae]         ; 0x20ab
    sub ax, word [bp - 0x0002]       ; 0x20ae
    imul word [bp + 0x18]            ; 0x20b1
    add ax, strict word 0xffce       ; 0x20b4
    cwd                              ; 0x20b7
    idiv cx                          ; 0x20b8
    mov cx, ax                       ; 0x20ba
    mov ax, word [bp + 0x6]          ; 0x20bc
    sub ax, cx                       ; 0x20bf
    mov word [bx - 0x6d0c], ax       ; 0x20c1
    cmp word [bp + 0x1a], byte 0     ; 0x20c5
    je short @..api_idx_0004_5.l5    ; 0x20c9
    mov ax, 0x15e                    ; 0x20cb
    imul word [bp + 0x4]             ; 0x20ce
    mov cx, word [bp + 0xa]          ; 0x20d1
    shl cx, 1                        ; 0x20d4
    add ax, cx                       ; 0x20d6
    add ax, word [bp + 0x1a]         ; 0x20d8
    mov bx, ax                       ; 0x20db
    mov al, byte [bx + 0x6a52]       ; 0x20dd
    sub ah, ah                       ; 0x20e1
    mov cx, ax                       ; 0x20e3
    mov ax, 0xa0                     ; 0x20e5
    sub ax, cx                       ; 0x20e8
    shl ax, 1                        ; 0x20ea
    push ax                          ; 0x20ec
    mov ax, 0x11                     ; 0x20ed
    imul word [bss_92f2]             ; 0x20f0
    mov bx, ax                       ; 0x20f4
    mov al, byte [bx - 0x6cfe]       ; 0x20f6
    sub ah, ah                       ; 0x20fa
    mov cx, ax                       ; 0x20fc
    pop ax                           ; 0x20fe
    imul cx                          ; 0x20ff
    mov cx, 0x64                     ; 0x2101
    cwd                              ; 0x2104
    idiv cx                          ; 0x2105
    sub word [bx - 0x6d0c], ax       ; 0x2107
@..api_idx_0004_5.l5:
    mov ax, word [dseg_03dc]         ; 0x210b
    sub ax, word [bp - 0x0004]       ; 0x210e
    imul word [bp + 0x18]            ; 0x2111
    add ax, strict word 0xffce       ; 0x2114
    mov cx, 0x64                     ; 0x2117
    cwd                              ; 0x211a
    idiv cx                          ; 0x211b
    mov cx, ax                       ; 0x211d
    mov ax, word [bp + 0x8]          ; 0x211f
    sub ax, cx                       ; 0x2122
    push ax                          ; 0x2124
    mov ax, 0x11                     ; 0x2125
    imul word [bss_92f2]             ; 0x2128
    mov bx, ax                       ; 0x212c
    pop ax                           ; 0x212e
    mov word [bx - 0x6d0a], ax       ; 0x212f
    jmp near @..api_idx_0004_5.l10   ; 0x2133
@..api_idx_0004_5.l6:
    cmp word [bp + 0x1e], byte 2     ; 0x2136
    je short @..api_idx_0004_5.l7    ; 0x213a
    jmp near @..api_idx_0004_5.l9    ; 0x213c
@..api_idx_0004_5.l7:
    mov ax, 0x11                     ; 0x213f
    imul word [bss_92f2]             ; 0x2142
    mov bx, ax                       ; 0x2146
    mov al, byte [bx - 0x6cfe]       ; 0x2148
    sub ah, ah                       ; 0x214c
    mov cx, 0xa0                     ; 0x214e
    sub cx, word [bp - 0x0002]       ; 0x2151
    imul cx                          ; 0x2154
    mov cx, 0x64                     ; 0x2156
    cwd                              ; 0x2159
    idiv cx                          ; 0x215a
    add ax, word [bp - 0x0002]       ; 0x215c
    add ax, word [bp + 0x6]          ; 0x215f
    mov word [bx - 0x6d0c], ax       ; 0x2162
    cmp word [bp + 0x1a], byte 0     ; 0x2166
    je short @..api_idx_0004_5.l8    ; 0x216a
    mov ax, 0x15e                    ; 0x216c
    imul word [bp + 0x4]             ; 0x216f
    mov cx, word [bp + 0xa]          ; 0x2172
    shl cx, 1                        ; 0x2175
    add ax, cx                       ; 0x2177
    add ax, word [bp + 0x1a]         ; 0x2179
    mov bx, ax                       ; 0x217c
    mov al, byte [bx + 0x6a52]       ; 0x217e
    sub ah, ah                       ; 0x2182
    mov cx, ax                       ; 0x2184
    mov ax, 0xa0                     ; 0x2186
    sub ax, cx                       ; 0x2189
    shl ax, 1                        ; 0x218b
    push ax                          ; 0x218d
    mov ax, 0x11                     ; 0x218e
    imul word [bss_92f2]             ; 0x2191
    mov bx, ax                       ; 0x2195
    mov al, byte [bx - 0x6cfe]       ; 0x2197
    sub ah, ah                       ; 0x219b
    mov cx, ax                       ; 0x219d
    pop ax                           ; 0x219f
    imul cx                          ; 0x21a0
    mov cx, 0x64                     ; 0x21a2
    cwd                              ; 0x21a5
    idiv cx                          ; 0x21a6
    sub word [bx - 0x6d0c], ax       ; 0x21a8
@..api_idx_0004_5.l8:
    mov ax, 0x11                     ; 0x21ac
    imul word [bss_92f2]             ; 0x21af
    mov bx, ax                       ; 0x21b3
    mov al, byte [bx - 0x6cfe]       ; 0x21b5
    sub ah, ah                       ; 0x21b9
    mov cx, 0x42                     ; 0x21bb
    sub cx, word [bp - 0x0004]       ; 0x21be
    imul cx                          ; 0x21c1
    mov cx, 0x64                     ; 0x21c3
    cwd                              ; 0x21c6
    idiv cx                          ; 0x21c7
    add ax, word [bp - 0x0004]       ; 0x21c9
    add ax, word [bp + 0x8]          ; 0x21cc
    mov word [bx - 0x6d0a], ax       ; 0x21cf
    jmp short @..api_idx_0004_5.l10  ; 0x21d3
@..api_idx_0004_5.l9:
    cmp word [bp + 0x1e], byte 3     ; 0x21d5
    jne short @..api_idx_0004_5.l10  ; 0x21d9
    mov ax, word [bp + 0x6]          ; 0x21db
    push ax                          ; 0x21de
    mov ax, 0x11                     ; 0x21df
    imul word [bss_92f2]             ; 0x21e2
    mov bx, ax                       ; 0x21e6
    pop ax                           ; 0x21e8
    mov word [bx - 0x6d0c], ax       ; 0x21e9
    mov ax, word [bp + 0x8]          ; 0x21ed
    mov word [bx - 0x6d0a], ax       ; 0x21f0
@..api_idx_0004_5.l10:
    jmp short @..api_idx_0004_5.l12  ; 0x21f4
@..api_idx_0004_5.l11:
    mov ax, word [bp - 0x0002]       ; 0x21f6
    add ax, word [bp + 0x6]          ; 0x21f9
    push ax                          ; 0x21fc
    mov ax, 0x11                     ; 0x21fd
    imul word [bss_92f2]             ; 0x2200
    mov bx, ax                       ; 0x2204
    pop ax                           ; 0x2206
    mov word [bx - 0x6d0c], ax       ; 0x2207
    mov ax, word [bp - 0x0004]       ; 0x220b
    add ax, word [bp + 0x8]          ; 0x220e
    mov word [bx - 0x6d0a], ax       ; 0x2211
@..api_idx_0004_5.l12:
    jmp short @..api_idx_0004_5.l14  ; 0x2215
@..api_idx_0004_5.l13:
    mov ax, word [bp + 0x6]          ; 0x2217
    push ax                          ; 0x221a
    mov ax, 0x11                     ; 0x221b
    imul word [bss_92f2]             ; 0x221e
    mov bx, ax                       ; 0x2222
    pop ax                           ; 0x2224
    mov word [bx - 0x6d0c], ax       ; 0x2225
    mov ax, word [bp + 0x8]          ; 0x2229
    mov word [bx - 0x6d0a], ax       ; 0x222c
@..api_idx_0004_5.l14:
    mov al, byte [bp + 0xa]          ; 0x2230
    push ax                          ; 0x2233
    mov ax, 0x11                     ; 0x2234
    imul word [bss_92f2]             ; 0x2237
    mov bx, ax                       ; 0x223b
    pop ax                           ; 0x223d
    mov byte [bx - 0x6d04], al       ; 0x223e
    mov al, byte [bp + 0xc]          ; 0x2242
    mov byte [bx - 0x6d03], al       ; 0x2245
    mov al, byte [bp + 0xe]          ; 0x2249
    mov byte [bx - 0x6d02], al       ; 0x224c
    mov al, byte [bp + 0x10]         ; 0x2250
    mov byte [bx - 0x6d01], al       ; 0x2253
    mov ax, word [bp + 0x12]         ; 0x2257
    mov word [bx - 0x6d08], ax       ; 0x225a
    mov ax, word [bp + 0x14]         ; 0x225e
    mov word [bx - 0x6d06], ax       ; 0x2261
    mov al, byte [bp + 0x16]         ; 0x2265
    mov byte [bx - 0x6cff], al       ; 0x2268
    mov al, byte [bp + 0x1a]         ; 0x226c
    mov byte [bx - 0x6cfd], al       ; 0x226f
    mov al, byte [bp + 0x1c]         ; 0x2273
    mov byte [bx - 0x6cfc], al       ; 0x2276
    inc word [bss_92f2]              ; 0x227a
    mov ax, word [bss_92f2]          ; 0x227e
    cmp ax, strict word 0x78         ; 0x2281
    jl short @..api_idx_0004_5.l16   ; 0x2284
@..api_idx_0004_5.l15:
    mov ax, 0                        ; 0x2286
    push ax                          ; 0x2289
    call ds_app_0a27                 ; 0x228a
    pop cx                           ; 0x228d
    jmp short @..api_idx_0004_5.l15  ; 0x228e
@..api_idx_0004_5.l16:
    ret                              ; 0x2290
