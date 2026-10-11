api_idx_0004:
    mov ax, 0xfffc                   ; 0x02c7
    call ds_dispatch_f40b            ; 0x02ca
    mov ax, 0xc2                     ; 0x02cd
    push ax                          ; 0x02d0
    mov ax, 0x13f                    ; 0x02d1
    push ax                          ; 0x02d4
    mov ax, 0xbc                     ; 0x02d5
    push ax                          ; 0x02d8
    mov ax, 0                        ; 0x02d9
    push ax                          ; 0x02dc
    call ds_dispatch_e928            ; 0x02dd
    add sp, byte 8                   ; 0x02e0
    mov word [bp - 0x0002], dx       ; 0x02e3
    mov word [bp - 0x0004], ax       ; 0x02e6
    mov ax, 0xbc                     ; 0x02e9
    push ax                          ; 0x02ec
    push word [bp + 0x4]             ; 0x02ed
    call ds_dispatch_fa90            ; 0x02f0
    pop cx                           ; 0x02f3
    mov cx, 6                        ; 0x02f4
    imul cx                          ; 0x02f7
    mov cx, 2                        ; 0x02f9
    cwd                              ; 0x02fc
    idiv cx                          ; 0x02fd
    mov cx, ax                       ; 0x02ff
    mov ax, 0xa0                     ; 0x0301
    sub ax, cx                       ; 0x0304
    push ax                          ; 0x0306
    call ds_dispatch_e809            ; 0x0307
    add sp, byte 4                   ; 0x030a
    mov ax, 0                        ; 0x030d
    push ax                          ; 0x0310
    mov ax, 0x55                     ; 0x0311
    push ax                          ; 0x0314
    call ds_dispatch_e823            ; 0x0315
    add sp, byte 4                   ; 0x0318
    mov ax, 0                        ; 0x031b
    push ax                          ; 0x031e
    push word [bp + 0x4]             ; 0x031f
    call ds_dispatch_e84e            ; 0x0322
    add sp, byte 4                   ; 0x0325
    mov ax, 0xc2                     ; 0x0328
    push ax                          ; 0x032b
    mov ax, 0x13f                    ; 0x032c
    push ax                          ; 0x032f
    mov ax, 0xbc                     ; 0x0330
    push ax                          ; 0x0333
    mov ax, 0                        ; 0x0334
    push ax                          ; 0x0337
    call ds_dispatch_e8da            ; 0x0338
    add sp, byte 8                   ; 0x033b
    cmp word [bp + 0x6], byte 0      ; 0x033e
    jle short @..api_idx_0004.l1     ; 0x0342
    mov ax, 0                        ; 0x0344
    push ax                          ; 0x0347
    call ds_dispatch_b7e0            ; 0x0348
    pop cx                           ; 0x034b
@..api_idx_0004.l1:
    push word [dseg_905a]            ; 0x034c
    call ds_dispatch_b75e            ; 0x0350
    pop cx                           ; 0x0353
    mov ax, 1                        ; 0x0354
    push ax                          ; 0x0357
    push word [bp - 0x0002]          ; 0x0358
    push word [bp - 0x0004]          ; 0x035b
    call ds_dispatch_e94f            ; 0x035e
    add sp, byte 6                   ; 0x0361
    mov ax, 0xc2                     ; 0x0364
    push ax                          ; 0x0367
    mov ax, 0x13f                    ; 0x0368
    push ax                          ; 0x036b
    mov ax, 0xbc                     ; 0x036c
    push ax                          ; 0x036f
    mov ax, 0                        ; 0x0370
    push ax                          ; 0x0373
    call ds_dispatch_e8da            ; 0x0374
    add sp, byte 8                   ; 0x0377
    ret                              ; 0x037a
