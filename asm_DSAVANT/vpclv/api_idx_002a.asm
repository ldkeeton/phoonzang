api_idx_002a:
    mov ax, 0xffd6                   ; 0x2447
    call aztec_csav                  ; 0x244a
    mov ax, 0                        ; 0x244d
    push ax                          ; 0x2450
    mov ax, 0x28                     ; 0x2451
    push ax                          ; 0x2454
    lea ax, word [bp - 0x002a]       ; 0x2455
    push ax                          ; 0x2458
    call aztec_setmem                ; 0x2459
    add sp, byte 6                   ; 0x245c
    push word [bp + 0x4]             ; 0x245f
    lea ax, word [bp - 0x002a]       ; 0x2462
    push ax                          ; 0x2465
    call aztec_strcpy                ; 0x2466
    add sp, byte 4                   ; 0x2469
    mov ax, 0x2f                     ; 0x246c
    push ax                          ; 0x246f
    lea ax, word [bp - 0x002a]       ; 0x2470
    push ax                          ; 0x2473
    call strlen                      ; 0x2474
    add sp, byte 4                   ; 0x2477
    mov word [bp - 0x0002], ax       ; 0x247a
    cmp ax, strict word 0xffff       ; 0x247d
    jne short @..api_idx_002a.l1     ; 0x2480
    lea ax, word [bp - 0x002a]       ; 0x2482
    push ax                          ; 0x2485
    call aztec_strlen                ; 0x2486
    pop cx                           ; 0x2489
    mov word [bp - 0x0002], ax       ; 0x248a
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x248d
    jle short @..api_idx_002a.l2     ; 0x2491
    mov word [bp - 0x0002], 0xa      ; 0x2493
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x2498
    add bx, bp                       ; 0x249b
    mov byte [bx - 0x002a], 0        ; 0x249d
    mov byte [bx - 0x001f], 0        ; 0x24a1
    mov ax, 0                        ; 0x24a5
    push ax                          ; 0x24a8
    push word [bp + 0xa]             ; 0x24a9
    call ds_loc_3a6a                 ; 0x24ac
    add sp, byte 4                   ; 0x24af
    push word [bp + 0x8]             ; 0x24b2
    push word [bp + 0x6]             ; 0x24b5
    call ds_loc_3a50                 ; 0x24b8
    add sp, byte 4                   ; 0x24bb
    mov ax, 0                        ; 0x24be
    push ax                          ; 0x24c1
    lea ax, word [bp - 0x002a]       ; 0x24c2
    push ax                          ; 0x24c5
    call ds_string_loc_3a95          ; 0x24c6
    add sp, byte 4                   ; 0x24c9
    mov ax, word [bp + 0x8]          ; 0x24cc
    add ax, strict word 6            ; 0x24cf
    push ax                          ; 0x24d2
    push word [bp + 0x6]             ; 0x24d3
    call ds_loc_3a50                 ; 0x24d6
    add sp, byte 4                   ; 0x24d9
    mov ax, 0                        ; 0x24dc
    push ax                          ; 0x24df
    mov ax, word [bp - 0x0002]       ; 0x24e0
    lea cx, word [bp - 0x0029]       ; 0x24e3
    add ax, cx                       ; 0x24e6
    push ax                          ; 0x24e8
    call ds_string_loc_3a95          ; 0x24e9
    add sp, byte 4                   ; 0x24ec
    ret                              ; 0x24ef
