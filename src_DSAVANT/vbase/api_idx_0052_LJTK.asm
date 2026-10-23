; auto-generated
api_idx_0052_LJTK:
    mov ax, 0xffae                   ; 0x4335
    call aztec_csav                  ; 0x4338
    mov ax, word [bp + 0x4]          ; 0x433b
    jmp near @..api_idx_0052_LJTK.l2 ; 0x433e
jumptable_4688_case_0:
    lea ax, word [bp - 0x0052]       ; 0x4341
    push ax                          ; 0x4344
    mov al, byte [bss_5989]          ; 0x4345
    sub ah, ah                       ; 0x4348
    add ax, 0x92e                    ; 0x434a
    push ax                          ; 0x434d
    call load_message_string         ; 0x434e
    add sp, byte 4                   ; 0x4351
    lea ax, word [bp - 0x0052]       ; 0x4354
    push ax                          ; 0x4357
    mov ax, 1                        ; 0x4358
    push ax                          ; 0x435b
    push ax                          ; 0x435c
    mov ax, 8                        ; 0x435d
    push ax                          ; 0x4360
    mov ax, word [bp + 0x8]          ; 0x4361
    add ax, strict word 0x19         ; 0x4364
    push ax                          ; 0x4367
    mov ax, word [bp + 0x6]          ; 0x4368
    add ax, strict word 0x5c         ; 0x436b
    push ax                          ; 0x436e
    call draw_button                 ; 0x436f
    add sp, byte 0x0c                ; 0x4372
    jmp near @..api_idx_0052_LJTK.l3 ; 0x4375
jumptable_4688_case_1:
    mov ax, word [bp + 0x8]          ; 0x4378
    add ax, strict word 0x26         ; 0x437b
    push ax                          ; 0x437e
    mov ax, word [bp + 0x6]          ; 0x437f
    add ax, strict word 0x39         ; 0x4382
    push ax                          ; 0x4385
    mov al, byte [bss_5986]          ; 0x4386
    sub ah, ah                       ; 0x4389
    push ax                          ; 0x438b
    call loc_HOMM                    ; 0x438c
    add sp, byte 6                   ; 0x438f
    jmp near @..api_idx_0052_LJTK.l3 ; 0x4392
jumptable_4688_case_2:
    mov ax, 0x12                     ; 0x4395
    push ax                          ; 0x4398
    mov ax, word [bp + 0x8]          ; 0x4399
    add ax, strict word 0x38         ; 0x439c
    push ax                          ; 0x439f
    mov ax, word [bp + 0x6]          ; 0x43a0
    add ax, strict word 0x27         ; 0x43a3
    push ax                          ; 0x43a6
    mov ax, bss_593a                 ; 0x43a7
    push ax                          ; 0x43aa
    call loc_RSMG                    ; 0x43ab
    add sp, byte 8                   ; 0x43ae
    jmp near @..api_idx_0052_LJTK.l3 ; 0x43b1
jumptable_4688_case_3:
    mov ax, 0x12                     ; 0x43b4
    push ax                          ; 0x43b7
    mov ax, word [bp + 0x8]          ; 0x43b8
    add ax, strict word 0x44         ; 0x43bb
    push ax                          ; 0x43be
    mov ax, word [bp + 0x6]          ; 0x43bf
    add ax, strict word 0x27         ; 0x43c2
    push ax                          ; 0x43c5
    mov ax, bss_594e                 ; 0x43c6
    push ax                          ; 0x43c9
    call loc_RSMG                    ; 0x43ca
    add sp, byte 8                   ; 0x43cd
    jmp near @..api_idx_0052_LJTK.l3 ; 0x43d0
jumptable_4688_case_4:
    lea ax, word [bp - 0x0052]       ; 0x43d3
    push ax                          ; 0x43d6
    mov al, byte [bss_5984]          ; 0x43d7
    sub ah, ah                       ; 0x43da
    add ax, 0x931                    ; 0x43dc
    push ax                          ; 0x43df
    call load_message_string         ; 0x43e0
    add sp, byte 4                   ; 0x43e3
    mov ax, 0xe                      ; 0x43e6
    push ax                          ; 0x43e9
    mov ax, word [bp + 0x8]          ; 0x43ea
    add ax, strict word 0x56         ; 0x43ed
    push ax                          ; 0x43f0
    mov ax, word [bp + 0x6]          ; 0x43f1
    add ax, strict word 0x3f         ; 0x43f4
    push ax                          ; 0x43f7
    lea ax, word [bp - 0x0052]       ; 0x43f8
    push ax                          ; 0x43fb
    call loc_RSMG                    ; 0x43fc
    add sp, byte 8                   ; 0x43ff
    jmp near @..api_idx_0052_LJTK.l3 ; 0x4402
jumptable_4688_case_5:
    mov ax, word [bp + 0x8]          ; 0x4405
    add ax, strict word 0x74         ; 0x4408
    push ax                          ; 0x440b
    mov ax, word [bp + 0x6]          ; 0x440c
    add ax, strict word 0x77         ; 0x440f
    push ax                          ; 0x4412
    mov ax, word [bp + 0x8]          ; 0x4413
    add ax, strict word 0x62         ; 0x4416
    push ax                          ; 0x4419
    mov ax, word [bp + 0x6]          ; 0x441a
    add ax, strict word 0x69         ; 0x441d
    push ax                          ; 0x4420
    call draw_inset_panel            ; 0x4421
    add sp, byte 8                   ; 0x4424
    mov ax, 0xc3                     ; 0x4427
    push ax                          ; 0x442a
    mov ax, 0xb4                     ; 0x442b
    push ax                          ; 0x442e
    call gfx_set_text_color          ; 0x442f
    add sp, byte 4                   ; 0x4432
    mov ax, word [bp + 0x8]          ; 0x4435
    add ax, strict word 0x63         ; 0x4438
    push ax                          ; 0x443b
    mov ax, word [bp + 0x6]          ; 0x443c
    add ax, strict word 0x6b         ; 0x443f
    push ax                          ; 0x4442
    call gfx_set_text_pos            ; 0x4443
    add sp, byte 4                   ; 0x4446
    mov ax, 0                        ; 0x4449
    push ax                          ; 0x444c
    mov ax, 2                        ; 0x444d
    push ax                          ; 0x4450
    mov al, byte [bss_597c]          ; 0x4451
    sub ah, ah                       ; 0x4454
    push ax                          ; 0x4456
    call ds_app_GUML                 ; 0x4457
    add sp, byte 6                   ; 0x445a
    mov ax, word [bp + 0x8]          ; 0x445d
    add ax, strict word 0x69         ; 0x4460
    push ax                          ; 0x4463
    mov ax, word [bp + 0x6]          ; 0x4464
    add ax, strict word 0x6b         ; 0x4467
    push ax                          ; 0x446a
    call gfx_set_text_pos            ; 0x446b
    add sp, byte 4                   ; 0x446e
    mov ax, 0                        ; 0x4471
    push ax                          ; 0x4474
    mov ax, 2                        ; 0x4475
    push ax                          ; 0x4478
    mov al, byte [bss_597d]          ; 0x4479
    sub ah, ah                       ; 0x447c
    push ax                          ; 0x447e
    call ds_app_GUML                 ; 0x447f
    add sp, byte 6                   ; 0x4482
    mov ax, word [bp + 0x8]          ; 0x4485
    add ax, strict word 0x6f         ; 0x4488
    push ax                          ; 0x448b
    mov ax, word [bp + 0x6]          ; 0x448c
    add ax, strict word 0x6b         ; 0x448f
    push ax                          ; 0x4492
    call gfx_set_text_pos            ; 0x4493
    add sp, byte 4                   ; 0x4496
    mov ax, 0                        ; 0x4499
    push ax                          ; 0x449c
    mov ax, 2                        ; 0x449d
    push ax                          ; 0x44a0
    mov al, byte [bss_597e]          ; 0x44a1
    sub ah, ah                       ; 0x44a4
    push ax                          ; 0x44a6
    call ds_app_GUML                 ; 0x44a7
    add sp, byte 6                   ; 0x44aa
    jmp near @..api_idx_0052_LJTK.l3 ; 0x44ad
jumptable_4688_case_8:
    lea ax, word [bp - 0x0052]       ; 0x44b0
    push ax                          ; 0x44b3
    mov al, byte [video_mode]        ; 0x44b4
    sub ah, ah                       ; 0x44b7
    add ax, 0x946                    ; 0x44b9
    push ax                          ; 0x44bc
    call load_message_string         ; 0x44bd
    add sp, byte 4                   ; 0x44c0
    mov ax, 0xe                      ; 0x44c3
    push ax                          ; 0x44c6
    mov ax, word [bp + 0x8]          ; 0x44c7
    add ax, strict word 0x7a         ; 0x44ca
    push ax                          ; 0x44cd
    mov ax, word [bp + 0x6]          ; 0x44ce
    add ax, strict word 0x3f         ; 0x44d1
    push ax                          ; 0x44d4
    lea ax, word [bp - 0x0052]       ; 0x44d5
    push ax                          ; 0x44d8
    call loc_RSMG                    ; 0x44d9
    add sp, byte 8                   ; 0x44dc
    jmp near @..api_idx_0052_LJTK.l3 ; 0x44df
jumptable_4688_case_9:
    mov ax, word [bp + 0x8]          ; 0x44e2
    add ax, 0x86                     ; 0x44e5
    push ax                          ; 0x44e8
    mov ax, word [bp + 0x6]          ; 0x44e9
    add ax, strict word 0x69         ; 0x44ec
    push ax                          ; 0x44ef
    mov al, byte [bss_597f]          ; 0x44f0
    sub ah, ah                       ; 0x44f3
    push ax                          ; 0x44f5
    call loc_HOMM                    ; 0x44f6
    add sp, byte 6                   ; 0x44f9
    jmp near @..api_idx_0052_LJTK.l3 ; 0x44fc
jumptable_4688_case_10:
    lea ax, word [bp - 0x0052]       ; 0x44ff
    push ax                          ; 0x4502
    mov al, byte [bss_5988]          ; 0x4503
    sub ah, ah                       ; 0x4506
    add ax, 0x938                    ; 0x4508
    push ax                          ; 0x450b
    call load_message_string         ; 0x450c
    add sp, byte 4                   ; 0x450f
    lea ax, word [bp - 0x0052]       ; 0x4512
    push ax                          ; 0x4515
    mov ax, 1                        ; 0x4516
    push ax                          ; 0x4519
    push ax                          ; 0x451a
    mov ax, 6                        ; 0x451b
    push ax                          ; 0x451e
    mov ax, word [bp + 0x8]          ; 0x451f
    add ax, strict word 0x19         ; 0x4522
    push ax                          ; 0x4525
    mov ax, word [bp + 0x6]          ; 0x4526
    add ax, 0xe6                     ; 0x4529
    push ax                          ; 0x452c
    call draw_button                 ; 0x452d
    add sp, byte 0x0c                ; 0x4530
    jmp near @..api_idx_0052_LJTK.l3 ; 0x4533
jumptable_4688_case_11:
    lea ax, word [bp - 0x0052]       ; 0x4536
    push ax                          ; 0x4539
    mov al, byte [bss_598c]          ; 0x453a
    sub ah, ah                       ; 0x453d
    add ax, 0x93b                    ; 0x453f
    push ax                          ; 0x4542
    call load_message_string         ; 0x4543
    add sp, byte 4                   ; 0x4546
    lea ax, word [bp - 0x0052]       ; 0x4549
    push ax                          ; 0x454c
    mov ax, 1                        ; 0x454d
    push ax                          ; 0x4550
    push ax                          ; 0x4551
    mov ax, 3                        ; 0x4552
    push ax                          ; 0x4555
    mov ax, word [bp + 0x8]          ; 0x4556
    add ax, strict word 0x25         ; 0x4559
    push ax                          ; 0x455c
    mov ax, word [bp + 0x6]          ; 0x455d
    add ax, 0xc2                     ; 0x4560
    push ax                          ; 0x4563
    call draw_button                 ; 0x4564
    add sp, byte 0x0c                ; 0x4567
    jmp near @..api_idx_0052_LJTK.l3 ; 0x456a
jumptable_4688_case_12:
    mov ax, 1                        ; 0x456d
    cmp byte [screen_store_1_enabled], 1 ; 0x4570
    je short @..api_idx_0052_LJTK.l1 ; 0x4575
    mov ax, 0                        ; 0x4577
    cmp byte [screen_store_disk_enabled], 1 ; 0x457a
    jne short @..api_idx_0052_LJTK.l1 ; 0x457f
    mov ax, 2                        ; 0x4581
@..api_idx_0052_LJTK.l1:
    mov word [bp - 0x0002], ax       ; 0x4584
    lea ax, word [bp - 0x0052]       ; 0x4587
    push ax                          ; 0x458a
    mov ax, word [bp - 0x0002]       ; 0x458b
    add ax, 0x93d                    ; 0x458e
    push ax                          ; 0x4591
    call load_message_string         ; 0x4592
    add sp, byte 4                   ; 0x4595
    mov ax, 0xa                      ; 0x4598
    push ax                          ; 0x459b
    mov ax, word [bp + 0x8]          ; 0x459c
    add ax, strict word 0x38         ; 0x459f
    push ax                          ; 0x45a2
    mov ax, word [bp + 0x6]          ; 0x45a3
    add ax, 0xd5                     ; 0x45a6
    push ax                          ; 0x45a9
    lea ax, word [bp - 0x0052]       ; 0x45aa
    push ax                          ; 0x45ad
    call loc_RSMG                    ; 0x45ae
    add sp, byte 8                   ; 0x45b1
    jmp near @..api_idx_0052_LJTK.l3 ; 0x45b4
jumptable_4688_case_13:
    mov ax, 0xa                      ; 0x45b7
    push ax                          ; 0x45ba
    mov ax, word [bp + 0x8]          ; 0x45bb
    add ax, strict word 0x44         ; 0x45be
    push ax                          ; 0x45c1
    mov ax, word [bp + 0x6]          ; 0x45c2
    add ax, 0xd5                     ; 0x45c5
    push ax                          ; 0x45c8
    mov ax, screen_store_drive       ; 0x45c9
    push ax                          ; 0x45cc
    call loc_RSMG                    ; 0x45cd
    add sp, byte 8                   ; 0x45d0
    jmp near @..api_idx_0052_LJTK.l3 ; 0x45d3
jumptable_4688_case_14:
    lea ax, word [bp - 0x0052]       ; 0x45d6
    push ax                          ; 0x45d9
    mov al, byte [bss_598a]          ; 0x45da
    sub ah, ah                       ; 0x45dd
    add ax, 0x93f                    ; 0x45df
    push ax                          ; 0x45e2
    call load_message_string         ; 0x45e3
    add sp, byte 4                   ; 0x45e6
    mov ax, 0xa                      ; 0x45e9
    push ax                          ; 0x45ec
    mov ax, word [bp + 0x8]          ; 0x45ed
    add ax, strict word 0x56         ; 0x45f0
    push ax                          ; 0x45f3
    mov ax, word [bp + 0x6]          ; 0x45f4
    add ax, 0xd5                     ; 0x45f7
    push ax                          ; 0x45fa
    lea ax, word [bp - 0x0052]       ; 0x45fb
    push ax                          ; 0x45fe
    call loc_RSMG                    ; 0x45ff
    add sp, byte 8                   ; 0x4602
    jmp near @..api_idx_0052_LJTK.l3 ; 0x4605
jumptable_4688_case_15:
    mov ax, word [bp + 0x8]          ; 0x4608
    add ax, strict word 0x6e         ; 0x460b
    push ax                          ; 0x460e
    mov ax, word [bp + 0x6]          ; 0x460f
    add ax, 0xfb                     ; 0x4612
    push ax                          ; 0x4615
    mov ax, word [bp + 0x8]          ; 0x4616
    add ax, strict word 0x62         ; 0x4619
    push ax                          ; 0x461c
    mov ax, word [bp + 0x6]          ; 0x461d
    add ax, 0xe7                     ; 0x4620
    push ax                          ; 0x4623
    call draw_inset_panel            ; 0x4624
    add sp, byte 8                   ; 0x4627
    mov ax, 0xc3                     ; 0x462a
    push ax                          ; 0x462d
    mov ax, 0xb4                     ; 0x462e
    push ax                          ; 0x4631
    call gfx_set_text_color          ; 0x4632
    add sp, byte 4                   ; 0x4635
    mov ax, word [bp + 0x8]          ; 0x4638
    add ax, strict word 0x63         ; 0x463b
    push ax                          ; 0x463e
    mov ax, word [bp + 0x6]          ; 0x463f
    add ax, 0xe9                     ; 0x4642
    push ax                          ; 0x4645
    call gfx_set_text_pos            ; 0x4646
    add sp, byte 4                   ; 0x4649
    mov ax, 0                        ; 0x464c
    push ax                          ; 0x464f
    mov ax, 3                        ; 0x4650
    push ax                          ; 0x4653
    mov al, byte [bss_5978]          ; 0x4654
    cbw                              ; 0x4657
    push ax                          ; 0x4658
    call ds_app_GUML                 ; 0x4659
    add sp, byte 6                   ; 0x465c
    mov ax, word [bp + 0x8]          ; 0x465f
    add ax, strict word 0x69         ; 0x4662
    push ax                          ; 0x4665
    mov ax, word [bp + 0x6]          ; 0x4666
    add ax, 0xe9                     ; 0x4669
    push ax                          ; 0x466c
    call gfx_set_text_pos            ; 0x466d
    add sp, byte 4                   ; 0x4670
    mov ax, 0                        ; 0x4673
    push ax                          ; 0x4676
    mov ax, 3                        ; 0x4677
    push ax                          ; 0x467a
    mov al, byte [bss_5979]          ; 0x467b
    cbw                              ; 0x467e
    push ax                          ; 0x467f
    call ds_app_GUML                 ; 0x4680
    add sp, byte 6                   ; 0x4683
    jmp short @..api_idx_0052_LJTK.l3 ; 0x4686
jumptable_4688:
    dw jumptable_4688_case_0 - IMAGE_BASE + __zres_end ; 0x4688
    dw jumptable_4688_case_1 - IMAGE_BASE + __zres_end ; 0x468a
    dw jumptable_4688_case_2 - IMAGE_BASE + __zres_end ; 0x468c
    dw jumptable_4688_case_3 - IMAGE_BASE + __zres_end ; 0x468e
    dw jumptable_4688_case_4 - IMAGE_BASE + __zres_end ; 0x4690
    dw jumptable_4688_case_5 - IMAGE_BASE + __zres_end ; 0x4692
    dw jumptable_4688_case_5 - IMAGE_BASE + __zres_end ; 0x4694
    dw jumptable_4688_case_5 - IMAGE_BASE + __zres_end ; 0x4696
    dw jumptable_4688_case_8 - IMAGE_BASE + __zres_end ; 0x4698
    dw jumptable_4688_case_9 - IMAGE_BASE + __zres_end ; 0x469a
    dw jumptable_4688_case_10 - IMAGE_BASE + __zres_end ; 0x469c
    dw jumptable_4688_case_11 - IMAGE_BASE + __zres_end ; 0x469e
    dw jumptable_4688_case_12 - IMAGE_BASE + __zres_end ; 0x46a0
    dw jumptable_4688_case_13 - IMAGE_BASE + __zres_end ; 0x46a2
    dw jumptable_4688_case_14 - IMAGE_BASE + __zres_end ; 0x46a4
    dw jumptable_4688_case_15 - IMAGE_BASE + __zres_end ; 0x46a6
    dw jumptable_4688_case_15 - IMAGE_BASE + __zres_end ; 0x46a8
@..api_idx_0052_LJTK.l2:
    cmp ax, strict word 0x11         ; 0x46aa
    jae short @..api_idx_0052_LJTK.l3 ; 0x46ad
    xchg bx, ax                      ; 0x46af
    shl bx, 1                        ; 0x46b0
    jmp [cs:bx + jumptable_4688 - IMAGE_BASE + __zres_end] ; 0x46b2
@..api_idx_0052_LJTK.l3:
    ret                              ; 0x46b7
