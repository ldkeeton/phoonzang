api_idx_000c:
    mov ax, 0xfff4                   ; 0x01d2
    db 0xe8, 0x33, 0xf2 ; call 0xf40b
    mov word [bp - 0x000c], 0        ; 0x01d8
    mov ax, 0x15e                    ; 0x01dd
    imul word [bp + 0x4]             ; 0x01e0
    push ax                          ; 0x01e3
    mov ax, 3                        ; 0x01e4
    imul word [bp + 0x6]             ; 0x01e7
    add ax, word [bp + 0x8]          ; 0x01ea
    mov bx, ax                       ; 0x01ed
    mov al, byte [bx - 0x7bd0]       ; 0x01ef
    sub ah, ah                       ; 0x01f3
    mov cx, ax                       ; 0x01f5
    pop ax                           ; 0x01f7
    add ax, cx                       ; 0x01f8
    mov bx, ax                       ; 0x01fa
    mov al, byte [bx + 0x6a1a]       ; 0x01fc
    sub ah, ah                       ; 0x0200
    mov word [bp - 0x0002], ax       ; 0x0202
    jmp near @..api_idx_000c.l13     ; 0x0205
@..api_idx_000c.l1:
    mov ax, 0x5a                     ; 0x0208
    imul word [bp + 0x6]             ; 0x020b
    push ax                          ; 0x020e
    mov ax, 0x1e                     ; 0x020f
    imul word [bp + 0x8]             ; 0x0212
    mov cx, ax                       ; 0x0215
    pop ax                           ; 0x0217
    add ax, cx                       ; 0x0218
    push ax                          ; 0x021a
    mov ax, 3                        ; 0x021b
    imul word [bp - 0x0002]          ; 0x021e
    mov cx, ax                       ; 0x0221
    pop ax                           ; 0x0223
    add ax, cx                       ; 0x0224
    mov bx, ax                       ; 0x0226
    mov al, byte [bx - 0x7cdd]       ; 0x0228
    sub ah, ah                       ; 0x022c
    mov word [bp - 0x0006], ax       ; 0x022e
    mov bx, word [bp + 0x4]          ; 0x0231
    cmp byte [bx + 0x5b48], 0x18     ; 0x0234
    jne short @..api_idx_000c.l2     ; 0x0239
    cmp word [data_9134], byte 1     ; 0x023b
    jne short @..api_idx_000c.l2     ; 0x0240
    mov ax, 0x15e                    ; 0x0242
    imul bx                          ; 0x0245
    mov cx, word [bp - 0x0006]       ; 0x0247
    shl cx, 1                        ; 0x024a
    shl cx, 1                        ; 0x024c
    add ax, cx                       ; 0x024e
    mov bx, ax                       ; 0x0250
    cmp byte [bx + 0x6ac0], 4        ; 0x0252
    jne short @..api_idx_000c.l2     ; 0x0257
    mov word [bp + 0xa], 0           ; 0x0259
@..api_idx_000c.l2:
    mov ax, 0x5a                     ; 0x025e
    imul word [bp + 0x6]             ; 0x0261
    push ax                          ; 0x0264
    mov ax, 0x1e                     ; 0x0265
    imul word [bp + 0x8]             ; 0x0268
    mov cx, ax                       ; 0x026b
    pop ax                           ; 0x026d
    add ax, cx                       ; 0x026e
    push ax                          ; 0x0270
    mov ax, 3                        ; 0x0271
    imul word [bp - 0x0002]          ; 0x0274
    mov cx, ax                       ; 0x0277
    pop ax                           ; 0x0279
    add ax, cx                       ; 0x027a
    mov bx, ax                       ; 0x027c
    mov al, byte [bx - 0x7cdc]       ; 0x027e
    sub ah, ah                       ; 0x0282
    mov word [bp - 0x0008], ax       ; 0x0284
    cmp word [bp + 0xa], byte 0      ; 0x0287
    je short @..api_idx_000c.l3      ; 0x028b
    dec word [bp - 0x0008]           ; 0x028d
@..api_idx_000c.l3:
    cmp word [bp - 0x0008], byte 0   ; 0x0290
    jle short @..api_idx_000c.l4     ; 0x0294
    jmp near @..api_idx_000c.l8      ; 0x0296
@..api_idx_000c.l4:
    mov al, byte [bx - 0x7cde]       ; 0x0299
    sub ah, ah                       ; 0x029d
    mov word [bp - 0x0004], ax       ; 0x029f
    inc word [bp - 0x0006]           ; 0x02a2
    mov ax, 0x15e                    ; 0x02a5
    imul word [bp + 0x4]             ; 0x02a8
    mov cx, ax                       ; 0x02ab
    mov ax, word [bp - 0x0004]       ; 0x02ad
    add cx, ax                       ; 0x02b0
    mov bx, cx                       ; 0x02b2
    mov al, byte [bx + 0x6a40]       ; 0x02b4
    sub ah, ah                       ; 0x02b8
    push ax                          ; 0x02ba
    mov al, byte [bx + 0x6a4a]       ; 0x02bb
    sub ah, ah                       ; 0x02bf
    mov cx, ax                       ; 0x02c1
    pop ax                           ; 0x02c3
    add ax, cx                       ; 0x02c4
    dec ax                           ; 0x02c6
    cmp ax, word [bp - 0x0006]       ; 0x02c7
    jl short @..api_idx_000c.l5      ; 0x02ca
    jmp near @..api_idx_000c.l7      ; 0x02cc
@..api_idx_000c.l5:
    mov ax, 3                        ; 0x02cf
    imul word [bp + 0x6]             ; 0x02d2
    add ax, word [bp + 0x8]          ; 0x02d5
    mov bx, ax                       ; 0x02d8
    cmp byte [bx - 0x7bd0], 0        ; 0x02da
    je short @..api_idx_000c.l6      ; 0x02df
    mov byte [bx - 0x7bd0], 0        ; 0x02e1
    mov ax, 0                        ; 0x02e6
    push ax                          ; 0x02e9
    push word [bp + 0x8]             ; 0x02ea
    push word [bp + 0x6]             ; 0x02ed
    push word [bp + 0x4]             ; 0x02f0
    call api_idx_0008                ; 0x02f3
    add sp, byte 8                   ; 0x02f6
    push word [bp + 0xc]             ; 0x02f9
    mov ax, 0                        ; 0x02fc
    push ax                          ; 0x02ff
    push word [bp + 0x8]             ; 0x0300
    push word [bp + 0x6]             ; 0x0303
    push word [bp + 0x4]             ; 0x0306
    call api_idx_000c                ; 0x0309
    add sp, byte 0x0a                ; 0x030c
    ret                              ; 0x030f
