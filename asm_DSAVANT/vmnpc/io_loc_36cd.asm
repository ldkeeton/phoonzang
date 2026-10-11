io_loc_36cd:
    push word [bp - 0x0026]          ; 0x36cd
    mov ax, 0x5842                   ; 0x36d0
    push ax                          ; 0x36d3
    call ds_dispatch_ec74            ; 0x36d4
    add sp, byte 4                   ; 0x36d7
    cmp ax, word [bp - 0x0028]       ; 0x36da
    jne short @..io_loc_36cd.l1      ; 0x36dd
    mov ax, 0                        ; 0x36df
    ret                              ; 0x36e2
@..io_loc_36cd.l1:
    mov ax, word [bp - 0x0026]       ; 0x36e3
    cmp ax, strict word 0xc          ; 0x36e6
    jne short @..io_loc_36cd.l2      ; 0x36e9
    cmp byte [bss_86c8], 0           ; 0x36eb
    jne short @..io_loc_36cd.l2      ; 0x36f0
    mov ax, 0                        ; 0x36f2
    ret                              ; 0x36f5
@..io_loc_36cd.l2:
    jmp short loc_3769               ; 0x36f6
jumptable_36f8:
    dw loc_2beb - IMAGE_BASE + 0x5055          ; 0x36f8
    dw loc_2bef - IMAGE_BASE + 0x5055          ; 0x36fa
    dw loc_2c12 - IMAGE_BASE + 0x5055          ; 0x36fc
    dw loc_2c2a - IMAGE_BASE + 0x5055          ; 0x36fe
    dw loc_2c61 - IMAGE_BASE + 0x5055          ; 0x3700
    dw loc_2d4f - IMAGE_BASE + 0x5055          ; 0x3702
    dw loc_2d5f - IMAGE_BASE + 0x5055          ; 0x3704
    dw loc_2dcf - IMAGE_BASE + 0x5055          ; 0x3706
    dw loc_2dde - IMAGE_BASE + 0x5055          ; 0x3708
    dw loc_2e2f - IMAGE_BASE + 0x5055          ; 0x370a
    dw loc_2e41 - IMAGE_BASE + 0x5055          ; 0x370c
    dw leaf_loc_2ebe - IMAGE_BASE + 0x5055     ; 0x370e
    dw loc_2f17 - IMAGE_BASE + 0x5055          ; 0x3710
    dw loc_302c - IMAGE_BASE + 0x5055          ; 0x3712
    dw loc_3092 - IMAGE_BASE + 0x5055          ; 0x3714
    dw loc_30b8 - IMAGE_BASE + 0x5055          ; 0x3716
    dw loc_30f6 - IMAGE_BASE + 0x5055          ; 0x3718
    dw loc_3114 - IMAGE_BASE + 0x5055          ; 0x371a
    dw loc_3147 - IMAGE_BASE + 0x5055          ; 0x371c
    dw loc_3168 - IMAGE_BASE + 0x5055          ; 0x371e
    dw loc_3188 - IMAGE_BASE + 0x5055          ; 0x3720
    dw loc_31a1 - IMAGE_BASE + 0x5055          ; 0x3722
    dw loc_31b9 - IMAGE_BASE + 0x5055          ; 0x3724
    dw loc_31b9 - IMAGE_BASE + 0x5055          ; 0x3726
    dw loc_3227 - IMAGE_BASE + 0x5055          ; 0x3728
    dw loc_323b - IMAGE_BASE + 0x5055          ; 0x372a
    dw loc_326c - IMAGE_BASE + 0x5055          ; 0x372c
    dw loc_329e - IMAGE_BASE + 0x5055          ; 0x372e
    dw loc_32c7 - IMAGE_BASE + 0x5055          ; 0x3730
    dw loc_32f1 - IMAGE_BASE + 0x5055          ; 0x3732
    dw loc_3316 - IMAGE_BASE + 0x5055          ; 0x3734
    dw loc_3339 - IMAGE_BASE + 0x5055          ; 0x3736
    dw loc_339e - IMAGE_BASE + 0x5055          ; 0x3738
    dw loc_3441 - IMAGE_BASE + 0x5055          ; 0x373a
    dw loc_34b2 - IMAGE_BASE + 0x5055          ; 0x373c
    dw loc_34ca - IMAGE_BASE + 0x5055          ; 0x373e
    dw loc_2c5c - IMAGE_BASE + 0x5055          ; 0x3740
    dw loc_34d4 - IMAGE_BASE + 0x5055          ; 0x3742
    dw loc_351b - IMAGE_BASE + 0x5055          ; 0x3744
    dw loc_353e - IMAGE_BASE + 0x5055          ; 0x3746
    dw loc_3542 - IMAGE_BASE + 0x5055          ; 0x3748
    dw loc_357c - IMAGE_BASE + 0x5055          ; 0x374a
    dw loc_35a5 - IMAGE_BASE + 0x5055          ; 0x374c
    dw loc_364c - IMAGE_BASE + 0x5055          ; 0x374e
    dw loc_367d - IMAGE_BASE + 0x5055          ; 0x3750
    dw loc_3686 - IMAGE_BASE + 0x5055          ; 0x3752
    dw loc_3699 - IMAGE_BASE + 0x5055          ; 0x3754
    dw loc_36aa - IMAGE_BASE + 0x5055          ; 0x3756
    dw io_loc_36b4 - IMAGE_BASE + 0x5055       ; 0x3758
    dw io_loc_36cd - IMAGE_BASE + 0x5055       ; 0x375a
loc_375c:
    cmp ax, strict word 0x32         ; 0x375c
    jae short loc_3769               ; 0x375f
    xchg bx, ax                      ; 0x3761
    shl bx, 1                        ; 0x3762
    jmp [cs:bx - 0x78c1]             ; 0x3764
loc_3769:
    inc word [bp - 0x0002]           ; 0x3769
    jmp near loc_2bbc                ; 0x376c
loc_376f:
    mov ax, 0                        ; 0x376f
    ret                              ; 0x3772
