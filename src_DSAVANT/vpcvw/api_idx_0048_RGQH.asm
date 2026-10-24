; auto-generated
api_idx_0048_RGQH:
    mov ax, 0xffb8                   ; 0x4253
    call aztec_csav                  ; 0x4256
    mov ax, 0                        ; 0x4259
    push ax                          ; 0x425c
    push word [bp + 0x4]             ; 0x425d
    lea ax, word [bp - 0x0048]       ; 0x4260
    push ax                          ; 0x4263
    mov ax, 1                        ; 0x4264
    push ax                          ; 0x4267
    call data_record_io              ; 0x4268
    add sp, byte 8                   ; 0x426b
    lea ax, word [bp - 0x0048]       ; 0x426e
    push ax                          ; 0x4271
    push word [bp + 0xa]             ; 0x4272
    call aztec_strcpy                ; 0x4275
    add sp, byte 4                   ; 0x4278
    mov ax, word [bp + 0x4]          ; 0x427b
    mov bx, word [bp + 0x6]          ; 0x427e
    mov word [bx], ax                ; 0x4281
    mov al, byte [bp - 0x000f]       ; 0x4283
    mov bx, word [bp + 0x6]          ; 0x4286
    mov byte [bx + 0x5], al          ; 0x4289
    mov al, byte [bp - 0x0010]       ; 0x428c
    mov bx, word [bp + 0x6]          ; 0x428f
    mov byte [bx + 0x4], al          ; 0x4292
    mov ax, word [bp - 0x0024]       ; 0x4295
    mov bx, word [bp + 0x6]          ; 0x4298
    mov word [bx + 0x2], ax          ; 0x429b
    mov bx, word [bp + 0x6]          ; 0x429e
    mov byte [bx + 0x7], 0x80        ; 0x42a1
    push word [bp - 0x002c]          ; 0x42a5
    push word [bp - 0x002e]          ; 0x42a8
    call add_random_steps            ; 0x42ab
    add sp, byte 4                   ; 0x42ae
    mov bx, word [bp + 0x6]          ; 0x42b1
    mov byte [bx + 0x6], al          ; 0x42b4
    mov al, byte [bp - 0x0020]       ; 0x42b7
    mov bx, word [bp + 0x6]          ; 0x42ba
    mov byte [bx + 0x8], al          ; 0x42bd
    mov al, byte [bp - 0x001f]       ; 0x42c0
    mov bx, word [bp + 0x6]          ; 0x42c3
    mov byte [bx + 0x9], al          ; 0x42c6
    mov al, byte [bp - 0x000c]       ; 0x42c9
    mov bx, word [bp + 0x6]          ; 0x42cc
    mov byte [bx + 0xa], al          ; 0x42cf
    mov al, byte [bp - 0x0008]       ; 0x42d2
    mov bx, word [bp + 0x6]          ; 0x42d5
    mov byte [bx + 0xb], al          ; 0x42d8
    mov bx, word [bp + 0x8]          ; 0x42db
    mov word [bx], 0                 ; 0x42de
    ret                              ; 0x42e2
