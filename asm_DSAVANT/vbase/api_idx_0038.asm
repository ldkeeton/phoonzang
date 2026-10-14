; auto-generated
api_idx_0038:
    mov ax, 0xffc8                   ; 0x0606
    call aztec_csav                  ; 0x0609
    mov word [bss_904e], 0xffff      ; 0x060c
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
    call ds_app_file_14ca            ; 0x0652
    add sp, byte 0x0a                ; 0x0655
    mov word [bp - 0x0038], ax       ; 0x0658
    push word [bp - 0x000a]          ; 0x065b
    push word [bp - 0x0008]          ; 0x065e
    push word [bp - 0x0006]          ; 0x0661
    push word [bp - 0x0004]          ; 0x0664
    call ds_app_0ee1                 ; 0x0667
    add sp, byte 8                   ; 0x066a
    lea ax, word [bp - 0x0036]       ; 0x066d
    push ax                          ; 0x0670
    push word [bp + 0x4]             ; 0x0671
    call ds_app_mem_0782             ; 0x0674
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
    call ds_app_string_1308          ; 0x0697
    add sp, byte 0x0c                ; 0x069a
    lea ax, word [bp - 0x0036]       ; 0x069d
    push ax                          ; 0x06a0
    mov ax, word [bp + 0x4]          ; 0x06a1
    inc ax                           ; 0x06a4
    push ax                          ; 0x06a5
    call ds_app_mem_0782             ; 0x06a6
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
    call ds_app_string_1308          ; 0x06c9
    add sp, byte 0x0c                ; 0x06cc
    lea ax, word [bp - 0x0036]       ; 0x06cf
    push ax                          ; 0x06d2
    mov ax, word [bp + 0x4]          ; 0x06d3
    inc ax                           ; 0x06d6
    inc ax                           ; 0x06d7
    push ax                          ; 0x06d8
    call ds_app_mem_0782             ; 0x06d9
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
    call ds_app_string_1308          ; 0x06fc
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
    call ds_app_11de                 ; 0x072b
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
    call ds_app_121f                 ; 0x074f
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
    call ds_app_0ced                 ; 0x0780
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
    call ds_app_0ced                 ; 0x07ae
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
    mov ax, 2                        ; 0x07d8
    push ax                          ; 0x07db
    call ds_app_0ced                 ; 0x07dc
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
    push ax                          ; 0x0806
    call ds_app_0ced                 ; 0x0807
    add sp, byte 0x0e                ; 0x080a
    mov ax, 0                        ; 0x080d
    push ax                          ; 0x0810
    mov ax, 0xd                      ; 0x0811
    push ax                          ; 0x0814
    mov ax, word [bp - 0x0006]       ; 0x0815
    add ax, strict word 0x1f         ; 0x0818
    push ax                          ; 0x081b
    mov ax, word [bp - 0x0004]       ; 0x081c
    add ax, strict word 0x50         ; 0x081f
    push ax                          ; 0x0822
    mov ax, word [bp - 0x0006]       ; 0x0823
    add ax, strict word 0x17         ; 0x0826
    push ax                          ; 0x0829
    mov ax, word [bp - 0x0004]       ; 0x082a
    add ax, strict word 8            ; 0x082d
    push ax                          ; 0x0830
    mov ax, 4                        ; 0x0831
    push ax                          ; 0x0834
    call ds_app_0ced                 ; 0x0835
    add sp, byte 0x0e                ; 0x0838
    mov ax, 0                        ; 0x083b
    push ax                          ; 0x083e
    mov ax, 0x1b                     ; 0x083f
    push ax                          ; 0x0842
    mov ax, word [bp - 0x0006]       ; 0x0843
    add ax, strict word 0x2f         ; 0x0846
    push ax                          ; 0x0849
    mov ax, word [bp - 0x0004]       ; 0x084a
    add ax, strict word 0x50         ; 0x084d
    push ax                          ; 0x0850
    mov ax, word [bp - 0x0006]       ; 0x0851
    add ax, strict word 0x27         ; 0x0854
    push ax                          ; 0x0857
    mov ax, word [bp - 0x0004]       ; 0x0858
    add ax, strict word 8            ; 0x085b
    push ax                          ; 0x085e
    mov ax, 5                        ; 0x085f
    push ax                          ; 0x0862
    call ds_app_0ced                 ; 0x0863
    add sp, byte 0x0e                ; 0x0866
    mov ax, 7                        ; 0x0869
    cmp word [bp + 0xc], byte 7      ; 0x086c
    jge short @..api_idx_0038.l2     ; 0x0870
    mov ax, word [bp + 0xc]          ; 0x0872
@..api_idx_0038.l2:
    mov word [bp - 0x001e], ax       ; 0x0875
    mov word [bp - 0x0002], 0        ; 0x0878
    jmp short @..api_idx_0038.l4     ; 0x087d
@..api_idx_0038.l3:
    mov ax, 0                        ; 0x087f
    push ax                          ; 0x0882
    push ax                          ; 0x0883
    mov ax, 6                        ; 0x0884
    imul word [bp - 0x0002]          ; 0x0887
    add ax, word [bp - 0x0006]       ; 0x088a
    add ax, strict word 0xc          ; 0x088d
    push ax                          ; 0x0890
    mov ax, word [bp - 0x0004]       ; 0x0891
    add ax, 0xb9                     ; 0x0894
    push ax                          ; 0x0897
    mov ax, 6                        ; 0x0898
    imul word [bp - 0x0002]          ; 0x089b
    add ax, word [bp - 0x0006]       ; 0x089e
    add ax, strict word 6            ; 0x08a1
    push ax                          ; 0x08a4
    mov ax, word [bp - 0x0004]       ; 0x08a5
    add ax, strict word 0x5d         ; 0x08a8
    push ax                          ; 0x08ab
    mov ax, word [bp - 0x0002]       ; 0x08ac
    add ax, strict word 6            ; 0x08af
    push ax                          ; 0x08b2
    call ds_app_0ced                 ; 0x08b3
    add sp, byte 0x0e                ; 0x08b6
    inc word [bp - 0x0002]           ; 0x08b9
@..api_idx_0038.l4:
    mov ax, word [bp - 0x0002]       ; 0x08bc
    cmp ax, word [bp - 0x001e]       ; 0x08bf
    jl short @..api_idx_0038.l3      ; 0x08c2
    mov ax, 0                        ; 0x08c4
    push ax                          ; 0x08c7
    push ax                          ; 0x08c8
    push ax                          ; 0x08c9
    push ax                          ; 0x08ca
    push ax                          ; 0x08cb
    mov ax, 0xffff                   ; 0x08cc
    push ax                          ; 0x08cf
    mov ax, word [bp - 0x001e]       ; 0x08d0
    add ax, strict word 6            ; 0x08d3
    push ax                          ; 0x08d6
    call ds_app_0ced                 ; 0x08d7
    add sp, byte 0x0e                ; 0x08da
    mov ax, word [bp - 0x000a]       ; 0x08dd
    inc ax                           ; 0x08e0
    push ax                          ; 0x08e1
    mov ax, word [bp - 0x0008]       ; 0x08e2
    inc ax                           ; 0x08e5
    push ax                          ; 0x08e6
    mov ax, word [bp - 0x0006]       ; 0x08e7
    dec ax                           ; 0x08ea
    push ax                          ; 0x08eb
    mov ax, word [bp - 0x0004]       ; 0x08ec
    dec ax                           ; 0x08ef
    push ax                          ; 0x08f0
    call thunk_4                     ; 0x08f1
    add sp, byte 8                   ; 0x08f4
    mov word [bp - 0x001a], 1        ; 0x08f7
@..api_idx_0038.l5:
    mov ax, 0x59fe                   ; 0x08fc
    push ax                          ; 0x08ff
    call ds_app_io_0b54              ; 0x0900
    pop cx                           ; 0x0903
    dec ax                           ; 0x0904
    mov word [bp - 0x0018], ax       ; 0x0905
    cmp word [bss_59fc], byte 0      ; 0x0908
    je short @..api_idx_0038.l9      ; 0x090d
    mov ax, word [bp - 0x0020]       ; 0x090f
    cmp ax, word [bp - 0x0016]       ; 0x0912
    jl short @..api_idx_0038.l6      ; 0x0915
    inc word [bp - 0x0020]           ; 0x0917
@..api_idx_0038.l6:
    mov ax, word [bp - 0x0020]       ; 0x091a
    cmp ax, strict word 0xffff       ; 0x091d
    je short @..api_idx_0038.l7      ; 0x0920
    cmp ax, word [bp - 0x0016]       ; 0x0922
    jl short @..api_idx_0038.l7      ; 0x0925
    mov ax, word [bp - 0x0016]       ; 0x0927
    add ax, word [bp - 0x001e]       ; 0x092a
    mov cx, ax                       ; 0x092d
    dec ax                           ; 0x092f
    mov cx, ax                       ; 0x0930
    mov ax, word [bp - 0x0020]       ; 0x0932
    cmp cx, ax                       ; 0x0935
    jge short @..api_idx_0038.l8     ; 0x0937
@..api_idx_0038.l7:
    mov ax, word [bp - 0x0016]       ; 0x0939
    mov word [bp - 0x0020], ax       ; 0x093c
@..api_idx_0038.l8:
    mov word [bss_5b3e], 1           ; 0x093f
    mov ax, word [bp - 0x0020]       ; 0x0945
    sub ax, word [bp - 0x0016]       ; 0x0948
    add ax, strict word 6            ; 0x094b
    mov word [bp - 0x0018], ax       ; 0x094e
@..api_idx_0038.l9:
    cmp word [bss_5b3e], byte 1      ; 0x0951
    je short @..api_idx_0038.l10     ; 0x0956
    jmp near @..api_idx_0038.l24     ; 0x0958
@..api_idx_0038.l10:
    mov ax, word [bp - 0x0018]       ; 0x095b
    jmp near @..api_idx_0038.l22     ; 0x095e
jumptable_0d04_case_0:
    lea ax, word [bp - 0x000e]       ; 0x0961
    push ax                          ; 0x0964
    lea ax, word [bp - 0x000c]       ; 0x0965
    push ax                          ; 0x0968
    call thunk_38                    ; 0x0969
    add sp, byte 4                   ; 0x096c
    mov ax, 4                        ; 0x096f
    push ax                          ; 0x0972
    mov ax, 0                        ; 0x0973
    push ax                          ; 0x0976
    mov ax, word [bp - 0x000e]       ; 0x0977
    mov cx, word [bp - 0x0006]       ; 0x097a
    add cx, word [bp - 0x0010]       ; 0x097d
    add cx, byte 0x0e                ; 0x0980
    sub ax, cx                       ; 0x0983
    push ax                          ; 0x0985
    call ds_app_0a09                 ; 0x0986
    add sp, byte 6                   ; 0x0989
    mov word [bp - 0x0014], ax       ; 0x098c
@..api_idx_0038.l11:
    lea ax, word [bp - 0x000e]       ; 0x098f
    push ax                          ; 0x0992
    lea ax, word [bp - 0x000c]       ; 0x0993
    push ax                          ; 0x0996
    call thunk_38                    ; 0x0997
    add sp, byte 4                   ; 0x099a
    mov word [bp - 0x001c], ax       ; 0x099d
    push word [bp - 0x0012]          ; 0x09a0
    mov ax, 0                        ; 0x09a3
    push ax                          ; 0x09a6
    mov ax, word [bp - 0x000e]       ; 0x09a7
    mov cx, word [bp - 0x0006]       ; 0x09aa
    add cx, byte 0x0e                ; 0x09ad
    sub ax, cx                       ; 0x09b0
    sub ax, word [bp - 0x0014]       ; 0x09b2
    push ax                          ; 0x09b5
    call ds_app_0a09                 ; 0x09b6
    add sp, byte 6                   ; 0x09b9
    mov word [bp - 0x0010], ax       ; 0x09bc
    cmp word [bp + 0xc], byte 7      ; 0x09bf
    jle short @..api_idx_0038.l12    ; 0x09c3
    mov cx, 0x64                     ; 0x09c5
    imul cx                          ; 0x09c8
    push ax                          ; 0x09ca
    mov ax, word [bp - 0x0012]       ; 0x09cb
    imul cx                          ; 0x09ce
    add ax, strict word 0x64         ; 0x09d0
    mov cx, word [bp + 0xc]          ; 0x09d3
    add cx, byte 0xfa                ; 0x09d6
    cwd                              ; 0x09d9
    idiv cx                          ; 0x09da
    mov cx, ax                       ; 0x09dc
    pop ax                           ; 0x09de
    cwd                              ; 0x09df
    idiv cx                          ; 0x09e0
    mov word [bp - 0x0016], ax       ; 0x09e2
@..api_idx_0038.l12:
    push word [bp - 0x0022]          ; 0x09e5
    push word [bp - 0x0020]          ; 0x09e8
    push word [bp - 0x0016]          ; 0x09eb
    mov ax, 7                        ; 0x09ee
    push ax                          ; 0x09f1
    mov ax, 0xf                      ; 0x09f2
    push ax                          ; 0x09f5
    mov ax, word [bp - 0x0006]       ; 0x09f6
    add ax, strict word 6            ; 0x09f9
    push ax                          ; 0x09fc
    mov ax, word [bp - 0x0004]       ; 0x09fd
    add ax, strict word 0x5d         ; 0x0a00
    push ax                          ; 0x0a03
    call ds_app_11de                 ; 0x0a04
    add sp, byte 0x0e                ; 0x0a07
    push word [bp - 0x0010]          ; 0x0a0a
    mov ax, 7                        ; 0x0a0d
    push ax                          ; 0x0a10
    mov ax, 8                        ; 0x0a11
    push ax                          ; 0x0a14
    mov ax, word [bp - 0x0006]       ; 0x0a15
    add ax, strict word 6            ; 0x0a18
    push ax                          ; 0x0a1b
    mov ax, word [bp - 0x0004]       ; 0x0a1c
    add ax, 0xc1                     ; 0x0a1f
    push ax                          ; 0x0a22
    call ds_app_121f                 ; 0x0a23
    add sp, byte 0x0a                ; 0x0a26
    mov ax, 0                        ; 0x0a29
    push ax                          ; 0x0a2c
    push ax                          ; 0x0a2d
    mov ax, word [bp - 0x0006]       ; 0x0a2e
    add ax, word [bp - 0x0010]       ; 0x0a31
    add ax, strict word 0x12         ; 0x0a34
    push ax                          ; 0x0a37
    mov ax, word [bp - 0x0004]       ; 0x0a38
    add ax, 0xc9                     ; 0x0a3b
    push ax                          ; 0x0a3e
    mov ax, word [bp - 0x0006]       ; 0x0a3f
    add ax, word [bp - 0x0010]       ; 0x0a42
    add ax, strict word 0xe          ; 0x0a45
    push ax                          ; 0x0a48
    mov ax, word [bp - 0x0004]       ; 0x0a49
    add ax, 0xc1                     ; 0x0a4c
    push ax                          ; 0x0a4f
    mov ax, 0                        ; 0x0a50
    push ax                          ; 0x0a53
    call ds_app_0ced                 ; 0x0a54
    add sp, byte 0x0e                ; 0x0a57
    mov ax, word [bp - 0x0006]       ; 0x0a5a
    add ax, strict word 0x30         ; 0x0a5d
    push ax                          ; 0x0a60
    mov ax, word [bp - 0x0004]       ; 0x0a61
    add ax, 0xc9                     ; 0x0a64
    push ax                          ; 0x0a67
    mov ax, word [bp - 0x0006]       ; 0x0a68
    add ax, strict word 6            ; 0x0a6b
    push ax                          ; 0x0a6e
    mov ax, word [bp - 0x0004]       ; 0x0a6f
    add ax, strict word 0x5d         ; 0x0a72
    push ax                          ; 0x0a75
    call thunk_4                     ; 0x0a76
    add sp, byte 8                   ; 0x0a79
    cmp word [bp - 0x001c], byte 0   ; 0x0a7c
    je short @..api_idx_0038.l13     ; 0x0a80
    jmp near @..api_idx_0038.l11     ; 0x0a82
@..api_idx_0038.l13:
    jmp near @..api_idx_0038.l24     ; 0x0a85
jumptable_0d04_case_1:
    cmp word [bp - 0x0018], byte 1   ; 0x0a88
    jne short @..api_idx_0038.l15    ; 0x0a8c
    mov ax, 1                        ; 0x0a8e
    push ax                          ; 0x0a91
    mov ax, word [bp - 0x0006]       ; 0x0a92
    add ax, strict word 0xc          ; 0x0a95
    push ax                          ; 0x0a98
    mov ax, word [bp - 0x0004]       ; 0x0a99
    add ax, 0xc9                     ; 0x0a9c
    push ax                          ; 0x0a9f
    mov ax, word [bp - 0x0006]       ; 0x0aa0
    add ax, strict word 6            ; 0x0aa3
    push ax                          ; 0x0aa6
    mov ax, word [bp - 0x0004]       ; 0x0aa7
    add ax, 0xc1                     ; 0x0aaa
    push ax                          ; 0x0aad
    call ds_app_10ff                 ; 0x0aae
    add sp, byte 0x0a                ; 0x0ab1
    cmp word [bp - 0x0016], byte 0   ; 0x0ab4
    jle short @..api_idx_0038.l14    ; 0x0ab8
    dec word [bp - 0x0016]           ; 0x0aba
@..api_idx_0038.l14:
    jmp short @..api_idx_0038.l16    ; 0x0abd
@..api_idx_0038.l15:
    mov ax, 1                        ; 0x0abf
    push ax                          ; 0x0ac2
    mov ax, word [bp - 0x0006]       ; 0x0ac3
    add ax, strict word 0x30         ; 0x0ac6
    push ax                          ; 0x0ac9
    mov ax, word [bp - 0x0004]       ; 0x0aca
    add ax, 0xc9                     ; 0x0acd
    push ax                          ; 0x0ad0
    mov ax, word [bp - 0x0006]       ; 0x0ad1
    add ax, strict word 0x2a         ; 0x0ad4
    push ax                          ; 0x0ad7
    mov ax, word [bp - 0x0004]       ; 0x0ad8
    add ax, 0xc1                     ; 0x0adb
    push ax                          ; 0x0ade
    call ds_app_10ff                 ; 0x0adf
    add sp, byte 0x0a                ; 0x0ae2
    mov ax, word [bp + 0xc]          ; 0x0ae5
    add ax, strict word 0xfff9       ; 0x0ae8
    cmp ax, word [bp - 0x0016]       ; 0x0aeb
    jle short @..api_idx_0038.l16    ; 0x0aee
    inc word [bp - 0x0016]           ; 0x0af0
@..api_idx_0038.l16:
    cmp word [bp + 0xc], byte 7      ; 0x0af3
    jle short @..api_idx_0038.l17    ; 0x0af7
    push word [bp - 0x0012]          ; 0x0af9
    mov ax, 0                        ; 0x0afc
    push ax                          ; 0x0aff
    mov ax, 0x64                     ; 0x0b00
    imul word [bp - 0x0012]          ; 0x0b03
    add ax, strict word 0x64         ; 0x0b06
    mov cx, word [bp + 0xc]          ; 0x0b09
    add cx, byte 0xf9                ; 0x0b0c
    cwd                              ; 0x0b0f
    idiv cx                          ; 0x0b10
    imul word [bp - 0x0016]          ; 0x0b12
    mov cx, 0x64                     ; 0x0b15
    cwd                              ; 0x0b18
    idiv cx                          ; 0x0b19
    push ax                          ; 0x0b1b
    call ds_app_0a09                 ; 0x0b1c
    add sp, byte 6                   ; 0x0b1f
    mov word [bp - 0x0010], ax       ; 0x0b22
@..api_idx_0038.l17:
    push word [bp - 0x0022]          ; 0x0b25
    push word [bp - 0x0020]          ; 0x0b28
    push word [bp - 0x0016]          ; 0x0b2b
    mov ax, 7                        ; 0x0b2e
    push ax                          ; 0x0b31
    mov ax, 0xf                      ; 0x0b32
    push ax                          ; 0x0b35
    mov ax, word [bp - 0x0006]       ; 0x0b36
    add ax, strict word 6            ; 0x0b39
    push ax                          ; 0x0b3c
    mov ax, word [bp - 0x0004]       ; 0x0b3d
    add ax, strict word 0x5d         ; 0x0b40
    push ax                          ; 0x0b43
    call ds_app_11de                 ; 0x0b44
    add sp, byte 0x0e                ; 0x0b47
    push word [bp - 0x0010]          ; 0x0b4a
    mov ax, 7                        ; 0x0b4d
    push ax                          ; 0x0b50
    mov ax, 8                        ; 0x0b51
    push ax                          ; 0x0b54
    mov ax, word [bp - 0x0006]       ; 0x0b55
    add ax, strict word 6            ; 0x0b58
    push ax                          ; 0x0b5b
    mov ax, word [bp - 0x0004]       ; 0x0b5c
    add ax, 0xc1                     ; 0x0b5f
    push ax                          ; 0x0b62
    call ds_app_121f                 ; 0x0b63
    add sp, byte 0x0a                ; 0x0b66
    mov ax, 0                        ; 0x0b69
    push ax                          ; 0x0b6c
    push ax                          ; 0x0b6d
    mov ax, word [bp - 0x0006]       ; 0x0b6e
    add ax, word [bp - 0x0010]       ; 0x0b71
    add ax, strict word 0x12         ; 0x0b74
    push ax                          ; 0x0b77
    mov ax, word [bp - 0x0004]       ; 0x0b78
    add ax, 0xc9                     ; 0x0b7b
    push ax                          ; 0x0b7e
    mov ax, word [bp - 0x0006]       ; 0x0b7f
    add ax, word [bp - 0x0010]       ; 0x0b82
    add ax, strict word 0xe          ; 0x0b85
    push ax                          ; 0x0b88
    mov ax, word [bp - 0x0004]       ; 0x0b89
    add ax, 0xc1                     ; 0x0b8c
    push ax                          ; 0x0b8f
    mov ax, 0                        ; 0x0b90
    push ax                          ; 0x0b93
    call ds_app_0ced                 ; 0x0b94
    add sp, byte 0x0e                ; 0x0b97
    mov ax, word [bp - 0x0006]       ; 0x0b9a
    add ax, strict word 0x30         ; 0x0b9d
    push ax                          ; 0x0ba0
    mov ax, word [bp - 0x0004]       ; 0x0ba1
    add ax, 0xc9                     ; 0x0ba4
    push ax                          ; 0x0ba7
    mov ax, word [bp - 0x0006]       ; 0x0ba8
    add ax, strict word 6            ; 0x0bab
    push ax                          ; 0x0bae
    mov ax, word [bp - 0x0004]       ; 0x0baf
    add ax, strict word 0x5d         ; 0x0bb2
    push ax                          ; 0x0bb5
    call thunk_4                     ; 0x0bb6
    add sp, byte 8                   ; 0x0bb9
    jmp near @..api_idx_0038.l24     ; 0x0bbc
jumptable_0d04_case_3:
    cmp word [bp + 0x6], byte 0      ; 0x0bbf
    je short @..api_idx_0038.l18     ; 0x0bc3
    mov ax, 1                        ; 0x0bc5
    push ax                          ; 0x0bc8
    push ax                          ; 0x0bc9
    mov ax, 0xc                      ; 0x0bca
    push ax                          ; 0x0bcd
    mov ax, word [bp - 0x0006]       ; 0x0bce
    add ax, strict word 7            ; 0x0bd1
    push ax                          ; 0x0bd4
    mov ax, word [bp - 0x0004]       ; 0x0bd5
    add ax, strict word 8            ; 0x0bd8
    push ax                          ; 0x0bdb
    call ds_app_10a6                 ; 0x0bdc
    add sp, byte 0x0a                ; 0x0bdf
    mov ax, 0                        ; 0x0be2
    push ax                          ; 0x0be5
    mov ax, 1                        ; 0x0be6
    push ax                          ; 0x0be9
    mov ax, 0xc                      ; 0x0bea
    push ax                          ; 0x0bed
    mov ax, word [bp - 0x0006]       ; 0x0bee
    add ax, strict word 7            ; 0x0bf1
    push ax                          ; 0x0bf4
    mov ax, word [bp - 0x0004]       ; 0x0bf5
    add ax, strict word 8            ; 0x0bf8
    push ax                          ; 0x0bfb
    call ds_app_10a6                 ; 0x0bfc
    add sp, byte 0x0a                ; 0x0bff
    mov word [bss_9050], 0           ; 0x0c02
    mov word [bp - 0x001a], 0        ; 0x0c08
@..api_idx_0038.l18:
    jmp near @..api_idx_0038.l24     ; 0x0c0d
jumptable_0d04_case_4:
    cmp word [bp + 0x8], byte 0      ; 0x0c10
    je short @..api_idx_0038.l19     ; 0x0c14
    mov ax, 1                        ; 0x0c16
    push ax                          ; 0x0c19
    push ax                          ; 0x0c1a
    mov ax, 0xc                      ; 0x0c1b
    push ax                          ; 0x0c1e
    mov ax, word [bp - 0x0006]       ; 0x0c1f
    add ax, strict word 0x17         ; 0x0c22
    push ax                          ; 0x0c25
    mov ax, word [bp - 0x0004]       ; 0x0c26
    add ax, strict word 8            ; 0x0c29
    push ax                          ; 0x0c2c
    call ds_app_10a6                 ; 0x0c2d
    add sp, byte 0x0a                ; 0x0c30
    mov ax, 0                        ; 0x0c33
    push ax                          ; 0x0c36
    mov ax, 1                        ; 0x0c37
    push ax                          ; 0x0c3a
    mov ax, 0xc                      ; 0x0c3b
    push ax                          ; 0x0c3e
    mov ax, word [bp - 0x0006]       ; 0x0c3f
    add ax, strict word 0x17         ; 0x0c42
    push ax                          ; 0x0c45
    mov ax, word [bp - 0x0004]       ; 0x0c46
    add ax, strict word 8            ; 0x0c49
    push ax                          ; 0x0c4c
    call ds_app_10a6                 ; 0x0c4d
    add sp, byte 0x0a                ; 0x0c50
    mov word [bss_9050], 1           ; 0x0c53
    mov word [bp - 0x001a], 0        ; 0x0c59
@..api_idx_0038.l19:
    jmp near @..api_idx_0038.l24     ; 0x0c5e
jumptable_0d04_case_5:
    cmp word [bp + 0xa], byte 0      ; 0x0c61
    je short @..api_idx_0038.l20     ; 0x0c65
    mov ax, 1                        ; 0x0c67
    push ax                          ; 0x0c6a
    push ax                          ; 0x0c6b
    mov ax, 0xc                      ; 0x0c6c
    push ax                          ; 0x0c6f
    mov ax, word [bp - 0x0006]       ; 0x0c70
    add ax, strict word 0x27         ; 0x0c73
    push ax                          ; 0x0c76
    mov ax, word [bp - 0x0004]       ; 0x0c77
    add ax, strict word 8            ; 0x0c7a
    push ax                          ; 0x0c7d
    call ds_app_10a6                 ; 0x0c7e
    add sp, byte 0x0a                ; 0x0c81
    mov ax, 0                        ; 0x0c84
    push ax                          ; 0x0c87
    mov ax, 1                        ; 0x0c88
    push ax                          ; 0x0c8b
    mov ax, 0xc                      ; 0x0c8c
    push ax                          ; 0x0c8f
    mov ax, word [bp - 0x0006]       ; 0x0c90
    add ax, strict word 0x27         ; 0x0c93
    push ax                          ; 0x0c96
    mov ax, word [bp - 0x0004]       ; 0x0c97
    add ax, strict word 8            ; 0x0c9a
    push ax                          ; 0x0c9d
    call ds_app_10a6                 ; 0x0c9e
    add sp, byte 0x0a                ; 0x0ca1
    mov word [bss_9050], 2           ; 0x0ca4
    mov word [bp - 0x001a], 0        ; 0x0caa
@..api_idx_0038.l20:
    jmp short @..api_idx_0038.l24    ; 0x0caf
@..api_idx_0038.l21:
    mov ax, word [bp - 0x0016]       ; 0x0cb1
    add ax, word [bp - 0x0018]       ; 0x0cb4
    add ax, strict word 0xfffa       ; 0x0cb7
    mov word [bp - 0x0020], ax       ; 0x0cba
    push word [bp - 0x0022]          ; 0x0cbd
    push ax                          ; 0x0cc0
    push word [bp - 0x0016]          ; 0x0cc1
    mov ax, 7                        ; 0x0cc4
    push ax                          ; 0x0cc7
    mov ax, 0xf                      ; 0x0cc8
    push ax                          ; 0x0ccb
    mov ax, word [bp - 0x0006]       ; 0x0ccc
    add ax, strict word 6            ; 0x0ccf
    push ax                          ; 0x0cd2
    mov ax, word [bp - 0x0004]       ; 0x0cd3
    add ax, strict word 0x5d         ; 0x0cd6
    push ax                          ; 0x0cd9
    call ds_app_11de                 ; 0x0cda
    add sp, byte 0x0e                ; 0x0cdd
    mov ax, word [bp - 0x0006]       ; 0x0ce0
    add ax, strict word 0x30         ; 0x0ce3
    push ax                          ; 0x0ce6
    mov ax, word [bp - 0x0004]       ; 0x0ce7
    add ax, 0xb9                     ; 0x0cea
    push ax                          ; 0x0ced
    mov ax, word [bp - 0x0006]       ; 0x0cee
    add ax, strict word 6            ; 0x0cf1
    push ax                          ; 0x0cf4
    mov ax, word [bp - 0x0004]       ; 0x0cf5
    add ax, strict word 0x5d         ; 0x0cf8
    push ax                          ; 0x0cfb
    call thunk_4                     ; 0x0cfc
    add sp, byte 8                   ; 0x0cff
    jmp short @..api_idx_0038.l24    ; 0x0d02
jumptable_0d04:
    dw jumptable_0d04_case_0 - IMAGE_BASE + 0x5055 ; 0x0d04
    dw jumptable_0d04_case_1 - IMAGE_BASE + 0x5055 ; 0x0d06
    dw jumptable_0d04_case_1 - IMAGE_BASE + 0x5055 ; 0x0d08
    dw jumptable_0d04_case_3 - IMAGE_BASE + 0x5055 ; 0x0d0a
    dw jumptable_0d04_case_4 - IMAGE_BASE + 0x5055 ; 0x0d0c
    dw jumptable_0d04_case_5 - IMAGE_BASE + 0x5055 ; 0x0d0e
@..api_idx_0038.l22:
    cmp ax, strict word 6            ; 0x0d10
    jae short @..api_idx_0038.l23    ; 0x0d13
    xchg bx, ax                      ; 0x0d15
    shl bx, 1                        ; 0x0d16
    jmp [cs:bx + 0x5d4b]             ; 0x0d18
@..api_idx_0038.l23:
    jmp short @..api_idx_0038.l21    ; 0x0d1d
@..api_idx_0038.l24:
    cmp word [bp - 0x001a], byte 0   ; 0x0d1f
    je short @..api_idx_0038.l25     ; 0x0d23
    jmp near @..api_idx_0038.l5      ; 0x0d25
@..api_idx_0038.l25:
    mov ax, 1                        ; 0x0d28
    push ax                          ; 0x0d2b
    push word [bp - 0x0038]          ; 0x0d2c
    call ds_app_file_16a0            ; 0x0d2f
    add sp, byte 4                   ; 0x0d32
    mov ax, word [bp - 0x0020]       ; 0x0d35
    mov word [bss_904e], ax          ; 0x0d38
    mov ax, word [bss_9050]          ; 0x0d3b
    ret                              ; 0x0d3e
