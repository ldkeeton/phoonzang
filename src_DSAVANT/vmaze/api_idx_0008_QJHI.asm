; auto-generated
api_idx_0008_QJHI:
    mov ax, 0xfff8                   ; 0x33c0
    call aztec_csav                  ; 0x33c3
    cmp word [bp + 0x10], byte 0     ; 0x33c6
    je short @..api_idx_0008_QJHI.l3 ; 0x33ca
    mov ax, 0                        ; 0x33cc
    push ax                          ; 0x33cf
    push word [bp + 0x10]            ; 0x33d0
    lea ax, word [bp + 0xe]          ; 0x33d3
    push ax                          ; 0x33d6
    lea ax, word [bp + 0xc]          ; 0x33d7
    push ax                          ; 0x33da
    lea ax, word [bp + 0xa]          ; 0x33db
    push ax                          ; 0x33de
    lea ax, word [bp + 0x8]          ; 0x33df
    push ax                          ; 0x33e2
    lea ax, word [bp + 0x6]          ; 0x33e3
    push ax                          ; 0x33e6
    call loc_VOSO                    ; 0x33e7
    add sp, byte 0x0e                ; 0x33ea
    test ax, ax                      ; 0x33ed
    je short @..api_idx_0008_QJHI.l3 ; 0x33ef
    mov ax, word [bss_91d4]          ; 0x33f1
    jmp short @..api_idx_0008_QJHI.l2 ; 0x33f4
jumptable_340d_case_0:
    mov ax, 2                        ; 0x33f6
    ret                              ; 0x33f9
jumptable_340d_case_3:
    cmp word [bss_91a6], byte 0      ; 0x33fa
    je short jumptable_340d_case_1   ; 0x33ff
    mov ax, 0                        ; 0x3401
    ret                              ; 0x3404
jumptable_340d_case_1:
    mov ax, 4                        ; 0x3405
    ret                              ; 0x3408
jumptable_340d_case_5:
    mov ax, 0                        ; 0x3409
    ret                              ; 0x340c
jumptable_340d:
    dw jumptable_340d_case_0 - IMAGE_BASE + __zres_end ; 0x340d
    dw jumptable_340d_case_1 - IMAGE_BASE + __zres_end ; 0x340f
    dw jumptable_340d_case_0 - IMAGE_BASE + __zres_end ; 0x3411
    dw jumptable_340d_case_3 - IMAGE_BASE + __zres_end ; 0x3413
    dw jumptable_340d_case_0 - IMAGE_BASE + __zres_end ; 0x3415
    dw jumptable_340d_case_5 - IMAGE_BASE + __zres_end ; 0x3417
@..api_idx_0008_QJHI.l2:
    cmp ax, strict word 6            ; 0x3419
    jae short @..api_idx_0008_QJHI.l3 ; 0x341c
    xchg bx, ax                      ; 0x341e
    shl bx, 1                        ; 0x341f
    jmp [cs:bx + jumptable_340d - IMAGE_BASE + __zres_end] ; 0x3421
@..api_idx_0008_QJHI.l3:
    mov ax, word [bp + 0xe]          ; 0x3426
    mov cx, 6                        ; 0x3429
    shl ax, cl                       ; 0x342c
    mov cx, word [bp + 0xc]          ; 0x342e
    shl cx, 1                        ; 0x3431
    shl cx, 1                        ; 0x3433
    shl cx, 1                        ; 0x3435
    add ax, cx                       ; 0x3437
    add ax, word [bp + 0xa]          ; 0x3439
    mov word [bp - 0x0002], ax       ; 0x343c
    push ax                          ; 0x343f
    mov ax, word [maze_data]         ; 0x3440
    add ax, 0x8b0                    ; 0x3443
    push ax                          ; 0x3446
    call test_bit                    ; 0x3447
    add sp, byte 4                   ; 0x344a
    test ax, ax                      ; 0x344d
    je short @..api_idx_0008_QJHI.l6 ; 0x344f
    mov ax, word [bss_91d4]          ; 0x3451
    jmp short @..api_idx_0008_QJHI.l5 ; 0x3454
@..api_idx_0008_QJHI.l4:
    mov ax, 0                        ; 0x3456
    ret                              ; 0x3459
@..api_idx_0008_QJHI.l5:
    cmp ax, strict word 0            ; 0x345a
    je short @..api_idx_0008_QJHI.l4 ; 0x345d
    cmp ax, strict word 3            ; 0x345f
    je short @..api_idx_0008_QJHI.l4 ; 0x3462
@..api_idx_0008_QJHI.l6:
    mov ax, word [party_tag]         ; 0x3464
    add ax, word [bp + 0x4]          ; 0x3467
    mov cx, 4                        ; 0x346a
    cwd                              ; 0x346d
    idiv cx                          ; 0x346e
    mov ax, dx                       ; 0x3470
    jmp short @..api_idx_0008_QJHI.l11 ; 0x3472
@..api_idx_0008_QJHI.l7:
    push word [bp + 0xe]             ; 0x3474
    push word [bp + 0xc]             ; 0x3477
    push word [bp + 0xa]             ; 0x347a
    push word [bp + 0x8]             ; 0x347d
    push word [bp + 0x6]             ; 0x3480
    call loc_MMMO                    ; 0x3483
    add sp, byte 0x0a                ; 0x3486
    mov word [bp - 0x0004], ax       ; 0x3489
    jmp short @..api_idx_0008_QJHI.l12 ; 0x348c
@..api_idx_0008_QJHI.l8:
    mov ax, 4                        ; 0x348e
    push ax                          ; 0x3491
    push word [bp - 0x0002]          ; 0x3492
    mov ax, word [maze_data]         ; 0x3495
    add ax, 0x90                     ; 0x3498
    push ax                          ; 0x349b
    call ds_leaf_loc_NPSL            ; 0x349c
    add sp, byte 6                   ; 0x349f
    mov word [bp - 0x0004], ax       ; 0x34a2
    jmp short @..api_idx_0008_QJHI.l12 ; 0x34a5
@..api_idx_0008_QJHI.l9:
    mov ax, 4                        ; 0x34a7
    push ax                          ; 0x34aa
    push word [bp - 0x0002]          ; 0x34ab
    mov ax, word [maze_data]         ; 0x34ae
    add ax, 0x290                    ; 0x34b1
    push ax                          ; 0x34b4
    call ds_leaf_loc_NPSL            ; 0x34b5
    add sp, byte 6                   ; 0x34b8
    mov word [bp - 0x0004], ax       ; 0x34bb
    jmp short @..api_idx_0008_QJHI.l12 ; 0x34be
@..api_idx_0008_QJHI.l10:
    push word [bp + 0xe]             ; 0x34c0
    push word [bp + 0xc]             ; 0x34c3
    push word [bp + 0xa]             ; 0x34c6
    push word [bp + 0x8]             ; 0x34c9
    push word [bp + 0x6]             ; 0x34cc
    call loc_GPIH                    ; 0x34cf
    add sp, byte 0x0a                ; 0x34d2
    mov word [bp - 0x0004], ax       ; 0x34d5
    jmp short @..api_idx_0008_QJHI.l12 ; 0x34d8
@..api_idx_0008_QJHI.l11:
    cmp ax, strict word 0            ; 0x34da
    je short @..api_idx_0008_QJHI.l7 ; 0x34dd
    cmp ax, strict word 1            ; 0x34df
    je short @..api_idx_0008_QJHI.l8 ; 0x34e2
    cmp ax, strict word 2            ; 0x34e4
    je short @..api_idx_0008_QJHI.l9 ; 0x34e7
    cmp ax, strict word 3            ; 0x34e9
    je short @..api_idx_0008_QJHI.l10 ; 0x34ec
@..api_idx_0008_QJHI.l12:
    lea ax, word [bp - 0x0008]       ; 0x34ee
    push ax                          ; 0x34f1
    lea ax, word [bp - 0x0006]       ; 0x34f2
    push ax                          ; 0x34f5
    push word [bp - 0x0002]          ; 0x34f6
    call loc_RRJG                    ; 0x34f9
    add sp, byte 6                   ; 0x34fc
    mov ax, word [bp - 0x0008]       ; 0x34ff
    add ax, word [bp + 0x4]          ; 0x3502
    inc ax                           ; 0x3505
    mov cx, 4                        ; 0x3506
    cwd                              ; 0x3509
    idiv cx                          ; 0x350a
    mov word [bp - 0x0008], dx       ; 0x350c
    cmp dx, word [party_tag]         ; 0x350f
    je short @..api_idx_0008_QJHI.l13 ; 0x3513
    jmp near jumptable_3563_case_0   ; 0x3515
@..api_idx_0008_QJHI.l13:
    mov ax, word [bp - 0x0006]       ; 0x3518
    jmp short @..api_idx_0008_QJHI.l16 ; 0x351b
jumptable_3563_case_1:
    mov word [bp - 0x0004], 8        ; 0x351d
    jmp short jumptable_3563_case_0  ; 0x3522
jumptable_3563_case_2:
    mov word [bp - 0x0004], 9        ; 0x3524
    jmp short jumptable_3563_case_0  ; 0x3529
jumptable_3563_case_3:
    mov word [bp - 0x0004], 0xa      ; 0x352b
    jmp short jumptable_3563_case_0  ; 0x3530
jumptable_3563_case_4:
    mov word [bp - 0x0004], 0xb      ; 0x3532
    jmp short jumptable_3563_case_0  ; 0x3537
jumptable_3563_case_5:
    cmp word [bss_91d6], byte 0      ; 0x3539
    jne short @..api_idx_0008_QJHI.l14 ; 0x353e
    mov word [bp - 0x0004], 0xc      ; 0x3540
@..api_idx_0008_QJHI.l14:
    jmp short jumptable_3563_case_0  ; 0x3545
jumptable_3563_case_6:
    cmp word [bss_91d6], byte 0      ; 0x3547
    jne short @..api_idx_0008_QJHI.l15 ; 0x354c
    mov word [bp - 0x0004], 0xd      ; 0x354e
@..api_idx_0008_QJHI.l15:
    jmp short jumptable_3563_case_0  ; 0x3553
jumptable_3563_case_10:
    mov word [bp - 0x0004], 0xe      ; 0x3555
    jmp short jumptable_3563_case_0  ; 0x355a
jumptable_3563_case_11:
    mov word [bp - 0x0004], 0xf      ; 0x355c
    jmp short jumptable_3563_case_0  ; 0x3561
jumptable_3563:
    dw jumptable_3563_case_0 - IMAGE_BASE + __zres_end ; 0x3563
    dw jumptable_3563_case_1 - IMAGE_BASE + __zres_end ; 0x3565
    dw jumptable_3563_case_2 - IMAGE_BASE + __zres_end ; 0x3567
    dw jumptable_3563_case_3 - IMAGE_BASE + __zres_end ; 0x3569
    dw jumptable_3563_case_4 - IMAGE_BASE + __zres_end ; 0x356b
    dw jumptable_3563_case_5 - IMAGE_BASE + __zres_end ; 0x356d
    dw jumptable_3563_case_6 - IMAGE_BASE + __zres_end ; 0x356f
    dw jumptable_3563_case_0 - IMAGE_BASE + __zres_end ; 0x3571
    dw jumptable_3563_case_0 - IMAGE_BASE + __zres_end ; 0x3573
    dw jumptable_3563_case_0 - IMAGE_BASE + __zres_end ; 0x3575
    dw jumptable_3563_case_10 - IMAGE_BASE + __zres_end ; 0x3577
    dw jumptable_3563_case_11 - IMAGE_BASE + __zres_end ; 0x3579
@..api_idx_0008_QJHI.l16:
    cmp ax, strict word 0xc          ; 0x357b
    jae short jumptable_3563_case_0  ; 0x357e
    xchg bx, ax                      ; 0x3580
    shl bx, 1                        ; 0x3581
    jmp [cs:bx + jumptable_3563 - IMAGE_BASE + __zres_end] ; 0x3583
jumptable_3563_case_0:
    mov ax, word [bp - 0x0004]       ; 0x3588
    ret                              ; 0x358b
