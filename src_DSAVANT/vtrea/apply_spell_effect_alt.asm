; auto-generated
apply_spell_effect_alt:
    mov ax, 0xfff8                   ; 0x4368
    call aztec_csav                  ; 0x436b
    mov ax, word [bp + 0x6]          ; 0x436e
    jmp near @..apply_spell_effect_alt.l44 ; 0x4371
jumptable_4a7d_case_34:
    mov ax, 0x32                     ; 0x4374
    imul word [bp + 0x8]             ; 0x4377
    add word [bss_82fe], ax          ; 0x437a
    mov ax, 0                        ; 0x437e
    push ax                          ; 0x4381
    push word [bss_8300]             ; 0x4382
    mov ax, 5                        ; 0x4386
    imul word [bp + 0x8]             ; 0x4389
    add ax, strict word 0x46         ; 0x438c
    push ax                          ; 0x438f
    call loc_QQUT                    ; 0x4390
    add sp, byte 6                   ; 0x4393
    mov word [bss_8300], ax          ; 0x4396
    jmp near @..apply_spell_effect_alt.l45 ; 0x4399
jumptable_4a7d_case_38:
    mov ax, 0x23                     ; 0x439c
    imul word [bp + 0x8]             ; 0x439f
    add word [party_status_timer], ax ; 0x43a2
    mov ax, 0                        ; 0x43a6
    push ax                          ; 0x43a9
    push word [bss_82f4]             ; 0x43aa
    mov ax, word [bp + 0x8]          ; 0x43ae
    dec ax                           ; 0x43b1
    mov cx, 2                        ; 0x43b2
    cwd                              ; 0x43b5
    idiv cx                          ; 0x43b6
    inc ax                           ; 0x43b8
    push ax                          ; 0x43b9
    call loc_QQUT                    ; 0x43ba
    add sp, byte 6                   ; 0x43bd
    mov word [bss_82f4], ax          ; 0x43c0
    jmp near @..apply_spell_effect_alt.l45 ; 0x43c3
jumptable_4a7d_case_30:
    mov ax, 0x32                     ; 0x43c6
    imul word [bp + 0x8]             ; 0x43c9
    add word [bss_82f6], ax          ; 0x43cc
    mov ax, 0                        ; 0x43d0
    push ax                          ; 0x43d3
    push word [bss_82f8]             ; 0x43d4
    mov ax, word [bp + 0x8]          ; 0x43d8
    dec ax                           ; 0x43db
    mov cx, 2                        ; 0x43dc
    cwd                              ; 0x43df
    idiv cx                          ; 0x43e0
    inc ax                           ; 0x43e2
    push ax                          ; 0x43e3
    call loc_QQUT                    ; 0x43e4
    add sp, byte 6                   ; 0x43e7
    mov word [bss_82f8], ax          ; 0x43ea
    jmp near @..apply_spell_effect_alt.l45 ; 0x43ed
jumptable_4a7d_case_27:
    mov ax, 5                        ; 0x43f0
    imul word [bp + 0x8]             ; 0x43f3
    add word [bss_8306], ax          ; 0x43f6
    jmp near @..apply_spell_effect_alt.l45 ; 0x43fa
jumptable_4a7d_case_28:
    mov ax, 0x64                     ; 0x43fd
    imul word [bp + 0x8]             ; 0x4400
    add word [bss_8302], ax          ; 0x4403
    jmp near @..apply_spell_effect_alt.l45 ; 0x4407
jumptable_4a7d_case_39:
    mov ax, 0x32                     ; 0x440a
    imul word [bp + 0x8]             ; 0x440d
    add word [party_buff_turns], ax  ; 0x4410
    mov ax, 0                        ; 0x4414
    push ax                          ; 0x4417
    push word [party_buff_charge]    ; 0x4418
    mov ax, 5                        ; 0x441c
    imul word [bp + 0x8]             ; 0x441f
    push ax                          ; 0x4422
    call loc_QQUT                    ; 0x4423
    add sp, byte 6                   ; 0x4426
    mov word [party_buff_charge], ax ; 0x4429
    jmp near @..apply_spell_effect_alt.l45 ; 0x442c
jumptable_4a7d_case_29:
    push word [bp + 0x8]             ; 0x442f
    push word [bp + 0x4]             ; 0x4432
    call api_idx_0054_TIQK           ; 0x4435
    add sp, byte 4                   ; 0x4438
    jmp near @..apply_spell_effect_alt.l45 ; 0x443b
jumptable_4a7d_case_33:
    mov word [bp - 0x0006], 0        ; 0x443e
@..apply_spell_effect_alt.l1:
    mov ax, 0x64                     ; 0x4443
    push ax                          ; 0x4446
    call random_below                ; 0x4447
    pop cx                           ; 0x444a
    push ax                          ; 0x444b
    mov ax, 0xa                      ; 0x444c
    imul word [bp + 0x8]             ; 0x444f
    mov cx, ax                       ; 0x4452
    add ax, strict word 0x23         ; 0x4454
    mov cx, ax                       ; 0x4457
    mov dx, word [bss_95de]          ; 0x4459
    shl dx, 1                        ; 0x445d
    sub ax, dx                       ; 0x445f
    mov cx, ax                       ; 0x4461
    pop ax                           ; 0x4463
    cmp ax, cx                       ; 0x4464
    jge short @..apply_spell_effect_alt.l8 ; 0x4466
    mov word [bp - 0x0002], 0        ; 0x4468
    jmp short @..apply_spell_effect_alt.l7 ; 0x446d
@..apply_spell_effect_alt.l2:
    cmp word [bss_91fe], byte 0      ; 0x446f
    jle short @..apply_spell_effect_alt.l5 ; 0x4474
    cmp word [bss_9250], byte 0xff   ; 0x4476
    je short @..apply_spell_effect_alt.l5 ; 0x447b
    mov ax, 0xa                      ; 0x447d
    imul word [bss_9250]             ; 0x4480
    add ax, word [bp - 0x0006]       ; 0x4484
    mov bx, ax                       ; 0x4487
    cmp byte [bx + bss_9252], 0x2d   ; 0x4489
    jne short @..apply_spell_effect_alt.l3 ; 0x448e
    mov ax, 0x2d                     ; 0x4490
    jmp short @..apply_spell_effect_alt.l4 ; 0x4493
@..apply_spell_effect_alt.l3:
    mov ax, 0x2a                     ; 0x4495
@..apply_spell_effect_alt.l4:
    push ax                          ; 0x4498
    mov ax, 0xa                      ; 0x4499
    imul word [bp - 0x0002]          ; 0x449c
    mov cx, ax                       ; 0x449f
    add ax, word [bp - 0x0006]       ; 0x44a1
    mov bx, ax                       ; 0x44a4
    pop ax                           ; 0x44a6
    mov byte [bx + bss_9372], al     ; 0x44a7
    jmp short @..apply_spell_effect_alt.l6 ; 0x44ab
@..apply_spell_effect_alt.l5:
    mov ax, 0xa                      ; 0x44ad
    imul word [bp - 0x0002]          ; 0x44b0
    add ax, word [bp - 0x0006]       ; 0x44b3
    mov bx, ax                       ; 0x44b6
    mov byte [bx + bss_9372], 0x2d   ; 0x44b8
@..apply_spell_effect_alt.l6:
    inc word [bp - 0x0002]           ; 0x44bd
@..apply_spell_effect_alt.l7:
    mov ax, word [bp - 0x0002]       ; 0x44c0
    cmp ax, word [party_char_count]  ; 0x44c3
    jl short @..apply_spell_effect_alt.l2 ; 0x44c7
@..apply_spell_effect_alt.l8:
    inc word [bp - 0x0006]           ; 0x44c9
    mov ax, word [bp - 0x0006]       ; 0x44cc
    cmp ax, strict word 8            ; 0x44cf
    jge short @..apply_spell_effect_alt.l9 ; 0x44d2
    jmp near @..apply_spell_effect_alt.l1 ; 0x44d4
@..apply_spell_effect_alt.l9:
    jmp near @..apply_spell_effect_alt.l45 ; 0x44d7
jumptable_4a7d_case_22:
    mov ax, 0                        ; 0x44da
    cmp word [bp + 0x6], byte 0x13   ; 0x44dd
    je short @..apply_spell_effect_alt.l10 ; 0x44e1
    mov ax, word [bp + 0xa]          ; 0x44e3
@..apply_spell_effect_alt.l10:
    mov word [bp - 0x0002], ax       ; 0x44e6
    mov ax, word [party_char_count]  ; 0x44e9
    cmp word [bp + 0x6], byte 0x13   ; 0x44ec
    je short @..apply_spell_effect_alt.l11 ; 0x44f0
    mov ax, word [bp + 0xa]          ; 0x44f2
    inc ax                           ; 0x44f5
@..apply_spell_effect_alt.l11:
    mov word [bp - 0x0004], ax       ; 0x44f6
    mov ax, word [bp + 0x8]          ; 0x44f9
    cmp word [bp + 0x6], byte 0x13   ; 0x44fc
    je short @..apply_spell_effect_alt.l12 ; 0x4500
    shl ax, 1                        ; 0x4502
@..apply_spell_effect_alt.l12:
    mov word [bp - 0x0006], ax       ; 0x4504
    mov ax, 0                        ; 0x4507
    cmp word [bp + 0x6], byte 0x13   ; 0x450a
    je short @..apply_spell_effect_alt.l13 ; 0x450e
    mov ax, word [bp + 0x8]          ; 0x4510
@..apply_spell_effect_alt.l13:
    mov word [bp - 0x0008], ax       ; 0x4513
    jmp short @..apply_spell_effect_alt.l15 ; 0x4516
@..apply_spell_effect_alt.l14:
    mov ax, 0x248                    ; 0x4518
    imul word [bp - 0x0002]          ; 0x451b
    mov bx, ax                       ; 0x451e
    push word [bx + pc_records + 0x2] ; 0x4520
    mov ax, 0                        ; 0x4524
    push ax                          ; 0x4527
    push word [bp - 0x0008]          ; 0x4528
    mov ax, 8                        ; 0x452b
    push ax                          ; 0x452e
    push word [bp - 0x0006]          ; 0x452f
    call store_word_and_pair         ; 0x4532
    add sp, byte 6                   ; 0x4535
    mov cx, ax                       ; 0x4538
    sub sp, byte 4                   ; 0x453a
    mov ax, sp                       ; 0x453d
    mov dx, ss                       ; 0x453f
    mov es, dx                       ; 0x4541
    mov si, cx                       ; 0x4543
    mov di, ax                       ; 0x4545
    movsw                            ; 0x4547
    movsw                            ; 0x4548
    call add_random_steps            ; 0x4549
    add sp, byte 4                   ; 0x454c
    push ax                          ; 0x454f
    mov ax, 0x248                    ; 0x4550
    imul word [bp - 0x0002]          ; 0x4553
    mov bx, ax                       ; 0x4556
    pop ax                           ; 0x4558
    add ax, word [bx + pc_records]   ; 0x4559
    push ax                          ; 0x455d
    call clamp_between               ; 0x455e
    add sp, byte 6                   ; 0x4561
    push ax                          ; 0x4564
    mov ax, 0x248                    ; 0x4565
    imul word [bp - 0x0002]          ; 0x4568
    mov bx, ax                       ; 0x456b
    pop ax                           ; 0x456d
    mov word [bx + pc_records], ax   ; 0x456e
    mov ax, 1                        ; 0x4572
    push ax                          ; 0x4575
    push word [bp - 0x0002]          ; 0x4576
    call draw_party_member_panel     ; 0x4579
    add sp, byte 4                   ; 0x457c
    inc word [bp - 0x0002]           ; 0x457f
@..apply_spell_effect_alt.l15:
    mov ax, word [bp - 0x0002]       ; 0x4582
    cmp ax, word [bp - 0x0004]       ; 0x4585
    jl short @..apply_spell_effect_alt.l14 ; 0x4588
    jmp near @..apply_spell_effect_alt.l45 ; 0x458a
jumptable_4a7d_case_23:
    mov ax, 0x248                    ; 0x458d
    imul word [bp + 0xa]             ; 0x4590
    mov bx, ax                       ; 0x4593
    mov al, byte [bx + cell_key_grid + 0x129] ; 0x4595
    sub ah, ah                       ; 0x4599
    push ax                          ; 0x459b
    mov ax, 0x19                     ; 0x459c
    imul word [bp + 0x8]             ; 0x459f
    mov cx, ax                       ; 0x45a2
    pop ax                           ; 0x45a4
    sub ax, cx                       ; 0x45a5
    mov word [bp - 0x0002], ax       ; 0x45a7
    cmp ax, strict word 0            ; 0x45aa
    jge short @..apply_spell_effect_alt.l16 ; 0x45ad
    mov word [bp - 0x0002], 0        ; 0x45af
@..apply_spell_effect_alt.l16:
    mov al, byte [bp - 0x0002]       ; 0x45b4
    mov byte [bx + cell_key_grid + 0x129], al ; 0x45b7
    mov ax, 1                        ; 0x45bb
    push ax                          ; 0x45be
    push word [bp + 0xa]             ; 0x45bf
    call draw_party_member_panel     ; 0x45c2
    add sp, byte 4                   ; 0x45c5
    jmp near @..apply_spell_effect_alt.l45 ; 0x45c8
jumptable_4a7d_case_26:
    mov ax, 0x248                    ; 0x45cb
    imul word [bp + 0xa]             ; 0x45ce
    mov bx, ax                       ; 0x45d1
    mov al, byte [bx + member_state + 0x8] ; 0x45d3
    sub ah, ah                       ; 0x45d7
    sub ax, word [bp + 0x8]          ; 0x45d9
    mov word [bp - 0x0002], ax       ; 0x45dc
    cmp ax, strict word 0            ; 0x45df
    jg short @..apply_spell_effect_alt.l17 ; 0x45e2
    mov word [bp - 0x0002], 0        ; 0x45e4
    mov byte [bx + cell_key_grid + 0x12b], 0 ; 0x45e9
@..apply_spell_effect_alt.l17:
    mov al, byte [bp - 0x0002]       ; 0x45ee
    mov byte [bx + member_state + 0x8], al ; 0x45f1
    mov al, byte [bx + cell_key_grid + 0x12b] ; 0x45f5
    sub ah, ah                       ; 0x45f9
    push ax                          ; 0x45fb
    mov ax, 5                        ; 0x45fc
    imul word [bp + 0x8]             ; 0x45ff
    mov cx, ax                       ; 0x4602
    pop ax                           ; 0x4604
    sub ax, cx                       ; 0x4605
    mov word [bp - 0x0002], ax       ; 0x4607
    cmp ax, strict word 0            ; 0x460a
    jg short @..apply_spell_effect_alt.l18 ; 0x460d
    mov word [bp - 0x0002], 0        ; 0x460f
    mov byte [bx + member_state + 0x8], 0 ; 0x4614
@..apply_spell_effect_alt.l18:
    mov al, byte [bp - 0x0002]       ; 0x4619
    mov byte [bx + cell_key_grid + 0x12b], al ; 0x461c
    mov ax, 1                        ; 0x4620
    push ax                          ; 0x4623
    push word [bp + 0xa]             ; 0x4624
    call draw_party_member_panel     ; 0x4627
    add sp, byte 4                   ; 0x462a
    jmp near @..apply_spell_effect_alt.l45 ; 0x462d
jumptable_4a7d_case_31:
    mov ax, 0x248                    ; 0x4630
    imul word [bp + 0xa]             ; 0x4633
    mov bx, ax                       ; 0x4636
    cmp byte [bx + member_state + 0x5], 2 ; 0x4638
    je short @..apply_spell_effect_alt.l19 ; 0x463d
    jmp near @..apply_spell_effect_alt.l22 ; 0x463f
@..apply_spell_effect_alt.l19:
    mov ax, 3                        ; 0x4642
    imul word [bp + 0x8]             ; 0x4645
    push ax                          ; 0x4648
    mov al, byte [bx + cell_key_grid + 0x133] ; 0x4649
    sub ah, ah                       ; 0x464d
    mov dx, ax                       ; 0x464f
    mov cx, 0x15                     ; 0x4651
    sub cx, ax                       ; 0x4654
    pop ax                           ; 0x4656
    cmp ax, cx                       ; 0x4657
    jle short @..apply_spell_effect_alt.l22 ; 0x4659
    dec byte [bx + cell_key_grid + 0x133] ; 0x465b
    mov ax, 0xb7                     ; 0x465f
    push ax                          ; 0x4662
    call random_below                ; 0x4663
    pop cx                           ; 0x4666
    add ax, 0xb7                     ; 0x4667
    cwd                              ; 0x466a
    push ax                          ; 0x466b
    push dx                          ; 0x466c
    mov ax, 0x248                    ; 0x466d
    imul word [bp + 0xa]             ; 0x4670
    mov bx, ax                       ; 0x4673
    pop dx                           ; 0x4675
    pop ax                           ; 0x4676
    add word [bx + party_records + 0x8], ax ; 0x4677
    adc word [bx + party_records + 0xa], dx ; 0x467b
    mov ax, 0x12                     ; 0x467f
    push ax                          ; 0x4682
    call random_below                ; 0x4683
    pop cx                           ; 0x4686
    push ax                          ; 0x4687
    mov ax, 0x248                    ; 0x4688
    imul word [bp + 0xa]             ; 0x468b
    mov bx, ax                       ; 0x468e
    mov al, byte [bx + cell_key_grid + 0x133] ; 0x4690
    sub ah, ah                       ; 0x4694
    mov cx, ax                       ; 0x4696
    pop ax                           ; 0x4698
    cmp ax, cx                       ; 0x4699
    jle short @..apply_spell_effect_alt.l20 ; 0x469b
    mov byte [bx + member_state + 0x5], 3 ; 0x469d
    mov word [bx + member_pair_points + 0x2], 0 ; 0x46a2
    mov word [bx + pc_records], 0    ; 0x46a8
    jmp short @..apply_spell_effect_alt.l21 ; 0x46ae
@..apply_spell_effect_alt.l20:
    mov byte [bx + member_state + 0x5], 0 ; 0x46b0
@..apply_spell_effect_alt.l21:
    mov ax, 1                        ; 0x46b5
    push ax                          ; 0x46b8
    push word [bp + 0xa]             ; 0x46b9
    call draw_party_member_panel     ; 0x46bc
    add sp, byte 4                   ; 0x46bf
@..apply_spell_effect_alt.l22:
    jmp near @..apply_spell_effect_alt.l45 ; 0x46c2
jumptable_4a7d_case_36:
    mov ax, 0x248                    ; 0x46c5
    imul word [bp + 0xa]             ; 0x46c8
    mov bx, ax                       ; 0x46cb
    mov al, byte [bx + cell_key_grid + 0x12d] ; 0x46cd
    sub ah, ah                       ; 0x46d1
    push ax                          ; 0x46d3
    mov ax, 0x19                     ; 0x46d4
    imul word [bp + 0x8]             ; 0x46d7
    mov cx, ax                       ; 0x46da
    pop ax                           ; 0x46dc
    sub ax, cx                       ; 0x46dd
    mov word [bp - 0x0002], ax       ; 0x46df
    cmp ax, strict word 0            ; 0x46e2
    jge short @..apply_spell_effect_alt.l23 ; 0x46e5
    mov word [bp - 0x0002], 0        ; 0x46e7
@..apply_spell_effect_alt.l23:
    mov al, byte [bp - 0x0002]       ; 0x46ec
    mov byte [bx + cell_key_grid + 0x12d], al ; 0x46ef
    mov ax, 1                        ; 0x46f3
    push ax                          ; 0x46f6
    push word [bp + 0xa]             ; 0x46f7
    call draw_party_member_panel     ; 0x46fa
    add sp, byte 4                   ; 0x46fd
    jmp near @..apply_spell_effect_alt.l45 ; 0x4700
jumptable_4a7d_case_25:
    mov ax, 3                        ; 0x4703
    imul word [bp + 0x8]             ; 0x4706
    push ax                          ; 0x4709
    mov ax, 0x248                    ; 0x470a
    imul word [bp + 0xa]             ; 0x470d
    mov bx, ax                       ; 0x4710
    mov al, byte [bx + cell_key_grid + 0x133] ; 0x4712
    sub ah, ah                       ; 0x4716
    mov dx, ax                       ; 0x4718
    mov cx, 0x12                     ; 0x471a
    sub cx, ax                       ; 0x471d
    pop ax                           ; 0x471f
    cmp ax, cx                       ; 0x4720
    jle short @..apply_spell_effect_alt.l24 ; 0x4722
    mov byte [bx + cell_key_grid + 0x12c], 0 ; 0x4724
@..apply_spell_effect_alt.l24:
    mov ax, 1                        ; 0x4729
    push ax                          ; 0x472c
    push word [bp + 0xa]             ; 0x472d
    call draw_party_member_panel     ; 0x4730
    add sp, byte 4                   ; 0x4733
    jmp near @..apply_spell_effect_alt.l45 ; 0x4736
jumptable_4a7d_case_35:
    mov word [bp - 0x0002], 0        ; 0x4739
    jmp short @..apply_spell_effect_alt.l27 ; 0x473e
@..apply_spell_effect_alt.l25:
    mov ax, 0x248                    ; 0x4740
    imul word [bp + 0xa]             ; 0x4743
    mov bx, ax                       ; 0x4746
    mov al, byte [bx + cell_key_grid + 0x128] ; 0x4748
    sub ah, ah                       ; 0x474c
    push ax                          ; 0x474e
    mov ax, word [bp + 0x8]          ; 0x474f
    imul ax                          ; 0x4752
    mov cx, ax                       ; 0x4754
    add ax, strict word 4            ; 0x4756
    mov cx, ax                       ; 0x4759
    pop ax                           ; 0x475b
    sub ax, cx                       ; 0x475c
    mov word [bp - 0x0004], ax       ; 0x475e
    cmp ax, strict word 0            ; 0x4761
    jge short @..apply_spell_effect_alt.l26 ; 0x4764
    mov word [bp - 0x0004], 0        ; 0x4766
@..apply_spell_effect_alt.l26:
    mov al, byte [bp - 0x0004]       ; 0x476b
    mov byte [bx + cell_key_grid + 0x128], al ; 0x476e
    mov ax, 1                        ; 0x4772
    push ax                          ; 0x4775
    push word [bp - 0x0002]          ; 0x4776
    call draw_party_member_panel     ; 0x4779
    add sp, byte 4                   ; 0x477c
    inc word [bp - 0x0002]           ; 0x477f
@..apply_spell_effect_alt.l27:
    mov ax, word [bp - 0x0002]       ; 0x4782
    cmp ax, word [party_char_count]  ; 0x4785
    jl short @..apply_spell_effect_alt.l25 ; 0x4789
    jmp near @..apply_spell_effect_alt.l45 ; 0x478b
jumptable_4a7d_case_32:
    mov word [bp - 0x0004], 1        ; 0x478e
@..apply_spell_effect_alt.l28:
    mov ax, word [bp - 0x0004]       ; 0x4793
    cmp ax, strict word 1            ; 0x4796
    je short @..apply_spell_effect_alt.l29 ; 0x4799
    cmp ax, strict word 2            ; 0x479b
    je short @..apply_spell_effect_alt.l29 ; 0x479e
    cmp ax, strict word 4            ; 0x47a0
    je short @..apply_spell_effect_alt.l29 ; 0x47a3
    cmp ax, strict word 8            ; 0x47a5
    je short @..apply_spell_effect_alt.l29 ; 0x47a8
    cmp ax, strict word 9            ; 0x47aa
    jne short @..apply_spell_effect_alt.l31 ; 0x47ad
@..apply_spell_effect_alt.l29:
    mov ax, 0x248                    ; 0x47af
    imul word [bp + 0xa]             ; 0x47b2
    mov cx, ax                       ; 0x47b5
    mov ax, word [bp - 0x0004]       ; 0x47b7
    add cx, ax                       ; 0x47ba
    mov bx, cx                       ; 0x47bc
    mov al, byte [bx + cell_key_grid + 0x126] ; 0x47be
    sub ah, ah                       ; 0x47c2
    push ax                          ; 0x47c4
    mov ax, word [bp + 0x8]          ; 0x47c5
    imul ax                          ; 0x47c8
    mov cx, ax                       ; 0x47ca
    add ax, strict word 4            ; 0x47cc
    mov cx, ax                       ; 0x47cf
    pop ax                           ; 0x47d1
    sub ax, cx                       ; 0x47d2
    mov word [bp - 0x0002], ax       ; 0x47d4
    cmp ax, strict word 0            ; 0x47d7
    jge short @..apply_spell_effect_alt.l30 ; 0x47da
    mov word [bp - 0x0002], 0        ; 0x47dc
@..apply_spell_effect_alt.l30:
    mov al, byte [bp - 0x0002]       ; 0x47e1
    mov byte [bx + cell_key_grid + 0x126], al ; 0x47e4
@..apply_spell_effect_alt.l31:
    inc word [bp - 0x0004]           ; 0x47e8
    mov ax, word [bp - 0x0004]       ; 0x47eb
    cmp ax, strict word 9            ; 0x47ee
    jle short @..apply_spell_effect_alt.l28 ; 0x47f1
    mov ax, 1                        ; 0x47f3
    push ax                          ; 0x47f6
    push word [bp + 0xa]             ; 0x47f7
    call draw_party_member_panel     ; 0x47fa
    add sp, byte 4                   ; 0x47fd
    jmp near @..apply_spell_effect_alt.l45 ; 0x4800
jumptable_4a7d_case_37:
    mov ax, 0                        ; 0x4803
    cmp word [bp + 0x6], byte 0x58   ; 0x4806
    je short @..apply_spell_effect_alt.l32 ; 0x480a
    mov ax, word [bp + 0xa]          ; 0x480c
@..apply_spell_effect_alt.l32:
    mov word [bp - 0x0002], ax       ; 0x480f
    mov ax, word [party_char_count]  ; 0x4812
    cmp word [bp + 0x6], byte 0x58   ; 0x4815
    je short @..apply_spell_effect_alt.l33 ; 0x4819
    mov ax, word [bp + 0xa]          ; 0x481b
    inc ax                           ; 0x481e
@..apply_spell_effect_alt.l33:
    mov word [bp - 0x0004], ax       ; 0x481f
    mov ax, 4                        ; 0x4822
    cmp word [bp + 0x6], byte 0x58   ; 0x4825
    je short @..apply_spell_effect_alt.l34 ; 0x4829
    mov ax, 7                        ; 0x482b
@..apply_spell_effect_alt.l34:
    mov word [bp - 0x0006], ax       ; 0x482e
    mov ax, 0                        ; 0x4831
    cmp word [bp + 0x6], byte 0x58   ; 0x4834
    je short @..apply_spell_effect_alt.l35 ; 0x4838
    mov ax, word [bp + 0x8]          ; 0x483a
@..apply_spell_effect_alt.l35:
    mov word [bp - 0x0008], ax       ; 0x483d
    jmp short @..apply_spell_effect_alt.l37 ; 0x4840
@..apply_spell_effect_alt.l36:
    mov ax, 0x248                    ; 0x4842
    imul word [bp - 0x0002]          ; 0x4845
    mov bx, ax                       ; 0x4848
    push word [bx + member_pair_points + 0x4] ; 0x484a
    mov ax, 0                        ; 0x484e
    push ax                          ; 0x4851
    push word [bp - 0x0008]          ; 0x4852
    push word [bp - 0x0006]          ; 0x4855
    push word [bp + 0x8]             ; 0x4858
    call store_word_and_pair         ; 0x485b
    add sp, byte 6                   ; 0x485e
    mov cx, ax                       ; 0x4861
    sub sp, byte 4                   ; 0x4863
    mov ax, sp                       ; 0x4866
    mov dx, ss                       ; 0x4868
    mov es, dx                       ; 0x486a
    mov si, cx                       ; 0x486c
    mov di, ax                       ; 0x486e
    movsw                            ; 0x4870
    movsw                            ; 0x4871
    call add_random_steps            ; 0x4872
    add sp, byte 4                   ; 0x4875
    push ax                          ; 0x4878
    mov ax, 0x248                    ; 0x4879
    imul word [bp - 0x0002]          ; 0x487c
    mov bx, ax                       ; 0x487f
    pop ax                           ; 0x4881
    add ax, word [bx + member_pair_points + 0x2] ; 0x4882
    push ax                          ; 0x4886
    call clamp_between               ; 0x4887
    add sp, byte 6                   ; 0x488a
    push ax                          ; 0x488d
    mov ax, 0x248                    ; 0x488e
    imul word [bp - 0x0002]          ; 0x4891
    mov bx, ax                       ; 0x4894
    pop ax                           ; 0x4896
    mov word [bx + member_pair_points + 0x2], ax ; 0x4897
    add word [bx + party_records + 0x8], byte 1 ; 0x489b
    adc word [bx + party_records + 0xa], byte 0 ; 0x48a0
    mov ax, 1                        ; 0x48a5
    push ax                          ; 0x48a8
    push word [bp - 0x0002]          ; 0x48a9
    call draw_party_member_panel     ; 0x48ac
    add sp, byte 4                   ; 0x48af
    inc word [bp - 0x0002]           ; 0x48b2
@..apply_spell_effect_alt.l37:
    mov ax, word [bp - 0x0002]       ; 0x48b5
    cmp ax, word [bp - 0x0004]       ; 0x48b8
    jl short @..apply_spell_effect_alt.l36 ; 0x48bb
    jmp near @..apply_spell_effect_alt.l45 ; 0x48bd
jumptable_4a7d_case_41:
    mov ax, 0x248                    ; 0x48c0
    imul word [bp + 0xa]             ; 0x48c3
    mov bx, ax                       ; 0x48c6
    cmp byte [bx + member_state + 0x5], 3 ; 0x48c8
    je short @..apply_spell_effect_alt.l38 ; 0x48cd
    jmp near @..apply_spell_effect_alt.l39 ; 0x48cf
@..apply_spell_effect_alt.l38:
    mov ax, 3                        ; 0x48d2
    imul word [bp + 0x8]             ; 0x48d5
    push ax                          ; 0x48d8
    mov al, byte [bx + cell_key_grid + 0x133] ; 0x48d9
    sub ah, ah                       ; 0x48dd
    mov dx, ax                       ; 0x48df
    mov cx, 0x15                     ; 0x48e1
    sub cx, ax                       ; 0x48e4
    pop ax                           ; 0x48e6
    cmp ax, cx                       ; 0x48e7
    jle short @..apply_spell_effect_alt.l39 ; 0x48e9
    dec byte [bx + cell_key_grid + 0x133] ; 0x48eb
    mov byte [bx + member_state + 0x5], 0 ; 0x48ef
    push word [bx + member_pair_points + 0x4] ; 0x48f4
    mov ax, 1                        ; 0x48f8
    push ax                          ; 0x48fb
    mov ax, word [bx + member_pair_points + 0x4] ; 0x48fc
    mov cx, 3                        ; 0x4900
    cwd                              ; 0x4903
    idiv cx                          ; 0x4904
    push ax                          ; 0x4906
    call clamp_between               ; 0x4907
    add sp, byte 6                   ; 0x490a
    push ax                          ; 0x490d
    mov ax, 0x248                    ; 0x490e
    imul word [bp + 0xa]             ; 0x4911
    mov bx, ax                       ; 0x4914
    pop ax                           ; 0x4916
    mov word [bx + member_pair_points + 0x2], ax ; 0x4917
    mov ax, word [bx + pc_records + 0x2] ; 0x491b
    mov cx, 0xa                      ; 0x491f
    cwd                              ; 0x4922
    idiv cx                          ; 0x4923
    mov word [bx + pc_records], ax   ; 0x4925
    inc word [bx + pc_spell_power_cap + 0x2] ; 0x4929
    mov ax, 0xb7                     ; 0x492d
    push ax                          ; 0x4930
    call random_below                ; 0x4931
    pop cx                           ; 0x4934
    add ax, 0x16d                    ; 0x4935
    cwd                              ; 0x4938
    push ax                          ; 0x4939
    push dx                          ; 0x493a
    mov ax, 0x248                    ; 0x493b
    imul word [bp + 0xa]             ; 0x493e
    mov bx, ax                       ; 0x4941
    pop dx                           ; 0x4943
    pop ax                           ; 0x4944
    add word [bx + party_records + 0x8], ax ; 0x4945
    adc word [bx + party_records + 0xa], dx ; 0x4949
    mov ax, 1                        ; 0x494d
    push ax                          ; 0x4950
    push word [bp + 0xa]             ; 0x4951
    call draw_party_member_panel     ; 0x4954
    add sp, byte 4                   ; 0x4957
@..apply_spell_effect_alt.l39:
    jmp near @..apply_spell_effect_alt.l45 ; 0x495a
jumptable_4a7d_case_42:
    push word [bp + 0x8]             ; 0x495d
    mov ax, 8                        ; 0x4960
    push ax                          ; 0x4963
    push word [bp + 0x8]             ; 0x4964
    call store_word_and_pair         ; 0x4967
    add sp, byte 6                   ; 0x496a
    mov cx, ax                       ; 0x496d
    sub sp, byte 4                   ; 0x496f
    mov ax, sp                       ; 0x4972
    mov dx, ss                       ; 0x4974
    mov es, dx                       ; 0x4976
    mov si, cx                       ; 0x4978
    mov di, ax                       ; 0x497a
    movsw                            ; 0x497c
    movsw                            ; 0x497d
    call add_random_steps            ; 0x497e
    add sp, byte 4                   ; 0x4981
    mov word [bp - 0x0002], ax       ; 0x4984
    push ax                          ; 0x4987
    mov ax, 0x248                    ; 0x4988
    imul word [bp + 0x4]             ; 0x498b
    mov bx, ax                       ; 0x498e
    pop ax                           ; 0x4990
    add word [bx + pc_records], ax   ; 0x4991
    mov ax, word [bx + pc_records]   ; 0x4995
    cmp ax, word [bx + pc_records + 0x2] ; 0x4999
    jle short @..apply_spell_effect_alt.l40 ; 0x499d
    mov ax, word [bx + pc_records + 0x2] ; 0x499f
    mov word [bx + pc_records], ax   ; 0x49a3
@..apply_spell_effect_alt.l40:
    mov ax, 0                        ; 0x49a7
    push ax                          ; 0x49aa
    mov ax, 2                        ; 0x49ab
    push ax                          ; 0x49ae
    push word [bp + 0x8]             ; 0x49af
    call store_word_and_pair         ; 0x49b2
    add sp, byte 6                   ; 0x49b5
    mov cx, ax                       ; 0x49b8
    sub sp, byte 4                   ; 0x49ba
    mov ax, sp                       ; 0x49bd
    mov dx, ss                       ; 0x49bf
    mov es, dx                       ; 0x49c1
    mov si, cx                       ; 0x49c3
    mov di, ax                       ; 0x49c5
    movsw                            ; 0x49c7
    movsw                            ; 0x49c8
    call add_random_steps            ; 0x49c9
    add sp, byte 4                   ; 0x49cc
    mov word [bp - 0x0002], ax       ; 0x49cf
    push ax                          ; 0x49d2
    mov ax, 0x248                    ; 0x49d3
    imul word [bp + 0x4]             ; 0x49d6
    mov bx, ax                       ; 0x49d9
    pop ax                           ; 0x49db
    add word [bx + member_pair_points + 0x2], ax ; 0x49dc
    mov ax, word [bx + member_pair_points + 0x2] ; 0x49e0
    cmp ax, word [bx + member_pair_points + 0x4] ; 0x49e4
    jle short @..apply_spell_effect_alt.l41 ; 0x49e8
    mov ax, word [bx + member_pair_points + 0x4] ; 0x49ea
    mov word [bx + member_pair_points + 0x2], ax ; 0x49ee
@..apply_spell_effect_alt.l41:
    mov ax, 1                        ; 0x49f2
    push ax                          ; 0x49f5
    push word [bp + 0x4]             ; 0x49f6
    call draw_party_member_panel     ; 0x49f9
    add sp, byte 4                   ; 0x49fc
    jmp near @..apply_spell_effect_alt.l45 ; 0x49ff
jumptable_4a7d_case_43:
    mov word [bp - 0x0002], 0        ; 0x4a02
@..apply_spell_effect_alt.l42:
    mov ax, 0                        ; 0x4a07
    push ax                          ; 0x4a0a
    mov ax, 0xa                      ; 0x4a0b
    push ax                          ; 0x4a0e
    push word [bp + 0x8]             ; 0x4a0f
    call store_word_and_pair         ; 0x4a12
    add sp, byte 6                   ; 0x4a15
    mov cx, ax                       ; 0x4a18
    sub sp, byte 4                   ; 0x4a1a
    mov ax, sp                       ; 0x4a1d
    mov dx, ss                       ; 0x4a1f
    mov es, dx                       ; 0x4a21
    mov si, cx                       ; 0x4a23
    mov di, ax                       ; 0x4a25
    movsw                            ; 0x4a27
    movsw                            ; 0x4a28
    call add_random_steps            ; 0x4a29
    add sp, byte 4                   ; 0x4a2c
    mov word [bp - 0x0004], ax       ; 0x4a2f
    push ax                          ; 0x4a32
    mov ax, 0x248                    ; 0x4a33
    imul word [bp + 0x4]             ; 0x4a36
    mov cx, ax                       ; 0x4a39
    mov dx, word [bp - 0x0002]       ; 0x4a3b
    shl dx, 1                        ; 0x4a3e
    shl dx, 1                        ; 0x4a40
    add ax, dx                       ; 0x4a42
    mov bx, ax                       ; 0x4a44
    pop ax                           ; 0x4a46
    add word [bx + pc_spell_power_cap + 0x4], ax ; 0x4a47
    mov ax, word [bx + pc_spell_power_cap + 0x4] ; 0x4a4b
    cmp ax, word [bx + pc_spell_power_cap + 0x6] ; 0x4a4f
    jle short @..apply_spell_effect_alt.l43 ; 0x4a53
    mov ax, word [bx + pc_spell_power_cap + 0x6] ; 0x4a55
    mov word [bx + pc_spell_power_cap + 0x4], ax ; 0x4a59
@..apply_spell_effect_alt.l43:
    inc word [bp - 0x0002]           ; 0x4a5d
    mov ax, word [bp - 0x0002]       ; 0x4a60
    cmp ax, strict word 6            ; 0x4a63
    jl short @..apply_spell_effect_alt.l42 ; 0x4a66
    mov ax, 1                        ; 0x4a68
    push ax                          ; 0x4a6b
    push word [bp + 0x4]             ; 0x4a6c
    call draw_party_member_panel     ; 0x4a6f
    add sp, byte 4                   ; 0x4a72
    jmp short @..apply_spell_effect_alt.l45 ; 0x4a75
@..apply_spell_effect_alt.l44:
    mov cx, 0x17                     ; 0x4a77
    call aztec_cswt                  ; 0x4a7a
jumptable_4a7d:
    dw 0x000c                                  ; 0x4a7d ; literal
    dw 0x0011                                  ; 0x4a7f ; literal
    dw 0x0013                                  ; 0x4a81 ; literal
    dw 0x0019                                  ; 0x4a83 ; literal
    dw 0x0021                                  ; 0x4a85 ; literal
    dw 0x0025                                  ; 0x4a87 ; literal
    dw 0x002e                                  ; 0x4a89 ; literal
    dw 0x002f                                  ; 0x4a8b ; literal
    dw 0x0031                                  ; 0x4a8d ; literal
    dw 0x0038                                  ; 0x4a8f ; literal
    dw 0x003d                                  ; 0x4a91 ; literal
    dw 0x003e                                  ; 0x4a93 ; literal
    dw 0x003f                                  ; 0x4a95 ; literal
    dw 0x0042                                  ; 0x4a97 ; literal
    dw 0x0045                                  ; 0x4a99 ; literal
    dw 0x004e                                  ; 0x4a9b ; literal
    dw 0x0052                                  ; 0x4a9d ; literal
    dw 0x0054                                  ; 0x4a9f ; literal
    dw 0x0058                                  ; 0x4aa1 ; literal
    dw 0x005e                                  ; 0x4aa3 ; literal
    dw 0x0061                                  ; 0x4aa5 ; literal
    dw 0x0062                                  ; 0x4aa7 ; literal
    dw jumptable_4a7d_case_22 - IMAGE_BASE + __zres_end ; 0x4aa9
    dw jumptable_4a7d_case_23 - IMAGE_BASE + __zres_end ; 0x4aab
    dw jumptable_4a7d_case_22 - IMAGE_BASE + __zres_end ; 0x4aad
    dw jumptable_4a7d_case_25 - IMAGE_BASE + __zres_end ; 0x4aaf
    dw jumptable_4a7d_case_26 - IMAGE_BASE + __zres_end ; 0x4ab1
    dw jumptable_4a7d_case_27 - IMAGE_BASE + __zres_end ; 0x4ab3
    dw jumptable_4a7d_case_28 - IMAGE_BASE + __zres_end ; 0x4ab5
    dw jumptable_4a7d_case_29 - IMAGE_BASE + __zres_end ; 0x4ab7
    dw jumptable_4a7d_case_30 - IMAGE_BASE + __zres_end ; 0x4ab9
    dw jumptable_4a7d_case_31 - IMAGE_BASE + __zres_end ; 0x4abb
    dw jumptable_4a7d_case_32 - IMAGE_BASE + __zres_end ; 0x4abd
    dw jumptable_4a7d_case_33 - IMAGE_BASE + __zres_end ; 0x4abf
    dw jumptable_4a7d_case_34 - IMAGE_BASE + __zres_end ; 0x4ac1
    dw jumptable_4a7d_case_35 - IMAGE_BASE + __zres_end ; 0x4ac3
    dw jumptable_4a7d_case_36 - IMAGE_BASE + __zres_end ; 0x4ac5
    dw jumptable_4a7d_case_37 - IMAGE_BASE + __zres_end ; 0x4ac7
    dw jumptable_4a7d_case_38 - IMAGE_BASE + __zres_end ; 0x4ac9
    dw jumptable_4a7d_case_39 - IMAGE_BASE + __zres_end ; 0x4acb
    dw jumptable_4a7d_case_37 - IMAGE_BASE + __zres_end ; 0x4acd
    dw jumptable_4a7d_case_41 - IMAGE_BASE + __zres_end ; 0x4acf
    dw jumptable_4a7d_case_42 - IMAGE_BASE + __zres_end ; 0x4ad1
    dw jumptable_4a7d_case_43 - IMAGE_BASE + __zres_end ; 0x4ad3
    dw jumptable_4a7d_case_44 - IMAGE_BASE + __zres_end ; 0x4ad5
jumptable_4a7d_case_44:
@..apply_spell_effect_alt.l45:
    ret                              ; 0x4ad7
