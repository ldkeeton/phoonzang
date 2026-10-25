; auto-generated
api_idx_0030_TGOH:
    mov ax, 0xffd0                   ; 0x92b3
    call aztec_csav                  ; 0x92b6
    push word [bp + 0x4]             ; 0x92b9
    call api_idx_0002_RQOS           ; 0x92bc
    pop cx                           ; 0x92bf
    mov ax, 0x248                    ; 0x92c0
    imul word [bp + 0x4]             ; 0x92c3
    mov bx, ax                       ; 0x92c6
    mov al, byte [bx + party_records + pc_rec.label] ; 0x92c8
    sub ah, ah                       ; 0x92cc
    shl ax, 1                        ; 0x92ce
    mov bx, ax                       ; 0x92d0
    mov word [bx + bss_967c], 0      ; 0x92d2
    mov word [bp - 0x0006], 1        ; 0x92d8
    mov word [bp - 0x0002], 0        ; 0x92dd
@..api_idx_0030_TGOH.l1:
    mov ax, word [bp - 0x0002]       ; 0x92e2
    shl ax, 1                        ; 0x92e5
    mov bx, ax                       ; 0x92e7
    cmp word [bx + bss_967c], byte 1 ; 0x92e9
    jne short @..api_idx_0030_TGOH.l2 ; 0x92ee
    mov ax, 1                        ; 0x92f0
    jmp short @..api_idx_0030_TGOH.l3 ; 0x92f3
@..api_idx_0030_TGOH.l2:
    mov ax, 0                        ; 0x92f5
@..api_idx_0030_TGOH.l3:
    add bx, bp                       ; 0x92f8
    mov word [bx - 0x0030], ax       ; 0x92fa
    cmp word [bx - 0x0030], byte 0   ; 0x92fd
    je short @..api_idx_0030_TGOH.l4 ; 0x9301
    inc word [bp - 0x0006]           ; 0x9303
@..api_idx_0030_TGOH.l4:
    inc word [bp - 0x0002]           ; 0x9306
    mov ax, word [bp - 0x0002]       ; 0x9309
    cmp ax, strict word 0xd          ; 0x930c
    jle short @..api_idx_0030_TGOH.l1 ; 0x930f
    mov word [bp - 0x0014], 1        ; 0x9311
    mov word [bp - 0x0012], 0xffff   ; 0x9316
    lea ax, word [bp - 0x0030]       ; 0x931b
    push ax                          ; 0x931e
    mov ax, 0                        ; 0x931f
    push ax                          ; 0x9322
    mov ax, 0xffff                   ; 0x9323
    push ax                          ; 0x9326
    mov ax, 1                        ; 0x9327
    push ax                          ; 0x932a
    mov ax, word [bp - 0x0006]       ; 0x932b
    inc ax                           ; 0x932e
    inc ax                           ; 0x932f
    mov cx, 3                        ; 0x9330
    cwd                              ; 0x9333
    idiv cx                          ; 0x9334
    imul cx                          ; 0x9336
    push ax                          ; 0x9338
    mov ax, word [bp - 0x0006]       ; 0x9339
    inc ax                           ; 0x933c
    inc ax                           ; 0x933d
    cwd                              ; 0x933e
    idiv cx                          ; 0x933f
    push ax                          ; 0x9341
    mov ax, 0xc                      ; 0x9342
    push ax                          ; 0x9345
    mov ax, 0x46                     ; 0x9346
    push ax                          ; 0x9349
    mov ax, 0xb                      ; 0x934a
    push ax                          ; 0x934d
    mov ax, 0x86                     ; 0x934e
    push ax                          ; 0x9351
    mov ax, 0x39                     ; 0x9352
    push ax                          ; 0x9355
    mov ax, 0x452                    ; 0x9356
    push ax                          ; 0x9359
    mov ax, 0x78                     ; 0x935a
    push ax                          ; 0x935d
    call loc_UGOG                    ; 0x935e
    add sp, byte 0x1a                ; 0x9361
    mov word [bp - 0x0004], ax       ; 0x9364
    cmp ax, strict word 0xd          ; 0x9367
    jle short @..api_idx_0030_TGOH.l5 ; 0x936a
    jmp near @..api_idx_0030_TGOH.l11 ; 0x936c
@..api_idx_0030_TGOH.l5:
    mov al, byte [bp - 0x0004]       ; 0x936f
    push ax                          ; 0x9372
    mov ax, 0x248                    ; 0x9373
    imul word [bp + 0x4]             ; 0x9376
    mov bx, ax                       ; 0x9379
    pop ax                           ; 0x937b
    mov byte [bx + party_records + pc_rec.label], al ; 0x937c
    cmp word [bx + party_records + pc_rec.power_cap], strict word 0xfa ; 0x9380
    jge short @..api_idx_0030_TGOH.l7 ; 0x9386
    mov al, byte [bx + party_records + pc_rec.f_0247] ; 0x9388
    sub ah, ah                       ; 0x938c
    cmp ax, word [bx + party_records + pc_rec.power_cap] ; 0x938e
    jge short @..api_idx_0030_TGOH.l6 ; 0x9392
    mov al, byte [bx + party_records + pc_rec.power_cap] ; 0x9394
    mov byte [bx + party_records + pc_rec.f_0247], al ; 0x9398
@..api_idx_0030_TGOH.l6:
    jmp short @..api_idx_0030_TGOH.l8 ; 0x939c
@..api_idx_0030_TGOH.l7:
    mov byte [bx + party_records + pc_rec.f_0247], 0 ; 0x939e
@..api_idx_0030_TGOH.l8:
    mov word [bx + party_records + pc_rec.power_cap], 1 ; 0x93a3
    mov byte [bx + party_records + pc_rec.f_023a], 0 ; 0x93a9
    mov word [bx + party_records + pc_rec.f_000e], 0 ; 0x93ae
    mov word [bx + party_records + pc_rec.f_000c], 0 ; 0x93b4
    mov al, byte [bx + party_records + pc_rec.glyph_set] ; 0x93ba
    sub ah, ah                       ; 0x93be
    push ax                          ; 0x93c0
    push word [bp + 0x4]             ; 0x93c1
    call loc_SRNN                    ; 0x93c4
    add sp, byte 4                   ; 0x93c7
    mov ax, 1                        ; 0x93ca
    push ax                          ; 0x93cd
    mov ax, 0x248                    ; 0x93ce
    imul word [bp + 0x4]             ; 0x93d1
    mov bx, ax                       ; 0x93d4
    mov al, byte [bx + party_records + pc_rec.label] ; 0x93d6
    sub ah, ah                       ; 0x93da
    push ax                          ; 0x93dc
    push word [bp + 0x4]             ; 0x93dd
    call loc_PGKG                    ; 0x93e0
    add sp, byte 6                   ; 0x93e3
    mov word [bp - 0x0008], 0        ; 0x93e6
@..api_idx_0030_TGOH.l9:
    mov ax, 0x248                    ; 0x93eb
    imul word [bp + 0x4]             ; 0x93ee
    push ax                          ; 0x93f1
    mov ax, 0xc                      ; 0x93f2
    imul word [bp - 0x0008]          ; 0x93f5
    mov cx, ax                       ; 0x93f8
    pop ax                           ; 0x93fa
    add ax, cx                       ; 0x93fb
    mov bx, ax                       ; 0x93fd
    mov al, byte [bx + party_records + pc_rec.cell + 0x7] ; 0x93ff
    sub ah, ah                       ; 0x9403
    test ax, 1                       ; 0x9405
    je short @..api_idx_0030_TGOH.l10 ; 0x9408
    test ax, 2                       ; 0x940a
    jne short @..api_idx_0030_TGOH.l10 ; 0x940d
    push word [bp - 0x0008]          ; 0x940f
    push word [bp + 0x4]             ; 0x9412
    call compact_grid_page           ; 0x9415
    add sp, byte 4                   ; 0x9418
@..api_idx_0030_TGOH.l10:
    inc word [bp - 0x0008]           ; 0x941b
    mov ax, word [bp - 0x0008]       ; 0x941e
    cmp ax, strict word 0xa          ; 0x9421
    jl short @..api_idx_0030_TGOH.l9 ; 0x9424
    mov ax, 0                        ; 0x9426
    push ax                          ; 0x9429
    push word [bp + 0x4]             ; 0x942a
    call loc_JTQP                    ; 0x942d
    add sp, byte 4                   ; 0x9430
@..api_idx_0030_TGOH.l11:
    ret                              ; 0x9433
