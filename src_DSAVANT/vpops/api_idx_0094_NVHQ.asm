; auto-generated
api_idx_0094_NVHQ:
    mov ax, 0xff6c                   ; 0x33db
    call aztec_csav                  ; 0x33de
    mov word [bp - 0x006a], 0        ; 0x33e1
    mov word [bp - 0x004e], 0        ; 0x33e6
@..api_idx_0094_NVHQ.l1:
    mov word [bp - 0x0050], 0        ; 0x33eb
@..api_idx_0094_NVHQ.l2:
    mov ax, 0x248                    ; 0x33f0
    imul word [bp + 0x4]             ; 0x33f3
    push ax                          ; 0x33f6
    mov ax, 0x78                     ; 0x33f7
    imul word [bp - 0x004e]          ; 0x33fa
    mov cx, ax                       ; 0x33fd
    pop ax                           ; 0x33ff
    add ax, cx                       ; 0x3400
    push ax                          ; 0x3402
    mov ax, 0xc                      ; 0x3403
    imul word [bp - 0x0050]          ; 0x3406
    mov cx, ax                       ; 0x3409
    pop ax                           ; 0x340b
    add ax, cx                       ; 0x340c
    mov bx, ax                       ; 0x340e
    cmp word [bx + 0x5c34], byte 0   ; 0x3410
    jg short @..api_idx_0094_NVHQ.l3 ; 0x3415
    jmp near @..api_idx_0094_NVHQ.l8 ; 0x3417
@..api_idx_0094_NVHQ.l3:
    mov ax, 0                        ; 0x341a
    push ax                          ; 0x341d
    push word [bx + 0x5c34]          ; 0x341e
    lea ax, word [bp - 0x004a]       ; 0x3422
    push ax                          ; 0x3425
    mov ax, 1                        ; 0x3426
    push ax                          ; 0x3429
    call ds_app_file_MPPM            ; 0x342a
    add sp, byte 8                   ; 0x342d
    mov ax, 0x248                    ; 0x3430
    imul word [bp + 0x4]             ; 0x3433
    push ax                          ; 0x3436
    mov ax, 0x78                     ; 0x3437
    imul word [bp - 0x004e]          ; 0x343a
    mov cx, ax                       ; 0x343d
    pop ax                           ; 0x343f
    add ax, cx                       ; 0x3440
    push ax                          ; 0x3442
    mov ax, 0xc                      ; 0x3443
    imul word [bp - 0x0050]          ; 0x3446
    mov cx, ax                       ; 0x3449
    pop ax                           ; 0x344b
    add ax, cx                       ; 0x344c
    mov bx, ax                       ; 0x344e
    mov al, byte [bx + 0x5c3b]       ; 0x3450
    sub ah, ah                       ; 0x3454
    test ax, 0x80                    ; 0x3456
    je short @..api_idx_0094_NVHQ.l4 ; 0x3459
    lea ax, word [bp - 0x004a]       ; 0x345b
    push ax                          ; 0x345e
    mov ax, 0x16                     ; 0x345f
    imul word [bp - 0x006a]          ; 0x3462
    add ax, 0x91a6                   ; 0x3465
    push ax                          ; 0x3468
    call aztec_strcpy                ; 0x3469
    add sp, byte 4                   ; 0x346c
    jmp short @..api_idx_0094_NVHQ.l5 ; 0x346f
@..api_idx_0094_NVHQ.l4:
    mov ax, 0x16                     ; 0x3471
    imul word [bp - 0x006a]          ; 0x3474
    add ax, 0x91a6                   ; 0x3477
    push ax                          ; 0x347a
    mov ax, 0x248                    ; 0x347b
    imul word [bp + 0x4]             ; 0x347e
    push ax                          ; 0x3481
    mov ax, 0x78                     ; 0x3482
    imul word [bp - 0x004e]          ; 0x3485
    mov cx, ax                       ; 0x3488
    pop ax                           ; 0x348a
    add ax, cx                       ; 0x348b
    push ax                          ; 0x348d
    mov ax, 0xc                      ; 0x348e
    imul word [bp - 0x0050]          ; 0x3491
    mov cx, ax                       ; 0x3494
    pop ax                           ; 0x3496
    add ax, cx                       ; 0x3497
    mov bx, ax                       ; 0x3499
    mov al, byte [bx + 0x5c39]       ; 0x349b
    sub ah, ah                       ; 0x349f
    add ax, 0x1770                   ; 0x34a1
    push ax                          ; 0x34a4
    call ds_app_mem_TIMR             ; 0x34a5
    add sp, byte 4                   ; 0x34a8
@..api_idx_0094_NVHQ.l5:
    mov al, byte [bp - 0x0011]       ; 0x34ab
    sub ah, ah                       ; 0x34ae
    mov cx, word [bp - 0x006a]       ; 0x34b0
    shl cx, 1                        ; 0x34b3
    mov bx, cx                       ; 0x34b5
    mov word [bx - 0x6e82], ax       ; 0x34b7
    mov ax, word [bp - 0x004e]       ; 0x34bb
    mov word [bx - 0x6eaa], ax       ; 0x34be
    mov ax, 0x248                    ; 0x34c2
    imul word [bp + 0x4]             ; 0x34c5
    push ax                          ; 0x34c8
    mov ax, 0x78                     ; 0x34c9
    imul word [bp - 0x004e]          ; 0x34cc
    mov cx, ax                       ; 0x34cf
    pop ax                           ; 0x34d1
    add ax, cx                       ; 0x34d2
    push ax                          ; 0x34d4
    mov ax, 0xc                      ; 0x34d5
    imul word [bp - 0x0050]          ; 0x34d8
    mov cx, ax                       ; 0x34db
    pop ax                           ; 0x34dd
    add ax, cx                       ; 0x34de
    mov bx, ax                       ; 0x34e0
    mov al, byte [bx + 0x5c38]       ; 0x34e2
    sub ah, ah                       ; 0x34e6
    mov bx, ax                       ; 0x34e8
    cmp byte [bx + 0x60e], 1         ; 0x34ea
    jne short @..api_idx_0094_NVHQ.l6 ; 0x34ef
    mov ax, 0x248                    ; 0x34f1
    imul word [bp + 0x4]             ; 0x34f4
    push ax                          ; 0x34f7
    mov ax, 0x78                     ; 0x34f8
    imul word [bp - 0x004e]          ; 0x34fb
    mov cx, ax                       ; 0x34fe
    pop ax                           ; 0x3500
    add ax, cx                       ; 0x3501
    push ax                          ; 0x3503
    mov ax, 0xc                      ; 0x3504
    imul word [bp - 0x0050]          ; 0x3507
    mov cx, ax                       ; 0x350a
    pop ax                           ; 0x350c
    add ax, cx                       ; 0x350d
    mov bx, ax                       ; 0x350f
    mov al, byte [bx + 0x5c3a]       ; 0x3511
    sub ah, ah                       ; 0x3515
    mov cx, word [bp - 0x006a]       ; 0x3517
    shl cx, 1                        ; 0x351a
    mov bx, cx                       ; 0x351c
    mov word [bx - 0x6ca2], ax       ; 0x351e
    jmp short @..api_idx_0094_NVHQ.l7 ; 0x3522
@..api_idx_0094_NVHQ.l6:
    mov ax, word [bp - 0x006a]       ; 0x3524
    shl ax, 1                        ; 0x3527
    mov bx, ax                       ; 0x3529
    mov word [bx - 0x6ca2], 0        ; 0x352b
@..api_idx_0094_NVHQ.l7:
    mov ax, word [bp - 0x004e]       ; 0x3531
    xchg al, ah                      ; 0x3534
    sub al, al                       ; 0x3536
    add ax, word [bp - 0x0050]       ; 0x3538
    mov cx, word [bp - 0x006a]       ; 0x353b
    shl cx, 1                        ; 0x353e
    mov bx, cx                       ; 0x3540
    add bx, bp                       ; 0x3542
    mov word [bx - 0x0092], ax       ; 0x3544
    inc word [bp - 0x006a]           ; 0x3548
@..api_idx_0094_NVHQ.l8:
    inc word [bp - 0x0050]           ; 0x354b
    mov ax, word [bp - 0x0050]       ; 0x354e
    cmp ax, strict word 0xa          ; 0x3551
    jge short @..api_idx_0094_NVHQ.l9 ; 0x3554
    jmp near @..api_idx_0094_NVHQ.l2 ; 0x3556
@..api_idx_0094_NVHQ.l9:
    inc word [bp - 0x004e]           ; 0x3559
    mov ax, word [bp - 0x004e]       ; 0x355c
    cmp ax, strict word 2            ; 0x355f
    jge short @..api_idx_0094_NVHQ.l10 ; 0x3562
    jmp near @..api_idx_0094_NVHQ.l1 ; 0x3564
@..api_idx_0094_NVHQ.l10:
    cmp word [bp - 0x006a], byte 0   ; 0x3567
    jne short @..api_idx_0094_NVHQ.l11 ; 0x356b
    mov ax, 0xffff                   ; 0x356d
    ret                              ; 0x3570
@..api_idx_0094_NVHQ.l11:
    call loc_UTQS                    ; 0x3571
    mov ax, 0x248                    ; 0x3574
    imul word [bp + 0x4]             ; 0x3577
    add ax, bss_5bf4                 ; 0x357a
    push ax                          ; 0x357d
    push word [bp - 0x006a]          ; 0x357e
    mov ax, 1                        ; 0x3581
    push ax                          ; 0x3584
    push ax                          ; 0x3585
    mov ax, 0                        ; 0x3586
    push ax                          ; 0x3589
    mov ax, 0xbd6                    ; 0x358a
    push ax                          ; 0x358d
    call api_idx_0038_PVVG           ; 0x358e
    add sp, byte 0x0c                ; 0x3591
    mov word [bp - 0x004c], ax       ; 0x3594
    mov ax, word [bss_904e]          ; 0x3597
    mov word [bp - 0x0002], ax       ; 0x359a
    cmp word [bp - 0x004c], byte 1   ; 0x359d
    jne short @..api_idx_0094_NVHQ.l12 ; 0x35a1
    cmp ax, strict word 0xffff       ; 0x35a3
    jne short @..api_idx_0094_NVHQ.l13 ; 0x35a6
@..api_idx_0094_NVHQ.l12:
    mov ax, 0xc6                     ; 0x35a8
    push ax                          ; 0x35ab
    mov ax, 0x109                    ; 0x35ac
    push ax                          ; 0x35af
    mov ax, 0x8e                     ; 0x35b0
    push ax                          ; 0x35b3
    mov ax, 0x36                     ; 0x35b4
    push ax                          ; 0x35b7
    call gfx_entry_16                ; 0x35b8
    add sp, byte 8                   ; 0x35bb
    mov ax, 0xffff                   ; 0x35be
    ret                              ; 0x35c1
@..api_idx_0094_NVHQ.l13:
    mov ax, word [bp - 0x0002]       ; 0x35c2
    shl ax, 1                        ; 0x35c5
    mov bx, ax                       ; 0x35c7
    add bx, bp                       ; 0x35c9
    mov ax, word [bx - 0x0092]       ; 0x35cb
    mov cx, 0x100                    ; 0x35cf
    cwd                              ; 0x35d2
    idiv cx                          ; 0x35d3
    mov word [bp - 0x004e], ax       ; 0x35d5
    mov word [bp - 0x0050], dx       ; 0x35d8
    mov ax, 0x10                     ; 0x35db
    push ax                          ; 0x35de
    mov ax, 0xc                      ; 0x35df
    push ax                          ; 0x35e2
    mov ax, 0x96                     ; 0x35e3
    push ax                          ; 0x35e6
    mov ax, 0x3f                     ; 0x35e7
    push ax                          ; 0x35ea
    push word [bp - 0x004c]          ; 0x35eb
    mov ax, word [bp - 0x004c]       ; 0x35ee
    add ax, 0xbd6                    ; 0x35f1
    push ax                          ; 0x35f4
    call api_idx_0018_RGOS           ; 0x35f5
    add sp, byte 0x0c                ; 0x35f8
    mov ax, 0                        ; 0x35fb
    push ax                          ; 0x35fe
    mov ax, 0x248                    ; 0x35ff
    imul word [bp + 0x4]             ; 0x3602
    push ax                          ; 0x3605
    mov ax, 0x78                     ; 0x3606
    imul word [bp - 0x004e]          ; 0x3609
    mov cx, ax                       ; 0x360c
    pop ax                           ; 0x360e
    add ax, cx                       ; 0x360f
    push ax                          ; 0x3611
    mov ax, 0xc                      ; 0x3612
    imul word [bp - 0x0050]          ; 0x3615
    mov cx, ax                       ; 0x3618
    pop ax                           ; 0x361a
    add ax, cx                       ; 0x361b
    mov bx, ax                       ; 0x361d
    push word [bx + 0x5c34]          ; 0x361f
    lea ax, word [bp - 0x004a]       ; 0x3623
    push ax                          ; 0x3626
    mov ax, 1                        ; 0x3627
    push ax                          ; 0x362a
    call ds_app_file_MPPM            ; 0x362b
    add sp, byte 8                   ; 0x362e
    cmp word [bp - 0x0028], byte 0   ; 0x3631
    je short @..api_idx_0094_NVHQ.l15 ; 0x3635
    mov ax, word [bp - 0x0028]       ; 0x3637
    mov cx, 0x100                    ; 0x363a
    cwd                              ; 0x363d
    idiv cx                          ; 0x363e
    mov word [bp - 0x0054], ax       ; 0x3640
    mov word [bp - 0x0052], dx       ; 0x3643
    mov ax, 6                        ; 0x3646
    imul dx                          ; 0x3649
    mov bx, ax                       ; 0x364b
    cmp byte [bx + 0x624], 1         ; 0x364d
    jne short @..api_idx_0094_NVHQ.l15 ; 0x3652
    call ds_app_VGOM                 ; 0x3654
    mov word [bp - 0x0094], ax       ; 0x3657
    cmp ax, strict word 0xffff       ; 0x365b
    jne short @..api_idx_0094_NVHQ.l14 ; 0x365e
    mov ax, 0xc6                     ; 0x3660
    push ax                          ; 0x3663
    mov ax, 0x109                    ; 0x3664
    push ax                          ; 0x3667
    mov ax, 0x8e                     ; 0x3668
    push ax                          ; 0x366b
    mov ax, 0x36                     ; 0x366c
    push ax                          ; 0x366f
    call gfx_entry_16                ; 0x3670
    add sp, byte 8                   ; 0x3673
    mov ax, 0xffff                   ; 0x3676
    ret                              ; 0x3679
@..api_idx_0094_NVHQ.l14:
    mov ax, 0x2c                     ; 0x367a
    imul word [bp + 0x4]             ; 0x367d
    mov si, ax                       ; 0x3680
    mov bx, word [party_char]        ; 0x3682
    mov byte [bx + si + 0x1f], 0     ; 0x3686
    mov al, byte [bp - 0x0094]       ; 0x368a
    push ax                          ; 0x368e
    mov ax, 0x2c                     ; 0x368f
    imul word [bp + 0x4]             ; 0x3692
    mov si, ax                       ; 0x3695
    mov bx, word [party_char]        ; 0x3697
    pop ax                           ; 0x369b
    mov byte [bx + si + 0x20], al    ; 0x369c
@..api_idx_0094_NVHQ.l15:
    mov ax, 0xc6                     ; 0x369f
    push ax                          ; 0x36a2
    mov ax, 0x109                    ; 0x36a3
    push ax                          ; 0x36a6
    mov ax, 0x8e                     ; 0x36a7
    push ax                          ; 0x36aa
    mov ax, 0x36                     ; 0x36ab
    push ax                          ; 0x36ae
    call gfx_entry_16                ; 0x36af
    add sp, byte 8                   ; 0x36b2
    mov ax, word [bp - 0x004e]       ; 0x36b5
    xchg al, ah                      ; 0x36b8
    sub al, al                       ; 0x36ba
    add ax, word [bp - 0x0050]       ; 0x36bc
    ret                              ; 0x36bf
