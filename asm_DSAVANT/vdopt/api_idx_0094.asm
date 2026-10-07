api_idx_0094:
    mov ax, 0xff6c                   ; 0x417c
    call ds_dispatch_f40b            ; 0x417f
    mov word [data_9b5e], 5          ; 0x4182
    mov word [bp - 0x0094], 0        ; 0x4188
    mov word [bp - 0x0050], 0        ; 0x418e
@..api_idx_0094.l1:
    mov word [bp - 0x0052], 0        ; 0x4193
@..api_idx_0094.l2:
    mov ax, 0x248                    ; 0x4198
    imul word [bp + 0x4]             ; 0x419b
    push ax                          ; 0x419e
    mov ax, 0x78                     ; 0x419f
    imul word [bp - 0x0050]          ; 0x41a2
    mov cx, ax                       ; 0x41a5
    pop ax                           ; 0x41a7
    add ax, cx                       ; 0x41a8
    push ax                          ; 0x41aa
    mov ax, 0xc                      ; 0x41ab
    imul word [bp - 0x0052]          ; 0x41ae
    mov cx, ax                       ; 0x41b1
    pop ax                           ; 0x41b3
    add ax, cx                       ; 0x41b4
    mov bx, ax                       ; 0x41b6
    cmp word [bx + 0x5c34], byte 0   ; 0x41b8
    jg short @..api_idx_0094.l3      ; 0x41bd
    jmp near @..api_idx_0094.l8      ; 0x41bf
@..api_idx_0094.l3:
    mov ax, 0                        ; 0x41c2
    push ax                          ; 0x41c5
    push word [bx + 0x5c34]          ; 0x41c6
    lea ax, word [bp - 0x004c]       ; 0x41ca
    push ax                          ; 0x41cd
    mov ax, 1                        ; 0x41ce
    push ax                          ; 0x41d1
    call ds_dispatch_b63c            ; 0x41d2
    add sp, byte 8                   ; 0x41d5
    mov ax, 0x248                    ; 0x41d8
    imul word [bp + 0x4]             ; 0x41db
    push ax                          ; 0x41de
    mov ax, 0x78                     ; 0x41df
    imul word [bp - 0x0050]          ; 0x41e2
    mov cx, ax                       ; 0x41e5
    pop ax                           ; 0x41e7
    add ax, cx                       ; 0x41e8
    push ax                          ; 0x41ea
    mov ax, 0xc                      ; 0x41eb
    imul word [bp - 0x0052]          ; 0x41ee
    mov cx, ax                       ; 0x41f1
    pop ax                           ; 0x41f3
    add ax, cx                       ; 0x41f4
    mov bx, ax                       ; 0x41f6
    mov al, byte [bx + 0x5c3b]       ; 0x41f8
    sub ah, ah                       ; 0x41fc
    test ax, 0x80                    ; 0x41fe
    je short @..api_idx_0094.l4      ; 0x4201
    lea ax, word [bp - 0x004c]       ; 0x4203
    push ax                          ; 0x4206
    mov ax, 0x16                     ; 0x4207
    imul word [bp - 0x0094]          ; 0x420a
    add ax, 0x9bb0                   ; 0x420e
    push ax                          ; 0x4211
    call ds_dispatch_f364            ; 0x4212
    add sp, byte 4                   ; 0x4215
    jmp short @..api_idx_0094.l5     ; 0x4218
@..api_idx_0094.l4:
    mov ax, 0x16                     ; 0x421a
    imul word [bp - 0x0094]          ; 0x421d
    add ax, 0x9bb0                   ; 0x4221
    push ax                          ; 0x4224
    mov al, byte [bp - 0x0013]       ; 0x4225
    sub ah, ah                       ; 0x4228
    add ax, 0x1770                   ; 0x422a
    push ax                          ; 0x422d
    call ds_dispatch_b53b            ; 0x422e
    add sp, byte 4                   ; 0x4231
@..api_idx_0094.l5:
    mov al, byte [bp - 0x0013]       ; 0x4234
    sub ah, ah                       ; 0x4237
    mov cx, word [bp - 0x0094]       ; 0x4239
    shl cx, 1                        ; 0x423d
    mov bx, cx                       ; 0x423f
    mov word [bx - 0x6478], ax       ; 0x4241
    mov ax, word [bp - 0x0050]       ; 0x4245
    mov word [bx - 0x64a0], ax       ; 0x4248
    mov ax, 0x248                    ; 0x424c
    imul word [bp + 0x4]             ; 0x424f
    push ax                          ; 0x4252
    mov ax, 0x78                     ; 0x4253
    imul word [bp - 0x0050]          ; 0x4256
    mov cx, ax                       ; 0x4259
    pop ax                           ; 0x425b
    add ax, cx                       ; 0x425c
    push ax                          ; 0x425e
    mov ax, 0xc                      ; 0x425f
    imul word [bp - 0x0052]          ; 0x4262
    mov cx, ax                       ; 0x4265
    pop ax                           ; 0x4267
    add ax, cx                       ; 0x4268
    mov bx, ax                       ; 0x426a
    mov al, byte [bx + 0x5c38]       ; 0x426c
    sub ah, ah                       ; 0x4270
    mov bx, ax                       ; 0x4272
    cmp byte [bx + 0x60e], 1         ; 0x4274
    jne short @..api_idx_0094.l6     ; 0x4279
    mov ax, 0x248                    ; 0x427b
    imul word [bp + 0x4]             ; 0x427e
    push ax                          ; 0x4281
    mov ax, 0x78                     ; 0x4282
    imul word [bp - 0x0050]          ; 0x4285
    mov cx, ax                       ; 0x4288
    pop ax                           ; 0x428a
    add ax, cx                       ; 0x428b
    push ax                          ; 0x428d
    mov ax, 0xc                      ; 0x428e
    imul word [bp - 0x0052]          ; 0x4291
    mov cx, ax                       ; 0x4294
    pop ax                           ; 0x4296
    add ax, cx                       ; 0x4297
    mov bx, ax                       ; 0x4299
    mov al, byte [bx + 0x5c3a]       ; 0x429b
    sub ah, ah                       ; 0x429f
    mov cx, word [bp - 0x0094]       ; 0x42a1
    shl cx, 1                        ; 0x42a5
    mov bx, cx                       ; 0x42a7
    mov word [bx - 0x6298], ax       ; 0x42a9
    jmp short @..api_idx_0094.l7     ; 0x42ad
@..api_idx_0094.l6:
    mov ax, word [bp - 0x0094]       ; 0x42af
    shl ax, 1                        ; 0x42b3
    mov bx, ax                       ; 0x42b5
    mov word [bx - 0x6298], 0        ; 0x42b7
@..api_idx_0094.l7:
    mov ax, word [bp - 0x0050]       ; 0x42bd
    xchg al, ah                      ; 0x42c0
    sub al, al                       ; 0x42c2
    add ax, word [bp - 0x0052]       ; 0x42c4
    mov cx, word [bp - 0x0094]       ; 0x42c7
    shl cx, 1                        ; 0x42cb
    mov bx, cx                       ; 0x42cd
    add bx, bp                       ; 0x42cf
    mov word [bx - 0x0092], ax       ; 0x42d1
    inc word [bp - 0x0094]           ; 0x42d5
@..api_idx_0094.l8:
    inc word [bp - 0x0052]           ; 0x42d9
    mov ax, word [bp - 0x0052]       ; 0x42dc
    cmp ax, strict word 0xa          ; 0x42df
    jge short @..api_idx_0094.l9     ; 0x42e2
    jmp near @..api_idx_0094.l2      ; 0x42e4
@..api_idx_0094.l9:
    inc word [bp - 0x0050]           ; 0x42e7
    mov ax, word [bp - 0x0050]       ; 0x42ea
    cmp ax, strict word 2            ; 0x42ed
    jge short @..api_idx_0094.l10    ; 0x42f0
    jmp near @..api_idx_0094.l1      ; 0x42f2
@..api_idx_0094.l10:
    cmp word [bp - 0x0094], byte 0   ; 0x42f5
    jne short @..api_idx_0094.l11    ; 0x42fa
    ret                              ; 0x42fc
