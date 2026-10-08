api_idx_000e_2:
    mov ax, 0xfff2                   ; 0x2138
    call ds_dispatch_f40b            ; 0x213b
    mov bx, word [bp + 0xe]          ; 0x213e
    mov byte [bx], 0                 ; 0x2141
    mov ax, word [bp + 0x4]          ; 0x2144
    shl ax, 1                        ; 0x2147
    mov bx, ax                       ; 0x2149
    mov bx, word [bx - 0x7b7e]       ; 0x214b
    cmp byte [bx + 0x19f], 0xff      ; 0x214f
    jne short @..api_idx_000e_2.l1   ; 0x2154
    ret                              ; 0x2156
@..api_idx_000e_2.l1:
    mov al, byte [bx + 0x19f]        ; 0x2157
    cbw                              ; 0x215b
    mov word [bp - 0x0002], ax       ; 0x215c
    mov word [bp - 0x000e], 0        ; 0x215f
    mov cx, 0x15e                    ; 0x2164
    imul cx                          ; 0x2167
    push ax                          ; 0x2169
    mov ax, 3                        ; 0x216a
    imul word [bp + 0x8]             ; 0x216d
    add ax, word [bp + 0xa]          ; 0x2170
    mov bx, ax                       ; 0x2173
    mov al, byte [bx - 0x7bd0]       ; 0x2175
    sub ah, ah                       ; 0x2179
    mov cx, ax                       ; 0x217b
    pop ax                           ; 0x217d
    add ax, cx                       ; 0x217e
    mov bx, ax                       ; 0x2180
    mov al, byte [bx + 0x6a1a]       ; 0x2182
    sub ah, ah                       ; 0x2186
    mov word [bp - 0x0004], ax       ; 0x2188
    jmp near @..api_idx_000e_2.l15   ; 0x218b
