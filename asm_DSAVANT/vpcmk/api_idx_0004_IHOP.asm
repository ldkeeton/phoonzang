; auto-generated
api_idx_0004_IHOP:
    mov ax, 0xfffc                   ; 0x2144
    call aztec_csav                  ; 0x2147
    mov ax, word [dseg_0038]         ; 0x214a
    mov word [bp - 0x0004], ax       ; 0x214d
    mov word [bp - 0x0002], 0        ; 0x2150
@..api_idx_0004_IHOP.l1:
    mov bx, word [bp + 0x6]          ; 0x2155
    mov si, word [bp - 0x0002]       ; 0x2158
    cmp byte [bx + si], 0x31         ; 0x215b
    je short @..api_idx_0004_IHOP.l2 ; 0x215e
    mov ax, 0x248                    ; 0x2160
    imul word [bp + 0x4]             ; 0x2163
    add ax, word [bp - 0x0004]       ; 0x2166
    add ax, si                       ; 0x2169
    mov bx, ax                       ; 0x216b
    cmp byte [bx + 0x5d6c], 0        ; 0x216d
    jbe short @..api_idx_0004_IHOP.l3 ; 0x2172
@..api_idx_0004_IHOP.l2:
    mov ax, 1                        ; 0x2174
    jmp short @..api_idx_0004_IHOP.l4 ; 0x2177
@..api_idx_0004_IHOP.l3:
    mov ax, 0                        ; 0x2179
@..api_idx_0004_IHOP.l4:
    add si, word [bp - 0x0004]       ; 0x217c
    mov cx, si                       ; 0x217f
    shl cx, 1                        ; 0x2181
    mov bx, cx                       ; 0x2183
    mov word [bx - 0x6a50], ax       ; 0x2185
    inc word [bp - 0x0002]           ; 0x2189
    mov ax, word [bp - 0x0002]       ; 0x218c
    cmp ax, strict word 0xa          ; 0x218f
    jl short @..api_idx_0004_IHOP.l1 ; 0x2192
    mov ax, word [dseg_003c]         ; 0x2194
    mov word [bp - 0x0004], ax       ; 0x2197
    mov word [bp - 0x0002], 0        ; 0x219a
@..api_idx_0004_IHOP.l5:
    mov bx, word [bp + 0x8]          ; 0x219f
    mov si, word [bp - 0x0002]       ; 0x21a2
    cmp byte [bx + si], 0x31         ; 0x21a5
    je short @..api_idx_0004_IHOP.l6 ; 0x21a8
    mov ax, 0x248                    ; 0x21aa
    imul word [bp + 0x4]             ; 0x21ad
    add ax, word [bp - 0x0004]       ; 0x21b0
    add ax, si                       ; 0x21b3
    mov bx, ax                       ; 0x21b5
    cmp byte [bx + 0x5d6c], 0        ; 0x21b7
    jbe short @..api_idx_0004_IHOP.l7 ; 0x21bc
@..api_idx_0004_IHOP.l6:
    mov ax, 1                        ; 0x21be
    jmp short @..api_idx_0004_IHOP.l8 ; 0x21c1
@..api_idx_0004_IHOP.l7:
    mov ax, 0                        ; 0x21c3
@..api_idx_0004_IHOP.l8:
    add si, word [bp - 0x0004]       ; 0x21c6
    mov cx, si                       ; 0x21c9
    shl cx, 1                        ; 0x21cb
    mov bx, cx                       ; 0x21cd
    mov word [bx - 0x6a50], ax       ; 0x21cf
    inc word [bp - 0x0002]           ; 0x21d3
    mov ax, word [bp - 0x0002]       ; 0x21d6
    cmp ax, strict word 8            ; 0x21d9
    jl short @..api_idx_0004_IHOP.l5 ; 0x21dc
    mov ax, word [dseg_0040]         ; 0x21de
    mov word [bp - 0x0004], ax       ; 0x21e1
    mov word [bp - 0x0002], 0        ; 0x21e4
@..api_idx_0004_IHOP.l9:
    mov bx, word [bp + 0xa]          ; 0x21e9
    mov si, word [bp - 0x0002]       ; 0x21ec
    cmp byte [bx + si], 0x31         ; 0x21ef
    je short @..api_idx_0004_IHOP.l10 ; 0x21f2
    mov ax, 0x248                    ; 0x21f4
    imul word [bp + 0x4]             ; 0x21f7
    add ax, word [bp - 0x0004]       ; 0x21fa
    add ax, si                       ; 0x21fd
    mov bx, ax                       ; 0x21ff
    cmp byte [bx + 0x5d6c], 0        ; 0x2201
    jbe short @..api_idx_0004_IHOP.l11 ; 0x2206
@..api_idx_0004_IHOP.l10:
    mov ax, 1                        ; 0x2208
    jmp short @..api_idx_0004_IHOP.l12 ; 0x220b
@..api_idx_0004_IHOP.l11:
    mov ax, 0                        ; 0x220d
@..api_idx_0004_IHOP.l12:
    add si, word [bp - 0x0004]       ; 0x2210
    mov cx, si                       ; 0x2213
    shl cx, 1                        ; 0x2215
    mov bx, cx                       ; 0x2217
    mov word [bx - 0x6a50], ax       ; 0x2219
    inc word [bp - 0x0002]           ; 0x221d
    mov ax, word [bp - 0x0002]       ; 0x2220
    cmp ax, strict word 6            ; 0x2223
    jl short @..api_idx_0004_IHOP.l9 ; 0x2226
    mov ax, word [dseg_0044]         ; 0x2228
    mov word [bp - 0x0004], ax       ; 0x222b
    mov word [bp - 0x0002], 0        ; 0x222e
@..api_idx_0004_IHOP.l13:
    mov bx, word [bp + 0xc]          ; 0x2233
    mov si, word [bp - 0x0002]       ; 0x2236
    cmp byte [bx + si], 0x31         ; 0x2239
    je short @..api_idx_0004_IHOP.l14 ; 0x223c
    mov ax, 0x248                    ; 0x223e
    imul word [bp + 0x4]             ; 0x2241
    add ax, word [bp - 0x0004]       ; 0x2244
    add ax, si                       ; 0x2247
    mov bx, ax                       ; 0x2249
    cmp byte [bx + 0x5d6c], 0        ; 0x224b
    jbe short @..api_idx_0004_IHOP.l15 ; 0x2250
@..api_idx_0004_IHOP.l14:
    mov ax, 1                        ; 0x2252
    jmp short @..api_idx_0004_IHOP.l16 ; 0x2255
@..api_idx_0004_IHOP.l15:
    mov ax, 0                        ; 0x2257
@..api_idx_0004_IHOP.l16:
    add si, word [bp - 0x0004]       ; 0x225a
    mov cx, si                       ; 0x225d
    shl cx, 1                        ; 0x225f
    mov bx, cx                       ; 0x2261
    mov word [bx - 0x6a50], ax       ; 0x2263
    inc word [bp - 0x0002]           ; 0x2267
    mov ax, word [bp - 0x0002]       ; 0x226a
    cmp ax, strict word 0xa          ; 0x226d
    jl short @..api_idx_0004_IHOP.l13 ; 0x2270
    ret                              ; 0x2272
