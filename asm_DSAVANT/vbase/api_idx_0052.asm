api_idx_0052:
    mov ax, 0xffae                   ; 0x4335
    call ds_dispatch_f40b            ; 0x4338
    mov ax, word [bp + 0x4]          ; 0x433b
    jmp near @..api_idx_0052.l1      ; 0x433e
    lea ax, word [bp - 0x0052]       ; 0x4341
    push ax                          ; 0x4344
    mov al, byte [data_5989]         ; 0x4345
    sub ah, ah                       ; 0x4348
    add ax, 0x92e                    ; 0x434a
    push ax                          ; 0x434d
    call ds_dispatch_b53b            ; 0x434e
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
    call ds_dispatch_c0c1            ; 0x436f
    add sp, byte 0x0c                ; 0x4372
    jmp near @..api_idx_0052.l2      ; 0x4375
    mov ax, word [bp + 0x8]          ; 0x4378
    add ax, strict word 0x26         ; 0x437b
    push ax                          ; 0x437e
    mov ax, word [bp + 0x6]          ; 0x437f
    add ax, strict word 0x39         ; 0x4382
    push ax                          ; 0x4385
    mov al, byte [data_5986]         ; 0x4386
    sub ah, ah                       ; 0x4389
    push ax                          ; 0x438b
    call loc_4292                    ; 0x438c
    add sp, byte 6                   ; 0x438f
    jmp near @..api_idx_0052.l2      ; 0x4392
    mov ax, 0x12                     ; 0x4395
    push ax                          ; 0x4398
    mov ax, word [bp + 0x8]          ; 0x4399
    add ax, strict word 0x38         ; 0x439c
    push ax                          ; 0x439f
    mov ax, word [bp + 0x6]          ; 0x43a0
    add ax, strict word 0x27         ; 0x43a3
    push ax                          ; 0x43a6
    mov ax, 0x593a                   ; 0x43a7
    push ax                          ; 0x43aa
    call loc_42e3                    ; 0x43ab
    add sp, byte 8                   ; 0x43ae
    jmp near @..api_idx_0052.l2      ; 0x43b1
    mov ax, 0x12                     ; 0x43b4
    push ax                          ; 0x43b7
    mov ax, word [bp + 0x8]          ; 0x43b8
    add ax, strict word 0x44         ; 0x43bb
    push ax                          ; 0x43be
    mov ax, word [bp + 0x6]          ; 0x43bf
    add ax, strict word 0x27         ; 0x43c2
    push ax                          ; 0x43c5
    mov ax, 0x594e                   ; 0x43c6
    push ax                          ; 0x43c9
    call loc_42e3                    ; 0x43ca
    add sp, byte 8                   ; 0x43cd
    jmp near @..api_idx_0052.l2      ; 0x43d0
    lea ax, word [bp - 0x0052]       ; 0x43d3
    push ax                          ; 0x43d6
    mov al, byte [data_5984]         ; 0x43d7
    sub ah, ah                       ; 0x43da
    add ax, 0x931                    ; 0x43dc
    push ax                          ; 0x43df
    call ds_dispatch_b53b            ; 0x43e0
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
    call loc_42e3                    ; 0x43fc
    add sp, byte 8                   ; 0x43ff
    jmp near @..api_idx_0052.l2      ; 0x4402
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
    call ds_dispatch_bd98            ; 0x4421
    add sp, byte 8                   ; 0x4424
    mov ax, 0xc3                     ; 0x4427
    push ax                          ; 0x442a
    mov ax, 0xb4                     ; 0x442b
    push ax                          ; 0x442e
    call ds_dispatch_e823            ; 0x442f
    add sp, byte 4                   ; 0x4432
    mov ax, word [bp + 0x8]          ; 0x4435
    add ax, strict word 0x63         ; 0x4438
    push ax                          ; 0x443b
    mov ax, word [bp + 0x6]          ; 0x443c
    add ax, strict word 0x6b         ; 0x443f
    push ax                          ; 0x4442
    call ds_dispatch_e809            ; 0x4443
    add sp, byte 4                   ; 0x4446
    mov ax, 0                        ; 0x4449
    push ax                          ; 0x444c
    mov ax, 2                        ; 0x444d
    push ax                          ; 0x4450
    mov al, byte [data_597c]         ; 0x4451
    sub ah, ah                       ; 0x4454
    push ax                          ; 0x4456
    call ds_dispatch_b2e7            ; 0x4457
    add sp, byte 6                   ; 0x445a
    mov ax, word [bp + 0x8]          ; 0x445d
    add ax, strict word 0x69         ; 0x4460
    push ax                          ; 0x4463
    mov ax, word [bp + 0x6]          ; 0x4464
    add ax, strict word 0x6b         ; 0x4467
    push ax                          ; 0x446a
    call ds_dispatch_e809            ; 0x446b
    add sp, byte 4                   ; 0x446e
    mov ax, 0                        ; 0x4471
    push ax                          ; 0x4474
    mov ax, 2                        ; 0x4475
    push ax                          ; 0x4478
    mov al, byte [data_597d]         ; 0x4479
    sub ah, ah                       ; 0x447c
    push ax                          ; 0x447e
    call ds_dispatch_b2e7            ; 0x447f
    add sp, byte 6                   ; 0x4482
    mov ax, word [bp + 0x8]          ; 0x4485
    add ax, strict word 0x6f         ; 0x4488
    push ax                          ; 0x448b
    mov ax, word [bp + 0x6]          ; 0x448c
    add ax, strict word 0x6b         ; 0x448f
    push ax                          ; 0x4492
    call ds_dispatch_e809            ; 0x4493
    add sp, byte 4                   ; 0x4496
    mov ax, 0                        ; 0x4499
    push ax                          ; 0x449c
    mov ax, 2                        ; 0x449d
    push ax                          ; 0x44a0
    mov al, byte [data_597e]         ; 0x44a1
    sub ah, ah                       ; 0x44a4
    push ax                          ; 0x44a6
    call ds_dispatch_b2e7            ; 0x44a7
    add sp, byte 6                   ; 0x44aa
    jmp near @..api_idx_0052.l2      ; 0x44ad
    lea ax, word [bp - 0x0052]       ; 0x44b0
    push ax                          ; 0x44b3
    mov al, byte [data_5985]         ; 0x44b4
    sub ah, ah                       ; 0x44b7
    add ax, 0x946                    ; 0x44b9
    push ax                          ; 0x44bc
    call ds_dispatch_b53b            ; 0x44bd
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
    call loc_42e3                    ; 0x44d9
    add sp, byte 8                   ; 0x44dc
    jmp near @..api_idx_0052.l2      ; 0x44df
    mov ax, word [bp + 0x8]          ; 0x44e2
    add ax, 0x86                     ; 0x44e5
    push ax                          ; 0x44e8
    mov ax, word [bp + 0x6]          ; 0x44e9
    add ax, strict word 0x69         ; 0x44ec
    push ax                          ; 0x44ef
    mov al, byte [data_597f]         ; 0x44f0
    sub ah, ah                       ; 0x44f3
    push ax                          ; 0x44f5
    call loc_4292                    ; 0x44f6
    add sp, byte 6                   ; 0x44f9
    jmp near @..api_idx_0052.l2      ; 0x44fc
    lea ax, word [bp - 0x0052]       ; 0x44ff
    push ax                          ; 0x4502
    mov al, byte [data_5988]         ; 0x4503
    sub ah, ah                       ; 0x4506
    add ax, 0x938                    ; 0x4508
    push ax                          ; 0x450b
    call ds_dispatch_b53b            ; 0x450c
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
    call ds_dispatch_c0c1            ; 0x452d
    add sp, byte 0x0c                ; 0x4530

    db 0xe9, 0x81, 0x01, 0x8d, 0x46, 0xae, 0x50, 0xa0, 0x8c, 0x59, 0x2a, 0xe4, 0x05, 0x3b, 0x09, 0x50
    db 0xe8, 0xf5, 0x6f, 0x83, 0xc4, 0x04, 0x8d, 0x46, 0xae, 0x50, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x25, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xc2, 0x00
    db 0x50, 0xe8, 0x5a, 0x7b, 0x83, 0xc4, 0x0c, 0xe9, 0x4a, 0x01, 0xb8, 0x01, 0x00, 0x80, 0x3e, 0x62
    db 0x59, 0x01, 0x74, 0x0d, 0xb8, 0x00, 0x00, 0x80, 0x3e, 0x63, 0x59, 0x01, 0x75, 0x03, 0xb8, 0x02
    db 0x00, 0x89, 0x46, 0xfe, 0x8d, 0x46, 0xae, 0x50, 0x8b, 0x46, 0xfe, 0x05, 0x3d, 0x09, 0x50, 0xe8
    db 0xa6, 0x6f, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x38, 0x00, 0x50
    db 0x8b, 0x46, 0x06, 0x05, 0xd5, 0x00, 0x50, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0x32, 0xfd, 0x83, 0xc4
    db 0x08, 0xe9, 0x00, 0x01, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x44, 0x00, 0x50, 0x8b
    db 0x46, 0x06, 0x05, 0xd5, 0x00, 0x50, 0xb8, 0x64, 0x59, 0x50, 0xe8, 0x13, 0xfd, 0x83, 0xc4, 0x08
    db 0xe9, 0xe1, 0x00, 0x8d, 0x46, 0xae, 0x50, 0xa0, 0x8a, 0x59, 0x2a, 0xe4, 0x05, 0x3f, 0x09, 0x50
    db 0xe8, 0x55, 0x6f, 0x83, 0xc4, 0x04, 0xb8, 0x0a, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x56, 0x00
    db 0x50, 0x8b, 0x46, 0x06, 0x05, 0xd5, 0x00, 0x50, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0xe1, 0xfc, 0x83
    db 0xc4, 0x08, 0xe9, 0xaf, 0x00, 0x8b, 0x46, 0x08, 0x05, 0x6e, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05
    db 0xfb, 0x00, 0x50, 0x8b, 0x46, 0x08, 0x05, 0x62, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xe7, 0x00
    db 0x50, 0xe8, 0x71, 0x77, 0x83, 0xc4, 0x08, 0xb8, 0xc3, 0x00, 0x50, 0xb8, 0xb4, 0x00, 0x50, 0xe8
    db 0xee, 0xa1, 0x83, 0xc4, 0x04, 0x8b, 0x46, 0x08, 0x05, 0x63, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05
    db 0xe9, 0x00, 0x50, 0xe8, 0xc0, 0xa1, 0x83, 0xc4, 0x04, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00
    db 0x50, 0xa0, 0x78, 0x59, 0x98, 0x50, 0xe8, 0x8b, 0x6c, 0x83, 0xc4, 0x06, 0x8b, 0x46, 0x08, 0x05
    db 0x69, 0x00, 0x50, 0x8b, 0x46, 0x06, 0x05, 0xe9, 0x00, 0x50, 0xe8, 0x99, 0xa1, 0x83, 0xc4, 0x04
    db 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xa0, 0x79, 0x59, 0x98, 0x50, 0xe8, 0x64, 0x6c
    db 0x83, 0xc4, 0x06, 0xeb, 0x2f, 0x88, 0x93, 0xbf, 0x93, 0xdc, 0x93, 0xfb, 0x93, 0x1a, 0x94, 0x4c
    db 0x94, 0x4c, 0x94, 0x4c, 0x94, 0xf7, 0x94, 0x29, 0x95, 0x46, 0x95, 0x7d, 0x95, 0xb4, 0x95, 0xfe
    db 0x95, 0x1d, 0x96, 0x4f, 0x96, 0x4f, 0x96

@..api_idx_0052.l1:
    cmp ax, strict word 0x11         ; 0x46aa
    jae short @..api_idx_0052.l2     ; 0x46ad
    xchg bx, ax                      ; 0x46af
    shl bx, 1                        ; 0x46b0
    jmp [cs:bx - 0x6931]             ; 0x46b2
@..api_idx_0052.l2:
    ret                              ; 0x46b7
loc_46b8:
    mov ax, 0                        ; 0x46b8
    call ds_dispatch_f40b            ; 0x46bb
    mov ax, 1                        ; 0x46be
    push ax                          ; 0x46c1
    mov ax, word [bp + 0x8]          ; 0x46c2
    add ax, strict word 6            ; 0x46c5
    push ax                          ; 0x46c8
    mov ax, word [bp + 0x6]          ; 0x46c9
    add ax, strict word 0xe          ; 0x46cc
    push ax                          ; 0x46cf
    push word [bp + 0x8]             ; 0x46d0
    push word [bp + 0x6]             ; 0x46d3
    call ds_dispatch_e901            ; 0x46d6
    add sp, byte 0x0a                ; 0x46d9
    mov ax, word [bp + 0x8]          ; 0x46dc
    inc ax                           ; 0x46df
    push ax                          ; 0x46e0
    mov ax, word [bp + 0x6]          ; 0x46e1
    inc ax                           ; 0x46e4
    inc ax                           ; 0x46e5
    push ax                          ; 0x46e6
    call ds_dispatch_e809            ; 0x46e7
    add sp, byte 4                   ; 0x46ea
    mov ax, 1                        ; 0x46ed
    push ax                          ; 0x46f0
    mov ax, 0                        ; 0x46f1
    push ax                          ; 0x46f4
    call ds_dispatch_e823            ; 0x46f5
    add sp, byte 4                   ; 0x46f8
    mov ax, 0                        ; 0x46fb
    push ax                          ; 0x46fe
    mov ax, 2                        ; 0x46ff
    push ax                          ; 0x4702
    push word [bp + 0x4]             ; 0x4703
    call ds_dispatch_b2e7            ; 0x4706
    add sp, byte 6                   ; 0x4709
    mov ax, word [bp + 0x8]          ; 0x470c
    add ax, strict word 6            ; 0x470f
    push ax                          ; 0x4712
    mov ax, word [bp + 0x6]          ; 0x4713
    add ax, strict word 0xe          ; 0x4716
    push ax                          ; 0x4719
    push word [bp + 0x8]             ; 0x471a
    push word [bp + 0x6]             ; 0x471d
    call ds_dispatch_e8da            ; 0x4720
    add sp, byte 8                   ; 0x4723
    ret                              ; 0x4726
loc_4727:
    mov ax, 0                        ; 0x4727
    call ds_dispatch_f40b            ; 0x472a
    mov ax, word [bp + 0x8]          ; 0x472d
    add ax, strict word 6            ; 0x4730
    push ax                          ; 0x4733
    mov ax, 6                        ; 0x4734
    imul word [bp + 0xa]             ; 0x4737
    add ax, word [bp + 0x6]          ; 0x473a
    inc ax                           ; 0x473d
    inc ax                           ; 0x473e
    push ax                          ; 0x473f
    push word [bp + 0x8]             ; 0x4740
    push word [bp + 0x6]             ; 0x4743
    call ds_dispatch_bd98            ; 0x4746
    add sp, byte 8                   ; 0x4749
    mov ax, 1                        ; 0x474c
    push ax                          ; 0x474f
    mov ax, word [bp + 0x8]          ; 0x4750
    add ax, strict word 6            ; 0x4753
    push ax                          ; 0x4756
    mov ax, 6                        ; 0x4757
    imul word [bp + 0xa]             ; 0x475a
    add ax, word [bp + 0x6]          ; 0x475d
    inc ax                           ; 0x4760
    inc ax                           ; 0x4761
    push ax                          ; 0x4762
    push word [bp + 0x8]             ; 0x4763
    push word [bp + 0x6]             ; 0x4766
    call ds_dispatch_e901            ; 0x4769
    add sp, byte 0x0a                ; 0x476c
    mov ax, word [bp + 0x8]          ; 0x476f
    inc ax                           ; 0x4772
    push ax                          ; 0x4773
    mov ax, word [bp + 0x6]          ; 0x4774
    inc ax                           ; 0x4777
    inc ax                           ; 0x4778
    push ax                          ; 0x4779
    call ds_dispatch_e809            ; 0x477a
    add sp, byte 4                   ; 0x477d
    mov ax, 1                        ; 0x4780
    push ax                          ; 0x4783
    mov ax, 0                        ; 0x4784
    push ax                          ; 0x4787
    call ds_dispatch_e823            ; 0x4788
    add sp, byte 4                   ; 0x478b
    mov ax, 0                        ; 0x478e
    push ax                          ; 0x4791
    push word [bp + 0x4]             ; 0x4792
    call ds_dispatch_e84e            ; 0x4795
    add sp, byte 4                   ; 0x4798
    mov ax, word [bp + 0x8]          ; 0x479b
    add ax, strict word 6            ; 0x479e
    push ax                          ; 0x47a1
    mov ax, 6                        ; 0x47a2
    imul word [bp + 0xa]             ; 0x47a5
    add ax, word [bp + 0x6]          ; 0x47a8
    inc ax                           ; 0x47ab
    inc ax                           ; 0x47ac
    push ax                          ; 0x47ad
    push word [bp + 0x8]             ; 0x47ae
    push word [bp + 0x6]             ; 0x47b1
    call ds_dispatch_e8da            ; 0x47b4
    add sp, byte 8                   ; 0x47b7
    ret                              ; 0x47ba
loc_47bb:
    mov ax, 0                        ; 0x47bb
    call ds_dispatch_f40b            ; 0x47be
    mov ax, 0x16                     ; 0x47c1
    push ax                          ; 0x47c4
    mov ax, word [bp + 0x6]          ; 0x47c5
    add ax, strict word 8            ; 0x47c8
    push ax                          ; 0x47cb
    mov ax, 6                        ; 0x47cc
    imul word [bp + 0x8]             ; 0x47cf
    add ax, word [bp + 0x4]          ; 0x47d2
    push ax                          ; 0x47d5
    push word [bp + 0x6]             ; 0x47d6
    push word [bp + 0x4]             ; 0x47d9
    call loc_01bf                    ; 0x47dc
    add sp, byte 0x0a                ; 0x47df
    mov ax, word [bp + 0x6]          ; 0x47e2
    add ax, strict word 9            ; 0x47e5
    push ax                          ; 0x47e8
    mov ax, 6                        ; 0x47e9
    imul word [bp + 0x8]             ; 0x47ec
    add ax, word [bp + 0x4]          ; 0x47ef
    inc ax                           ; 0x47f2
    push ax                          ; 0x47f3
    mov ax, word [bp + 0x6]          ; 0x47f4
    dec ax                           ; 0x47f7
    push ax                          ; 0x47f8
    mov ax, word [bp + 0x4]          ; 0x47f9
    dec ax                           ; 0x47fc
    push ax                          ; 0x47fd
    call ds_dispatch_e8da            ; 0x47fe
    add sp, byte 8                   ; 0x4801
    mov ax, 0                        ; 0x4804
    push ax                          ; 0x4807
    mov ax, word [bp + 0x6]          ; 0x4808
    add ax, strict word 8            ; 0x480b
    push ax                          ; 0x480e
    mov ax, 6                        ; 0x480f
    imul word [bp + 0x8]             ; 0x4812
    add ax, word [bp + 0x4]          ; 0x4815
    push ax                          ; 0x4818
    push word [bp + 0x6]             ; 0x4819
    push word [bp + 0x4]             ; 0x481c
    call loc_01bf                    ; 0x481f
    add sp, byte 0x0a                ; 0x4822
    ret                              ; 0x4825
