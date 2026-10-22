; auto-generated
api_idx_0002_VNLG:
    mov ax, 0xfffe                   ; 0x0262
    call aztec_csav                  ; 0x0265
    mov word [bss_9188], 0           ; 0x0268
    mov ax, word [game_state_arg]    ; 0x026e
    jmp short @..api_idx_0002_VNLG.l1 ; 0x0271
jumptable_02a3_case_15:
    mov word [bp - 0x0002], 1        ; 0x0273
    jmp short @..api_idx_0002_VNLG.l2 ; 0x0278
jumptable_02a3_case_0:
    mov word [bp - 0x0002], 2        ; 0x027a
    jmp short @..api_idx_0002_VNLG.l2 ; 0x027f
jumptable_02a3_case_14:
    mov word [bp - 0x0002], 3        ; 0x0281
    jmp short @..api_idx_0002_VNLG.l2 ; 0x0286
jumptable_02a3_case_27:
    mov word [bss_9188], 1           ; 0x0288
jumptable_02a3_case_7:
    mov word [bp - 0x0002], 4        ; 0x028e
    jmp short @..api_idx_0002_VNLG.l2 ; 0x0293
jumptable_02a3_case_22:
    mov word [bp - 0x0002], 5        ; 0x0295
    jmp short @..api_idx_0002_VNLG.l2 ; 0x029a
jumptable_02a3_case_8:
    mov word [bp - 0x0002], 6        ; 0x029c
    jmp short @..api_idx_0002_VNLG.l2 ; 0x02a1
jumptable_02a3:
    dw jumptable_02a3_case_0 - IMAGE_BASE + __zres_end ; 0x02a3
    dw jumptable_02a3_case_0 - IMAGE_BASE + __zres_end ; 0x02a5
    dw jumptable_02a3_case_0 - IMAGE_BASE + __zres_end ; 0x02a7
    dw jumptable_02a3_case_0 - IMAGE_BASE + __zres_end ; 0x02a9
    dw jumptable_02a3_case_0 - IMAGE_BASE + __zres_end ; 0x02ab
    dw jumptable_02a3_case_0 - IMAGE_BASE + __zres_end ; 0x02ad
    dw jumptable_02a3_case_0 - IMAGE_BASE + __zres_end ; 0x02af
    dw jumptable_02a3_case_7 - IMAGE_BASE + __zres_end ; 0x02b1
    dw jumptable_02a3_case_8 - IMAGE_BASE + __zres_end ; 0x02b3
    dw jumptable_02a3_case_8 - IMAGE_BASE + __zres_end ; 0x02b5
    dw jumptable_02a3_case_8 - IMAGE_BASE + __zres_end ; 0x02b7
    dw jumptable_02a3_case_8 - IMAGE_BASE + __zres_end ; 0x02b9
    dw jumptable_02a3_case_8 - IMAGE_BASE + __zres_end ; 0x02bb
    dw jumptable_02a3_case_0 - IMAGE_BASE + __zres_end ; 0x02bd
    dw jumptable_02a3_case_14 - IMAGE_BASE + __zres_end ; 0x02bf
    dw jumptable_02a3_case_15 - IMAGE_BASE + __zres_end ; 0x02c1
    dw jumptable_02a3_case_14 - IMAGE_BASE + __zres_end ; 0x02c3
    dw jumptable_02a3_case_15 - IMAGE_BASE + __zres_end ; 0x02c5
    dw jumptable_02a3_case_14 - IMAGE_BASE + __zres_end ; 0x02c7
    dw jumptable_02a3_case_14 - IMAGE_BASE + __zres_end ; 0x02c9
    dw jumptable_02a3_case_14 - IMAGE_BASE + __zres_end ; 0x02cb
    dw jumptable_02a3_case_14 - IMAGE_BASE + __zres_end ; 0x02cd
    dw jumptable_02a3_case_22 - IMAGE_BASE + __zres_end ; 0x02cf
    dw jumptable_02a3_case_15 - IMAGE_BASE + __zres_end ; 0x02d1
    dw jumptable_02a3_case_15 - IMAGE_BASE + __zres_end ; 0x02d3
    dw jumptable_02a3_case_22 - IMAGE_BASE + __zres_end ; 0x02d5
    dw jumptable_02a3_case_15 - IMAGE_BASE + __zres_end ; 0x02d7
    dw jumptable_02a3_case_27 - IMAGE_BASE + __zres_end ; 0x02d9
    dw jumptable_02a3_case_22 - IMAGE_BASE + __zres_end ; 0x02db
    dw jumptable_02a3_case_15 - IMAGE_BASE + __zres_end ; 0x02dd
    dw jumptable_02a3_case_15 - IMAGE_BASE + __zres_end ; 0x02df
    dw jumptable_02a3_case_14 - IMAGE_BASE + __zres_end ; 0x02e1
@..api_idx_0002_VNLG.l1:
    cmp ax, strict word 0x20         ; 0x02e3
    jae short @..api_idx_0002_VNLG.l2 ; 0x02e6
    xchg bx, ax                      ; 0x02e8
    shl bx, 1                        ; 0x02e9
    jmp [cs:bx + jumptable_02a3 - IMAGE_BASE + __zres_end] ; 0x02eb
@..api_idx_0002_VNLG.l2:
    cmp word [maze_state], byte 0    ; 0x02f0
    je short @..api_idx_0002_VNLG.l3 ; 0x02f5
    mov ax, word [bp - 0x0002]       ; 0x02f7
    cmp ax, word [maze_variant]      ; 0x02fa
    jne short @..api_idx_0002_VNLG.l3 ; 0x02fe
    jmp near @..api_idx_0002_VNLG.l5 ; 0x0300
@..api_idx_0002_VNLG.l3:
    call free_current_maze           ; 0x0303
    mov ax, word [bp - 0x0002]       ; 0x0306
    mov word [maze_variant], ax      ; 0x0309
    jmp near @..api_idx_0002_VNLG.l4 ; 0x030c
jumptable_052d_case_1:
    mov ax, 0                        ; 0x030f
    push ax                          ; 0x0312
    mov ax, dseg_9098                ; 0x0313
    push ax                          ; 0x0316
    call api_idx_0002_OTTG           ; 0x0317
    add sp, byte 4                   ; 0x031a
    mov ax, 5                        ; 0x031d
    push ax                          ; 0x0320
    mov ax, dseg_90a5                ; 0x0321
    push ax                          ; 0x0324
    call api_idx_0002_OTTG           ; 0x0325
    add sp, byte 4                   ; 0x0328
    mov ax, 5                        ; 0x032b
    push ax                          ; 0x032e
    mov ax, 6                        ; 0x032f
    push ax                          ; 0x0332
    call ds_app_file_TSNH            ; 0x0333
    add sp, byte 4                   ; 0x0336
    mov ax, 9                        ; 0x0339
    push ax                          ; 0x033c
    mov ax, 0xf                      ; 0x033d
    push ax                          ; 0x0340
    call ds_app_file_TSNH            ; 0x0341
    add sp, byte 4                   ; 0x0344
    mov ax, 0xa                      ; 0x0347
    push ax                          ; 0x034a
    mov ax, 0x10                     ; 0x034b
    push ax                          ; 0x034e
    call ds_app_file_TSNH            ; 0x034f
    add sp, byte 4                   ; 0x0352
    mov ax, 0xd                      ; 0x0355
    push ax                          ; 0x0358
    mov ax, 0x39                     ; 0x0359
    push ax                          ; 0x035c
    call ds_app_file_TSNH            ; 0x035d
    add sp, byte 4                   ; 0x0360
    mov word [current_maze], 0       ; 0x0363
    jmp near @..api_idx_0002_VNLG.l5 ; 0x0369
jumptable_052d_case_2:
    mov ax, 1                        ; 0x036c
    push ax                          ; 0x036f
    mov ax, dseg_90b2                ; 0x0370
    push ax                          ; 0x0373
    call api_idx_0002_OTTG           ; 0x0374
    add sp, byte 4                   ; 0x0377
    mov ax, 4                        ; 0x037a
    push ax                          ; 0x037d
    mov ax, dseg_90bf                ; 0x037e
    push ax                          ; 0x0381
    call api_idx_0002_OTTG           ; 0x0382
    add sp, byte 4                   ; 0x0385
    mov ax, 6                        ; 0x0388
    push ax                          ; 0x038b
    mov ax, dseg_90cc                ; 0x038c
    push ax                          ; 0x038f
    call api_idx_0002_OTTG           ; 0x0390
    add sp, byte 4                   ; 0x0393
    mov ax, 0xd                      ; 0x0396
    push ax                          ; 0x0399
    mov ax, 0x3a                     ; 0x039a
    push ax                          ; 0x039d
    call ds_app_file_TSNH            ; 0x039e
    add sp, byte 4                   ; 0x03a1
    mov word [current_maze], 1       ; 0x03a4
    jmp near @..api_idx_0002_VNLG.l5 ; 0x03aa
jumptable_052d_case_3:
    mov ax, 2                        ; 0x03ad
    push ax                          ; 0x03b0
    mov ax, dseg_90d9                ; 0x03b1
    push ax                          ; 0x03b4
    call api_idx_0002_OTTG           ; 0x03b5
    add sp, byte 4                   ; 0x03b8
    mov ax, 4                        ; 0x03bb
    push ax                          ; 0x03be
    mov ax, dseg_90e6                ; 0x03bf
    push ax                          ; 0x03c2
    call api_idx_0002_OTTG           ; 0x03c3
    add sp, byte 4                   ; 0x03c6
    mov ax, 5                        ; 0x03c9
    push ax                          ; 0x03cc
    mov ax, dseg_90f3                ; 0x03cd
    push ax                          ; 0x03d0
    call api_idx_0002_OTTG           ; 0x03d1
    add sp, byte 4                   ; 0x03d4
    mov ax, 6                        ; 0x03d7
    push ax                          ; 0x03da
    mov ax, dseg_9100                ; 0x03db
    push ax                          ; 0x03de
    call api_idx_0002_OTTG           ; 0x03df
    add sp, byte 4                   ; 0x03e2
    mov ax, 5                        ; 0x03e5
    push ax                          ; 0x03e8
    mov ax, 8                        ; 0x03e9
    push ax                          ; 0x03ec
    call ds_app_file_TSNH            ; 0x03ed
    add sp, byte 4                   ; 0x03f0
    mov ax, 0xa                      ; 0x03f3
    push ax                          ; 0x03f6
    mov ax, 0x10                     ; 0x03f7
    push ax                          ; 0x03fa
    call ds_app_file_TSNH            ; 0x03fb
    add sp, byte 4                   ; 0x03fe
    mov ax, 0xb                      ; 0x0401
    push ax                          ; 0x0404
    mov ax, 0x11                     ; 0x0405
    push ax                          ; 0x0408
    call ds_app_file_TSNH            ; 0x0409
    add sp, byte 4                   ; 0x040c
    mov ax, 0xc                      ; 0x040f
    push ax                          ; 0x0412
    mov ax, 0x3b                     ; 0x0413
    push ax                          ; 0x0416
    call ds_app_file_TSNH            ; 0x0417
    add sp, byte 4                   ; 0x041a
    mov word [current_maze], 2       ; 0x041d
    jmp near @..api_idx_0002_VNLG.l5 ; 0x0423
jumptable_052d_case_4:
    mov ax, 1                        ; 0x0426
    push ax                          ; 0x0429
    mov ax, dseg_910d                ; 0x042a
    push ax                          ; 0x042d
    call api_idx_0002_OTTG           ; 0x042e
    add sp, byte 4                   ; 0x0431
    mov ax, 4                        ; 0x0434
    push ax                          ; 0x0437
    mov ax, dseg_911a                ; 0x0438
    push ax                          ; 0x043b
    call api_idx_0002_OTTG           ; 0x043c
    add sp, byte 4                   ; 0x043f
    mov ax, 0xd                      ; 0x0442
    push ax                          ; 0x0445
    mov ax, 0x3a                     ; 0x0446
    push ax                          ; 0x0449
    call ds_app_file_TSNH            ; 0x044a
    add sp, byte 4                   ; 0x044d
    mov word [current_maze], 1       ; 0x0450
    jmp near @..api_idx_0002_VNLG.l5 ; 0x0456
jumptable_052d_case_5:
    mov ax, 2                        ; 0x0459
    push ax                          ; 0x045c
    mov ax, dseg_9127                ; 0x045d
    push ax                          ; 0x0460
    call api_idx_0002_OTTG           ; 0x0461
    add sp, byte 4                   ; 0x0464
    mov ax, 4                        ; 0x0467
    push ax                          ; 0x046a
    mov ax, dseg_9134                ; 0x046b
    push ax                          ; 0x046e
    call api_idx_0002_OTTG           ; 0x046f
    add sp, byte 4                   ; 0x0472
    mov ax, 5                        ; 0x0475
    push ax                          ; 0x0478
    mov ax, dseg_9141                ; 0x0479
    push ax                          ; 0x047c
    call api_idx_0002_OTTG           ; 0x047d
    add sp, byte 4                   ; 0x0480
    mov ax, 0xa                      ; 0x0483
    push ax                          ; 0x0486
    mov ax, 0x10                     ; 0x0487
    push ax                          ; 0x048a
    call ds_app_file_TSNH            ; 0x048b
    add sp, byte 4                   ; 0x048e
    mov ax, 0xb                      ; 0x0491
    push ax                          ; 0x0494
    mov ax, 0x36                     ; 0x0495
    push ax                          ; 0x0498
    call ds_app_file_TSNH            ; 0x0499
    add sp, byte 4                   ; 0x049c
    mov ax, 0xc                      ; 0x049f
    push ax                          ; 0x04a2
    mov ax, 0x3b                     ; 0x04a3
    push ax                          ; 0x04a6
    call ds_app_file_TSNH            ; 0x04a7
    add sp, byte 4                   ; 0x04aa
    mov ax, 9                        ; 0x04ad
    push ax                          ; 0x04b0
    mov ax, 0x53                     ; 0x04b1
    push ax                          ; 0x04b4
    call ds_app_file_TSNH            ; 0x04b5
    add sp, byte 4                   ; 0x04b8
    mov ax, 0xd                      ; 0x04bb
    push ax                          ; 0x04be
    mov ax, 0x38                     ; 0x04bf
    push ax                          ; 0x04c2
    call ds_app_file_TSNH            ; 0x04c3
    add sp, byte 4                   ; 0x04c6
    mov word [current_maze], 2       ; 0x04c9
    jmp short @..api_idx_0002_VNLG.l5 ; 0x04cf
jumptable_052d_case_6:
    mov ax, 1                        ; 0x04d1
    push ax                          ; 0x04d4
    mov ax, dseg_914e                ; 0x04d5
    push ax                          ; 0x04d8
    call api_idx_0002_OTTG           ; 0x04d9
    add sp, byte 4                   ; 0x04dc
    mov ax, 4                        ; 0x04df
    push ax                          ; 0x04e2
    mov ax, dseg_915b                ; 0x04e3
    push ax                          ; 0x04e6
    call api_idx_0002_OTTG           ; 0x04e7
    add sp, byte 4                   ; 0x04ea
    mov ax, 5                        ; 0x04ed
    push ax                          ; 0x04f0
    mov ax, dseg_9168                ; 0x04f1
    push ax                          ; 0x04f4
    call api_idx_0002_OTTG           ; 0x04f5
    add sp, byte 4                   ; 0x04f8
    mov ax, 0xc                      ; 0x04fb
    push ax                          ; 0x04fe
    mov ax, 0x3b                     ; 0x04ff
    push ax                          ; 0x0502
    call ds_app_file_TSNH            ; 0x0503
    add sp, byte 4                   ; 0x0506
    mov ax, 9                        ; 0x0509
    push ax                          ; 0x050c
    mov ax, 0x53                     ; 0x050d
    push ax                          ; 0x0510
    call ds_app_file_TSNH            ; 0x0511
    add sp, byte 4                   ; 0x0514
    mov ax, 0xd                      ; 0x0517
    push ax                          ; 0x051a
    mov ax, 0x3a                     ; 0x051b
    push ax                          ; 0x051e
    call ds_app_file_TSNH            ; 0x051f
    add sp, byte 4                   ; 0x0522
    mov word [current_maze], 1       ; 0x0525
    jmp short @..api_idx_0002_VNLG.l5 ; 0x052b
jumptable_052d:
    dw jumptable_052d_case_0 - IMAGE_BASE + __zres_end ; 0x052d
    dw jumptable_052d_case_1 - IMAGE_BASE + __zres_end ; 0x052f
    dw jumptable_052d_case_2 - IMAGE_BASE + __zres_end ; 0x0531
    dw jumptable_052d_case_3 - IMAGE_BASE + __zres_end ; 0x0533
    dw jumptable_052d_case_4 - IMAGE_BASE + __zres_end ; 0x0535
    dw jumptable_052d_case_5 - IMAGE_BASE + __zres_end ; 0x0537
    dw jumptable_052d_case_6 - IMAGE_BASE + __zres_end ; 0x0539
@..api_idx_0002_VNLG.l4:
    cmp ax, strict word 7            ; 0x053b
    jae short @..api_idx_0002_VNLG.l5 ; 0x053e
    xchg bx, ax                      ; 0x0540
    shl bx, 1                        ; 0x0541
    jmp [cs:bx + jumptable_052d - IMAGE_BASE + __zres_end] ; 0x0543
jumptable_052d_case_0:
@..api_idx_0002_VNLG.l5:
    mov word [maze_state], 1         ; 0x0548
    ret                              ; 0x054e
loc_HVLG:
    mov ax, 0                        ; 0x054f
    call aztec_csav                  ; 0x0552
    les bx, word [tick_counter_ptr]  ; 0x0555
    mov ax, word [es:bx]             ; 0x0559
    mov dx, word [es:bx + 0x2]       ; 0x055c
    sub ax, word [party_redraw_last_tick] ; 0x0560
    sbb dx, word [bss_908c]          ; 0x0564
    push ax                          ; 0x0568
    push dx                          ; 0x0569
    mov ax, word [bss_9180]          ; 0x056a
    cwd                              ; 0x056d
    mov cx, ax                       ; 0x056e
    mov bx, dx                       ; 0x0570
    pop dx                           ; 0x0572
    pop ax                           ; 0x0573
    cmp dx, bx                       ; 0x0574
    jl short @..loc_HVLG.l1          ; 0x0576
    jne short @..loc_HVLG.l2         ; 0x0578
    cmp ax, cx                       ; 0x057a
    jae short @..loc_HVLG.l2         ; 0x057c
@..loc_HVLG.l1:
    jmp short @..loc_HVLG.l3         ; 0x057e
@..loc_HVLG.l2:
    les bx, word [tick_counter_ptr]  ; 0x0580
    mov ax, word [es:bx]             ; 0x0584
    mov dx, word [es:bx + 0x2]       ; 0x0587
    mov word [bss_908c], dx          ; 0x058b
    mov word [party_redraw_last_tick], ax ; 0x058f
    mov ax, 1                        ; 0x0592
    ret                              ; 0x0595
@..loc_HVLG.l3:
    mov ax, 0                        ; 0x0596
    ret                              ; 0x0599
