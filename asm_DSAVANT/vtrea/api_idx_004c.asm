api_idx_004c:
    mov ax, 0xffb4                   ; 0x51d7
    call ds_dispatch_f40b            ; 0x51da
    mov ax, 0                        ; 0x51dd
    push ax                          ; 0x51e0
    push word [bp + 0x6]             ; 0x51e1
    lea ax, word [bp - 0x004c]       ; 0x51e4
    push ax                          ; 0x51e7
    mov ax, 1                        ; 0x51e8
    push ax                          ; 0x51eb
    call ds_dispatch_b63c            ; 0x51ec
    add sp, byte 8                   ; 0x51ef
    cmp word [bp + 0xa], byte 0xfe   ; 0x51f2
    jne short @..api_idx_004c.l1     ; 0x51f6
    mov al, byte [bp - 0x0030]       ; 0x51f8
    sub ah, ah                       ; 0x51fb
    push ax                          ; 0x51fd
    mov al, byte [bp - 0x002f]       ; 0x51fe
    sub ah, ah                       ; 0x5201
    mov cx, ax                       ; 0x5203
    pop ax                           ; 0x5205
    imul cx                          ; 0x5206
    add ax, word [bp - 0x0032]       ; 0x5208
    mov bx, word [bp + 0x8]          ; 0x520b
    mov byte [bx + 0x6], al          ; 0x520e
    jmp short @..api_idx_004c.l3     ; 0x5211
@..api_idx_004c.l1:
    cmp word [bp + 0xa], byte 0xff   ; 0x5213
    jne short @..api_idx_004c.l2     ; 0x5217
    push word [bp - 0x0030]          ; 0x5219
    push word [bp - 0x0032]          ; 0x521c
    call ds_dispatch_d0be            ; 0x521f
    add sp, byte 4                   ; 0x5222
    mov bx, word [bp + 0x8]          ; 0x5225
    mov byte [bx + 0x6], al          ; 0x5228
    jmp short @..api_idx_004c.l3     ; 0x522b
@..api_idx_004c.l2:
    mov al, byte [bp + 0xa]          ; 0x522d
    mov bx, word [bp + 0x8]          ; 0x5230
    mov byte [bx + 0x6], al          ; 0x5233
@..api_idx_004c.l3:
    mov ax, word [bp + 0x6]          ; 0x5236
    mov bx, word [bp + 0x8]          ; 0x5239
    mov word [bx], ax                ; 0x523c
    mov al, byte [bp - 0x0014]       ; 0x523e
    mov bx, word [bp + 0x8]          ; 0x5241
    mov byte [bx + 0x4], al          ; 0x5244
    mov al, byte [bp - 0x0013]       ; 0x5247
    mov bx, word [bp + 0x8]          ; 0x524a
    mov byte [bx + 0x5], al          ; 0x524d
    mov ax, word [bp - 0x0028]       ; 0x5250
    mov bx, word [bp + 0x8]          ; 0x5253
    mov word [bx + 0x2], ax          ; 0x5256
    mov al, byte [bp - 0x0024]       ; 0x5259
    mov bx, word [bp + 0x8]          ; 0x525c
    mov byte [bx + 0x8], al          ; 0x525f
    mov al, byte [bp - 0x0023]       ; 0x5262
    mov bx, word [bp + 0x8]          ; 0x5265
    mov byte [bx + 0x9], al          ; 0x5268
    mov al, byte [bp - 0x0010]       ; 0x526b
    mov bx, word [bp + 0x8]          ; 0x526e
    mov byte [bx + 0xa], al          ; 0x5271
    mov al, byte [bp - 0x000c]       ; 0x5274
    mov bx, word [bp + 0x8]          ; 0x5277
    mov byte [bx + 0xb], al          ; 0x527a
    mov ax, 0                        ; 0x527d
    cmp word [bp + 0xc], byte 0      ; 0x5280
    je short @..api_idx_004c.l4      ; 0x5284
    mov ax, 0x80                     ; 0x5286
@..api_idx_004c.l4:
    mov bx, word [bp + 0x8]          ; 0x5289
    mov byte [bx + 0x7], al          ; 0x528c
    mov al, byte [bp - 0x0015]       ; 0x528f
    sub ah, ah                       ; 0x5292
    test ax, 8                       ; 0x5294
    je short @..api_idx_004c.l5      ; 0x5297
    mov bx, word [bp + 0x8]          ; 0x5299
    or byte [bx + 0x7], 4            ; 0x529c
@..api_idx_004c.l5:
    mov al, byte [bp - 0x0015]       ; 0x52a0
    sub ah, ah                       ; 0x52a3
    test ax, 4                       ; 0x52a5
    je short @..api_idx_004c.l6      ; 0x52a8
    mov bx, word [bp + 0x8]          ; 0x52aa
    or byte [bx + 0x7], 8            ; 0x52ad
@..api_idx_004c.l6:
    mov al, byte [bp - 0x0015]       ; 0x52b1
    sub ah, ah                       ; 0x52b4
    test ax, 0x10                    ; 0x52b6
    je short @..api_idx_004c.l7      ; 0x52b9
    mov bx, word [bp + 0x8]          ; 0x52bb
    or byte [bx + 0x7], 0x10         ; 0x52be
@..api_idx_004c.l7:
    mov al, byte [bp - 0x0015]       ; 0x52c2
    sub ah, ah                       ; 0x52c5
    test ax, 0x20                    ; 0x52c7
    je short @..api_idx_004c.l8      ; 0x52ca
    mov bx, word [bp + 0x8]          ; 0x52cc
    or byte [bx + 0x7], 0x20         ; 0x52cf
@..api_idx_004c.l8:
    mov al, byte [bp - 0x0015]       ; 0x52d3
    sub ah, ah                       ; 0x52d6
    test ax, 2                       ; 0x52d8
    je short @..api_idx_004c.l9      ; 0x52db
    mov bx, word [bp + 0x8]          ; 0x52dd
    or byte [bx + 0x7], 0x40         ; 0x52e0
@..api_idx_004c.l9:
    push word [bp + 0x4]             ; 0x52e4
    call ds_dispatch_c58f            ; 0x52e7
    pop cx                           ; 0x52ea
    ret                              ; 0x52eb
