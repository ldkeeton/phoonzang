api_idx_0054:
    mov ax, 0xffac                   ; 0x4254
    call ds_dispatch_f40b            ; 0x4257
    mov ax, 0xa                      ; 0x425a
    imul word [bp + 0x6]             ; 0x425d
    add ax, strict word 0x32         ; 0x4260
    push ax                          ; 0x4263
    mov ax, 5                        ; 0x4264
    imul word [data_95de]            ; 0x4267
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
    mov word [data_91fe], 0          ; 0x4298
    mov word [data_95e0], 1          ; 0x429e
    mov word [data_9114], 1          ; 0x42a4
    lea ax, word [bp - 0x0054]       ; 0x42aa
    push ax                          ; 0x42ad
    mov ax, 0x1472                   ; 0x42ae
    push ax                          ; 0x42b1
    call ds_dispatch_b53b            ; 0x42b2
    add sp, byte 4                   ; 0x42b5
    mov ax, 1                        ; 0x42b8
    push ax                          ; 0x42bb
    mov ax, data_0002                ; 0x42bc
    push ax                          ; 0x42bf
    push word [data_91d4]            ; 0x42c0
    lea ax, word [bp - 0x0054]       ; 0x42c4
    push ax                          ; 0x42c7
    call math_loc_0eb2               ; 0x42c8
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
    mov word [data_95e0], 0xffff     ; 0x42e8
    jmp short @..api_idx_0054.l5     ; 0x42ee
@..api_idx_0054.l4:
    mov word [data_95e0], 0          ; 0x42f0
    lea ax, word [bp - 0x0054]       ; 0x42f6
    push ax                          ; 0x42f9
    mov ax, 0x1473                   ; 0x42fa
    push ax                          ; 0x42fd
    call ds_dispatch_b53b            ; 0x42fe
    add sp, byte 4                   ; 0x4301
    mov ax, 1                        ; 0x4304
    push ax                          ; 0x4307
    push ax                          ; 0x4308
    push word [data_91d4]            ; 0x4309
    lea ax, word [bp - 0x0054]       ; 0x430d
    push ax                          ; 0x4310
    call math_loc_0eb2               ; 0x4311
    add sp, byte 8                   ; 0x4314
@..api_idx_0054.l5:
    ret                              ; 0x4317
