api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x030b
    call ds_aztec_csav               ; 0x030e
    mov ax, 0x2c                     ; 0x0311
    imul word [bp + 0x4]             ; 0x0314
    mov si, ax                       ; 0x0317
    mov bx, word [bss_8482]          ; 0x0319
    mov ax, word [bx + si + 0x2]     ; 0x031d
    push ax                          ; 0x0320
    mov ax, 0x248                    ; 0x0321
    imul word [bp + 0x4]             ; 0x0324
    mov bx, ax                       ; 0x0327
    pop ax                           ; 0x0329
    mov word [bx + 0x5c0c], ax       ; 0x032a
    mov bx, word [bss_8482]          ; 0x032e
    mov ax, word [bx + si + 0x6]     ; 0x0332
    push ax                          ; 0x0335
    mov ax, 0x248                    ; 0x0336
    imul word [bp + 0x4]             ; 0x0339
    mov bx, ax                       ; 0x033c
    pop ax                           ; 0x033e
    mov word [bx + 0x5c10], ax       ; 0x033f
    mov bx, word [bss_8482]          ; 0x0343
    mov al, byte [bx + si + 0x22]    ; 0x0347
    push ax                          ; 0x034a
    mov ax, 0x248                    ; 0x034b
    imul word [bp + 0x4]             ; 0x034e
    mov bx, ax                       ; 0x0351
    pop ax                           ; 0x0353
    mov byte [bx + 0x5e2f], al       ; 0x0354
    mov ax, 0xa                      ; 0x0358
    push ax                          ; 0x035b
    add bx, strict word 0x5d5a       ; 0x035c
    mov ax, bx                       ; 0x0360
    push ax                          ; 0x0362
    mov ax, word [bss_8482]          ; 0x0363
    add ax, si                       ; 0x0366
    add ax, strict word 0xe          ; 0x0368
    push ax                          ; 0x036b
    call ds_aztec_movmem             ; 0x036c
    add sp, byte 6                   ; 0x036f
    mov ax, 0x2c                     ; 0x0372
    imul word [bp + 0x4]             ; 0x0375
    mov si, ax                       ; 0x0378
    mov bx, word [bss_8482]          ; 0x037a
    mov al, byte [bx + si + 0x23]    ; 0x037e
    push ax                          ; 0x0381
    mov ax, 0x248                    ; 0x0382
    imul word [bp + 0x4]             ; 0x0385
    mov bx, ax                       ; 0x0388
    pop ax                           ; 0x038a
    mov byte [bx + 0x5e32], al       ; 0x038b
    mov ax, 0                        ; 0x038f
    push ax                          ; 0x0392
    push word [bp + 0x4]             ; 0x0393
    call api_idx_0008                ; 0x0396
    add sp, byte 4                   ; 0x0399
    mov ax, word [bp + 0x4]          ; 0x039c
    mov cx, 2                        ; 0x039f
    cwd                              ; 0x03a2
    idiv cx                          ; 0x03a3
    mov ax, dx                       ; 0x03a5
    mov cx, 0xfc                     ; 0x03a7
    imul cx                          ; 0x03aa
    add ax, strict word 5            ; 0x03ac
    mov word [bp - 0x0002], ax       ; 0x03af
    mov ax, word [bp + 0x4]          ; 0x03b2
    mov cx, 2                        ; 0x03b5
    cwd                              ; 0x03b8
    idiv cx                          ; 0x03b9
    mov cx, 0x2d                     ; 0x03bb
    imul cx                          ; 0x03be
    add ax, strict word 0x12         ; 0x03c0
    mov word [bp - 0x0004], ax       ; 0x03c3
    cmp word [bp + 0x6], byte 0      ; 0x03c6
    je short @..api_idx_0004_2.l1    ; 0x03ca
    mov ax, 0x17                     ; 0x03cc
    push ax                          ; 0x03cf
    mov ax, word [bp - 0x0004]       ; 0x03d0
    add ax, strict word 0x24         ; 0x03d3
    push ax                          ; 0x03d6
    mov ax, 0x248                    ; 0x03d7
    imul word [bp + 0x4]             ; 0x03da
    add ax, 0x5bf4                   ; 0x03dd
    push ax                          ; 0x03e0
    call ds_aztec_strlen             ; 0x03e1
    pop cx                           ; 0x03e4
    mov cx, 6                        ; 0x03e5
    imul cx                          ; 0x03e8
    add ax, word [bp - 0x0002]       ; 0x03ea
    inc ax                           ; 0x03ed
    inc ax                           ; 0x03ee
    inc ax                           ; 0x03ef
    push ax                          ; 0x03f0
    mov ax, word [bp - 0x0004]       ; 0x03f1
    add ax, strict word 0x20         ; 0x03f4
    push ax                          ; 0x03f7
    mov ax, word [bp - 0x0002]       ; 0x03f8
    inc ax                           ; 0x03fb
    inc ax                           ; 0x03fc
    inc ax                           ; 0x03fd
    push ax                          ; 0x03fe
    call ds_loc_3b48                 ; 0x03ff
    add sp, byte 0x0a                ; 0x0402
    mov ax, 0x17                     ; 0x0405
    push ax                          ; 0x0408
    mov ax, 1                        ; 0x0409
    push ax                          ; 0x040c
    call ds_loc_3a6a                 ; 0x040d
    add sp, byte 4                   ; 0x0410
    mov ax, word [bp - 0x0004]       ; 0x0413
    add ax, strict word 0x20         ; 0x0416
    push ax                          ; 0x0419
    mov ax, word [bp - 0x0002]       ; 0x041a
    add ax, strict word 4            ; 0x041d
    push ax                          ; 0x0420
    call ds_loc_3a50                 ; 0x0421
    add sp, byte 4                   ; 0x0424
    mov ax, 0                        ; 0x0427
    push ax                          ; 0x042a
    mov ax, 0x248                    ; 0x042b
    imul word [bp + 0x4]             ; 0x042e
    add ax, 0x5bf4                   ; 0x0431
    push ax                          ; 0x0434
    call ds_string_loc_3a95          ; 0x0435
    add sp, byte 4                   ; 0x0438
@..api_idx_0004_2.l1:
    mov ax, word [bp - 0x0004]       ; 0x043b
    add ax, strict word 0x2b         ; 0x043e
    push ax                          ; 0x0441
    mov ax, word [bp - 0x0002]       ; 0x0442
    add ax, strict word 0x3b         ; 0x0445
    push ax                          ; 0x0448
    push word [bp - 0x0004]          ; 0x0449
    push word [bp - 0x0002]          ; 0x044c
    call ds_loc_3b21                 ; 0x044f
    add sp, byte 8                   ; 0x0452
    ret                              ; 0x0455
