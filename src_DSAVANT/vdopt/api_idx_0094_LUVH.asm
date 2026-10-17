; auto-generated
api_idx_0094_LUVH:
    mov ax, 0xff6c                   ; 0x417c
    call aztec_csav                  ; 0x417f
    mov word [bss_9b5e], 5           ; 0x4182
    mov word [bp - 0x0094], 0        ; 0x4188
    mov word [bp - 0x0050], 0        ; 0x418e
@..api_idx_0094_LUVH.l1:
    mov word [bp - 0x0052], 0        ; 0x4193
@..api_idx_0094_LUVH.l2:
    mov ax, 0x248                    ; 0x4198
    imul word [bp + 0x4]             ; 0x419b
    push ax                          ; 0x419e
    mov ax, 0x78                     ; 0x419f
    imul word [bp - 0x0050]          ; 0x41a2
    mov cx, ax                       ; 0x41a5
    pop ax                           ; 0x41a7
    add ax, cx                       ; 0x41a8
    push ax                          ; 0x41aa
    mov ax, 0xc                      ; 0x41ab
    imul word [bp - 0x0052]          ; 0x41ae
    mov cx, ax                       ; 0x41b1
    pop ax                           ; 0x41b3
    add ax, cx                       ; 0x41b4
    mov bx, ax                       ; 0x41b6
    cmp word [bx + 0x5c34], byte 0   ; 0x41b8
    jg short @..api_idx_0094_LUVH.l3 ; 0x41bd
    jmp near @..api_idx_0094_LUVH.l8 ; 0x41bf
@..api_idx_0094_LUVH.l3:
    mov ax, 0                        ; 0x41c2
    push ax                          ; 0x41c5
    push word [bx + 0x5c34]          ; 0x41c6
    lea ax, word [bp - 0x004c]       ; 0x41ca
    push ax                          ; 0x41cd
    mov ax, 1                        ; 0x41ce
    push ax                          ; 0x41d1
    call ds_app_file_MPPM            ; 0x41d2
    add sp, byte 8                   ; 0x41d5
    mov ax, 0x248                    ; 0x41d8
    imul word [bp + 0x4]             ; 0x41db
    push ax                          ; 0x41de
    mov ax, 0x78                     ; 0x41df
    imul word [bp - 0x0050]          ; 0x41e2
    mov cx, ax                       ; 0x41e5
    pop ax                           ; 0x41e7
    add ax, cx                       ; 0x41e8
    push ax                          ; 0x41ea
    mov ax, 0xc                      ; 0x41eb
    imul word [bp - 0x0052]          ; 0x41ee
    mov cx, ax                       ; 0x41f1
    pop ax                           ; 0x41f3
    add ax, cx                       ; 0x41f4
    mov bx, ax                       ; 0x41f6
    mov al, byte [bx + 0x5c3b]       ; 0x41f8
    sub ah, ah                       ; 0x41fc
    test ax, 0x80                    ; 0x41fe
    je short @..api_idx_0094_LUVH.l4 ; 0x4201
    lea ax, word [bp - 0x004c]       ; 0x4203
    push ax                          ; 0x4206
    mov ax, 0x16                     ; 0x4207
    imul word [bp - 0x0094]          ; 0x420a
    add ax, 0x9bb0                   ; 0x420e
    push ax                          ; 0x4211
    call aztec_strcpy                ; 0x4212
    add sp, byte 4                   ; 0x4215
    jmp short @..api_idx_0094_LUVH.l5 ; 0x4218
@..api_idx_0094_LUVH.l4:
    mov ax, 0x16                     ; 0x421a
    imul word [bp - 0x0094]          ; 0x421d
    add ax, 0x9bb0                   ; 0x4221
    push ax                          ; 0x4224
    mov al, byte [bp - 0x0013]       ; 0x4225
    sub ah, ah                       ; 0x4228
    add ax, 0x1770                   ; 0x422a
    push ax                          ; 0x422d
    call ds_app_mem_TIMR             ; 0x422e
    add sp, byte 4                   ; 0x4231
@..api_idx_0094_LUVH.l5:
    mov al, byte [bp - 0x0013]       ; 0x4234
    sub ah, ah                       ; 0x4237
    mov cx, word [bp - 0x0094]       ; 0x4239
    shl cx, 1                        ; 0x423d
    mov bx, cx                       ; 0x423f
    mov word [bx - 0x6478], ax       ; 0x4241
    mov ax, word [bp - 0x0050]       ; 0x4245
    mov word [bx - 0x64a0], ax       ; 0x4248
    mov ax, 0x248                    ; 0x424c
    imul word [bp + 0x4]             ; 0x424f
    push ax                          ; 0x4252
    mov ax, 0x78                     ; 0x4253
    imul word [bp - 0x0050]          ; 0x4256
    mov cx, ax                       ; 0x4259
    pop ax                           ; 0x425b
    add ax, cx                       ; 0x425c
    push ax                          ; 0x425e
    mov ax, 0xc                      ; 0x425f
    imul word [bp - 0x0052]          ; 0x4262
    mov cx, ax                       ; 0x4265
    pop ax                           ; 0x4267
    add ax, cx                       ; 0x4268
    mov bx, ax                       ; 0x426a
    mov al, byte [bx + 0x5c38]       ; 0x426c
    sub ah, ah                       ; 0x4270
    mov bx, ax                       ; 0x4272
    cmp byte [bx + 0x60e], 1         ; 0x4274
    jne short @..api_idx_0094_LUVH.l6 ; 0x4279
    mov ax, 0x248                    ; 0x427b
    imul word [bp + 0x4]             ; 0x427e
    push ax                          ; 0x4281
    mov ax, 0x78                     ; 0x4282
    imul word [bp - 0x0050]          ; 0x4285
    mov cx, ax                       ; 0x4288
    pop ax                           ; 0x428a
    add ax, cx                       ; 0x428b
    push ax                          ; 0x428d
    mov ax, 0xc                      ; 0x428e
    imul word [bp - 0x0052]          ; 0x4291
    mov cx, ax                       ; 0x4294
    pop ax                           ; 0x4296
    add ax, cx                       ; 0x4297
    mov bx, ax                       ; 0x4299
    mov al, byte [bx + 0x5c3a]       ; 0x429b
    sub ah, ah                       ; 0x429f
    mov cx, word [bp - 0x0094]       ; 0x42a1
    shl cx, 1                        ; 0x42a5
    mov bx, cx                       ; 0x42a7
    mov word [bx - 0x6298], ax       ; 0x42a9
    jmp short @..api_idx_0094_LUVH.l7 ; 0x42ad
@..api_idx_0094_LUVH.l6:
    mov ax, word [bp - 0x0094]       ; 0x42af
    shl ax, 1                        ; 0x42b3
    mov bx, ax                       ; 0x42b5
    mov word [bx - 0x6298], 0        ; 0x42b7
@..api_idx_0094_LUVH.l7:
    mov ax, word [bp - 0x0050]       ; 0x42bd
    xchg al, ah                      ; 0x42c0
    sub al, al                       ; 0x42c2
    add ax, word [bp - 0x0052]       ; 0x42c4
    mov cx, word [bp - 0x0094]       ; 0x42c7
    shl cx, 1                        ; 0x42cb
    mov bx, cx                       ; 0x42cd
    add bx, bp                       ; 0x42cf
    mov word [bx - 0x0092], ax       ; 0x42d1
    inc word [bp - 0x0094]           ; 0x42d5
@..api_idx_0094_LUVH.l8:
    inc word [bp - 0x0052]           ; 0x42d9
    mov ax, word [bp - 0x0052]       ; 0x42dc
    cmp ax, strict word 0xa          ; 0x42df
    jge short @..api_idx_0094_LUVH.l9 ; 0x42e2
    jmp near @..api_idx_0094_LUVH.l2 ; 0x42e4
@..api_idx_0094_LUVH.l9:
    inc word [bp - 0x0050]           ; 0x42e7
    mov ax, word [bp - 0x0050]       ; 0x42ea
    cmp ax, strict word 2            ; 0x42ed
    jge short @..api_idx_0094_LUVH.l10 ; 0x42f0
    jmp near @..api_idx_0094_LUVH.l1 ; 0x42f2
@..api_idx_0094_LUVH.l10:
    cmp word [bp - 0x0094], byte 0   ; 0x42f5
    jne short @..api_idx_0094_LUVH.l11 ; 0x42fa
    ret                              ; 0x42fc
@..api_idx_0094_LUVH.l11:
    mov ax, 0x90aa                   ; 0x42fd
    push ax                          ; 0x4300
    push word [bp - 0x0094]          ; 0x4301
    mov ax, 1                        ; 0x4305
    push ax                          ; 0x4308
    push ax                          ; 0x4309
    push ax                          ; 0x430a
    mov ax, 0x7ee                    ; 0x430b
    push ax                          ; 0x430e
    call api_idx_0038_QQIU           ; 0x430f
    add sp, byte 0x0c                ; 0x4312
    mov word [bp - 0x004e], ax       ; 0x4315
    mov ax, word [bss_904e]          ; 0x4318
    mov word [bp - 0x0002], ax       ; 0x431b
    cmp word [bp - 0x004e], byte 2   ; 0x431e
    je short @..api_idx_0094_LUVH.l12 ; 0x4322
    cmp ax, strict word 0xffff       ; 0x4324
    jne short @..api_idx_0094_LUVH.l13 ; 0x4327
@..api_idx_0094_LUVH.l12:
    mov ax, 0xc6                     ; 0x4329
    push ax                          ; 0x432c
    mov ax, 0x109                    ; 0x432d
    push ax                          ; 0x4330
    mov ax, 0x8e                     ; 0x4331
    push ax                          ; 0x4334
    mov ax, 0x36                     ; 0x4335
    push ax                          ; 0x4338
    call thunk_4                     ; 0x4339
    add sp, byte 8                   ; 0x433c
    ret                              ; 0x433f
@..api_idx_0094_LUVH.l13:
    mov ax, word [bp - 0x0002]       ; 0x4340
    shl ax, 1                        ; 0x4343
    mov bx, ax                       ; 0x4345
    add bx, bp                       ; 0x4347
    mov ax, word [bx - 0x0092]       ; 0x4349
    mov cx, 0x100                    ; 0x434d
    cwd                              ; 0x4350
    idiv cx                          ; 0x4351
    mov word [bp - 0x0050], ax       ; 0x4353
    mov word [bp - 0x0052], dx       ; 0x4356
    mov ax, 0x10                     ; 0x4359
    push ax                          ; 0x435c
    mov ax, 0xc                      ; 0x435d
    push ax                          ; 0x4360
    mov ax, 0x96                     ; 0x4361
    push ax                          ; 0x4364
    mov ax, 0x3f                     ; 0x4365
    push ax                          ; 0x4368
    push word [bp - 0x004e]          ; 0x4369
    mov ax, word [bp - 0x004e]       ; 0x436c
    add ax, 0x7ee                    ; 0x436f
    push ax                          ; 0x4372
    call api_idx_0018_RGOS           ; 0x4373
    add sp, byte 0x0c                ; 0x4376
    mov ax, 0x248                    ; 0x4379
    imul word [bp + 0x4]             ; 0x437c
    push ax                          ; 0x437f
    mov ax, 0x78                     ; 0x4380
    imul word [bp - 0x0050]          ; 0x4383
    mov cx, ax                       ; 0x4386
    pop ax                           ; 0x4388
    add ax, cx                       ; 0x4389
    push ax                          ; 0x438b
    mov ax, 0xc                      ; 0x438c
    imul word [bp - 0x0052]          ; 0x438f
    mov cx, ax                       ; 0x4392
    pop ax                           ; 0x4394
    add ax, cx                       ; 0x4395
    mov bx, ax                       ; 0x4397
    mov ax, word [bx + 0x5c34]       ; 0x4399
    mov word [bp - 0x0004], ax       ; 0x439d
    cmp word [bp - 0x004e], byte 0   ; 0x43a0
    je short @..api_idx_0094_LUVH.l14 ; 0x43a4
    jmp near @..api_idx_0094_LUVH.l30 ; 0x43a6
@..api_idx_0094_LUVH.l14:
    push word [bp - 0x0052]          ; 0x43a9
    push word [bp - 0x0050]          ; 0x43ac
    push word [bp + 0x4]             ; 0x43af
    call api_idx_000c_RLKV           ; 0x43b2
    add sp, byte 6                   ; 0x43b5
    test ax, ax                      ; 0x43b8
    je short @..api_idx_0094_LUVH.l15 ; 0x43ba
    jmp near @..api_idx_0094_LUVH.l28 ; 0x43bc
@..api_idx_0094_LUVH.l15:
    mov ax, 0                        ; 0x43bf
    push ax                          ; 0x43c2
    push word [bp - 0x0004]          ; 0x43c3
    lea ax, word [bp - 0x004c]       ; 0x43c6
    push ax                          ; 0x43c9
    mov ax, 1                        ; 0x43ca
    push ax                          ; 0x43cd
    call ds_app_file_MPPM            ; 0x43ce
    add sp, byte 8                   ; 0x43d1
    cmp word [bp - 0x002a], byte 0   ; 0x43d4
    jne short @..api_idx_0094_LUVH.l16 ; 0x43d8
    jmp near @..api_idx_0094_LUVH.l20 ; 0x43da
@..api_idx_0094_LUVH.l16:
    mov ax, word [bp - 0x002a]       ; 0x43dd
    mov cx, 0x100                    ; 0x43e0
    cwd                              ; 0x43e3
    idiv cx                          ; 0x43e4
    mov word [bp - 0x0056], ax       ; 0x43e6
    mov word [bp - 0x0054], dx       ; 0x43e9
    mov ax, 6                        ; 0x43ec
    imul dx                          ; 0x43ef
    mov bx, ax                       ; 0x43f1
    cmp byte [bx + 0x624], 1         ; 0x43f3
    jne short @..api_idx_0094_LUVH.l17 ; 0x43f8
    call ds_app_io_VGOM              ; 0x43fa
    mov word [bss_9d90], ax          ; 0x43fd
    cmp ax, strict word 0xffff       ; 0x4400
    jne short @..api_idx_0094_LUVH.l17 ; 0x4403
    mov word [bp - 0x0054], 0xffff   ; 0x4405
@..api_idx_0094_LUVH.l17:
    cmp word [bp - 0x0054], byte 0xff ; 0x440a
    je short @..api_idx_0094_LUVH.l19 ; 0x440e
    push word [bp - 0x0052]          ; 0x4410
    push word [bp - 0x0050]          ; 0x4413
    push word [bp + 0x4]             ; 0x4416
    call ds_app_UTUH                 ; 0x4419
    add sp, byte 6                   ; 0x441c
    cmp word [bp - 0x0054], byte 0x4d ; 0x441f
    jne short @..api_idx_0094_LUVH.l18 ; 0x4423
    mov ax, 0xc6                     ; 0x4425
    push ax                          ; 0x4428
    mov ax, 0x109                    ; 0x4429
    push ax                          ; 0x442c
    mov ax, 0x8e                     ; 0x442d
    push ax                          ; 0x4430
    mov ax, 0x36                     ; 0x4431
    push ax                          ; 0x4434
    call thunk_4                     ; 0x4435
    add sp, byte 8                   ; 0x4438
@..api_idx_0094_LUVH.l18:
    push word [bss_9d90]             ; 0x443b
    push word [bp - 0x0056]          ; 0x443f
    push word [bp - 0x0054]          ; 0x4442
    push word [bp + 0x4]             ; 0x4445
    call api_idx_0008_JRPS           ; 0x4448
    add sp, byte 8                   ; 0x444b
@..api_idx_0094_LUVH.l19:
    jmp near @..api_idx_0094_LUVH.l27 ; 0x444e
@..api_idx_0094_LUVH.l20:
    cmp byte [bp - 0x000d], 4        ; 0x4451
    je short @..api_idx_0094_LUVH.l21 ; 0x4455
    jmp near @..api_idx_0094_LUVH.l23 ; 0x4457
@..api_idx_0094_LUVH.l21:
    mov ax, word [bss_830c]          ; 0x445a
    cmp ax, word [bp - 0x002e]       ; 0x445d
    je short @..api_idx_0094_LUVH.l22 ; 0x4460
    jmp near @..api_idx_0094_LUVH.l23 ; 0x4462
@..api_idx_0094_LUVH.l22:
    mov ax, 0                        ; 0x4465
    push ax                          ; 0x4468
    mov al, byte [bp - 0x002c]       ; 0x4469
    sub ah, ah                       ; 0x446c
    push ax                          ; 0x446e
    mov ax, word [bp - 0x002e]       ; 0x446f
    mov cx, 4                        ; 0x4472
    shl ax, cl                       ; 0x4475
    add ax, 0x8d14                   ; 0x4477
    push ax                          ; 0x447a
    call set_bitmap_bit              ; 0x447b
    add sp, byte 6                   ; 0x447e
    mov ax, 0                        ; 0x4481
    push ax                          ; 0x4484
    mov al, byte [bp - 0x002c]       ; 0x4485
    sub ah, ah                       ; 0x4488
    push ax                          ; 0x448a
    mov ax, word [bp - 0x002e]       ; 0x448b
    mov cx, 4                        ; 0x448e
    shl ax, cl                       ; 0x4491
    add ax, 0x5642                   ; 0x4493
    push ax                          ; 0x4496
    call set_bitmap_bit              ; 0x4497
    add sp, byte 6                   ; 0x449a
    mov ax, 1                        ; 0x449d
    push ax                          ; 0x44a0
    mov al, byte [bp - 0x002b]       ; 0x44a1
    sub ah, ah                       ; 0x44a4
    push ax                          ; 0x44a6
    mov ax, word [bp - 0x002e]       ; 0x44a7
    mov cx, 4                        ; 0x44aa
    shl ax, cl                       ; 0x44ad
    add ax, 0x8d14                   ; 0x44af
    push ax                          ; 0x44b2
    call set_bitmap_bit              ; 0x44b3
    add sp, byte 6                   ; 0x44b6
    mov ax, 1                        ; 0x44b9
    push ax                          ; 0x44bc
    mov al, byte [bp - 0x002b]       ; 0x44bd
    sub ah, ah                       ; 0x44c0
    push ax                          ; 0x44c2
    mov ax, word [bp - 0x002e]       ; 0x44c3
    mov cx, 4                        ; 0x44c6
    shl ax, cl                       ; 0x44c9
    add ax, 0x5642                   ; 0x44cb
    push ax                          ; 0x44ce
    call set_bitmap_bit              ; 0x44cf
    add sp, byte 6                   ; 0x44d2
    push word [bp - 0x0052]          ; 0x44d5
    push word [bp - 0x0050]          ; 0x44d8
    push word [bp + 0x4]             ; 0x44db
    call ds_app_UTUH                 ; 0x44de
    add sp, byte 6                   ; 0x44e1
    jmp short @..api_idx_0094_LUVH.l27 ; 0x44e4
@..api_idx_0094_LUVH.l23:
    cmp byte [bp - 0x000d], 5        ; 0x44e6
    jne short @..api_idx_0094_LUVH.l26 ; 0x44ea
    cmp word [bss_830c], byte 8      ; 0x44ec
    jne short @..api_idx_0094_LUVH.l24 ; 0x44f1
    mov word [bss_8304], 1           ; 0x44f3
    jmp short @..api_idx_0094_LUVH.l25 ; 0x44f9
@..api_idx_0094_LUVH.l24:
    mov word [bss_90b6], 0x807       ; 0x44fb
    mov word [bss_90b8], 1           ; 0x4501
@..api_idx_0094_LUVH.l25:
    jmp short @..api_idx_0094_LUVH.l27 ; 0x4507
@..api_idx_0094_LUVH.l26:
    mov word [bss_90b6], 0x7fe       ; 0x4509
    mov word [bss_90b8], 1           ; 0x450f
@..api_idx_0094_LUVH.l27:
    jmp short @..api_idx_0094_LUVH.l29 ; 0x4515
@..api_idx_0094_LUVH.l28:
    mov ax, word [bp - 0x0004]       ; 0x4517
    cmp ax, 0x108                    ; 0x451a
    je short @..api_idx_0094_LUVH.l29 ; 0x451d
    cmp ax, 0x109                    ; 0x451f
    je short @..api_idx_0094_LUVH.l29 ; 0x4522
    cmp ax, 0x101                    ; 0x4524
    je short @..api_idx_0094_LUVH.l29 ; 0x4527
    cmp ax, 0x103                    ; 0x4529
    je short @..api_idx_0094_LUVH.l29 ; 0x452c
    push word [bp - 0x0052]          ; 0x452e
    push word [bp - 0x0050]          ; 0x4531
    push word [bp + 0x4]             ; 0x4534
    call ds_app_UTUH                 ; 0x4537
    add sp, byte 6                   ; 0x453a
@..api_idx_0094_LUVH.l29:
    jmp near @..api_idx_0094_LUVH.l33 ; 0x453d
@..api_idx_0094_LUVH.l30:
    cmp word [bp - 0x004e], byte 1   ; 0x4540
    jne short @..api_idx_0094_LUVH.l33 ; 0x4544
    mov ax, 0x248                    ; 0x4546
    imul word [bp + 0x4]             ; 0x4549
    push ax                          ; 0x454c
    mov ax, 0x78                     ; 0x454d
    imul word [bp - 0x0050]          ; 0x4550
    mov cx, ax                       ; 0x4553
    pop ax                           ; 0x4555
    add ax, cx                       ; 0x4556
    push ax                          ; 0x4558
    mov ax, 0xc                      ; 0x4559
    imul word [bp - 0x0052]          ; 0x455c
    mov cx, ax                       ; 0x455f
    pop ax                           ; 0x4561
    add ax, cx                       ; 0x4562
    mov bx, ax                       ; 0x4564
    mov al, byte [bx + 0x5c3b]       ; 0x4566
    sub ah, ah                       ; 0x456a
    test ax, 2                       ; 0x456c
    jne short @..api_idx_0094_LUVH.l31 ; 0x456f
    cmp word [bp - 0x0004], strict word 0x229 ; 0x4571
    jne short @..api_idx_0094_LUVH.l32 ; 0x4576
@..api_idx_0094_LUVH.l31:
    mov ax, 0                        ; 0x4578
    push ax                          ; 0x457b
    call ds_app_HKIJ                 ; 0x457c
    pop cx                           ; 0x457f
    jmp short @..api_idx_0094_LUVH.l33 ; 0x4580
@..api_idx_0094_LUVH.l32:
    mov ax, 0x248                    ; 0x4582
    imul word [bp + 0x4]             ; 0x4585
    push ax                          ; 0x4588
    mov ax, 0x78                     ; 0x4589
    imul word [bp - 0x0050]          ; 0x458c
    mov cx, ax                       ; 0x458f
    pop ax                           ; 0x4591
    add ax, cx                       ; 0x4592
    push ax                          ; 0x4594
    mov ax, 0xc                      ; 0x4595
    imul word [bp - 0x0052]          ; 0x4598
    mov cx, ax                       ; 0x459b
    pop ax                           ; 0x459d
    add ax, cx                       ; 0x459e
    add ax, 0x5c34                   ; 0x45a0
    push ax                          ; 0x45a3
    call api_idx_0004_UJRL           ; 0x45a4
    pop cx                           ; 0x45a7
    push word [bp - 0x0052]          ; 0x45a8
    push word [bp - 0x0050]          ; 0x45ab
    push word [bp + 0x4]             ; 0x45ae
    call ds_app_IPJO                 ; 0x45b1
    add sp, byte 6                   ; 0x45b4
@..api_idx_0094_LUVH.l33:
    mov ax, 0xc6                     ; 0x45b7
    push ax                          ; 0x45ba
    mov ax, 0x109                    ; 0x45bb
    push ax                          ; 0x45be
    mov ax, 0x8e                     ; 0x45bf
    push ax                          ; 0x45c2
    mov ax, 0x36                     ; 0x45c3
    push ax                          ; 0x45c6
    call thunk_4                     ; 0x45c7
    add sp, byte 8                   ; 0x45ca
    cmp word [bss_90b6], byte 0      ; 0x45cd
    jle short @..api_idx_0094_LUVH.l34 ; 0x45d2
    push word [bss_90b6]             ; 0x45d4
    call api_idx_0058_TVSV           ; 0x45d8
    pop cx                           ; 0x45db
@..api_idx_0094_LUVH.l34:
    ret                              ; 0x45dc
