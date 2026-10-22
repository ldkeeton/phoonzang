; auto-generated
api_idx_0002_TOSL:
    mov ax, 0xfffe                   ; 0x03ea
    call aztec_csav                  ; 0x03ed
    mov word [bss_91a6], 0           ; 0x03f0
    mov ax, word [game_state_arg]    ; 0x03f6
    jmp short @..api_idx_0002_TOSL.l1 ; 0x03f9
jumptable_042b_case_15:
    mov word [bp - 0x0002], 1        ; 0x03fb
    jmp short @..api_idx_0002_TOSL.l2 ; 0x0400
jumptable_042b_case_0:
    mov word [bp - 0x0002], 2        ; 0x0402
    jmp short @..api_idx_0002_TOSL.l2 ; 0x0407
jumptable_042b_case_14:
    mov word [bp - 0x0002], 3        ; 0x0409
    jmp short @..api_idx_0002_TOSL.l2 ; 0x040e
jumptable_042b_case_27:
    mov word [bss_91a6], 1           ; 0x0410
jumptable_042b_case_7:
    mov word [bp - 0x0002], 4        ; 0x0416
    jmp short @..api_idx_0002_TOSL.l2 ; 0x041b
jumptable_042b_case_22:
    mov word [bp - 0x0002], 5        ; 0x041d
    jmp short @..api_idx_0002_TOSL.l2 ; 0x0422
jumptable_042b_case_8:
    mov word [bp - 0x0002], 6        ; 0x0424
    jmp short @..api_idx_0002_TOSL.l2 ; 0x0429
jumptable_042b:
    dw jumptable_042b_case_0 - IMAGE_BASE + __zres_end ; 0x042b
    dw jumptable_042b_case_0 - IMAGE_BASE + __zres_end ; 0x042d
    dw jumptable_042b_case_0 - IMAGE_BASE + __zres_end ; 0x042f
    dw jumptable_042b_case_0 - IMAGE_BASE + __zres_end ; 0x0431
    dw jumptable_042b_case_0 - IMAGE_BASE + __zres_end ; 0x0433
    dw jumptable_042b_case_0 - IMAGE_BASE + __zres_end ; 0x0435
    dw jumptable_042b_case_0 - IMAGE_BASE + __zres_end ; 0x0437
    dw jumptable_042b_case_7 - IMAGE_BASE + __zres_end ; 0x0439
    dw jumptable_042b_case_8 - IMAGE_BASE + __zres_end ; 0x043b
    dw jumptable_042b_case_8 - IMAGE_BASE + __zres_end ; 0x043d
    dw jumptable_042b_case_8 - IMAGE_BASE + __zres_end ; 0x043f
    dw jumptable_042b_case_8 - IMAGE_BASE + __zres_end ; 0x0441
    dw jumptable_042b_case_8 - IMAGE_BASE + __zres_end ; 0x0443
    dw jumptable_042b_case_0 - IMAGE_BASE + __zres_end ; 0x0445
    dw jumptable_042b_case_14 - IMAGE_BASE + __zres_end ; 0x0447
    dw jumptable_042b_case_15 - IMAGE_BASE + __zres_end ; 0x0449
    dw jumptable_042b_case_14 - IMAGE_BASE + __zres_end ; 0x044b
    dw jumptable_042b_case_15 - IMAGE_BASE + __zres_end ; 0x044d
    dw jumptable_042b_case_14 - IMAGE_BASE + __zres_end ; 0x044f
    dw jumptable_042b_case_14 - IMAGE_BASE + __zres_end ; 0x0451
    dw jumptable_042b_case_14 - IMAGE_BASE + __zres_end ; 0x0453
    dw jumptable_042b_case_14 - IMAGE_BASE + __zres_end ; 0x0455
    dw jumptable_042b_case_22 - IMAGE_BASE + __zres_end ; 0x0457
    dw jumptable_042b_case_15 - IMAGE_BASE + __zres_end ; 0x0459
    dw jumptable_042b_case_15 - IMAGE_BASE + __zres_end ; 0x045b
    dw jumptable_042b_case_22 - IMAGE_BASE + __zres_end ; 0x045d
    dw jumptable_042b_case_15 - IMAGE_BASE + __zres_end ; 0x045f
    dw jumptable_042b_case_27 - IMAGE_BASE + __zres_end ; 0x0461
    dw jumptable_042b_case_22 - IMAGE_BASE + __zres_end ; 0x0463
    dw jumptable_042b_case_15 - IMAGE_BASE + __zres_end ; 0x0465
    dw jumptable_042b_case_15 - IMAGE_BASE + __zres_end ; 0x0467
    dw jumptable_042b_case_14 - IMAGE_BASE + __zres_end ; 0x0469
@..api_idx_0002_TOSL.l1:
    cmp ax, strict word 0x20         ; 0x046b
    jae short @..api_idx_0002_TOSL.l2 ; 0x046e
    xchg bx, ax                      ; 0x0470
    shl bx, 1                        ; 0x0471
    jmp [cs:bx + jumptable_042b - IMAGE_BASE + __zres_end] ; 0x0473
@..api_idx_0002_TOSL.l2:
    cmp word [maze_state], byte 0    ; 0x0478
    je short @..api_idx_0002_TOSL.l3 ; 0x047d
    mov ax, word [bp - 0x0002]       ; 0x047f
    cmp ax, word [maze_variant]      ; 0x0482
    jne short @..api_idx_0002_TOSL.l3 ; 0x0486
    jmp near @..api_idx_0002_TOSL.l5 ; 0x0488
@..api_idx_0002_TOSL.l3:
    call free_current_maze           ; 0x048b
    mov ax, word [bp - 0x0002]       ; 0x048e
    mov word [maze_variant], ax      ; 0x0491
    jmp near @..api_idx_0002_TOSL.l4 ; 0x0494
jumptable_06b5_case_1:
    mov ax, 0                        ; 0x0497
    push ax                          ; 0x049a
    mov ax, dseg_90a0                ; 0x049b
    push ax                          ; 0x049e
    call api_idx_0002_PQLV           ; 0x049f
    add sp, byte 4                   ; 0x04a2
    mov ax, 5                        ; 0x04a5
    push ax                          ; 0x04a8
    mov ax, dseg_90ad                ; 0x04a9
    push ax                          ; 0x04ac
    call api_idx_0002_PQLV           ; 0x04ad
    add sp, byte 4                   ; 0x04b0
    mov ax, 5                        ; 0x04b3
    push ax                          ; 0x04b6
    mov ax, 6                        ; 0x04b7
    push ax                          ; 0x04ba
    call ds_app_file_TSNH            ; 0x04bb
    add sp, byte 4                   ; 0x04be
    mov ax, 9                        ; 0x04c1
    push ax                          ; 0x04c4
    mov ax, 0xf                      ; 0x04c5
    push ax                          ; 0x04c8
    call ds_app_file_TSNH            ; 0x04c9
    add sp, byte 4                   ; 0x04cc
    mov ax, 0xa                      ; 0x04cf
    push ax                          ; 0x04d2
    mov ax, 0x10                     ; 0x04d3
    push ax                          ; 0x04d6
    call ds_app_file_TSNH            ; 0x04d7
    add sp, byte 4                   ; 0x04da
    mov ax, 0xd                      ; 0x04dd
    push ax                          ; 0x04e0
    mov ax, 0x39                     ; 0x04e1
    push ax                          ; 0x04e4
    call ds_app_file_TSNH            ; 0x04e5
    add sp, byte 4                   ; 0x04e8
    mov word [current_maze], 0       ; 0x04eb
    jmp near @..api_idx_0002_TOSL.l5 ; 0x04f1
jumptable_06b5_case_2:
    mov ax, 1                        ; 0x04f4
    push ax                          ; 0x04f7
    mov ax, dseg_90ba                ; 0x04f8
    push ax                          ; 0x04fb
    call api_idx_0002_PQLV           ; 0x04fc
    add sp, byte 4                   ; 0x04ff
    mov ax, 4                        ; 0x0502
    push ax                          ; 0x0505
    mov ax, dseg_90c7                ; 0x0506
    push ax                          ; 0x0509
    call api_idx_0002_PQLV           ; 0x050a
    add sp, byte 4                   ; 0x050d
    mov ax, 6                        ; 0x0510
    push ax                          ; 0x0513
    mov ax, dseg_90d4                ; 0x0514
    push ax                          ; 0x0517
    call api_idx_0002_PQLV           ; 0x0518
    add sp, byte 4                   ; 0x051b
    mov ax, 0xd                      ; 0x051e
    push ax                          ; 0x0521
    mov ax, 0x3a                     ; 0x0522
    push ax                          ; 0x0525
    call ds_app_file_TSNH            ; 0x0526
    add sp, byte 4                   ; 0x0529
    mov word [current_maze], 1       ; 0x052c
    jmp near @..api_idx_0002_TOSL.l5 ; 0x0532
jumptable_06b5_case_3:
    mov ax, 2                        ; 0x0535
    push ax                          ; 0x0538
    mov ax, dseg_90e1                ; 0x0539
    push ax                          ; 0x053c
    call api_idx_0002_PQLV           ; 0x053d
    add sp, byte 4                   ; 0x0540
    mov ax, 4                        ; 0x0543
    push ax                          ; 0x0546
    mov ax, dseg_90ee                ; 0x0547
    push ax                          ; 0x054a
    call api_idx_0002_PQLV           ; 0x054b
    add sp, byte 4                   ; 0x054e
    mov ax, 5                        ; 0x0551
    push ax                          ; 0x0554
    mov ax, dseg_90fb                ; 0x0555
    push ax                          ; 0x0558
    call api_idx_0002_PQLV           ; 0x0559
    add sp, byte 4                   ; 0x055c
    mov ax, 6                        ; 0x055f
    push ax                          ; 0x0562
    mov ax, dseg_9108                ; 0x0563
    push ax                          ; 0x0566
    call api_idx_0002_PQLV           ; 0x0567
    add sp, byte 4                   ; 0x056a
    mov ax, 5                        ; 0x056d
    push ax                          ; 0x0570
    mov ax, 8                        ; 0x0571
    push ax                          ; 0x0574
    call ds_app_file_TSNH            ; 0x0575
    add sp, byte 4                   ; 0x0578
    mov ax, 0xa                      ; 0x057b
    push ax                          ; 0x057e
    mov ax, 0x10                     ; 0x057f
    push ax                          ; 0x0582
    call ds_app_file_TSNH            ; 0x0583
    add sp, byte 4                   ; 0x0586
    mov ax, 0xb                      ; 0x0589
    push ax                          ; 0x058c
    mov ax, 0x11                     ; 0x058d
    push ax                          ; 0x0590
    call ds_app_file_TSNH            ; 0x0591
    add sp, byte 4                   ; 0x0594
    mov ax, 0xc                      ; 0x0597
    push ax                          ; 0x059a
    mov ax, 0x3b                     ; 0x059b
    push ax                          ; 0x059e
    call ds_app_file_TSNH            ; 0x059f
    add sp, byte 4                   ; 0x05a2
    mov word [current_maze], 2       ; 0x05a5
    jmp near @..api_idx_0002_TOSL.l5 ; 0x05ab
jumptable_06b5_case_4:
    mov ax, 1                        ; 0x05ae
    push ax                          ; 0x05b1
    mov ax, dseg_9115                ; 0x05b2
    push ax                          ; 0x05b5
    call api_idx_0002_PQLV           ; 0x05b6
    add sp, byte 4                   ; 0x05b9
    mov ax, 4                        ; 0x05bc
    push ax                          ; 0x05bf
    mov ax, pending_panel_arg0       ; 0x05c0
    push ax                          ; 0x05c3
    call api_idx_0002_PQLV           ; 0x05c4
    add sp, byte 4                   ; 0x05c7
    mov ax, 0xd                      ; 0x05ca
    push ax                          ; 0x05cd
    mov ax, 0x3a                     ; 0x05ce
    push ax                          ; 0x05d1
    call ds_app_file_TSNH            ; 0x05d2
    add sp, byte 4                   ; 0x05d5
    mov word [current_maze], 1       ; 0x05d8
    jmp near @..api_idx_0002_TOSL.l5 ; 0x05de
jumptable_06b5_case_5:
    mov ax, 2                        ; 0x05e1
    push ax                          ; 0x05e4
    mov ax, dseg_912f                ; 0x05e5
    push ax                          ; 0x05e8
    call api_idx_0002_PQLV           ; 0x05e9
    add sp, byte 4                   ; 0x05ec
    mov ax, 4                        ; 0x05ef
    push ax                          ; 0x05f2
    mov ax, dseg_913c                ; 0x05f3
    push ax                          ; 0x05f6
    call api_idx_0002_PQLV           ; 0x05f7
    add sp, byte 4                   ; 0x05fa
    mov ax, 5                        ; 0x05fd
    push ax                          ; 0x0600
    mov ax, dseg_9149                ; 0x0601
    push ax                          ; 0x0604
    call api_idx_0002_PQLV           ; 0x0605
    add sp, byte 4                   ; 0x0608
    mov ax, 0xa                      ; 0x060b
    push ax                          ; 0x060e
    mov ax, 0x10                     ; 0x060f
    push ax                          ; 0x0612
    call ds_app_file_TSNH            ; 0x0613
    add sp, byte 4                   ; 0x0616
    mov ax, 0xb                      ; 0x0619
    push ax                          ; 0x061c
    mov ax, 0x36                     ; 0x061d
    push ax                          ; 0x0620
    call ds_app_file_TSNH            ; 0x0621
    add sp, byte 4                   ; 0x0624
    mov ax, 0xc                      ; 0x0627
    push ax                          ; 0x062a
    mov ax, 0x3b                     ; 0x062b
    push ax                          ; 0x062e
    call ds_app_file_TSNH            ; 0x062f
    add sp, byte 4                   ; 0x0632
    mov ax, 9                        ; 0x0635
    push ax                          ; 0x0638
    mov ax, 0x53                     ; 0x0639
    push ax                          ; 0x063c
    call ds_app_file_TSNH            ; 0x063d
    add sp, byte 4                   ; 0x0640
    mov ax, 0xd                      ; 0x0643
    push ax                          ; 0x0646
    mov ax, 0x38                     ; 0x0647
    push ax                          ; 0x064a
    call ds_app_file_TSNH            ; 0x064b
    add sp, byte 4                   ; 0x064e
    mov word [current_maze], 2       ; 0x0651
    jmp short @..api_idx_0002_TOSL.l5 ; 0x0657
jumptable_06b5_case_6:
    mov ax, 1                        ; 0x0659
    push ax                          ; 0x065c
    mov ax, dseg_9156                ; 0x065d
    push ax                          ; 0x0660
    call api_idx_0002_PQLV           ; 0x0661
    add sp, byte 4                   ; 0x0664
    mov ax, 4                        ; 0x0667
    push ax                          ; 0x066a
    mov ax, dseg_9163                ; 0x066b
    push ax                          ; 0x066e
    call api_idx_0002_PQLV           ; 0x066f
    add sp, byte 4                   ; 0x0672
    mov ax, 5                        ; 0x0675
    push ax                          ; 0x0678
    mov ax, dseg_9170                ; 0x0679
    push ax                          ; 0x067c
    call api_idx_0002_PQLV           ; 0x067d
    add sp, byte 4                   ; 0x0680
    mov ax, 0xc                      ; 0x0683
    push ax                          ; 0x0686
    mov ax, 0x3b                     ; 0x0687
    push ax                          ; 0x068a
    call ds_app_file_TSNH            ; 0x068b
    add sp, byte 4                   ; 0x068e
    mov ax, 9                        ; 0x0691
    push ax                          ; 0x0694
    mov ax, 0x53                     ; 0x0695
    push ax                          ; 0x0698
    call ds_app_file_TSNH            ; 0x0699
    add sp, byte 4                   ; 0x069c
    mov ax, 0xd                      ; 0x069f
    push ax                          ; 0x06a2
    mov ax, 0x3a                     ; 0x06a3
    push ax                          ; 0x06a6
    call ds_app_file_TSNH            ; 0x06a7
    add sp, byte 4                   ; 0x06aa
    mov word [current_maze], 1       ; 0x06ad
    jmp short @..api_idx_0002_TOSL.l5 ; 0x06b3
jumptable_06b5:
    dw jumptable_06b5_case_0 - IMAGE_BASE + __zres_end ; 0x06b5
    dw jumptable_06b5_case_1 - IMAGE_BASE + __zres_end ; 0x06b7
    dw jumptable_06b5_case_2 - IMAGE_BASE + __zres_end ; 0x06b9
    dw jumptable_06b5_case_3 - IMAGE_BASE + __zres_end ; 0x06bb
    dw jumptable_06b5_case_4 - IMAGE_BASE + __zres_end ; 0x06bd
    dw jumptable_06b5_case_5 - IMAGE_BASE + __zres_end ; 0x06bf
    dw jumptable_06b5_case_6 - IMAGE_BASE + __zres_end ; 0x06c1
@..api_idx_0002_TOSL.l4:
    cmp ax, strict word 7            ; 0x06c3
    jae short @..api_idx_0002_TOSL.l5 ; 0x06c6
    xchg bx, ax                      ; 0x06c8
    shl bx, 1                        ; 0x06c9
    jmp [cs:bx + jumptable_06b5 - IMAGE_BASE + __zres_end] ; 0x06cb
jumptable_06b5_case_0:
@..api_idx_0002_TOSL.l5:
    call loc_VRKM                    ; 0x06d0
    mov word [maze_state], 1         ; 0x06d3
    ret                              ; 0x06d9
