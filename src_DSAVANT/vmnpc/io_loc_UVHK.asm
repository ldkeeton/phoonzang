; auto-generated
io_loc_UVHK:
    push word [bp - 0x0026]          ; 0x36cd
    mov ax, 0x5842                   ; 0x36d0
    push ax                          ; 0x36d3
    call ds_leaf_loc_PRVP            ; 0x36d4
    add sp, byte 4                   ; 0x36d7
    cmp ax, word [bp - 0x0028]       ; 0x36da
    jne short @..io_loc_UVHK.l1      ; 0x36dd
    mov ax, 0                        ; 0x36df
    ret                              ; 0x36e2
@..io_loc_UVHK.l1:
    mov ax, word [bp - 0x0026]       ; 0x36e3
    cmp ax, strict word 0xc          ; 0x36e6
    jne short @..io_loc_UVHK.l2      ; 0x36e9
    cmp byte [bss_86c8], 0           ; 0x36eb
    jne short @..io_loc_UVHK.l2      ; 0x36f0
    mov ax, 0                        ; 0x36f2
    ret                              ; 0x36f5
@..io_loc_UVHK.l2:
    jmp short loc_LHOV               ; 0x36f6
jumptable_36f8:
    dw loc_PKOU_2beb - IMAGE_BASE + 0x5055     ; 0x36f8
    dw loc_UKSK_2bef - IMAGE_BASE + 0x5055     ; 0x36fa
    dw loc_KNMJ - IMAGE_BASE + 0x5055          ; 0x36fc
    dw loc_TULK - IMAGE_BASE + 0x5055          ; 0x36fe
    dw loc_LVLH - IMAGE_BASE + 0x5055          ; 0x3700
    dw loc_QGJM - IMAGE_BASE + 0x5055          ; 0x3702
    dw loc_UKSK_2d5f - IMAGE_BASE + 0x5055     ; 0x3704
    dw loc_SORI - IMAGE_BASE + 0x5055          ; 0x3706
    dw loc_LHSO - IMAGE_BASE + 0x5055          ; 0x3708
    dw loc_KKIK - IMAGE_BASE + 0x5055          ; 0x370a
    dw loc_TRTS - IMAGE_BASE + 0x5055          ; 0x370c
    dw leaf_loc_VHTI - IMAGE_BASE + 0x5055     ; 0x370e
    dw loc_JKPQ - IMAGE_BASE + 0x5055          ; 0x3710
    dw loc_UGKS - IMAGE_BASE + 0x5055          ; 0x3712
    dw loc_KQLJ - IMAGE_BASE + 0x5055          ; 0x3714
    dw loc_TKGH - IMAGE_BASE + 0x5055          ; 0x3716
    dw loc_SVTJ - IMAGE_BASE + 0x5055          ; 0x3718
    dw loc_PVSU - IMAGE_BASE + 0x5055          ; 0x371a
    dw loc_NIUP - IMAGE_BASE + 0x5055          ; 0x371c
    dw loc_HMIK - IMAGE_BASE + 0x5055          ; 0x371e
    dw loc_LJTS - IMAGE_BASE + 0x5055          ; 0x3720
    dw loc_OOVH - IMAGE_BASE + 0x5055          ; 0x3722
    dw loc_NSON - IMAGE_BASE + 0x5055          ; 0x3724
    dw loc_NSON - IMAGE_BASE + 0x5055          ; 0x3726
    dw loc_INIQ - IMAGE_BASE + 0x5055          ; 0x3728
    dw loc_SUNS - IMAGE_BASE + 0x5055          ; 0x372a
    dw loc_VOQO - IMAGE_BASE + 0x5055          ; 0x372c
    dw loc_VISS - IMAGE_BASE + 0x5055          ; 0x372e
    dw loc_OTNP - IMAGE_BASE + 0x5055          ; 0x3730
    dw loc_RPRI - IMAGE_BASE + 0x5055          ; 0x3732
    dw loc_UUTO - IMAGE_BASE + 0x5055          ; 0x3734
    dw loc_MVNN - IMAGE_BASE + 0x5055          ; 0x3736
    dw loc_HQIT - IMAGE_BASE + 0x5055          ; 0x3738
    dw loc_SVHK - IMAGE_BASE + 0x5055          ; 0x373a
    dw loc_VSHN - IMAGE_BASE + 0x5055          ; 0x373c
    dw loc_PRPU - IMAGE_BASE + 0x5055          ; 0x373e
    dw loc_ORGQ - IMAGE_BASE + 0x5055          ; 0x3740
    dw loc_THJR - IMAGE_BASE + 0x5055          ; 0x3742
    dw loc_UUKT - IMAGE_BASE + 0x5055          ; 0x3744
    dw loc_HIVO - IMAGE_BASE + 0x5055          ; 0x3746
    dw loc_HPHJ - IMAGE_BASE + 0x5055          ; 0x3748
    dw loc_PUGH - IMAGE_BASE + 0x5055          ; 0x374a
    dw loc_GRGS - IMAGE_BASE + 0x5055          ; 0x374c
    dw loc_KMRI - IMAGE_BASE + 0x5055          ; 0x374e
    dw loc_SUOT - IMAGE_BASE + 0x5055          ; 0x3750
    dw loc_RGJG - IMAGE_BASE + 0x5055          ; 0x3752
    dw loc_OSIR - IMAGE_BASE + 0x5055          ; 0x3754
    dw loc_TOHU - IMAGE_BASE + 0x5055          ; 0x3756
    dw io_loc_MUNJ - IMAGE_BASE + 0x5055       ; 0x3758
    dw io_loc_UVHK - IMAGE_BASE + 0x5055       ; 0x375a
loc_QQKN:
    cmp ax, strict word 0x32         ; 0x375c
    jae short loc_LHOV               ; 0x375f
    xchg bx, ax                      ; 0x3761
    shl bx, 1                        ; 0x3762
    jmp [cs:bx - 0x78c1]             ; 0x3764
loc_LHOV:
    inc word [bp - 0x0002]           ; 0x3769
    jmp near loc_KJGI                ; 0x376c
loc_PKOU_376f:
    mov ax, 0                        ; 0x376f
    ret                              ; 0x3772
