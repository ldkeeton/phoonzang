api_idx_0006_4:
    mov ax, 0xfffa                   ; 0x2133
    call ds_dispatch_f40b            ; 0x2136
    call api_idx_0006_3              ; 0x2139
    mov word [bp - 0x0002], ax       ; 0x213c
    test ax, ax                      ; 0x213f
    je short @..api_idx_0006_4.l1    ; 0x2141
    mov ax, 0                        ; 0x2143
    push ax                          ; 0x2146
    push word [0x8d08]               ; 0x2147
    push word [data_8d06]            ; 0x214b
    call ds_dispatch_e94f            ; 0x214f
    add sp, byte 6                   ; 0x2152
    mov ax, 0xb9                     ; 0x2155
    push ax                          ; 0x2158
    mov ax, 0x131                    ; 0x2159
    push ax                          ; 0x215c
    call ds_dispatch_e809            ; 0x215d
    add sp, byte 4                   ; 0x2160
    mov ax, 4                        ; 0x2163
    push ax                          ; 0x2166
    mov bx, word [bp - 0x0002]       ; 0x2167
    mov al, byte [bx + 0x7]          ; 0x216a
    sub ah, ah                       ; 0x216d
    push ax                          ; 0x216f
    call ds_dispatch_e830            ; 0x2170
    add sp, byte 4                   ; 0x2173
    mov ax, 0xc4                     ; 0x2176
    push ax                          ; 0x2179
    mov ax, 0x13c                    ; 0x217a
    push ax                          ; 0x217d
    mov ax, 0xb9                     ; 0x217e
    push ax                          ; 0x2181
    mov ax, 0x131                    ; 0x2182
    push ax                          ; 0x2185
    call ds_dispatch_e8da            ; 0x2186
    add sp, byte 8                   ; 0x2189
    mov ax, 1                        ; 0x218c
    ret                              ; 0x218f
