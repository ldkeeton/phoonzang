math_loc_20e3:
    mov ax, 0                        ; 0x20e3
    call ds_dispatch_f40b            ; 0x20e6
    les bx, word [data_0002]         ; 0x20e9
    mov ax, word [es:bx]             ; 0x20ed
    mov dx, word [es:bx + 0x2]       ; 0x20f0
    mov word [data_9090], dx         ; 0x20f4
    mov word [data_908e], ax         ; 0x20f8
    mov ax, word [data_908e]         ; 0x20fb
    mov dx, word [data_9090]         ; 0x20fe
    sub ax, word [data_908a]         ; 0x2102
    sbb dx, word [data_908c]         ; 0x2106
    mov word [data_9094], dx         ; 0x210a
    mov word [data_9092], ax         ; 0x210e
    mov ax, word [data_948c]         ; 0x2111
    cwd                              ; 0x2114
    mov cx, ax                       ; 0x2115
    mov bx, dx                       ; 0x2117
    mov ax, word [data_9092]         ; 0x2119
    mov dx, word [data_9094]         ; 0x211c
    cmp bx, dx                       ; 0x2120
    jg short @..math_loc_20e3.l1     ; 0x2122
    jne short @..math_loc_20e3.l2    ; 0x2124
    cmp cx, ax                       ; 0x2126
    jbe short @..math_loc_20e3.l2    ; 0x2128
@..math_loc_20e3.l1:
    jmp short @..math_loc_20e3.l3    ; 0x212a
@..math_loc_20e3.l2:
    mov ax, word [data_908e]         ; 0x212c
    mov dx, word [data_9090]         ; 0x212f
    mov word [data_908c], dx         ; 0x2133
    mov word [data_908a], ax         ; 0x2137
    mov ax, word [data_943a]         ; 0x213a
    inc ax                           ; 0x213d
    mov cx, 3                        ; 0x213e
    cwd                              ; 0x2141
    idiv cx                          ; 0x2142
    mov word [data_943a], dx         ; 0x2144
    push dx                          ; 0x2148
    call api_idx_000a                ; 0x2149
    pop cx                           ; 0x214c
    mov ax, 0x41                     ; 0x214d
    push ax                          ; 0x2150
    mov ax, 0x65                     ; 0x2151
    push ax                          ; 0x2154
    mov ax, 0x19                     ; 0x2155
    push ax                          ; 0x2158
    mov ax, 0x5a                     ; 0x2159
    push ax                          ; 0x215c
    call ds_dispatch_e8da            ; 0x215d
    add sp, byte 8                   ; 0x2160
    mov ax, 0xffff                   ; 0x2163
    push ax                          ; 0x2166
    call api_idx_0002_2              ; 0x2167
    pop cx                           ; 0x216a
    push word [bp + 0x4]             ; 0x216b
    call api_idx_0004                ; 0x216e
    pop cx                           ; 0x2171
    mov ax, 0xbf                     ; 0x2172
    push ax                          ; 0x2175
    mov ax, 0x13f                    ; 0x2176
    push ax                          ; 0x2179
    mov ax, 0x7e                     ; 0x217a
    push ax                          ; 0x217d
    mov ax, 0xb8                     ; 0x217e
    push ax                          ; 0x2181
    call ds_dispatch_e8da            ; 0x2182
    add sp, byte 8                   ; 0x2185
@..math_loc_20e3.l3:
    ret                              ; 0x2188
