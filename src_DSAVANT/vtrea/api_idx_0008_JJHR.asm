; auto-generated
api_idx_0008_JJHR:
    mov ax, 0xfff8                   ; 0x82b8
    call aztec_csav                  ; 0x82bb
    mov ax, word [bp + 0x6]          ; 0x82be
    cwd                              ; 0x82c1
    idiv word [bp + 0x12]            ; 0x82c2
    imul word [bp + 0xe]             ; 0x82c5
    mov word [bp - 0x0002], ax       ; 0x82c8
    mov ax, word [bp + 0x6]          ; 0x82cb
    cwd                              ; 0x82ce
    idiv word [bp + 0x12]            ; 0x82cf
    mov ax, dx                       ; 0x82d2
    imul word [bp + 0x10]            ; 0x82d4
    mov word [bp - 0x0004], ax       ; 0x82d7
    mov ax, word [bp + 0xa]          ; 0x82da
    add ax, word [bp - 0x0004]       ; 0x82dd
    add ax, strict word 9            ; 0x82e0
    push ax                          ; 0x82e3
    mov ax, 6                        ; 0x82e4
    imul word [bp + 0xc]             ; 0x82e7
    add ax, word [bp + 0x8]          ; 0x82ea
    add ax, word [bp - 0x0002]       ; 0x82ed
    inc ax                           ; 0x82f0
    push ax                          ; 0x82f1
    mov ax, word [bp + 0xa]          ; 0x82f2
    add ax, word [bp - 0x0004]       ; 0x82f5
    dec ax                           ; 0x82f8
    push ax                          ; 0x82f9
    mov ax, word [bp + 0x8]          ; 0x82fa
    add ax, word [bp - 0x0002]       ; 0x82fd
    dec ax                           ; 0x8300
    push ax                          ; 0x8301
    call thunk_10                    ; 0x8302
    add sp, byte 8                   ; 0x8305
    mov word [bp - 0x0006], dx       ; 0x8308
    mov word [bp - 0x0008], ax       ; 0x830b
    mov ax, 0                        ; 0x830e
    push ax                          ; 0x8311
    mov ax, word [bp + 0xa]          ; 0x8312
    add ax, word [bp - 0x0004]       ; 0x8315
    add ax, strict word 8            ; 0x8318
    push ax                          ; 0x831b
    mov ax, 6                        ; 0x831c
    imul word [bp + 0xc]             ; 0x831f
    add ax, word [bp + 0x8]          ; 0x8322
    add ax, word [bp - 0x0002]       ; 0x8325
    push ax                          ; 0x8328
    mov ax, word [bp + 0xa]          ; 0x8329
    add ax, word [bp - 0x0004]       ; 0x832c
    push ax                          ; 0x832f
    mov ax, word [bp + 0x8]          ; 0x8330
    add ax, word [bp - 0x0002]       ; 0x8333
    push ax                          ; 0x8336
    call ds_app_PQGJ                 ; 0x8337
    add sp, byte 0x0a                ; 0x833a
    mov ax, 0xc0                     ; 0x833d
    push ax                          ; 0x8340
    push word [bp + 0x14]            ; 0x8341
    call thunk_3                     ; 0x8344
    add sp, byte 4                   ; 0x8347
    mov ax, word [bp + 0xa]          ; 0x834a
    add ax, word [bp - 0x0004]       ; 0x834d
    inc ax                           ; 0x8350
    inc ax                           ; 0x8351
    push ax                          ; 0x8352
    push word [bp + 0x4]             ; 0x8353
    call aztec_strlen                ; 0x8356
    pop cx                           ; 0x8359
    mov cx, ax                       ; 0x835a
    mov ax, word [bp + 0xc]          ; 0x835c
    sub ax, cx                       ; 0x835f
    mov cx, 6                        ; 0x8361
    imul cx                          ; 0x8364
    mov cx, 2                        ; 0x8366
    cwd                              ; 0x8369
    idiv cx                          ; 0x836a
    add ax, word [bp + 0x8]          ; 0x836c
    add ax, word [bp - 0x0002]       ; 0x836f
    inc ax                           ; 0x8372
    push ax                          ; 0x8373
    call thunk                       ; 0x8374
    add sp, byte 4                   ; 0x8377
    mov ax, 0                        ; 0x837a
    push ax                          ; 0x837d
    push word [bp + 0x4]             ; 0x837e
    call ds_string_loc_QRJV          ; 0x8381
    add sp, byte 4                   ; 0x8384
    mov ax, word [bp + 0xa]          ; 0x8387
    add ax, word [bp - 0x0004]       ; 0x838a
    add ax, strict word 9            ; 0x838d
    push ax                          ; 0x8390
    mov ax, 6                        ; 0x8391
    imul word [bp + 0xc]             ; 0x8394
    add ax, word [bp + 0x8]          ; 0x8397
    add ax, word [bp - 0x0002]       ; 0x839a
    inc ax                           ; 0x839d
    push ax                          ; 0x839e
    mov ax, word [bp + 0xa]          ; 0x839f
    add ax, word [bp - 0x0004]       ; 0x83a2
    dec ax                           ; 0x83a5
    push ax                          ; 0x83a6
    mov ax, word [bp + 0x8]          ; 0x83a7
    add ax, word [bp - 0x0002]       ; 0x83aa
    dec ax                           ; 0x83ad
    push ax                          ; 0x83ae
    call thunk_4                     ; 0x83af
    add sp, byte 8                   ; 0x83b2
    mov ax, 1                        ; 0x83b5
    push ax                          ; 0x83b8
    push word [bp - 0x0006]          ; 0x83b9
    push word [bp - 0x0008]          ; 0x83bc
    call thunk_13                    ; 0x83bf
    add sp, byte 6                   ; 0x83c2
    ret                              ; 0x83c5
loc_MNNG:
    mov ax, 0                        ; 0x83c6
    call aztec_csav                  ; 0x83c9
    push word [bp + 0xc]             ; 0x83cc
    mov ax, word [bp + 0x6]          ; 0x83cf
    dec ax                           ; 0x83d2
    push ax                          ; 0x83d3
    mov ax, word [bp + 0x8]          ; 0x83d4
    inc ax                           ; 0x83d7
    push ax                          ; 0x83d8
    mov ax, word [bp + 0x6]          ; 0x83d9
    dec ax                           ; 0x83dc
    push ax                          ; 0x83dd
    mov ax, word [bp + 0x4]          ; 0x83de
    dec ax                           ; 0x83e1
    push ax                          ; 0x83e2
    call thunk_7                     ; 0x83e3
    add sp, byte 0x0a                ; 0x83e6
    push word [bp + 0xc]             ; 0x83e9
    mov ax, word [bp + 0xa]          ; 0x83ec
    inc ax                           ; 0x83ef
    push ax                          ; 0x83f0
    mov ax, word [bp + 0x8]          ; 0x83f1
    inc ax                           ; 0x83f4
    push ax                          ; 0x83f5
    mov ax, word [bp + 0x6]          ; 0x83f6
    dec ax                           ; 0x83f9
    push ax                          ; 0x83fa
    mov ax, word [bp + 0x8]          ; 0x83fb
    inc ax                           ; 0x83fe
    push ax                          ; 0x83ff
    call thunk_7                     ; 0x8400
    add sp, byte 0x0a                ; 0x8403
    push word [bp + 0xc]             ; 0x8406
    mov ax, word [bp + 0xa]          ; 0x8409
    inc ax                           ; 0x840c
    push ax                          ; 0x840d
    mov ax, word [bp + 0x8]          ; 0x840e
    inc ax                           ; 0x8411
    push ax                          ; 0x8412
    mov ax, word [bp + 0xa]          ; 0x8413
    inc ax                           ; 0x8416
    push ax                          ; 0x8417
    mov ax, word [bp + 0x4]          ; 0x8418
    dec ax                           ; 0x841b
    push ax                          ; 0x841c
    call thunk_7                     ; 0x841d
    add sp, byte 0x0a                ; 0x8420
    push word [bp + 0xc]             ; 0x8423
    mov ax, word [bp + 0xa]          ; 0x8426
    inc ax                           ; 0x8429
    push ax                          ; 0x842a
    mov ax, word [bp + 0x4]          ; 0x842b
    dec ax                           ; 0x842e
    push ax                          ; 0x842f
    mov ax, word [bp + 0x6]          ; 0x8430
    dec ax                           ; 0x8433
    push ax                          ; 0x8434
    mov ax, word [bp + 0x4]          ; 0x8435
    dec ax                           ; 0x8438
    push ax                          ; 0x8439
    call thunk_7                     ; 0x843a
    add sp, byte 0x0a                ; 0x843d
    ret                              ; 0x8440
