; auto-generated
api_idx_0008_VRRI:
    mov ax, 0xfff8                   ; 0x02bc
    call aztec_csav                  ; 0x02bf
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
    call gfx_save_area               ; 0x0306
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
    call draw_bevel_frame            ; 0x033b
    add sp, byte 0x0a                ; 0x033e
    mov ax, 0xc0                     ; 0x0341
    push ax                          ; 0x0344
    push word [bp + 0x14]            ; 0x0345
    call gfx_set_text_color          ; 0x0348
    add sp, byte 4                   ; 0x034b
    mov ax, word [bp + 0xa]          ; 0x034e
    add ax, word [bp - 0x0004]       ; 0x0351
    inc ax                           ; 0x0354
    inc ax                           ; 0x0355
    push ax                          ; 0x0356
    push word [bp + 0x4]             ; 0x0357
    call aztec_strlen                ; 0x035a
    pop cx                           ; 0x035d
    mov cx, ax                       ; 0x035e
    mov ax, word [bp + 0xc]          ; 0x0360
    sub ax, cx                       ; 0x0363
    mov cx, 6                        ; 0x0365
    imul cx                          ; 0x0368
    mov cx, 2                        ; 0x036a
    cwd                              ; 0x036d
    idiv cx                          ; 0x036e
    add ax, word [bp + 0x8]          ; 0x0370
    add ax, word [bp - 0x0002]       ; 0x0373
    inc ax                           ; 0x0376
    push ax                          ; 0x0377
    call gfx_set_text_pos            ; 0x0378
    add sp, byte 4                   ; 0x037b
    mov ax, 0                        ; 0x037e
    push ax                          ; 0x0381
    push word [bp + 0x4]             ; 0x0382
    call draw_string                 ; 0x0385
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
    call gfx_show_area               ; 0x03b3
    add sp, byte 8                   ; 0x03b6
    mov ax, 1                        ; 0x03b9
    push ax                          ; 0x03bc
    push word [bp - 0x0006]          ; 0x03bd
    push word [bp - 0x0008]          ; 0x03c0
    call gfx_restore_area            ; 0x03c3
    add sp, byte 6                   ; 0x03c6
    ret                              ; 0x03c9
loc_MNNG:
    mov ax, 0                        ; 0x03ca
    call aztec_csav                  ; 0x03cd
    push word [bp + 0xc]             ; 0x03d0
    mov ax, word [bp + 0x6]          ; 0x03d3
    dec ax                           ; 0x03d6
    push ax                          ; 0x03d7
    mov ax, word [bp + 0x8]          ; 0x03d8
    inc ax                           ; 0x03db
    push ax                          ; 0x03dc
    mov ax, word [bp + 0x6]          ; 0x03dd
    dec ax                           ; 0x03e0
    push ax                          ; 0x03e1
    mov ax, word [bp + 0x4]          ; 0x03e2
    dec ax                           ; 0x03e5
    push ax                          ; 0x03e6
    call gfx_fill_area               ; 0x03e7
    add sp, byte 0x0a                ; 0x03ea
    push word [bp + 0xc]             ; 0x03ed
    mov ax, word [bp + 0xa]          ; 0x03f0
    inc ax                           ; 0x03f3
    push ax                          ; 0x03f4
    mov ax, word [bp + 0x8]          ; 0x03f5
    inc ax                           ; 0x03f8
    push ax                          ; 0x03f9
    mov ax, word [bp + 0x6]          ; 0x03fa
    dec ax                           ; 0x03fd
    push ax                          ; 0x03fe
    mov ax, word [bp + 0x8]          ; 0x03ff
    inc ax                           ; 0x0402
    push ax                          ; 0x0403
    call gfx_fill_area               ; 0x0404
    add sp, byte 0x0a                ; 0x0407
    push word [bp + 0xc]             ; 0x040a
    mov ax, word [bp + 0xa]          ; 0x040d
    inc ax                           ; 0x0410
    push ax                          ; 0x0411
    mov ax, word [bp + 0x8]          ; 0x0412
    inc ax                           ; 0x0415
    push ax                          ; 0x0416
    mov ax, word [bp + 0xa]          ; 0x0417
    inc ax                           ; 0x041a
    push ax                          ; 0x041b
    mov ax, word [bp + 0x4]          ; 0x041c
    dec ax                           ; 0x041f
    push ax                          ; 0x0420
    call gfx_fill_area               ; 0x0421
    add sp, byte 0x0a                ; 0x0424
    push word [bp + 0xc]             ; 0x0427
    mov ax, word [bp + 0xa]          ; 0x042a
    inc ax                           ; 0x042d
    push ax                          ; 0x042e
    mov ax, word [bp + 0x4]          ; 0x042f
    dec ax                           ; 0x0432
    push ax                          ; 0x0433
    mov ax, word [bp + 0x6]          ; 0x0434
    dec ax                           ; 0x0437
    push ax                          ; 0x0438
    mov ax, word [bp + 0x4]          ; 0x0439
    dec ax                           ; 0x043c
    push ax                          ; 0x043d
    call gfx_fill_area               ; 0x043e
    add sp, byte 0x0a                ; 0x0441
    ret                              ; 0x0444
