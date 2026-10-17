; auto-generated
api_idx_0006_TNSP:
    mov ax, 0xfffa                   ; 0x920f
    call aztec_csav                  ; 0x9212
    mov ax, 0                        ; 0x9215
    push ax                          ; 0x9218
    mov ax, 0x14                     ; 0x9219
    push ax                          ; 0x921c
    mov ax, 0x9bd2                   ; 0x921d
    push ax                          ; 0x9220
    call aztec_setmem                ; 0x9221
    add sp, byte 6                   ; 0x9224
    mov word [bp - 0x0002], 0        ; 0x9227
@..api_idx_0006_TNSP.l1:
    mov ax, 6                        ; 0x922c
    imul word [bp - 0x0002]          ; 0x922f
    mov bx, ax                       ; 0x9232
    cmp byte [bx - 0x7b57], 0xff     ; 0x9234
    je short @..api_idx_0006_TNSP.l2 ; 0x9239
    mov ax, word [bp - 0x0002]       ; 0x923b
    add ax, strict word 0xc          ; 0x923e
    push ax                          ; 0x9241
    mov ax, 0x26                     ; 0x9242
    imul word [bp + 0x4]             ; 0x9245
    add ax, 0x850a                   ; 0x9248
    push ax                          ; 0x924b
    call ds_leaf_loc_PRVP            ; 0x924c
    add sp, byte 4                   ; 0x924f
    test ax, ax                      ; 0x9252
    je short @..api_idx_0006_TNSP.l2 ; 0x9254
    mov ax, 6                        ; 0x9256
    imul word [bp - 0x0002]          ; 0x9259
    mov bx, ax                       ; 0x925c
    mov al, byte [bx - 0x7b57]       ; 0x925e
    cbw                              ; 0x9262
    shl ax, 1                        ; 0x9263
    mov bx, ax                       ; 0x9265
    mov word [bx - 0x642e], 1        ; 0x9267
@..api_idx_0006_TNSP.l2:
    inc word [bp - 0x0002]           ; 0x926d
    mov ax, word [bp - 0x0002]       ; 0x9270
    cmp ax, strict word 0xb          ; 0x9273
    jl short @..api_idx_0006_TNSP.l1 ; 0x9276
    mov ax, 0xe                      ; 0x9278
    push ax                          ; 0x927b
    mov ax, 0x26                     ; 0x927c
    imul word [bp + 0x4]             ; 0x927f
    add ax, 0x8506                   ; 0x9282
    push ax                          ; 0x9285
    call ds_leaf_loc_PRVP            ; 0x9286
    add sp, byte 4                   ; 0x9289
    test ax, ax                      ; 0x928c
    je short @..api_idx_0006_TNSP.l3 ; 0x928e
    mov word [bss_9bdc], 1           ; 0x9290
@..api_idx_0006_TNSP.l3:
    mov byte [bss_8aac], 6           ; 0x9296
    mov ax, 0xd                      ; 0x929b
    push ax                          ; 0x929e
    mov ax, 0x26                     ; 0x929f
    imul word [bp + 0x4]             ; 0x92a2
    add ax, 0x8506                   ; 0x92a5
    push ax                          ; 0x92a8
    call ds_leaf_loc_PRVP            ; 0x92a9
    add sp, byte 4                   ; 0x92ac
    test ax, ax                      ; 0x92af
    je short @..api_idx_0006_TNSP.l4 ; 0x92b1
    mov word [bss_9bde], 1           ; 0x92b3
@..api_idx_0006_TNSP.l4:
    mov word [bp - 0x0006], 1        ; 0x92b9
    mov word [bp - 0x0002], 0        ; 0x92be
@..api_idx_0006_TNSP.l5:
    mov ax, word [bp - 0x0002]       ; 0x92c3
    shl ax, 1                        ; 0x92c6
    shl ax, 1                        ; 0x92c8
    mov bx, ax                       ; 0x92ca
    mov al, byte [bx - 0x7592]       ; 0x92cc
    sub ah, ah                       ; 0x92d0
    cmp ax, word [bp + 0x8]          ; 0x92d2
    je short @..api_idx_0006_TNSP.l6 ; 0x92d5
    mov al, byte [bx - 0x7591]       ; 0x92d7
    sub ah, ah                       ; 0x92db
    cmp ax, word [bp + 0x8]          ; 0x92dd
    jne short @..api_idx_0006_TNSP.l8 ; 0x92e0
@..api_idx_0006_TNSP.l6:
    cmp byte [bx - 0x7590], 0xff     ; 0x92e2
    je short @..api_idx_0006_TNSP.l7 ; 0x92e7
    mov al, byte [bx - 0x7590]       ; 0x92e9
    cbw                              ; 0x92ed
    shl ax, 1                        ; 0x92ee
    mov bx, ax                       ; 0x92f0
    cmp word [bx - 0x642e], byte 1   ; 0x92f2
    jne short @..api_idx_0006_TNSP.l8 ; 0x92f7
@..api_idx_0006_TNSP.l7:
    mov word [bp - 0x0006], 0        ; 0x92f9
@..api_idx_0006_TNSP.l8:
    inc word [bp - 0x0002]           ; 0x92fe
    mov ax, word [bp - 0x0002]       ; 0x9301
    cmp ax, strict word 0x20         ; 0x9304
    jl short @..api_idx_0006_TNSP.l5 ; 0x9307
    cmp word [bp - 0x0006], byte 0   ; 0x9309
    je short @..api_idx_0006_TNSP.l9 ; 0x930d
    mov ax, 0                        ; 0x930f
    ret                              ; 0x9312
@..api_idx_0006_TNSP.l9:
    mov word [bss_9c00], 0           ; 0x9313
@..api_idx_0006_TNSP.l10:
    mov word [bss_9be6], 0           ; 0x9319
    mov ax, 0                        ; 0x931f
    push ax                          ; 0x9322
    mov ax, 0x40                     ; 0x9323
    push ax                          ; 0x9326
    mov ax, 0x9c02                   ; 0x9327
    push ax                          ; 0x932a
    call aztec_setmem                ; 0x932b
    add sp, byte 6                   ; 0x932e
    inc word [bss_9c00]              ; 0x9331
    mov ax, 0                        ; 0x9335
    push ax                          ; 0x9338
    mov ax, 1                        ; 0x9339
    push ax                          ; 0x933c
    push word [bp + 0x8]             ; 0x933d
    push word [bp + 0x6]             ; 0x9340
    call api_idx_0048_OSRI           ; 0x9343
    add sp, byte 8                   ; 0x9346
    test ax, ax                      ; 0x9349
    jne short @..api_idx_0006_TNSP.l11 ; 0x934b
    cmp word [bss_9c00], byte 0x14   ; 0x934d
    jl short @..api_idx_0006_TNSP.l10 ; 0x9352
@..api_idx_0006_TNSP.l11:
    cmp word [bss_9c00], byte 0x14   ; 0x9354
    jl short @..api_idx_0006_TNSP.l12 ; 0x9359
    mov ax, 0                        ; 0x935b
    ret                              ; 0x935e
@..api_idx_0006_TNSP.l12:
    mov word [bp - 0x0002], 0        ; 0x935f
    jmp short @..api_idx_0006_TNSP.l14 ; 0x9364
@..api_idx_0006_TNSP.l13:
    mov ax, word [bp - 0x0002]       ; 0x9366
    shl ax, 1                        ; 0x9369
    mov bx, ax                       ; 0x936b
    mov al, byte [bx - 0x6418]       ; 0x936d
    push ax                          ; 0x9371
    mov ax, 0x26                     ; 0x9372
    imul word [bp + 0x4]             ; 0x9375
    mov cx, ax                       ; 0x9378
    add ax, word [bp - 0x0002]       ; 0x937a
    mov bx, ax                       ; 0x937d
    pop ax                           ; 0x937f
    mov byte [bx - 0x7b10], al       ; 0x9380
    inc word [bp - 0x0002]           ; 0x9384
@..api_idx_0006_TNSP.l14:
    mov ax, word [bp - 0x0002]       ; 0x9387
    cmp ax, word [bss_9be6]          ; 0x938a
    jl short @..api_idx_0006_TNSP.l13 ; 0x938e
    mov ax, word [bss_9be6]          ; 0x9390
    dec ax                           ; 0x9393
    push ax                          ; 0x9394
    mov ax, 0x26                     ; 0x9395
    imul word [bp + 0x4]             ; 0x9398
    mov bx, ax                       ; 0x939b
    pop ax                           ; 0x939d
    mov byte [bx - 0x7b11], al       ; 0x939e
    mov byte [bx - 0x7b13], 0        ; 0x93a2
    mov ax, 1                        ; 0x93a7
    ret                              ; 0x93aa
