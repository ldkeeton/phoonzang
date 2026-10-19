; auto-generated
loc_RLUJ:
    mov ax, 0xfd06                   ; 0x33df
    call aztec_csav                  ; 0x33e2
    mov word [bss_90bc], 1           ; 0x33e5
    mov ax, 2                        ; 0x33eb
    push ax                          ; 0x33ee
    mov ax, 0                        ; 0x33ef
    push ax                          ; 0x33f2
    push word [bss_8456]             ; 0x33f3
    call clamp_between               ; 0x33f7
    add sp, byte 6                   ; 0x33fa
    mov word [bss_8454], ax          ; 0x33fd
    mov word [bss_8458], 0           ; 0x3400
    cmp word [bss_82b6], byte 0xff   ; 0x3406
    je short @..loc_RLUJ.l3          ; 0x340b
@..loc_RLUJ.l1:
    call gfx_entry_52                ; 0x340d
    test ax, ax                      ; 0x3410
    je short @..loc_RLUJ.l2          ; 0x3412
    jmp short @..loc_RLUJ.l1         ; 0x3414
@..loc_RLUJ.l2:
    mov ax, 0                        ; 0x3416
    push ax                          ; 0x3419
    call ds_app_gfx_entry_51_VGJR    ; 0x341a
    pop cx                           ; 0x341d
@..loc_RLUJ.l3:
    call ds_app_VKRR                 ; 0x341e
    mov ax, 0                        ; 0x3421
    push ax                          ; 0x3424
    call ds_app_gfx_entry_22_VNHP    ; 0x3425
    pop cx                           ; 0x3428
    mov ax, 4                        ; 0x3429
    push ax                          ; 0x342c
    call ds_app_gfx_entry_22_VNHP    ; 0x342d
    pop cx                           ; 0x3430
    mov ax, 6                        ; 0x3431
    push ax                          ; 0x3434
    call ds_app_gfx_entry_22_VNHP    ; 0x3435
    pop cx                           ; 0x3438
    mov ax, 1                        ; 0x3439
    push ax                          ; 0x343c
    mov ax, 5                        ; 0x343d
    push ax                          ; 0x3440
    push ax                          ; 0x3441
    call ds_app_file_JISS            ; 0x3442
    add sp, byte 6                   ; 0x3445
    mov ax, 1                        ; 0x3448
    push ax                          ; 0x344b
    mov ax, 6                        ; 0x344c
    push ax                          ; 0x344f
    push ax                          ; 0x3450
    call ds_app_file_JISS            ; 0x3451
    add sp, byte 6                   ; 0x3454
    mov ax, 1                        ; 0x3457
    push ax                          ; 0x345a
    mov ax, 7                        ; 0x345b
    push ax                          ; 0x345e
    push ax                          ; 0x345f
    call ds_app_file_JISS            ; 0x3460
    add sp, byte 6                   ; 0x3463
    mov ax, 1                        ; 0x3466
    push ax                          ; 0x3469
    mov ax, 0xa                      ; 0x346a
    push ax                          ; 0x346d
    push ax                          ; 0x346e
    call ds_app_file_JISS            ; 0x346f
    add sp, byte 6                   ; 0x3472
    mov ax, 1                        ; 0x3475
    push ax                          ; 0x3478
    mov ax, 0xb                      ; 0x3479
    push ax                          ; 0x347c
    push ax                          ; 0x347d
    call ds_app_file_JISS            ; 0x347e
    add sp, byte 6                   ; 0x3481
    mov ax, 1                        ; 0x3484
    push ax                          ; 0x3487
    mov ax, 0xc                      ; 0x3488
    push ax                          ; 0x348b
    push ax                          ; 0x348c
    call ds_app_file_JISS            ; 0x348d
    add sp, byte 6                   ; 0x3490
    mov ax, 7                        ; 0x3493
    push ax                          ; 0x3496
    mov ax, 9                        ; 0x3497
    push ax                          ; 0x349a
    call ds_app_file_TSNH            ; 0x349b
    add sp, byte 4                   ; 0x349e
    mov ax, 0xc                      ; 0x34a1
    push ax                          ; 0x34a4
    mov ax, 0x52                     ; 0x34a5
    push ax                          ; 0x34a8
    call ds_app_file_TSNH            ; 0x34a9
    add sp, byte 4                   ; 0x34ac
    mov ax, 0                        ; 0x34af
    push ax                          ; 0x34b2
    mov ax, 2                        ; 0x34b3
    push ax                          ; 0x34b6
    mov ax, 0x8f                     ; 0x34b7
    push ax                          ; 0x34ba
    mov ax, 0xf7                     ; 0x34bb
    push ax                          ; 0x34be
    mov ax, 0x21                     ; 0x34bf
    push ax                          ; 0x34c2
    mov ax, 0x48                     ; 0x34c3
    push ax                          ; 0x34c6
    call gfx_cache_area              ; 0x34c7
    add sp, byte 0x0c                ; 0x34ca
    mov word [bss_9062], dx          ; 0x34cd
    mov word [bss_9060], ax          ; 0x34d1
    cmp word [bss_906a], byte 0      ; 0x34d4
    je short @..loc_RLUJ.l4          ; 0x34d9
    mov ax, 1                        ; 0x34db
    push ax                          ; 0x34de
    push word [bss_9068]             ; 0x34df
    call draw_restore_saved_screen   ; 0x34e3
    add sp, byte 4                   ; 0x34e6
    mov word [bss_906a], 0           ; 0x34e9
@..loc_RLUJ.l4:
    mov ax, 0                        ; 0x34ef
    push ax                          ; 0x34f2
    mov ax, 2                        ; 0x34f3
    push ax                          ; 0x34f6
    mov ax, 0x8f                     ; 0x34f7
    push ax                          ; 0x34fa
    mov ax, 0xf7                     ; 0x34fb
    push ax                          ; 0x34fe
    mov ax, 0x21                     ; 0x34ff
    push ax                          ; 0x3502
    mov ax, 0x48                     ; 0x3503
    push ax                          ; 0x3506
    call gfx_cache_area              ; 0x3507
    add sp, byte 0x0c                ; 0x350a
    mov word [bss_9066], dx          ; 0x350d
    mov word [bss_9064], ax          ; 0x3511
    mov word [bp - 0x0002], 0        ; 0x3514
@..loc_RLUJ.l5:
    mov ax, 0xe8                     ; 0x3519
    push ax                          ; 0x351c
    call aztec_malloc                ; 0x351d
    pop cx                           ; 0x3520
    mov cx, word [bp - 0x0002]       ; 0x3521
    shl cx, 1                        ; 0x3524
    mov bx, cx                       ; 0x3526
    mov word [bx + bss_8490], ax     ; 0x3528
    mov ax, 0x1a4                    ; 0x352c
    push ax                          ; 0x352f
    call aztec_malloc                ; 0x3530
    pop cx                           ; 0x3533
    mov cx, word [bp - 0x0002]       ; 0x3534
    shl cx, 1                        ; 0x3537
    mov bx, cx                       ; 0x3539
    mov word [bx + bss_8482], ax     ; 0x353b
    cmp word [bx + bss_8490], byte 0 ; 0x353f
    je short @..loc_RLUJ.l6          ; 0x3544
    cmp word [bx + bss_8482], byte 0 ; 0x3546
    jne short @..loc_RLUJ.l7         ; 0x354b
@..loc_RLUJ.l6:
    mov ax, 0x1d                     ; 0x354d
    push ax                          ; 0x3550
    call ds_app_UKIP                 ; 0x3551
    pop cx                           ; 0x3554
@..loc_RLUJ.l7:
    inc word [bp - 0x0002]           ; 0x3555
    mov ax, word [bp - 0x0002]       ; 0x3558
    cmp ax, strict word 7            ; 0x355b
    jl short @..loc_RLUJ.l5          ; 0x355e
    mov word [bp - 0x0002], 0        ; 0x3560
@..loc_RLUJ.l8:
    mov ax, 0x18                     ; 0x3565
    push ax                          ; 0x3568
    call aztec_malloc                ; 0x3569
    pop cx                           ; 0x356c
    mov cx, word [bp - 0x0002]       ; 0x356d
    shl cx, 1                        ; 0x3570
    mov bx, cx                       ; 0x3572
    mov word [bx - 0x7b96], ax       ; 0x3574
    cmp word [bx - 0x7b96], byte 0   ; 0x3578
    jne short @..loc_RLUJ.l9         ; 0x357d
    mov ax, 0x1d                     ; 0x357f
    push ax                          ; 0x3582
    call ds_app_UKIP                 ; 0x3583
    pop cx                           ; 0x3586
@..loc_RLUJ.l9:
    mov ax, word [bp - 0x0002]       ; 0x3587
    shl ax, 1                        ; 0x358a
    mov bx, ax                       ; 0x358c
    mov bx, word [bx - 0x7b96]       ; 0x358e
    mov byte [bx + 0x14], 0xff       ; 0x3592
    inc word [bp - 0x0002]           ; 0x3596
    mov ax, word [bp - 0x0002]       ; 0x3599
    cmp ax, strict word 0xc          ; 0x359c
    jl short @..loc_RLUJ.l8          ; 0x359f
    mov word [bp - 0x0002], 0xf      ; 0x35a1
@..loc_RLUJ.l10:
    mov bx, word [bp - 0x0002]       ; 0x35a6
    mov byte [bx + 0x5b48], 0xff     ; 0x35a9
    mov byte [bx + 0x5b5a], 0        ; 0x35ae
    inc word [bp - 0x0002]           ; 0x35b3
    mov ax, word [bp - 0x0002]       ; 0x35b6
    cmp ax, strict word 0x12         ; 0x35b9
    jl short @..loc_RLUJ.l10         ; 0x35bc
    mov ax, 0xc6                     ; 0x35be
    push ax                          ; 0x35c1
    mov ax, 0x13a                    ; 0x35c2
    push ax                          ; 0x35c5
    mov ax, 0xa5                     ; 0x35c6
    push ax                          ; 0x35c9
    mov ax, 8                        ; 0x35ca
    push ax                          ; 0x35cd
    call gfx_save_area               ; 0x35ce
    add sp, byte 8                   ; 0x35d1
    mov word [bss_8d10], dx          ; 0x35d4
    mov word [bss_8d0e], ax          ; 0x35d8
    mov ax, 0xa4                     ; 0x35db
    push ax                          ; 0x35de
    mov ax, 0xff                     ; 0x35df
    push ax                          ; 0x35e2
    mov ax, 0x92                     ; 0x35e3
    push ax                          ; 0x35e6
    mov ax, 0x41                     ; 0x35e7
    push ax                          ; 0x35ea
    call gfx_save_area               ; 0x35eb
    add sp, byte 8                   ; 0x35ee
    mov word [bss_8d0c], dx          ; 0x35f1
    mov word [bss_8d0a], ax          ; 0x35f5
    mov ax, 1                        ; 0x35f8
    push ax                          ; 0x35fb
    mov ax, 2                        ; 0x35fc
    push ax                          ; 0x35ff
    call ds_app_file_TSNH            ; 0x3600
    add sp, byte 4                   ; 0x3603
    mov ax, 2                        ; 0x3606
    push ax                          ; 0x3609
    mov ax, 3                        ; 0x360a
    push ax                          ; 0x360d
    call ds_app_file_TSNH            ; 0x360e
    add sp, byte 4                   ; 0x3611
    mov ax, 0                        ; 0x3614
    push ax                          ; 0x3617
    call api_idx_000a_UUIH           ; 0x3618
    pop cx                           ; 0x361b
    call api_idx_0004_NQLR           ; 0x361c
    mov ax, 1                        ; 0x361f
    cmp word [bss_905e], byte 0x12   ; 0x3622
    jne short @..loc_RLUJ.l11        ; 0x3627
    mov ax, 0                        ; 0x3629
@..loc_RLUJ.l11:
    mov word [bss_90b8], ax          ; 0x362c
    mov ax, 0                        ; 0x362f
    cmp word [bss_905e], byte 0x12   ; 0x3632
    jne short @..loc_RLUJ.l12        ; 0x3637
    mov ax, 1                        ; 0x3639
@..loc_RLUJ.l12:
    mov word [bss_90ba], ax          ; 0x363c
    cmp word [bss_905e], byte 0x12   ; 0x363f
    jne short @..loc_RLUJ.l13        ; 0x3644
    cmp word [bss_8466], byte 1      ; 0x3646
    jle short @..loc_RLUJ.l13        ; 0x364b
    mov ax, 1                        ; 0x364d
    push ax                          ; 0x3650
    call api_idx_000a_UUIH           ; 0x3651
    pop cx                           ; 0x3654
    mov ax, 1                        ; 0x3655
    push ax                          ; 0x3658
    call ds_app_OIGN                 ; 0x3659
    pop cx                           ; 0x365c
    push word [bss_8492]             ; 0x365d
    lea ax, word [bp - 0x0056]       ; 0x3661
    push ax                          ; 0x3664
    call aztec_strcpy                ; 0x3665
    add sp, byte 4                   ; 0x3668
    lea ax, word [bp - 0x0056]       ; 0x366b
    push ax                          ; 0x366e
    call api_idx_0004_ULSR           ; 0x366f
    pop cx                           ; 0x3672
    lea ax, word [bp - 0x0056]       ; 0x3673
    push ax                          ; 0x3676
    call aztec_strlen                ; 0x3677
    pop cx                           ; 0x367a
    mov word [bp - 0x0004], ax       ; 0x367b
    lea cx, word [bp - 0x0056]       ; 0x367e
    add ax, cx                       ; 0x3681
    push ax                          ; 0x3683
    mov ax, 0xdb8                    ; 0x3684
    push ax                          ; 0x3687
    call ds_app_mem_TIMR             ; 0x3688
    add sp, byte 4                   ; 0x368b
    mov ax, 0x11                     ; 0x368e
    push ax                          ; 0x3691
    lea ax, word [bp - 0x0056]       ; 0x3692
    push ax                          ; 0x3695
    call api_idx_000c_LVHV           ; 0x3696
    add sp, byte 4                   ; 0x3699
@..loc_RLUJ.l13:
    call loc_QLKH                    ; 0x369c
    les bx, word [dseg_0002]         ; 0x369f
    mov ax, word [es:bx]             ; 0x36a3
    mov dx, word [es:bx + 0x2]       ; 0x36a6
    mov word [bss_908c], dx          ; 0x36aa
    mov word [bss_908a], ax          ; 0x36ae
    mov word [bss_830a], 0xb         ; 0x36b1
    ret                              ; 0x36b7
