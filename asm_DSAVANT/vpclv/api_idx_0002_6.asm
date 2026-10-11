api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x4270
    call ds_dispatch_f40b            ; 0x4273
    mov ax, word [bp + 0x6]          ; 0x4276
    shl ax, 1                        ; 0x4279
    mov bx, ax                       ; 0x427b
    mov ax, word [bx - 0x6a10]       ; 0x427d
    cwd                              ; 0x4281
    idiv word [bp + 0x8]             ; 0x4282
    push ax                          ; 0x4285
    mov ax, 0x248                    ; 0x4286
    imul word [bp + 0x4]             ; 0x4289
    mov bx, ax                       ; 0x428c
    mov ax, word [bx + 0x5c18]       ; 0x428e
    dec ax                           ; 0x4292
    mov cx, 2                        ; 0x4293
    cwd                              ; 0x4296
    idiv cx                          ; 0x4297
    mov cx, ax                       ; 0x4299
    pop ax                           ; 0x429b
    sub ax, cx                       ; 0x429c
    mov word [bp - 0x0002], ax       ; 0x429e
    add bx, word [bp + 0xa]          ; 0x42a1
    mov al, byte [bx + 0x5d6c]       ; 0x42a4
    sub ah, ah                       ; 0x42a8
    push ax                          ; 0x42aa
    mov ax, 0x248                    ; 0x42ab
    imul word [bp + 0x4]             ; 0x42ae
    mov bx, ax                       ; 0x42b1
    mov cx, word [bx + 0x5c18]       ; 0x42b3
    shl cx, 1                        ; 0x42b7
    shl cx, 1                        ; 0x42b9
    shl cx, 1                        ; 0x42bb
    pop ax                           ; 0x42bd
    cmp ax, cx                       ; 0x42be
    jle short @..api_idx_0002_6.l1   ; 0x42c0
    mov word [bp - 0x0002], 0        ; 0x42c2
@..api_idx_0002_6.l1:
    add ax, word [bp - 0x0002]       ; 0x42c7
    cmp ax, strict word 0x64         ; 0x42ca
    jle short @..api_idx_0002_6.l2   ; 0x42cd
    mov word [bp - 0x0002], 0        ; 0x42cf
@..api_idx_0002_6.l2:
    cmp word [bp - 0x0002], byte 0   ; 0x42d4
    jge short @..api_idx_0002_6.l3   ; 0x42d8
    mov word [bp - 0x0002], 0        ; 0x42da
@..api_idx_0002_6.l3:
    mov ax, word [bp + 0x6]          ; 0x42df
    shl ax, 1                        ; 0x42e2
    mov bx, ax                       ; 0x42e4
    mov ax, word [bx - 0x6a10]       ; 0x42e6
    cmp ax, word [bp - 0x0002]       ; 0x42ea
    jge short @..api_idx_0002_6.l4   ; 0x42ed
    mov word [bp - 0x0002], ax       ; 0x42ef
@..api_idx_0002_6.l4:
    mov ax, word [bp - 0x0002]       ; 0x42f2
    sub word [bx - 0x6a10], ax       ; 0x42f5
    mov al, byte [bp - 0x0002]       ; 0x42f9
    push ax                          ; 0x42fc
    mov ax, 0x248                    ; 0x42fd
    imul word [bp + 0x4]             ; 0x4300
    mov cx, ax                       ; 0x4303
    add ax, word [bp + 0xa]          ; 0x4305
    mov bx, ax                       ; 0x4308
    pop ax                           ; 0x430a
    add byte [bx + 0x5d6c], al       ; 0x430b
    ret                              ; 0x430f
loc_4310:
    mov ax, 0                        ; 0x4310
    call ds_dispatch_f40b            ; 0x4313
    mov ax, 0x248                    ; 0x4316
    imul word [bp + 0x4]             ; 0x4319
    mov bx, ax                       ; 0x431c
    mov al, byte [bx + 0x5e2d]       ; 0x431e
    sub ah, ah                       ; 0x4322
    jmp near @..local.l13            ; 0x4324
jumptable_45b6_case_0:
    mov ax, 3                        ; 0x4327
    push ax                          ; 0x432a
    mov ax, 6                        ; 0x432b
    push ax                          ; 0x432e
    mov ax, 8                        ; 0x432f
    push ax                          ; 0x4332
    push word [bp + 0x4]             ; 0x4333
    call api_idx_001c                ; 0x4336
    add sp, byte 8                   ; 0x4339
    jmp near @..local.l14            ; 0x433c
jumptable_45b6_case_1:
    mov ax, 9                        ; 0x433f
    push ax                          ; 0x4342
    mov ax, 3                        ; 0x4343
    push ax                          ; 0x4346
    push ax                          ; 0x4347
    push word [bp + 0x4]             ; 0x4348
    call api_idx_001c                ; 0x434b
    add sp, byte 8                   ; 0x434e
    mov ax, 0x20                     ; 0x4351
    push ax                          ; 0x4354
    mov ax, 2                        ; 0x4355
    push ax                          ; 0x4358
    mov ax, 3                        ; 0x4359
    push ax                          ; 0x435c
    push word [bp + 0x4]             ; 0x435d
    call api_idx_0002_6              ; 0x4360
    add sp, byte 8                   ; 0x4363
    jmp near @..local.l14            ; 0x4366
jumptable_45b6_case_2:
    mov ax, 9                        ; 0x4369
    push ax                          ; 0x436c
    mov ax, 3                        ; 0x436d
    push ax                          ; 0x4370
    push ax                          ; 0x4371
    push word [bp + 0x4]             ; 0x4372
    call api_idx_001c                ; 0x4375
    add sp, byte 8                   ; 0x4378
    mov ax, 0x1e                     ; 0x437b
    push ax                          ; 0x437e
    mov ax, 2                        ; 0x437f
    push ax                          ; 0x4382
    mov ax, 3                        ; 0x4383
    push ax                          ; 0x4386
    push word [bp + 0x4]             ; 0x4387
    call api_idx_0002_6              ; 0x438a
    add sp, byte 8                   ; 0x438d
    jmp near @..local.l14            ; 0x4390
jumptable_45b6_case_3:
    mov ax, 4                        ; 0x4393
    push ax                          ; 0x4396
    mov ax, 9                        ; 0x4397
    push ax                          ; 0x439a
    mov ax, 4                        ; 0x439b
    push ax                          ; 0x439e
    push word [bp + 0x4]             ; 0x439f
    call api_idx_001c                ; 0x43a2
    add sp, byte 8                   ; 0x43a5
    mov ax, 0x10                     ; 0x43a8
    push ax                          ; 0x43ab
    mov ax, 2                        ; 0x43ac
    push ax                          ; 0x43af
    mov ax, 1                        ; 0x43b0
    push ax                          ; 0x43b3
    push word [bp + 0x4]             ; 0x43b4
    call api_idx_0002_6              ; 0x43b7
    add sp, byte 8                   ; 0x43ba
    jmp near @..local.l14            ; 0x43bd
jumptable_45b6_case_4:
    mov ax, 5                        ; 0x43c0
    push ax                          ; 0x43c3
    push ax                          ; 0x43c4
    mov ax, 6                        ; 0x43c5
    push ax                          ; 0x43c8
    push word [bp + 0x4]             ; 0x43c9
    call api_idx_001c                ; 0x43cc
    add sp, byte 8                   ; 0x43cf
    mov ax, 7                        ; 0x43d2
    push ax                          ; 0x43d5
    mov ax, 3                        ; 0x43d6
    push ax                          ; 0x43d9
    mov ax, 0                        ; 0x43da
    push ax                          ; 0x43dd
    push word [bp + 0x4]             ; 0x43de
    call api_idx_0002_6              ; 0x43e1
    add sp, byte 8                   ; 0x43e4
    mov ax, 0xc                      ; 0x43e7
    push ax                          ; 0x43ea
    mov ax, 3                        ; 0x43eb
    push ax                          ; 0x43ee
    mov ax, 1                        ; 0x43ef
    push ax                          ; 0x43f2
    push word [bp + 0x4]             ; 0x43f3
    call api_idx_0002_6              ; 0x43f6
    add sp, byte 8                   ; 0x43f9
    jmp near @..local.l14            ; 0x43fc
jumptable_45b6_case_6:
    mov ax, 5                        ; 0x43ff
    push ax                          ; 0x4402
    mov ax, 6                        ; 0x4403
    push ax                          ; 0x4406
    mov ax, 4                        ; 0x4407
    push ax                          ; 0x440a
    push word [bp + 0x4]             ; 0x440b
    call api_idx_001c                ; 0x440e
    add sp, byte 8                   ; 0x4411
    mov ax, 0xd                      ; 0x4414
    push ax                          ; 0x4417
    mov ax, 2                        ; 0x4418
    push ax                          ; 0x441b
    mov ax, 1                        ; 0x441c
    push ax                          ; 0x441f
    push word [bp + 0x4]             ; 0x4420
    call api_idx_0002_6              ; 0x4423
    add sp, byte 8                   ; 0x4426
    jmp near @..local.l14            ; 0x4429
jumptable_45b6_case_5:
    mov ax, 9                        ; 0x442c
    push ax                          ; 0x442f
    mov ax, 3                        ; 0x4430
    push ax                          ; 0x4433
    push ax                          ; 0x4434
    push word [bp + 0x4]             ; 0x4435
    call api_idx_001c                ; 0x4438
    add sp, byte 8                   ; 0x443b
    mov ax, 0x1d                     ; 0x443e
    push ax                          ; 0x4441
    mov ax, 2                        ; 0x4442
    push ax                          ; 0x4445
    mov ax, 3                        ; 0x4446
    push ax                          ; 0x4449
    push word [bp + 0x4]             ; 0x444a
    call api_idx_0002_6              ; 0x444d
    add sp, byte 8                   ; 0x4450
    jmp near @..local.l14            ; 0x4453
jumptable_45b6_case_7:
    mov ax, 9                        ; 0x4456
    push ax                          ; 0x4459
    mov ax, 3                        ; 0x445a
    push ax                          ; 0x445d
    push ax                          ; 0x445e
    push word [bp + 0x4]             ; 0x445f
    call api_idx_001c                ; 0x4462
    add sp, byte 8                   ; 0x4465
    mov ax, 0x1f                     ; 0x4468
    push ax                          ; 0x446b
    mov ax, 2                        ; 0x446c
    push ax                          ; 0x446f
    mov ax, 3                        ; 0x4470
    push ax                          ; 0x4473
    push word [bp + 0x4]             ; 0x4474
    call api_idx_0002_6              ; 0x4477
    add sp, byte 8                   ; 0x447a
    jmp near @..local.l14            ; 0x447d
jumptable_45b6_case_9:
    mov ax, 0xc                      ; 0x4480
    push ax                          ; 0x4483
    mov ax, 2                        ; 0x4484
    push ax                          ; 0x4487
    push ax                          ; 0x4488
    push word [bp + 0x4]             ; 0x4489
    call api_idx_001c                ; 0x448c
    add sp, byte 8                   ; 0x448f
    mov ax, 0x20                     ; 0x4492
    push ax                          ; 0x4495
    mov ax, 3                        ; 0x4496
    push ax                          ; 0x4499
    push ax                          ; 0x449a
    push word [bp + 0x4]             ; 0x449b
    call api_idx_0002_6              ; 0x449e
    add sp, byte 8                   ; 0x44a1
    mov ax, 0x1e                     ; 0x44a4
    push ax                          ; 0x44a7
    mov ax, 2                        ; 0x44a8
    push ax                          ; 0x44ab
    mov ax, 3                        ; 0x44ac
    push ax                          ; 0x44af
    push word [bp + 0x4]             ; 0x44b0
    call api_idx_0002_6              ; 0x44b3
    add sp, byte 8                   ; 0x44b6
    jmp near @..local.l14            ; 0x44b9
jumptable_45b6_case_8:
    mov ax, 5                        ; 0x44bc
    push ax                          ; 0x44bf
    push ax                          ; 0x44c0
    mov ax, 6                        ; 0x44c1
    push ax                          ; 0x44c4
    push word [bp + 0x4]             ; 0x44c5
    call api_idx_001c                ; 0x44c8
    add sp, byte 8                   ; 0x44cb
    mov ax, 4                        ; 0x44ce
    push ax                          ; 0x44d1
    mov ax, 3                        ; 0x44d2
    push ax                          ; 0x44d5
    mov ax, 0                        ; 0x44d6
    push ax                          ; 0x44d9
    push word [bp + 0x4]             ; 0x44da
    call api_idx_0002_6              ; 0x44dd
    add sp, byte 8                   ; 0x44e0
    jmp near @..local.l14            ; 0x44e3
jumptable_45b6_case_10:
    mov ax, 5                        ; 0x44e6
    push ax                          ; 0x44e9
    mov ax, 4                        ; 0x44ea
    push ax                          ; 0x44ed
    mov ax, 7                        ; 0x44ee
    push ax                          ; 0x44f1
    push word [bp + 0x4]             ; 0x44f2
    call api_idx_001c                ; 0x44f5
    add sp, byte 8                   ; 0x44f8
    mov ax, 0x1c                     ; 0x44fb
    push ax                          ; 0x44fe
    mov ax, 3                        ; 0x44ff
    push ax                          ; 0x4502
    push ax                          ; 0x4503
    push word [bp + 0x4]             ; 0x4504
    call api_idx_0002_6              ; 0x4507
    add sp, byte 8                   ; 0x450a
    jmp near @..local.l14            ; 0x450d
jumptable_45b6_case_11:
    mov ax, 5                        ; 0x4510
    push ax                          ; 0x4513
    mov ax, 4                        ; 0x4514
    push ax                          ; 0x4517
    mov ax, 7                        ; 0x4518
    push ax                          ; 0x451b
    push word [bp + 0x4]             ; 0x451c
    call api_idx_001c                ; 0x451f
    add sp, byte 8                   ; 0x4522
    mov ax, 1                        ; 0x4525
    push ax                          ; 0x4528
    mov ax, 2                        ; 0x4529
    push ax                          ; 0x452c
    mov ax, 0                        ; 0x452d
    push ax                          ; 0x4530
    push word [bp + 0x4]             ; 0x4531
    call api_idx_0002_6              ; 0x4534
    add sp, byte 8                   ; 0x4537
    jmp near @..local.l14            ; 0x453a
jumptable_45b6_case_12:
    mov ax, 6                        ; 0x453d
    push ax                          ; 0x4540
    mov ax, 5                        ; 0x4541
    push ax                          ; 0x4544
    push ax                          ; 0x4545
    push word [bp + 0x4]             ; 0x4546
    call api_idx_001c                ; 0x4549
    add sp, byte 8                   ; 0x454c
    mov ax, 9                        ; 0x454f
    push ax                          ; 0x4552
    mov ax, 3                        ; 0x4553
loc_4556:
    push ax                          ; 0x4556
    mov ax, 0                        ; 0x4557
    push ax                          ; 0x455a
    push word [bp + 0x4]             ; 0x455b
    call api_idx_0002_6              ; 0x455e
    add sp, byte 8                   ; 0x4561
    mov ax, 0x1f                     ; 0x4564
    push ax                          ; 0x4567
    mov ax, 3                        ; 0x4568
    push ax                          ; 0x456b
    push ax                          ; 0x456c
    push word [bp + 0x4]             ; 0x456d
    call api_idx_0002_6              ; 0x4570
    add sp, byte 8                   ; 0x4573
    jmp short @..local.l14           ; 0x4576
jumptable_45b6_case_13:
    mov ax, 4                        ; 0x4578
    push ax                          ; 0x457b
    mov ax, 6                        ; 0x457c
    push ax                          ; 0x457f
    push ax                          ; 0x4580
    push word [bp + 0x4]             ; 0x4581
    call api_idx_001c                ; 0x4584
    add sp, byte 8                   ; 0x4587
    mov ax, 9                        ; 0x458a
    push ax                          ; 0x458d
    mov ax, 2                        ; 0x458e
    push ax                          ; 0x4591
    mov ax, 0                        ; 0x4592
    push ax                          ; 0x4595
    push word [bp + 0x4]             ; 0x4596
    call api_idx_0002_6              ; 0x4599
    add sp, byte 8                   ; 0x459c
    mov ax, 0x11                     ; 0x459f
    push ax                          ; 0x45a2
    mov ax, 2                        ; 0x45a3
    push ax                          ; 0x45a6
    mov ax, 1                        ; 0x45a7
    push ax                          ; 0x45aa
    push word [bp + 0x4]             ; 0x45ab
    call api_idx_0002_6              ; 0x45ae
    add sp, byte 8                   ; 0x45b1
    jmp short @..local.l14           ; 0x45b4
jumptable_45b6:
    dw jumptable_45b6_case_0 - IMAGE_BASE + 0x5055 ; 0x45b6
    dw jumptable_45b6_case_1 - IMAGE_BASE + 0x5055 ; 0x45b8
    dw jumptable_45b6_case_2 - IMAGE_BASE + 0x5055 ; 0x45ba
    dw jumptable_45b6_case_3 - IMAGE_BASE + 0x5055 ; 0x45bc
    dw jumptable_45b6_case_4 - IMAGE_BASE + 0x5055 ; 0x45be
    dw jumptable_45b6_case_5 - IMAGE_BASE + 0x5055 ; 0x45c0
    dw jumptable_45b6_case_6 - IMAGE_BASE + 0x5055 ; 0x45c2
    dw jumptable_45b6_case_7 - IMAGE_BASE + 0x5055 ; 0x45c4
    dw jumptable_45b6_case_8 - IMAGE_BASE + 0x5055 ; 0x45c6
    dw jumptable_45b6_case_9 - IMAGE_BASE + 0x5055 ; 0x45c8
    dw jumptable_45b6_case_10 - IMAGE_BASE + 0x5055 ; 0x45ca
    dw jumptable_45b6_case_11 - IMAGE_BASE + 0x5055 ; 0x45cc
    dw jumptable_45b6_case_12 - IMAGE_BASE + 0x5055 ; 0x45ce
    dw jumptable_45b6_case_13 - IMAGE_BASE + 0x5055 ; 0x45d0
@..local.l13:
    cmp ax, strict word 0xe          ; 0x45d2
    jae short @..local.l14           ; 0x45d5
    xchg bx, ax                      ; 0x45d7
    shl bx, 1                        ; 0x45d8
    jmp [cs:bx - 0x6a03]             ; 0x45da
@..local.l14:
    ret                              ; 0x45df
