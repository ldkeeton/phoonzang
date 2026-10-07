api_idx_0060:
    mov ax, 0xffa0                   ; 0x1fd5
    call ds_dispatch_f40b            ; 0x1fd8
    mov word [data_91fe], 0          ; 0x1fdb
    mov ax, 0x64                     ; 0x1fe1
    push ax                          ; 0x1fe4
    call ds_dispatch_b7a9            ; 0x1fe5
    pop cx                           ; 0x1fe8
    inc ax                           ; 0x1fe9
    mov word [bp - 0x0002], ax       ; 0x1fea
    mov word [bp - 0x0004], 0        ; 0x1fed
@..api_idx_0060.l1:
    cmp word [bp - 0x0002], byte 0   ; 0x1ff2
    jle short @..api_idx_0060.l4     ; 0x1ff6
    cmp word [bp - 0x0004], byte 0x64 ; 0x1ff8
    jge short @..api_idx_0060.l4     ; 0x1ffc
    inc word [data_91fe]             ; 0x1ffe
    mov ax, word [data_91fe]         ; 0x2002
    cmp ax, strict word 0x12         ; 0x2005
    jl short @..api_idx_0060.l2      ; 0x2008
    mov word [data_91fe], 0          ; 0x200a
    inc word [bp - 0x0004]           ; 0x2010
@..api_idx_0060.l2:
    push word [data_91fe]            ; 0x2013
    mov ax, word [bp + 0x4]          ; 0x2017
    add ax, strict word 0x30         ; 0x201a
    push ax                          ; 0x201d
    call ds_dispatch_ec74            ; 0x201e
    add sp, byte 4                   ; 0x2021
    test ax, ax                      ; 0x2024
    je short @..api_idx_0060.l3      ; 0x2026
    dec word [bp - 0x0002]           ; 0x2028
@..api_idx_0060.l3:
    jmp short @..api_idx_0060.l1     ; 0x202b
@..api_idx_0060.l4:
    mov ax, 0x91d6                   ; 0x202d
    push ax                          ; 0x2030
    mov ax, word [data_91fe]         ; 0x2031
    add ax, 0x14b4                   ; 0x2034
    push ax                          ; 0x2037
    call ds_dispatch_b53b            ; 0x2038
    add sp, byte 4                   ; 0x203b
    mov ax, 0                        ; 0x203e
    push ax                          ; 0x2041
    mov ax, 0x30                     ; 0x2042
    push ax                          ; 0x2045
    mov ax, 0x9200                   ; 0x2046
    push ax                          ; 0x2049
    call ds_dispatch_f306            ; 0x204a
    add sp, byte 6                   ; 0x204d
    mov ax, word [data_91fe]         ; 0x2050
    shl ax, 1                        ; 0x2053
    mov bx, ax                       ; 0x2055
    mov word [bx - 0x6e00], 1        ; 0x2057
    mov ax, 0                        ; 0x205d
    push ax                          ; 0x2060
    mov ax, 0x10                     ; 0x2061
    push ax                          ; 0x2064
    mov ax, 0x9230                   ; 0x2065
    push ax                          ; 0x2068
    call ds_dispatch_f306            ; 0x2069
    add sp, byte 6                   ; 0x206c
    mov word [bp - 0x002e], 0        ; 0x206f
    mov ax, 0                        ; 0x2074
    push ax                          ; 0x2077
    mov ax, 0x20                     ; 0x2078
    push ax                          ; 0x207b
    lea ax, word [bp - 0x002c]       ; 0x207c
    push ax                          ; 0x207f
    call ds_dispatch_f306            ; 0x2080
    add sp, byte 6                   ; 0x2083
    mov word [bp - 0x0002], 0        ; 0x2086
@..api_idx_0060.l5:
    mov ax, word [data_91fe]         ; 0x208b
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
    mov ax, word [data_91fe]         ; 0x20cf
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
    call ds_dispatch_ec74            ; 0x2104
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
