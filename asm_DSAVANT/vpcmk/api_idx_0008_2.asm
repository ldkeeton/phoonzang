api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x02bc
    call ds_dispatch_f40b            ; 0x02bf
    mov ax, word [bp + 0x6]          ; 0x02c2
    cwd                              ; 0x02c5
    idiv word [bp + 0x12]            ; 0x02c6
    imul word [bp + 0xe]             ; 0x02c9
    mov word [bp - 0x0002], ax       ; 0x02cc
    mov ax, word [bp + 0x6]          ; 0x02cf
    cwd                              ; 0x02d2
    idiv word [bp + 0x12]            ; 0x02d3
    mov ax, dx                       ; 0x02d6
    imul word [bp + 0x10]            ; 0x02d8
    mov word [bp - 0x0004], ax       ; 0x02db
    mov ax, word [bp + 0xa]          ; 0x02de
    add ax, word [bp - 0x0004]       ; 0x02e1
    add ax, strict word 9            ; 0x02e4
    push ax                          ; 0x02e7
    mov ax, 6                        ; 0x02e8
    imul word [bp + 0xc]             ; 0x02eb
    add ax, word [bp + 0x8]          ; 0x02ee
    add ax, word [bp - 0x0002]       ; 0x02f1
    inc ax                           ; 0x02f4
    push ax                          ; 0x02f5
    mov ax, word [bp + 0xa]          ; 0x02f6
    add ax, word [bp - 0x0004]       ; 0x02f9
    dec ax                           ; 0x02fc
    push ax                          ; 0x02fd
    mov ax, word [bp + 0x8]          ; 0x02fe
    add ax, word [bp - 0x0002]       ; 0x0301
    dec ax                           ; 0x0304
    push ax                          ; 0x0305
    call ds_dispatch_e928            ; 0x0306
    add sp, byte 8                   ; 0x0309
    mov word [bp - 0x0006], dx       ; 0x030c
    mov word [bp - 0x0008], ax       ; 0x030f
    mov ax, 0                        ; 0x0312
    push ax                          ; 0x0315
    mov ax, word [bp + 0xa]          ; 0x0316
    add ax, word [bp - 0x0004]       ; 0x0319
    add ax, strict word 8            ; 0x031c
    push ax                          ; 0x031f
    mov ax, 6                        ; 0x0320
    imul word [bp + 0xc]             ; 0x0323
    add ax, word [bp + 0x8]          ; 0x0326
    add ax, word [bp - 0x0002]       ; 0x0329
    push ax                          ; 0x032c
    mov ax, word [bp + 0xa]          ; 0x032d
    add ax, word [bp - 0x0004]       ; 0x0330
    push ax                          ; 0x0333
    mov ax, word [bp + 0x8]          ; 0x0334
    add ax, word [bp - 0x0002]       ; 0x0337
    push ax                          ; 0x033a
    call ds_dispatch_bce3            ; 0x033b
    add sp, byte 0x0a                ; 0x033e
    mov ax, 0xc0                     ; 0x0341
    push ax                          ; 0x0344
    push word [bp + 0x14]            ; 0x0345
    call ds_dispatch_e823            ; 0x0348
    add sp, byte 4                   ; 0x034b
    mov ax, word [bp + 0xa]          ; 0x034e
    add ax, word [bp - 0x0004]       ; 0x0351
    inc ax                           ; 0x0354
    inc ax                           ; 0x0355
    push ax                          ; 0x0356
    push word [bp + 0x4]             ; 0x0357
    call ds_dispatch_fa90            ; 0x035a
    pop cx                           ; 0x035d
    mov cx, ax                       ; 0x035e
    mov ax, word [bp + 0xc]          ; 0x0360
    sub ax, cx                       ; 0x0363
    mov cx, 6                        ; 0x0365
    imul cx                          ; 0x0368
    mov cx, data_0002                ; 0x036a
    cwd                              ; 0x036d
    idiv cx                          ; 0x036e
    add ax, word [bp + 0x8]          ; 0x0370
    add ax, word [bp - 0x0002]       ; 0x0373
    inc ax                           ; 0x0376
    push ax                          ; 0x0377
    call ds_dispatch_e809            ; 0x0378
    add sp, byte 4                   ; 0x037b
    mov ax, 0                        ; 0x037e
    push ax                          ; 0x0381
    push word [bp + 0x4]             ; 0x0382
    call ds_dispatch_e84e            ; 0x0385
    add sp, byte 4                   ; 0x0388
    mov ax, word [bp + 0xa]          ; 0x038b
    add ax, word [bp - 0x0004]       ; 0x038e
    add ax, strict word 9            ; 0x0391
    push ax                          ; 0x0394
    mov ax, 6                        ; 0x0395
    imul word [bp + 0xc]             ; 0x0398
    add ax, word [bp + 0x8]          ; 0x039b
    add ax, word [bp - 0x0002]       ; 0x039e
    inc ax                           ; 0x03a1
    push ax                          ; 0x03a2
    mov ax, word [bp + 0xa]          ; 0x03a3
    add ax, word [bp - 0x0004]       ; 0x03a6
    dec ax                           ; 0x03a9
    push ax                          ; 0x03aa
    mov ax, word [bp + 0x8]          ; 0x03ab
    add ax, word [bp - 0x0002]       ; 0x03ae
    dec ax                           ; 0x03b1
    push ax                          ; 0x03b2
    call ds_dispatch_e8da            ; 0x03b3
    add sp, byte 8                   ; 0x03b6
    mov ax, 1                        ; 0x03b9
    push ax                          ; 0x03bc
    push word [bp - 0x0006]          ; 0x03bd
    push word [bp - 0x0008]          ; 0x03c0
    call ds_dispatch_e94f            ; 0x03c3
    add sp, byte 6                   ; 0x03c6
    ret                              ; 0x03c9
