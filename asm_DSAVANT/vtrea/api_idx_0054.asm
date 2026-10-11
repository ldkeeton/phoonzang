api_idx_0054:
    mov ax, 0xffac                   ; 0x4254
    call ds_dispatch_f40b            ; 0x4257
    mov ax, 0xa                      ; 0x425a
    imul word [bp + 0x6]             ; 0x425d
    add ax, strict word 0x32         ; 0x4260
    push ax                          ; 0x4263
    mov ax, 5                        ; 0x4264
    imul word [bss_95de]             ; 0x4267
    mov cx, ax                       ; 0x426b
    pop ax                           ; 0x426d
    sub ax, cx                       ; 0x426e
    mov word [bp - 0x0004], ax       ; 0x4270
    cmp ax, strict word 0x5f         ; 0x4273
    jle short @..api_idx_0054.l1     ; 0x4276
    mov word [bp - 0x0004], 0x5f     ; 0x4278
@..api_idx_0054.l1:
    cmp word [bp - 0x0004], byte 5   ; 0x427d
    jge short @..api_idx_0054.l2     ; 0x4281
    mov word [bp - 0x0004], 5        ; 0x4283
@..api_idx_0054.l2:
    mov ax, 0x64                     ; 0x4288
    push ax                          ; 0x428b
    call ds_dispatch_b7a9            ; 0x428c
    pop cx                           ; 0x428f
    mov word [bp - 0x0002], ax       ; 0x4290
    cmp ax, word [bp - 0x0004]       ; 0x4293
    jge short @..api_idx_0054.l3     ; 0x4296
    mov word [bss_91fe], 0           ; 0x4298
    mov word [bss_95e0], 1           ; 0x429e
    mov word [bss_9114], 1           ; 0x42a4
    lea ax, word [bp - 0x0054]       ; 0x42aa
    push ax                          ; 0x42ad
    mov ax, 0x1472                   ; 0x42ae
    push ax                          ; 0x42b1
    call ds_dispatch_b53b            ; 0x42b2
    add sp, byte 4                   ; 0x42b5
    mov ax, 1                        ; 0x42b8
    push ax                          ; 0x42bb
    mov ax, 2                        ; 0x42bc
    push ax                          ; 0x42bf
    push word [bss_91d4]             ; 0x42c0
    lea ax, word [bp - 0x0054]       ; 0x42c4
    push ax                          ; 0x42c7
    call loc_0eb2                    ; 0x42c8
    add sp, byte 8                   ; 0x42cb
    jmp short @..api_idx_0054.l5     ; 0x42ce
@..api_idx_0054.l3:
    mov ax, 0x64                     ; 0x42d0
    sub ax, word [bp - 0x0004]       ; 0x42d3
    mov cx, 3                        ; 0x42d6
    cwd                              ; 0x42d9
    idiv cx                          ; 0x42da
    mov cx, ax                       ; 0x42dc
    mov ax, 0x64                     ; 0x42de
    sub ax, cx                       ; 0x42e1
    cmp ax, word [bp - 0x0002]       ; 0x42e3
    jge short @..api_idx_0054.l4     ; 0x42e6
    mov word [bss_95e0], 0xffff      ; 0x42e8
    jmp short @..api_idx_0054.l5     ; 0x42ee
@..api_idx_0054.l4:
    mov word [bss_95e0], 0           ; 0x42f0
    lea ax, word [bp - 0x0054]       ; 0x42f6
    push ax                          ; 0x42f9
    mov ax, 0x1473                   ; 0x42fa
    push ax                          ; 0x42fd
    call ds_dispatch_b53b            ; 0x42fe
    add sp, byte 4                   ; 0x4301
    mov ax, 1                        ; 0x4304
    push ax                          ; 0x4307
    push ax                          ; 0x4308
    push word [bss_91d4]             ; 0x4309
    lea ax, word [bp - 0x0054]       ; 0x430d
    push ax                          ; 0x4310
    call loc_0eb2                    ; 0x4311
    add sp, byte 8                   ; 0x4314
@..api_idx_0054.l5:
    ret                              ; 0x4317
loc_4318:
    mov ax, 0                        ; 0x4318
    call ds_dispatch_f40b            ; 0x431b
    cmp word [bp + 0x8], byte 1      ; 0x431e
    jne short @..local.l58           ; 0x4322
    cmp word [bp + 0x6], byte 0      ; 0x4324
    jle short @..local.l56           ; 0x4328
    mov ax, word [bp + 0x4]          ; 0x432a
    sub word [bp + 0x6], ax          ; 0x432d
    jmp short @..local.l57           ; 0x4330
@..local.l56:
    mov ax, 0                        ; 0x4332
    sub ax, word [bp + 0x4]          ; 0x4335
    cmp ax, word [bp + 0x6]          ; 0x4338
    jge short @..local.l57           ; 0x433b
    mov word [bp + 0x6], ax          ; 0x433d
@..local.l57:
    jmp short @..local.l60           ; 0x4340
@..local.l58:
    cmp word [bp + 0x8], byte 0      ; 0x4342
    jne short @..local.l60           ; 0x4346
    cmp word [bp + 0x6], byte 0      ; 0x4348
    jge short @..local.l59           ; 0x434c
    mov ax, word [bp + 0x4]          ; 0x434e
    add word [bp + 0x6], ax          ; 0x4351
    jmp short @..local.l60           ; 0x4354
@..local.l59:
    mov ax, word [bp + 0x6]          ; 0x4356
    cmp ax, word [bp + 0x4]          ; 0x4359
    jge short @..local.l60           ; 0x435c
    mov ax, word [bp + 0x4]          ; 0x435e
    mov word [bp + 0x6], ax          ; 0x4361
@..local.l60:
    mov ax, word [bp + 0x6]          ; 0x4364
    ret                              ; 0x4367
