; auto-generated
api_idx_0006_ILJT:
    mov ax, 0xfffa                   ; 0x2133
    call aztec_csav                  ; 0x2136
    call api_idx_0006_HQVN           ; 0x2139
    mov word [bp - 0x0002], ax       ; 0x213c
    test ax, ax                      ; 0x213f
    je short @..api_idx_0006_ILJT.l1 ; 0x2141
    mov ax, 0                        ; 0x2143
    push ax                          ; 0x2146
    push word [bss_8d08]             ; 0x2147
    push word [bss_8d06]             ; 0x214b
    call thunk_13                    ; 0x214f
    add sp, byte 6                   ; 0x2152
    mov ax, 0xb9                     ; 0x2155
    push ax                          ; 0x2158
    mov ax, 0x131                    ; 0x2159
    push ax                          ; 0x215c
    call thunk                       ; 0x215d
    add sp, byte 4                   ; 0x2160
    mov ax, 4                        ; 0x2163
    push ax                          ; 0x2166
    mov bx, word [bp - 0x0002]       ; 0x2167
    mov al, byte [bx + 0x7]          ; 0x216a
    sub ah, ah                       ; 0x216d
    push ax                          ; 0x216f
    call ds_loc_3a77                 ; 0x2170
    add sp, byte 4                   ; 0x2173
    mov ax, 0xc4                     ; 0x2176
    push ax                          ; 0x2179
    mov ax, 0x13c                    ; 0x217a
    push ax                          ; 0x217d
    mov ax, 0xb9                     ; 0x217e
    push ax                          ; 0x2181
    mov ax, 0x131                    ; 0x2182
    push ax                          ; 0x2185
    call thunk_4                     ; 0x2186
    add sp, byte 8                   ; 0x2189
    mov ax, 1                        ; 0x218c
    ret                              ; 0x218f
@..api_idx_0006_ILJT.l1:
    mov ax, 0                        ; 0x2190
    push ax                          ; 0x2193
    mov ax, word [bss_8f3e]          ; 0x2194
    mov cx, 6                        ; 0x2197
    shl ax, cl                       ; 0x219a
    mov cx, word [bss_8f40]          ; 0x219c
    shl cx, 1                        ; 0x21a0
    shl cx, 1                        ; 0x21a2
    shl cx, 1                        ; 0x21a4
    add ax, cx                       ; 0x21a6
    add ax, word [bss_8f42]          ; 0x21a8
    push ax                          ; 0x21ac
    mov ax, 0x8bfe                   ; 0x21ad
    push ax                          ; 0x21b0
    call set_bitmap_bit              ; 0x21b1
    add sp, byte 6                   ; 0x21b4
    mov ax, 0                        ; 0x21b7
    push ax                          ; 0x21ba
    push word [bss_8d08]             ; 0x21bb
    push word [bss_8d06]             ; 0x21bf
    call thunk_13                    ; 0x21c3
    add sp, byte 6                   ; 0x21c6
    mov ax, 0xc4                     ; 0x21c9
    push ax                          ; 0x21cc
    mov ax, 0x13c                    ; 0x21cd
    push ax                          ; 0x21d0
    mov ax, 0xb9                     ; 0x21d1
    push ax                          ; 0x21d4
    mov ax, 0x131                    ; 0x21d5
    push ax                          ; 0x21d8
    call thunk_4                     ; 0x21d9
    add sp, byte 8                   ; 0x21dc
    mov ax, 0                        ; 0x21df
    ret                              ; 0x21e2
loc_21e3:
    mov ax, 0                        ; 0x21e3
    call aztec_csav                  ; 0x21e6
    mov ax, 0x98                     ; 0x21e9
    push ax                          ; 0x21ec
    mov ax, 0x13f                    ; 0x21ed
    push ax                          ; 0x21f0
    mov ax, 0x92                     ; 0x21f1
    push ax                          ; 0x21f4
    mov ax, 0                        ; 0x21f5
    push ax                          ; 0x21f8
    call thunk_4                     ; 0x21f9
    add sp, byte 8                   ; 0x21fc
    mov ax, 0x64                     ; 0x21ff
    push ax                          ; 0x2202
    call ds_leaf_loc_RTLQ            ; 0x2203
    pop cx                           ; 0x2206
    push word [bp + 0x4]             ; 0x2207
    call api_idx_0050_RIIV           ; 0x220a
    pop cx                           ; 0x220d
    mov word [bss_91b2], 1           ; 0x220e
    ret                              ; 0x2214
