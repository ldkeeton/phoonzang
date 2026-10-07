api_idx_0038:
    mov ax, 0xffc8                   ; 0x0606
    call ds_dispatch_f40b            ; 0x0609
    mov word [data_904e], 0xffff     ; 0x060c
    mov word [bp - 0x0004], 0x37     ; 0x0612
    mov word [bp - 0x0006], 0x8f     ; 0x0617
    mov word [bp - 0x0008], 0x108    ; 0x061c
    mov word [bp - 0x000a], 0xc5     ; 0x0621
    mov word [bp - 0x0012], 0x16     ; 0x0626
    mov ax, 7                        ; 0x062b
    cmp word [bp + 0xc], byte 7      ; 0x062e
    jge short @..api_idx_0038.l1     ; 0x0632
    mov ax, word [bp + 0xc]          ; 0x0634
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax       ; 0x0637
    mov ax, 0x90b6                   ; 0x063a
    push ax                          ; 0x063d
    mov ax, word [bp - 0x000a]       ; 0x063e
    inc ax                           ; 0x0641
    push ax                          ; 0x0642
    mov ax, word [bp - 0x0008]       ; 0x0643
    inc ax                           ; 0x0646
    push ax                          ; 0x0647
    mov ax, word [bp - 0x0006]       ; 0x0648
    dec ax                           ; 0x064b
    push ax                          ; 0x064c
    mov ax, word [bp - 0x0004]       ; 0x064d
    dec ax                           ; 0x0650
    push ax                          ; 0x0651
    call ds_dispatch_c283            ; 0x0652
    add sp, byte 0x0a                ; 0x0655
    mov word [bp - 0x0038], ax       ; 0x0658
    push word [bp - 0x000a]          ; 0x065b
    push word [bp - 0x0008]          ; 0x065e
    push word [bp - 0x0006]          ; 0x0661
    push word [bp - 0x0004]          ; 0x0664
    call ds_dispatch_bc9a            ; 0x0667
    add sp, byte 8                   ; 0x066a
    lea ax, word [bp - 0x0036]       ; 0x066d
    push ax                          ; 0x0670
    push word [bp + 0x4]             ; 0x0671
    call ds_dispatch_b53b            ; 0x0674
    add sp, byte 4                   ; 0x0677
    lea ax, word [bp - 0x0036]       ; 0x067a
    push ax                          ; 0x067d
    push word [bp + 0x6]             ; 0x067e
    mov ax, 1                        ; 0x0681
    push ax                          ; 0x0684
    mov ax, 0xc                      ; 0x0685
    push ax                          ; 0x0688
    mov ax, word [bp - 0x0006]       ; 0x0689
    add ax, strict word 7            ; 0x068c
    push ax                          ; 0x068f
    mov ax, word [bp - 0x0004]       ; 0x0690
    add ax, strict word 8            ; 0x0693
    push ax                          ; 0x0696
    call ds_dispatch_c0c1            ; 0x0697
    add sp, byte 0x0c                ; 0x069a
    lea ax, word [bp - 0x0036]       ; 0x069d
    push ax                          ; 0x06a0
    mov ax, word [bp + 0x4]          ; 0x06a1
    inc ax                           ; 0x06a4
    push ax                          ; 0x06a5
    call ds_dispatch_b53b            ; 0x06a6
    add sp, byte 4                   ; 0x06a9
    lea ax, word [bp - 0x0036]       ; 0x06ac
    push ax                          ; 0x06af
    push word [bp + 0x8]             ; 0x06b0
    mov ax, 1                        ; 0x06b3
    push ax                          ; 0x06b6
    mov ax, 0xc                      ; 0x06b7
    push ax                          ; 0x06ba
    mov ax, word [bp - 0x0006]       ; 0x06bb
    add ax, strict word 0x17         ; 0x06be
    push ax                          ; 0x06c1
    mov ax, word [bp - 0x0004]       ; 0x06c2
    add ax, strict word 8            ; 0x06c5
    push ax                          ; 0x06c8
    call ds_dispatch_c0c1            ; 0x06c9
    add sp, byte 0x0c                ; 0x06cc
    lea ax, word [bp - 0x0036]       ; 0x06cf
    push ax                          ; 0x06d2
    mov ax, word [bp + 0x4]          ; 0x06d3
    inc ax                           ; 0x06d6
    inc ax                           ; 0x06d7
    push ax                          ; 0x06d8
    call ds_dispatch_b53b            ; 0x06d9
    add sp, byte 4                   ; 0x06dc
    lea ax, word [bp - 0x0036]       ; 0x06df
    push ax                          ; 0x06e2
    push word [bp + 0xa]             ; 0x06e3
    mov ax, 1                        ; 0x06e6
    push ax                          ; 0x06e9
    mov ax, 0xc                      ; 0x06ea
    push ax                          ; 0x06ed
    mov ax, word [bp - 0x0006]       ; 0x06ee
    add ax, strict word 0x27         ; 0x06f1
    push ax                          ; 0x06f4
    mov ax, word [bp - 0x0004]       ; 0x06f5
    add ax, strict word 8            ; 0x06f8
    push ax                          ; 0x06fb
    call ds_dispatch_c0c1            ; 0x06fc
    add sp, byte 0x0c                ; 0x06ff
    mov word [bp - 0x0016], 0        ; 0x0702
    mov word [bp - 0x0020], 0xffff   ; 0x0707
    push word [bp - 0x0022]          ; 0x070c
    push word [bp - 0x0020]          ; 0x070f
    push word [bp - 0x0016]          ; 0x0712
    mov ax, 7                        ; 0x0715
    push ax                          ; 0x0718
    mov ax, 0xf                      ; 0x0719
    push ax                          ; 0x071c
    mov ax, word [bp - 0x0006]       ; 0x071d
    add ax, strict word 6            ; 0x0720
    push ax                          ; 0x0723
    mov ax, word [bp - 0x0004]       ; 0x0724
    add ax, strict word 0x5d         ; 0x0727
    push ax                          ; 0x072a
    call ds_dispatch_bf97            ; 0x072b
    add sp, byte 0x0e                ; 0x072e
    mov word [bp - 0x0010], 0        ; 0x0731
    push word [bp - 0x0010]          ; 0x0736
    mov ax, 7                        ; 0x0739
    push ax                          ; 0x073c
    mov ax, 8                        ; 0x073d
    push ax                          ; 0x0740
    mov ax, word [bp - 0x0006]       ; 0x0741
    add ax, strict word 6            ; 0x0744
    push ax                          ; 0x0747
    mov ax, word [bp - 0x0004]       ; 0x0748
    add ax, 0xc1                     ; 0x074b
    push ax                          ; 0x074e
    call ds_dispatch_bfd8            ; 0x074f
    add sp, byte 0x0a                ; 0x0752
    mov ax, 0                        ; 0x0755
    push ax                          ; 0x0758
    push ax                          ; 0x0759
    mov ax, word [bp - 0x0006]       ; 0x075a
    add ax, word [bp - 0x0010]       ; 0x075d
    add ax, strict word 0x12         ; 0x0760
    push ax                          ; 0x0763
    mov ax, word [bp - 0x0004]       ; 0x0764
    add ax, 0xc9                     ; 0x0767
    push ax                          ; 0x076a
    mov ax, word [bp - 0x0006]       ; 0x076b
    add ax, word [bp - 0x0010]       ; 0x076e
    add ax, strict word 0xe          ; 0x0771
    push ax                          ; 0x0774
    mov ax, word [bp - 0x0004]       ; 0x0775
    add ax, 0xc1                     ; 0x0778
    push ax                          ; 0x077b
    mov ax, 0                        ; 0x077c
    push ax                          ; 0x077f
    call ds_dispatch_baa6            ; 0x0780
    add sp, byte 0x0e                ; 0x0783
    mov ax, 0                        ; 0x0786
    push ax                          ; 0x0789
    mov ax, 9                        ; 0x078a
    push ax                          ; 0x078d
    mov ax, word [bp - 0x0006]       ; 0x078e
    add ax, strict word 0xc          ; 0x0791
    push ax                          ; 0x0794
    mov ax, word [bp - 0x0004]       ; 0x0795
    add ax, 0xc9                     ; 0x0798
    push ax                          ; 0x079b
    mov ax, word [bp - 0x0006]       ; 0x079c
    add ax, strict word 6            ; 0x079f
    push ax                          ; 0x07a2
    mov ax, word [bp - 0x0004]       ; 0x07a3
    add ax, 0xc1                     ; 0x07a6
    push ax                          ; 0x07a9
    mov ax, 1                        ; 0x07aa
    push ax                          ; 0x07ad
    call ds_dispatch_baa6            ; 0x07ae
    add sp, byte 0x0e                ; 0x07b1
    mov ax, 0                        ; 0x07b4
    push ax                          ; 0x07b7
    mov ax, 0xb                      ; 0x07b8
    push ax                          ; 0x07bb
    mov ax, word [bp - 0x0006]       ; 0x07bc
    add ax, strict word 0x30         ; 0x07bf
    push ax                          ; 0x07c2
    mov ax, word [bp - 0x0004]       ; 0x07c3
    add ax, 0xc9                     ; 0x07c6
    push ax                          ; 0x07c9
    mov ax, word [bp - 0x0006]       ; 0x07ca
    add ax, strict word 0x2a         ; 0x07cd
    push ax                          ; 0x07d0
    mov ax, word [bp - 0x0004]       ; 0x07d1
    add ax, 0xc1                     ; 0x07d4
    push ax                          ; 0x07d7
    mov ax, data_0002                ; 0x07d8
    push ax                          ; 0x07db
    call ds_dispatch_baa6            ; 0x07dc
    add sp, byte 0x0e                ; 0x07df
    mov ax, 0                        ; 0x07e2
    push ax                          ; 0x07e5
    push ax                          ; 0x07e6
    mov ax, word [bp - 0x0006]       ; 0x07e7
    add ax, strict word 0xf          ; 0x07ea
    push ax                          ; 0x07ed
    mov ax, word [bp - 0x0004]       ; 0x07ee
    add ax, strict word 0x50         ; 0x07f1
    push ax                          ; 0x07f4
    mov ax, word [bp - 0x0006]       ; 0x07f5
    add ax, strict word 7            ; 0x07f8
    push ax                          ; 0x07fb
    mov ax, word [bp - 0x0004]       ; 0x07fc
    add ax, strict word 8            ; 0x07ff
    push ax                          ; 0x0802
    mov ax, 3                        ; 0x0803
