; auto-generated
io_loc_RHUI:
    push word [bp - 0x0026]          ; 0x36cd
    mov ax, 0x5842                   ; 0x36d0
    push ax                          ; 0x36d3
    call ds_leaf_loc_KIMU            ; 0x36d4
    add sp, byte 4                   ; 0x36d7
    cmp ax, word [bp - 0x0028]       ; 0x36da
    jne short @..io_loc_RHUI.l1      ; 0x36dd
    mov ax, 0                        ; 0x36df
    ret                              ; 0x36e2
@..io_loc_RHUI.l1:
    mov ax, word [bp - 0x0026]       ; 0x36e3
    cmp ax, strict word 0xc          ; 0x36e6
    jne short @..io_loc_RHUI.l2      ; 0x36e9
    cmp byte [bss_86c8], 0           ; 0x36eb
    jne short @..io_loc_RHUI.l2      ; 0x36f0
    mov ax, 0                        ; 0x36f2
    ret                              ; 0x36f5
@..io_loc_RHUI.l2:
    jmp short loc_VISH               ; 0x36f6
jumptable_36f8:
    dw loc_KJNJ_2beb - IMAGE_BASE + 0x5055     ; 0x36f8
    dw loc_NTQP - IMAGE_BASE + 0x5055          ; 0x36fa
    dw loc_SNGK - IMAGE_BASE + 0x5055          ; 0x36fc
    dw loc_IQSH - IMAGE_BASE + 0x5055          ; 0x36fe
    dw loc_OGTO - IMAGE_BASE + 0x5055          ; 0x3700
    dw loc_PQNS - IMAGE_BASE + 0x5055          ; 0x3702
    dw loc_GLVO - IMAGE_BASE + 0x5055          ; 0x3704
    dw loc_PJGG - IMAGE_BASE + 0x5055          ; 0x3706
    dw loc_HUNU - IMAGE_BASE + 0x5055          ; 0x3708
    dw loc_IPJK - IMAGE_BASE + 0x5055          ; 0x370a
    dw loc_LLUQ - IMAGE_BASE + 0x5055          ; 0x370c
    dw leaf_loc_SHVJ - IMAGE_BASE + 0x5055     ; 0x370e
    dw loc_KHTO - IMAGE_BASE + 0x5055          ; 0x3710
    dw loc_TNNV - IMAGE_BASE + 0x5055          ; 0x3712
    dw loc_OSQH - IMAGE_BASE + 0x5055          ; 0x3714
    dw loc_MRGV - IMAGE_BASE + 0x5055          ; 0x3716
    dw loc_OQIM - IMAGE_BASE + 0x5055          ; 0x3718
    dw loc_OHPH - IMAGE_BASE + 0x5055          ; 0x371a
    dw loc_NQUQ - IMAGE_BASE + 0x5055          ; 0x371c
    dw loc_HUUI - IMAGE_BASE + 0x5055          ; 0x371e
    dw loc_UILI - IMAGE_BASE + 0x5055          ; 0x3720
    dw loc_QUKH - IMAGE_BASE + 0x5055          ; 0x3722
    dw loc_RVOO - IMAGE_BASE + 0x5055          ; 0x3724
    dw loc_RVOO - IMAGE_BASE + 0x5055          ; 0x3726
    dw loc_PPMM - IMAGE_BASE + 0x5055          ; 0x3728
    dw loc_VJRJ - IMAGE_BASE + 0x5055          ; 0x372a
    dw loc_TKRS - IMAGE_BASE + 0x5055          ; 0x372c
    dw loc_MRGR - IMAGE_BASE + 0x5055          ; 0x372e
    dw loc_NQIK - IMAGE_BASE + 0x5055          ; 0x3730
    dw loc_QIIT - IMAGE_BASE + 0x5055          ; 0x3732
    dw loc_STRO - IMAGE_BASE + 0x5055          ; 0x3734
    dw loc_INUM - IMAGE_BASE + 0x5055          ; 0x3736
    dw loc_VGNT - IMAGE_BASE + 0x5055          ; 0x3738
    dw loc_QIJV - IMAGE_BASE + 0x5055          ; 0x373a
    dw loc_ONGM - IMAGE_BASE + 0x5055          ; 0x373c
    dw loc_LTHI - IMAGE_BASE + 0x5055          ; 0x373e
    dw loc_LPSN - IMAGE_BASE + 0x5055          ; 0x3740
    dw loc_GIKT - IMAGE_BASE + 0x5055          ; 0x3742
    dw loc_PKOR - IMAGE_BASE + 0x5055          ; 0x3744
    dw loc_LNUO - IMAGE_BASE + 0x5055          ; 0x3746
    dw loc_VNPV - IMAGE_BASE + 0x5055          ; 0x3748
    dw loc_OROJ - IMAGE_BASE + 0x5055          ; 0x374a
    dw loc_PVUT - IMAGE_BASE + 0x5055          ; 0x374c
    dw loc_PJNR - IMAGE_BASE + 0x5055          ; 0x374e
    dw loc_TLGL - IMAGE_BASE + 0x5055          ; 0x3750
    dw loc_KILO - IMAGE_BASE + 0x5055          ; 0x3752
    dw loc_JHHL - IMAGE_BASE + 0x5055          ; 0x3754
    dw loc_SMVO - IMAGE_BASE + 0x5055          ; 0x3756
    dw io_loc_UKPL - IMAGE_BASE + 0x5055       ; 0x3758
    dw io_loc_RHUI - IMAGE_BASE + 0x5055       ; 0x375a
loc_GMLM:
    cmp ax, strict word 0x32         ; 0x375c
    jae short loc_VISH               ; 0x375f
    xchg bx, ax                      ; 0x3761
    shl bx, 1                        ; 0x3762
    jmp [cs:bx - 0x78c1]             ; 0x3764
loc_VISH:
    inc word [bp - 0x0002]           ; 0x3769
    jmp near loc_VJVT                ; 0x376c
loc_KJNJ_376f:
    mov ax, 0                        ; 0x376f
    ret                              ; 0x3772
