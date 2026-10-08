%include "structs/structs.inc"
%include "structs/loc_600d.inc"
org 0
bits 16
%include "labels/vpcmk_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x23, 0x70, 0x98, 0x90

data_0002 equ 0x0002
data_0038 equ 0x0038
data_003c equ 0x003c
data_0040 equ 0x0040
data_0042 equ 0x0042
data_0044 equ 0x0044
data_010e equ 0x010e
data_0e32 equ 0x0e32
loc_23b2 equ 0x23b2
loc_23d0 equ 0x23d0
loc_23ee equ 0x23ee
loc_240c equ 0x240c
loc_241c equ 0x241c
loc_2429 equ 0x2429
loc_243a equ 0x243a
loc_2446 equ 0x2446
loc_2458 equ 0x2458
loc_2463 equ 0x2463
loc_2476 equ 0x2476
loc_2494 equ 0x2494
loc_4d4a equ 0x4d4a
loc_52dc equ 0x52dc
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
loc_5c67 equ 0x5c67
loc_5c78 equ 0x5c78
data_5e2a equ 0x5e2a
loc_600d equ 0x600d
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_905a equ 0x905a
data_906e equ 0x906e
data_9070 equ 0x9070
data_9072 equ 0x9072
data_9074 equ 0x9074
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_9524 equ 0x9524
data_9526 equ 0x9526
data_9528 equ 0x9528
data_952a equ 0x952a
data_952c equ 0x952c
data_952e equ 0x952e
data_9530 equ 0x9530
data_9532 equ 0x9532
data_9534 equ 0x9534
data_9536 equ 0x9536
data_9538 equ 0x9538
data_953a equ 0x953a
data_953c equ 0x953c
data_953e equ 0x953e
data_9540 equ 0x9540
data_9542 equ 0x9542
data_9594 equ 0x9594
data_95aa equ 0x95aa
data_95ac equ 0x95ac
data_95ae equ 0x95ae
data_95e8 equ 0x95e8
data_960c equ 0x960c
data_976c equ 0x976c
data_978a equ 0x978a
data_a0f9 equ 0xa0f9
data_a10d equ 0xa10d
data_a16f equ 0xa16f
data_a195 equ 0xa195
data_a1fa equ 0xa1fa
data_a2d1 equ 0xa2d1

    db 0x8c, 0x04, 0x68, 0x02, 0xd3, 0xbf
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    call api_idx_002c_2              ; 0x0014
    mov word [data_830a], 4          ; 0x0017
    mov ax, 0                        ; 0x001d
    ret                              ; 0x0020
%include "vpcmk/api_idx_0002.asm"

%include "vpcmk/api_idx_0002_2.asm"

%include "vpcmk/api_idx_0008.asm"

    db 0xc3
%include "vpcmk/api_idx_0008_2.asm"

loc_03ca:
    mov ax, 0                        ; 0x03ca
    call ds_dispatch_f40b            ; 0x03cd
    push word [bp + 0xc]             ; 0x03d0
    mov ax, word [bp + 0x6]          ; 0x03d3
    dec ax                           ; 0x03d6
    push ax                          ; 0x03d7
    mov ax, word [bp + 0x8]          ; 0x03d8
    inc ax                           ; 0x03db
    push ax                          ; 0x03dc
    mov ax, word [bp + 0x6]          ; 0x03dd
    dec ax                           ; 0x03e0
    push ax                          ; 0x03e1
    mov ax, word [bp + 0x4]          ; 0x03e2
    dec ax                           ; 0x03e5
    push ax                          ; 0x03e6
    call ds_dispatch_e901            ; 0x03e7
    add sp, byte 0x0a                ; 0x03ea
    push word [bp + 0xc]             ; 0x03ed
    mov ax, word [bp + 0xa]          ; 0x03f0
    inc ax                           ; 0x03f3
    push ax                          ; 0x03f4
    mov ax, word [bp + 0x8]          ; 0x03f5
    inc ax                           ; 0x03f8
    push ax                          ; 0x03f9
    mov ax, word [bp + 0x6]          ; 0x03fa
    dec ax                           ; 0x03fd
    push ax                          ; 0x03fe
    mov ax, word [bp + 0x8]          ; 0x03ff
    inc ax                           ; 0x0402
    push ax                          ; 0x0403
    call ds_dispatch_e901            ; 0x0404
    add sp, byte 0x0a                ; 0x0407
    push word [bp + 0xc]             ; 0x040a
    mov ax, word [bp + 0xa]          ; 0x040d
    inc ax                           ; 0x0410
    push ax                          ; 0x0411
    mov ax, word [bp + 0x8]          ; 0x0412
    inc ax                           ; 0x0415
    push ax                          ; 0x0416
    mov ax, word [bp + 0xa]          ; 0x0417
    inc ax                           ; 0x041a
    push ax                          ; 0x041b
    mov ax, word [bp + 0x4]          ; 0x041c
    dec ax                           ; 0x041f
    push ax                          ; 0x0420
    call ds_dispatch_e901            ; 0x0421
    add sp, byte 0x0a                ; 0x0424
    push word [bp + 0xc]             ; 0x0427
    mov ax, word [bp + 0xa]          ; 0x042a
    inc ax                           ; 0x042d
    push ax                          ; 0x042e
    mov ax, word [bp + 0x4]          ; 0x042f
    dec ax                           ; 0x0432
    push ax                          ; 0x0433
    mov ax, word [bp + 0x6]          ; 0x0434
    dec ax                           ; 0x0437
    push ax                          ; 0x0438
    mov ax, word [bp + 0x4]          ; 0x0439
    dec ax                           ; 0x043c
    push ax                          ; 0x043d
    call ds_dispatch_e901            ; 0x043e
    add sp, byte 0x0a                ; 0x0441
    ret                              ; 0x0444
%include "vpcmk/math_loc_0445.asm"

    push ax                          ; 0x0645
    push ax                          ; 0x0646
    mov ax, word [bp + 0xa]          ; 0x0647
    add ax, word [bp - 0x000c]       ; 0x064a
    add ax, strict word 8            ; 0x064d
    push ax                          ; 0x0650
    mov ax, 6                        ; 0x0651
    imul word [bp + 0xc]             ; 0x0654
    add ax, word [bp + 0x8]          ; 0x0657
    add ax, word [bp - 0x000a]       ; 0x065a
    push ax                          ; 0x065d
    mov ax, word [bp + 0xa]          ; 0x065e
    add ax, word [bp - 0x000c]       ; 0x0661
    push ax                          ; 0x0664
    mov ax, word [bp + 0x8]          ; 0x0665
    add ax, word [bp - 0x000a]       ; 0x0668
    push ax                          ; 0x066b
    push word [bp - 0x0002]          ; 0x066c
    call ds_dispatch_baa6            ; 0x066f
    add sp, byte 0x0e                ; 0x0672
    mov ax, word [bp - 0x0004]       ; 0x0675
    mov cx, word [bp - 0x0002]       ; 0x0678
    shl cx, 1                        ; 0x067b
    mov bx, cx                       ; 0x067d
    add bx, bp                       ; 0x067f
    mov word [bx - 0x002a], ax       ; 0x0681
    inc word [bp - 0x0002]           ; 0x0684
@..math_loc_0445.l8:
    inc word [bp - 0x0004]           ; 0x0687
    jmp near @..math_loc_0445.l4     ; 0x068a
@..math_loc_0445.l9:
    mov ax, 0                        ; 0x068d
    push ax                          ; 0x0690
    push ax                          ; 0x0691
    push ax                          ; 0x0692
    push ax                          ; 0x0693
    push ax                          ; 0x0694
    mov ax, 0xffff                   ; 0x0695
    push ax                          ; 0x0698
    push word [bp - 0x0002]          ; 0x0699
    call ds_dispatch_baa6            ; 0x069c
    add sp, byte 0x0e                ; 0x069f
    mov ax, 0xc7                     ; 0x06a2
    push ax                          ; 0x06a5
    mov ax, 0x13f                    ; 0x06a6
    push ax                          ; 0x06a9
    mov ax, 0                        ; 0x06aa
    push ax                          ; 0x06ad
    push ax                          ; 0x06ae
    call ds_dispatch_e8da            ; 0x06af
    add sp, byte 8                   ; 0x06b2
    cmp word [data_0e32], byte 0     ; 0x06b5
    je short @..math_loc_0445.l11    ; 0x06ba
@..math_loc_0445.l10:
    mov ax, 0x59fe                   ; 0x06bc
    push ax                          ; 0x06bf
    call ds_dispatch_b90d            ; 0x06c0
    pop cx                           ; 0x06c3
    mov word [bp - 0x0004], ax       ; 0x06c4
    cmp word [data_5b3e], byte 0     ; 0x06c7
    je short @..math_loc_0445.l10    ; 0x06cc
    jmp near @..math_loc_0445.l25    ; 0x06ce
@..math_loc_0445.l11:
    mov word [bp - 0x0004], 0        ; 0x06d1
@..math_loc_0445.l12:
    mov ax, word [bp - 0x0004]       ; 0x06d6
    cwd                              ; 0x06d9
    idiv word [bp + 0x12]            ; 0x06da
    imul word [bp + 0xe]             ; 0x06dd
    mov word [bp - 0x000a], ax       ; 0x06e0
    mov ax, word [bp - 0x0004]       ; 0x06e3
    cwd                              ; 0x06e6
    idiv word [bp + 0x12]            ; 0x06e7
    mov ax, dx                       ; 0x06ea
    imul word [bp + 0x10]            ; 0x06ec
    mov word [bp - 0x000c], ax       ; 0x06ef
    mov ax, 0x16                     ; 0x06f2
    push ax                          ; 0x06f5
    mov ax, word [bp + 0xa]          ; 0x06f6
    add ax, word [bp - 0x000c]       ; 0x06f9
    add ax, strict word 8            ; 0x06fc
    push ax                          ; 0x06ff
    mov ax, 6                        ; 0x0700
    imul word [bp + 0xc]             ; 0x0703
    add ax, word [bp + 0x8]          ; 0x0706
    add ax, word [bp - 0x000a]       ; 0x0709
    push ax                          ; 0x070c
    mov ax, word [bp + 0xa]          ; 0x070d
    add ax, word [bp - 0x000c]       ; 0x0710
    push ax                          ; 0x0713
    mov ax, word [bp + 0x8]          ; 0x0714
    add ax, word [bp - 0x000a]       ; 0x0717
    push ax                          ; 0x071a
    call loc_03ca                    ; 0x071b
    add sp, byte 0x0a                ; 0x071e
    mov ax, word [bp - 0x0008]       ; 0x0721
    inc ax                           ; 0x0724
    push ax                          ; 0x0725
    mov ax, word [bp - 0x0006]       ; 0x0726
    inc ax                           ; 0x0729
    push ax                          ; 0x072a
    mov ax, word [bp + 0xa]          ; 0x072b
    dec ax                           ; 0x072e
    push ax                          ; 0x072f
    mov ax, word [bp + 0x8]          ; 0x0730
    dec ax                           ; 0x0733
    push ax                          ; 0x0734
    call ds_dispatch_e8da            ; 0x0735
    add sp, byte 8                   ; 0x0738
    mov ax, 0                        ; 0x073b
    push ax                          ; 0x073e
    mov ax, word [bp + 0xa]          ; 0x073f
    add ax, word [bp - 0x000c]       ; 0x0742
    add ax, strict word 8            ; 0x0745
    push ax                          ; 0x0748
    mov ax, 6                        ; 0x0749
    imul word [bp + 0xc]             ; 0x074c
    add ax, word [bp + 0x8]          ; 0x074f
    add ax, word [bp - 0x000a]       ; 0x0752
    push ax                          ; 0x0755
    mov ax, word [bp + 0xa]          ; 0x0756
    add ax, word [bp - 0x000c]       ; 0x0759
    push ax                          ; 0x075c
    mov ax, word [bp + 0x8]          ; 0x075d
    add ax, word [bp - 0x000a]       ; 0x0760
    push ax                          ; 0x0763
    call loc_03ca                    ; 0x0764
    add sp, byte 0x0a                ; 0x0767
@..math_loc_0445.l13:
    mov ax, 1                        ; 0x076a
    push ax                          ; 0x076d
    call ds_dispatch_ea50            ; 0x076e
    pop cx                           ; 0x0771
    test ax, ax                      ; 0x0772
    jne short @..math_loc_0445.l14   ; 0x0774
    jmp short @..math_loc_0445.l13   ; 0x0776
@..math_loc_0445.l14:
    mov ax, 1                        ; 0x0778
    push ax                          ; 0x077b
    call ds_dispatch_eb32            ; 0x077c
    pop cx                           ; 0x077f
    sub ah, ah                       ; 0x0780
    mov word [bp - 0x01aa], ax       ; 0x0782
    mov ax, word [bp - 0x0004]       ; 0x0786
    cwd                              ; 0x0789
    idiv word [bp + 0x12]            ; 0x078a
    mov word [bp - 0x000a], ax       ; 0x078d
    mov ax, word [bp - 0x0002]       ; 0x0790
    dec ax                           ; 0x0793
    cwd                              ; 0x0794
    idiv word [bp + 0x12]            ; 0x0795
    inc ax                           ; 0x0798
    mov word [bp - 0x000c], ax       ; 0x0799
@..math_loc_0445.l15:
    mov ax, word [bp - 0x01aa]       ; 0x079c
    jmp near @..math_loc_0445.l20    ; 0x07a0
@..math_loc_0445.l16:
    mov ax, word [bp - 0x0004]       ; 0x07a3
    add ax, word [bp + 0x12]         ; 0x07a6
    dec ax                           ; 0x07a9
    cwd                              ; 0x07aa
    idiv word [bp + 0x12]            ; 0x07ab
    mov ax, dx                       ; 0x07ae
    push ax                          ; 0x07b0
    mov ax, word [bp - 0x000a]       ; 0x07b1
    imul word [bp + 0x12]            ; 0x07b4
    mov cx, ax                       ; 0x07b7
    pop ax                           ; 0x07b9
    add ax, cx                       ; 0x07ba
    mov word [bp - 0x0004], ax       ; 0x07bc
    jmp near @..math_loc_0445.l22    ; 0x07bf
@..math_loc_0445.l17:
    mov ax, word [bp - 0x0004]       ; 0x07c2
    inc ax                           ; 0x07c5
    cwd                              ; 0x07c6
    idiv word [bp + 0x12]            ; 0x07c7
    mov ax, dx                       ; 0x07ca
    push ax                          ; 0x07cc
    mov ax, word [bp - 0x000a]       ; 0x07cd
    imul word [bp + 0x12]            ; 0x07d0
    mov cx, ax                       ; 0x07d3
    pop ax                           ; 0x07d5
    add ax, cx                       ; 0x07d6
    mov word [bp - 0x0004], ax       ; 0x07d8
    jmp short @..math_loc_0445.l22   ; 0x07db
@..math_loc_0445.l18:
    mov ax, word [bp - 0x000a]       ; 0x07dd
    add ax, word [bp - 0x000c]       ; 0x07e0
    dec ax                           ; 0x07e3
    cwd                              ; 0x07e4
    idiv word [bp - 0x000c]          ; 0x07e5
    mov word [bp - 0x000a], dx       ; 0x07e8
    mov ax, word [bp - 0x0004]       ; 0x07eb
    cwd                              ; 0x07ee
    idiv word [bp + 0x12]            ; 0x07ef
    mov ax, dx                       ; 0x07f2
    push ax                          ; 0x07f4
    mov ax, word [bp - 0x000a]       ; 0x07f5
    imul word [bp + 0x12]            ; 0x07f8
    mov cx, ax                       ; 0x07fb
    pop ax                           ; 0x07fd
    add ax, cx                       ; 0x07fe
    mov word [bp - 0x0004], ax       ; 0x0800
    jmp short @..math_loc_0445.l22   ; 0x0803
@..math_loc_0445.l19:
    mov ax, word [bp - 0x000a]       ; 0x0805
    inc ax                           ; 0x0808
    cwd                              ; 0x0809
    idiv word [bp - 0x000c]          ; 0x080a
    mov word [bp - 0x000a], dx       ; 0x080d
    mov ax, word [bp - 0x0004]       ; 0x0810
    cwd                              ; 0x0813
    idiv word [bp + 0x12]            ; 0x0814
    mov ax, dx                       ; 0x0817
    push ax                          ; 0x0819
    mov ax, word [bp - 0x000a]       ; 0x081a
    imul word [bp + 0x12]            ; 0x081d
    mov cx, ax                       ; 0x0820
    pop ax                           ; 0x0822
    add ax, cx                       ; 0x0823
    mov word [bp - 0x0004], ax       ; 0x0825
    jmp short @..math_loc_0445.l22   ; 0x0828
@..math_loc_0445.l20:
    cmp ax, strict word 8            ; 0x082a
    je short @..math_loc_0445.l18    ; 0x082d
    cmp ax, strict word 9            ; 0x082f
    jne short @..math_loc_0445.l21   ; 0x0832
    jmp near @..math_loc_0445.l16    ; 0x0834
@..math_loc_0445.l21:
    cmp ax, strict word 0xa          ; 0x0837
    je short @..math_loc_0445.l19    ; 0x083a
    cmp ax, strict word 0xb          ; 0x083c
    je short @..math_loc_0445.l17    ; 0x083f
@..math_loc_0445.l22:
    mov ax, word [bp - 0x0004]       ; 0x0841
    cmp ax, word [bp - 0x0002]       ; 0x0844
    jl short @..math_loc_0445.l23    ; 0x0847
    jmp near @..math_loc_0445.l15    ; 0x0849
@..math_loc_0445.l23:
    cmp word [bp - 0x01aa], byte 0x0d ; 0x084c
    je short @..math_loc_0445.l24    ; 0x0851
    jmp near @..math_loc_0445.l12    ; 0x0853
@..math_loc_0445.l24:
    inc word [bp - 0x0004]           ; 0x0856
    mov ax, word [bp - 0x0008]       ; 0x0859
    inc ax                           ; 0x085c
    push ax                          ; 0x085d
    mov ax, word [bp - 0x0006]       ; 0x085e
    inc ax                           ; 0x0861
    push ax                          ; 0x0862
    mov ax, word [bp + 0xa]          ; 0x0863
    dec ax                           ; 0x0866
    push ax                          ; 0x0867
    mov ax, word [bp + 0x8]          ; 0x0868
    dec ax                           ; 0x086b
    push ax                          ; 0x086c
    call ds_dispatch_e8da            ; 0x086d
    add sp, byte 8                   ; 0x0870
@..math_loc_0445.l25:
    dec word [bp - 0x0004]           ; 0x0873
    mov ax, word [bp - 0x0004]       ; 0x0876
    cwd                              ; 0x0879
    idiv word [bp + 0x12]            ; 0x087a
    imul word [bp + 0xe]             ; 0x087d
    mov word [bp - 0x000a], ax       ; 0x0880
    mov ax, word [bp - 0x0004]       ; 0x0883
    cwd                              ; 0x0886
    idiv word [bp + 0x12]            ; 0x0887
    mov ax, dx                       ; 0x088a
    imul word [bp + 0x10]            ; 0x088c
    mov word [bp - 0x000c], ax       ; 0x088f
    mov ax, 1                        ; 0x0892
    push ax                          ; 0x0895
    push ax                          ; 0x0896
    push word [bp + 0xc]             ; 0x0897
    mov ax, word [bp + 0xa]          ; 0x089a
    add ax, word [bp - 0x000c]       ; 0x089d
    push ax                          ; 0x08a0
    mov ax, word [bp + 0x8]          ; 0x08a1
    add ax, word [bp - 0x000a]       ; 0x08a4
    push ax                          ; 0x08a7
    call ds_dispatch_be5f            ; 0x08a8
    add sp, byte 0x0a                ; 0x08ab
    mov ax, 0                        ; 0x08ae
    push ax                          ; 0x08b1
    mov ax, 1                        ; 0x08b2
    push ax                          ; 0x08b5
    push word [bp + 0xc]             ; 0x08b6
    mov ax, word [bp + 0xa]          ; 0x08b9
    add ax, word [bp - 0x000c]       ; 0x08bc
    push ax                          ; 0x08bf
    mov ax, word [bp + 0x8]          ; 0x08c0
    add ax, word [bp - 0x000a]       ; 0x08c3
    push ax                          ; 0x08c6
    call ds_dispatch_be5f            ; 0x08c7
    add sp, byte 0x0a                ; 0x08ca
    mov ax, 1                        ; 0x08cd
    push ax                          ; 0x08d0
    push word [bp - 0x01a8]          ; 0x08d1
    call ds_dispatch_c459            ; 0x08d5
    add sp, byte 4                   ; 0x08d8
    cmp word [bp + 0x1a], byte 0     ; 0x08db
    je short @..math_loc_0445.l27    ; 0x08df
    cmp word [bp + 0x6], byte 0      ; 0x08e1
    je short @..math_loc_0445.l26    ; 0x08e5
    mov ax, word [bp - 0x0008]       ; 0x08e7
    add ax, strict word 6            ; 0x08ea
    push ax                          ; 0x08ed
    mov ax, word [bp - 0x0006]       ; 0x08ee
    add ax, strict word 6            ; 0x08f1
    push ax                          ; 0x08f4
    mov ax, word [bp + 0xa]          ; 0x08f5
    add ax, strict word 0xffeb       ; 0x08f8
    push ax                          ; 0x08fb
    mov ax, word [bp + 0x8]          ; 0x08fc
    add ax, strict word 0xfffa       ; 0x08ff
    push ax                          ; 0x0902
    call ds_dispatch_e8da            ; 0x0903
    add sp, byte 8                   ; 0x0906
    jmp short @..math_loc_0445.l27   ; 0x0909
@..math_loc_0445.l26:
    mov ax, word [bp - 0x0008]       ; 0x090b
    inc ax                           ; 0x090e
    push ax                          ; 0x090f
    mov ax, word [bp - 0x0006]       ; 0x0910
    inc ax                           ; 0x0913
    push ax                          ; 0x0914
    mov ax, word [bp + 0xa]          ; 0x0915
    dec ax                           ; 0x0918
    push ax                          ; 0x0919
    mov ax, word [bp + 0x8]          ; 0x091a
    dec ax                           ; 0x091d
    push ax                          ; 0x091e
    call ds_dispatch_e8da            ; 0x091f
    add sp, byte 8                   ; 0x0922
@..math_loc_0445.l27:
    mov ax, word [bp - 0x0004]       ; 0x0925
    mov word [data_9052], ax         ; 0x0928
    shl ax, 1                        ; 0x092b
    mov bx, ax                       ; 0x092d
    add bx, bp                       ; 0x092f
    mov ax, word [bx - 0x002a]       ; 0x0931
    ret                              ; 0x0934
%include "vpcmk/api_idx_0058.asm"

%include "vpcmk/api_idx_0038.asm"

    push ax                          ; 0x0cbb
    call ds_dispatch_baa6            ; 0x0cbc
    add sp, byte 0x0e                ; 0x0cbf
    mov ax, 0                        ; 0x0cc2
    push ax                          ; 0x0cc5
    mov ax, 0xd                      ; 0x0cc6
    push ax                          ; 0x0cc9
    mov ax, word [bp - 0x0006]       ; 0x0cca
    add ax, strict word 0x1f         ; 0x0ccd
    push ax                          ; 0x0cd0
    mov ax, word [bp - 0x0004]       ; 0x0cd1
    add ax, strict word 0x50         ; 0x0cd4
    push ax                          ; 0x0cd7
    mov ax, word [bp - 0x0006]       ; 0x0cd8
    add ax, strict word 0x17         ; 0x0cdb
    push ax                          ; 0x0cde
    mov ax, word [bp - 0x0004]       ; 0x0cdf
    add ax, strict word 8            ; 0x0ce2
    push ax                          ; 0x0ce5
    mov ax, 4                        ; 0x0ce6
    push ax                          ; 0x0ce9
    call ds_dispatch_baa6            ; 0x0cea
    add sp, byte 0x0e                ; 0x0ced
    mov ax, 0                        ; 0x0cf0
    push ax                          ; 0x0cf3
    mov ax, 0x1b                     ; 0x0cf4
    push ax                          ; 0x0cf7
    mov ax, word [bp - 0x0006]       ; 0x0cf8
    add ax, strict word 0x2f         ; 0x0cfb
    push ax                          ; 0x0cfe
    mov ax, word [bp - 0x0004]       ; 0x0cff
    add ax, strict word 0x50         ; 0x0d02
    push ax                          ; 0x0d05
    mov ax, word [bp - 0x0006]       ; 0x0d06
    add ax, strict word 0x27         ; 0x0d09
    push ax                          ; 0x0d0c
    mov ax, word [bp - 0x0004]       ; 0x0d0d
    add ax, strict word 8            ; 0x0d10
    push ax                          ; 0x0d13
    mov ax, 5                        ; 0x0d14
    push ax                          ; 0x0d17
    call ds_dispatch_baa6            ; 0x0d18
    add sp, byte 0x0e                ; 0x0d1b
    mov ax, 7                        ; 0x0d1e
    cmp word [bp + 0xc], byte 7      ; 0x0d21
    jge short @..api_idx_0038.l2     ; 0x0d25
    mov ax, word [bp + 0xc]          ; 0x0d27
@..api_idx_0038.l2:
    mov word [bp - 0x001e], ax       ; 0x0d2a
    mov word [bp - 0x0002], 0        ; 0x0d2d
    jmp short @..api_idx_0038.l4     ; 0x0d32
@..api_idx_0038.l3:
    mov ax, 0                        ; 0x0d34
    push ax                          ; 0x0d37
    push ax                          ; 0x0d38
    mov ax, 6                        ; 0x0d39
    imul word [bp - 0x0002]          ; 0x0d3c
    add ax, word [bp - 0x0006]       ; 0x0d3f
    add ax, strict word 0xc          ; 0x0d42
    push ax                          ; 0x0d45
    mov ax, word [bp - 0x0004]       ; 0x0d46
    add ax, 0xb9                     ; 0x0d49
    push ax                          ; 0x0d4c
    mov ax, 6                        ; 0x0d4d
    imul word [bp - 0x0002]          ; 0x0d50
    add ax, word [bp - 0x0006]       ; 0x0d53
    add ax, strict word 6            ; 0x0d56
    push ax                          ; 0x0d59
    mov ax, word [bp - 0x0004]       ; 0x0d5a
    add ax, strict word 0x5d         ; 0x0d5d
    push ax                          ; 0x0d60
    mov ax, word [bp - 0x0002]       ; 0x0d61
    add ax, strict word 6            ; 0x0d64
    push ax                          ; 0x0d67
    call ds_dispatch_baa6            ; 0x0d68
    add sp, byte 0x0e                ; 0x0d6b
    inc word [bp - 0x0002]           ; 0x0d6e
@..api_idx_0038.l4:
    mov ax, word [bp - 0x0002]       ; 0x0d71
    cmp ax, word [bp - 0x001e]       ; 0x0d74
    jl short @..api_idx_0038.l3      ; 0x0d77
    mov ax, 0                        ; 0x0d79
    push ax                          ; 0x0d7c
    push ax                          ; 0x0d7d
    push ax                          ; 0x0d7e
    push ax                          ; 0x0d7f
    push ax                          ; 0x0d80
    mov ax, 0xffff                   ; 0x0d81
    push ax                          ; 0x0d84
    mov ax, word [bp - 0x001e]       ; 0x0d85
    add ax, strict word 6            ; 0x0d88
    push ax                          ; 0x0d8b
    call ds_dispatch_baa6            ; 0x0d8c
    add sp, byte 0x0e                ; 0x0d8f
    mov ax, word [bp - 0x000a]       ; 0x0d92
    inc ax                           ; 0x0d95
    push ax                          ; 0x0d96
    mov ax, word [bp - 0x0008]       ; 0x0d97
    inc ax                           ; 0x0d9a
    push ax                          ; 0x0d9b
    mov ax, word [bp - 0x0006]       ; 0x0d9c
    dec ax                           ; 0x0d9f
    push ax                          ; 0x0da0
    mov ax, word [bp - 0x0004]       ; 0x0da1
    dec ax                           ; 0x0da4
    push ax                          ; 0x0da5
    call ds_dispatch_e8da            ; 0x0da6
    add sp, byte 8                   ; 0x0da9
    mov word [bp - 0x001a], 1        ; 0x0dac
@..api_idx_0038.l5:
    mov ax, 0x59fe                   ; 0x0db1
    push ax                          ; 0x0db4
    call ds_dispatch_b90d            ; 0x0db5
    pop cx                           ; 0x0db8
    dec ax                           ; 0x0db9
    mov word [bp - 0x0018], ax       ; 0x0dba
    cmp word [data_59fc], byte 0     ; 0x0dbd
    je short @..api_idx_0038.l9      ; 0x0dc2
    mov ax, word [bp - 0x0020]       ; 0x0dc4
    cmp ax, word [bp - 0x0016]       ; 0x0dc7
    jl short @..api_idx_0038.l6      ; 0x0dca
    inc word [bp - 0x0020]           ; 0x0dcc
@..api_idx_0038.l6:
    mov ax, word [bp - 0x0020]       ; 0x0dcf
    cmp ax, strict word 0xffff       ; 0x0dd2
    je short @..api_idx_0038.l7      ; 0x0dd5
    cmp ax, word [bp - 0x0016]       ; 0x0dd7
    jl short @..api_idx_0038.l7      ; 0x0dda
    mov ax, word [bp - 0x0016]       ; 0x0ddc
    add ax, word [bp - 0x001e]       ; 0x0ddf
    mov cx, ax                       ; 0x0de2
    dec ax                           ; 0x0de4
    mov cx, ax                       ; 0x0de5
    mov ax, word [bp - 0x0020]       ; 0x0de7
    cmp cx, ax                       ; 0x0dea
    jge short @..api_idx_0038.l8     ; 0x0dec
@..api_idx_0038.l7:
    mov ax, word [bp - 0x0016]       ; 0x0dee
    mov word [bp - 0x0020], ax       ; 0x0df1
@..api_idx_0038.l8:
    mov word [data_5b3e], 1          ; 0x0df4
    mov ax, word [bp - 0x0020]       ; 0x0dfa
    sub ax, word [bp - 0x0016]       ; 0x0dfd
    add ax, strict word 6            ; 0x0e00
    mov word [bp - 0x0018], ax       ; 0x0e03
@..api_idx_0038.l9:
    cmp word [data_5b3e], byte 1     ; 0x0e06
    je short @..api_idx_0038.l10     ; 0x0e0b
    jmp near @..api_idx_0038.l14     ; 0x0e0d
@..api_idx_0038.l10:
    mov ax, word [bp - 0x0018]       ; 0x0e10
    jmp near @..api_idx_0038.l12     ; 0x0e13

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x32, 0xe2, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x84, 0xa9, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x04, 0xe2, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0x54, 0xa9, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x5d, 0x00, 0x50, 0xe8, 0xdb, 0xb0, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1
    db 0x00, 0x50, 0xe8, 0xfd, 0xb0, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x9a, 0xab, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xac, 0xd9, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x52, 0xaf
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x21
    db 0xaf, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xea, 0x7e, 0x03, 0xff
    db 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0xee, 0xa7, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0x5d, 0x00, 0x50, 0xe8, 0x9b, 0xaf, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1
    db 0x00, 0x50, 0xe8, 0xbd, 0xaf, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x5a, 0xaa, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46
    db 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x6c, 0xd8, 0x83, 0xc4, 0x08, 0xe9, 0x60, 0x01, 0x83, 0x7e
    db 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xcb, 0xad, 0x83, 0xc4
    db 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0xab, 0xad, 0x83, 0xc4
    db 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xe9, 0x0f, 0x01, 0x83
    db 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x7a, 0xad, 0x83
    db 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x5a, 0xad, 0x83
    db 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xe9, 0xbe, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x29, 0xad
    db 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8, 0x09, 0xad
    db 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00, 0xeb, 0x6e

@..api_idx_0038.l11:
    mov ax, word [bp - 0x0016]       ; 0x1166
    add ax, word [bp - 0x0018]       ; 0x1169
    add ax, strict word 0xfffa       ; 0x116c
    mov word [bp - 0x0020], ax       ; 0x116f
    push word [bp - 0x0022]          ; 0x1172
    push ax                          ; 0x1175
    push word [bp - 0x0016]          ; 0x1176
    mov ax, 7                        ; 0x1179
    push ax                          ; 0x117c
    mov ax, 0xf                      ; 0x117d
    push ax                          ; 0x1180
    mov ax, word [bp - 0x0006]       ; 0x1181
    add ax, strict word 6            ; 0x1184
    push ax                          ; 0x1187
    mov ax, word [bp - 0x0004]       ; 0x1188
    add ax, strict word 0x5d         ; 0x118b
    push ax                          ; 0x118e
    call ds_dispatch_bf97            ; 0x118f
    add sp, byte 0x0e                ; 0x1192
    mov ax, word [bp - 0x0006]       ; 0x1195
    add ax, strict word 0x30         ; 0x1198
    push ax                          ; 0x119b
    mov ax, word [bp - 0x0004]       ; 0x119c
    add ax, 0xb9                     ; 0x119f
    push ax                          ; 0x11a2
    mov ax, word [bp - 0x0006]       ; 0x11a3
    add ax, strict word 6            ; 0x11a6
    push ax                          ; 0x11a9
    mov ax, word [bp - 0x0004]       ; 0x11aa
    add ax, strict word 0x5d         ; 0x11ad
    push ax                          ; 0x11b0
    call ds_dispatch_e8da            ; 0x11b1
    add sp, byte 8                   ; 0x11b4
    jmp short @..api_idx_0038.l14    ; 0x11b7
    db 0x5d, 0x5e, 0x84, 0x5f, 0x84, 0x5f, 0xbb, 0x60, 0x0c, 0x61, 0x5d, 0x61
@..api_idx_0038.l12:
    cmp ax, strict word 6            ; 0x11c5
    jae short @..api_idx_0038.l13    ; 0x11c8
    xchg bx, ax                      ; 0x11ca
    shl bx, 1                        ; 0x11cb
    jmp [cs:bx + 0x6200]             ; 0x11cd
@..api_idx_0038.l13:
    jmp short @..api_idx_0038.l11    ; 0x11d2
@..api_idx_0038.l14:
    cmp word [bp - 0x001a], byte 0   ; 0x11d4
    je short @..api_idx_0038.l15     ; 0x11d8
    jmp near @..api_idx_0038.l5      ; 0x11da
@..api_idx_0038.l15:
    mov ax, 1                        ; 0x11dd
    push ax                          ; 0x11e0
    push word [bp - 0x0038]          ; 0x11e1
    call ds_dispatch_c459            ; 0x11e4
    add sp, byte 4                   ; 0x11e7
    mov ax, word [bp - 0x0020]       ; 0x11ea
    mov word [data_904e], ax         ; 0x11ed
    mov ax, word [data_9050]         ; 0x11f0
    ret                              ; 0x11f3
%include "vpcmk/api_idx_0026.asm"

    mov ax, 0                        ; 0x13f2
    push ax                          ; 0x13f5
    mov ax, 0x1b                     ; 0x13f6
    push ax                          ; 0x13f9
    mov ax, word [bp - 0x0004]       ; 0x13fa
    add ax, strict word 0x2f         ; 0x13fd
    push ax                          ; 0x1400
    mov ax, word [bp - 0x0002]       ; 0x1401
    add ax, strict word 0x50         ; 0x1404
    push ax                          ; 0x1407
    mov ax, word [bp - 0x0004]       ; 0x1408
    add ax, strict word 0x27         ; 0x140b
    push ax                          ; 0x140e
    mov ax, word [bp - 0x0002]       ; 0x140f
    add ax, strict word 8            ; 0x1412
    push ax                          ; 0x1415
    mov ax, 3                        ; 0x1416
    push ax                          ; 0x1419
    call ds_dispatch_baa6            ; 0x141a
    add sp, byte 0x0e                ; 0x141d
    mov ax, 0                        ; 0x1420
    push ax                          ; 0x1423
    push ax                          ; 0x1424
    push ax                          ; 0x1425
    push ax                          ; 0x1426
    push ax                          ; 0x1427
    mov ax, 0xffff                   ; 0x1428
    push ax                          ; 0x142b
    mov ax, 4                        ; 0x142c
    push ax                          ; 0x142f
    call ds_dispatch_baa6            ; 0x1430
    add sp, byte 0x0e                ; 0x1433
    mov ax, word [bp - 0x0008]       ; 0x1436
    inc ax                           ; 0x1439
    push ax                          ; 0x143a
    mov ax, word [bp - 0x0006]       ; 0x143b
    inc ax                           ; 0x143e
    push ax                          ; 0x143f
    mov ax, word [bp - 0x0004]       ; 0x1440
    dec ax                           ; 0x1443
    push ax                          ; 0x1444
    mov ax, word [bp - 0x0002]       ; 0x1445
    dec ax                           ; 0x1448
    push ax                          ; 0x1449
    call ds_dispatch_e8da            ; 0x144a
    add sp, byte 8                   ; 0x144d
    call ds_dispatch_ec17            ; 0x1450
    mov ax, 0                        ; 0x1453
    push ax                          ; 0x1456
    mov ax, 1                        ; 0x1457
    push ax                          ; 0x145a
    mov ax, 0                        ; 0x145b
    push ax                          ; 0x145e
    mov ax, 7                        ; 0x145f
    push ax                          ; 0x1462
    mov ax, word [bp - 0x0004]       ; 0x1463
    add ax, strict word 0x20         ; 0x1466
    push ax                          ; 0x1469
    mov ax, word [bp - 0x0002]       ; 0x146a
    add ax, strict word 0x5f         ; 0x146d
    push ax                          ; 0x1470
    mov ax, 0xe38                    ; 0x1471
    push ax                          ; 0x1474
    call api_idx_0008                ; 0x1475
    add sp, byte 0x0e                ; 0x1478
    mov ax, 0xe38                    ; 0x147b
    push ax                          ; 0x147e
    push word [bp + 0xc]             ; 0x147f
    call ds_dispatch_f364            ; 0x1482
    add sp, byte 4                   ; 0x1485
    mov ax, 1                        ; 0x1488
    push ax                          ; 0x148b
    mov ax, 0xffff                   ; 0x148c
    push ax                          ; 0x148f
    mov ax, 0                        ; 0x1490
    push ax                          ; 0x1493
    mov ax, 1                        ; 0x1494
    push ax                          ; 0x1497
    mov ax, 0x11                     ; 0x1498
    push ax                          ; 0x149b
    mov ax, word [bp - 0x0004]       ; 0x149c
    add ax, strict word 0x1f         ; 0x149f
    push ax                          ; 0x14a2
    mov ax, word [bp - 0x0002]       ; 0x14a3
    add ax, strict word 0x5d         ; 0x14a6
    push ax                          ; 0x14a9
    call ds_dispatch_bf97            ; 0x14aa
    add sp, byte 0x0e                ; 0x14ad
    mov ax, word [bp - 0x0004]       ; 0x14b0
    add ax, strict word 0x26         ; 0x14b3
    push ax                          ; 0x14b6
    mov ax, word [bp - 0x0002]       ; 0x14b7
    add ax, 0xc5                     ; 0x14ba
    push ax                          ; 0x14bd
    mov ax, word [bp - 0x0004]       ; 0x14be
    add ax, strict word 0x1f         ; 0x14c1
    push ax                          ; 0x14c4
    mov ax, word [bp - 0x0002]       ; 0x14c5
    add ax, strict word 0x5d         ; 0x14c8
    push ax                          ; 0x14cb
    call ds_dispatch_e8da            ; 0x14cc
    add sp, byte 8                   ; 0x14cf
    mov word [bp - 0x0010], 1        ; 0x14d2
@..api_idx_0026.l1:
    mov ax, 0x59fe                   ; 0x14d7
    push ax                          ; 0x14da
    call ds_dispatch_b90d            ; 0x14db
    pop cx                           ; 0x14de
    dec ax                           ; 0x14df
    mov word [bp - 0x000e], ax       ; 0x14e0
    cmp word [data_5b3e], byte 1     ; 0x14e3
    je short @..api_idx_0026.l2      ; 0x14e8
    jmp near @..api_idx_0026.l14     ; 0x14ea
@..api_idx_0026.l2:
    jmp near @..api_idx_0026.l10     ; 0x14ed
@..api_idx_0026.l3:
    call ds_dispatch_ec17            ; 0x14f0
    mov ax, 1                        ; 0x14f3
    push ax                          ; 0x14f6
    mov ax, 0                        ; 0x14f7
    push ax                          ; 0x14fa
    push ax                          ; 0x14fb
    mov ax, 1                        ; 0x14fc
    push ax                          ; 0x14ff
    mov ax, 0x11                     ; 0x1500
    push ax                          ; 0x1503
    mov ax, word [bp - 0x0004]       ; 0x1504
    add ax, strict word 0x1f         ; 0x1507
    push ax                          ; 0x150a
    mov ax, word [bp - 0x0002]       ; 0x150b
    add ax, strict word 0x5d         ; 0x150e
    push ax                          ; 0x1511
    call ds_dispatch_bf97            ; 0x1512
    add sp, byte 0x0e                ; 0x1515
    mov ax, word [bp - 0x0004]       ; 0x1518
    add ax, strict word 0x26         ; 0x151b
    push ax                          ; 0x151e
    mov ax, word [bp - 0x0002]       ; 0x151f
    add ax, 0xc5                     ; 0x1522
    push ax                          ; 0x1525
    mov ax, word [bp - 0x0004]       ; 0x1526
    add ax, strict word 0x1f         ; 0x1529
    push ax                          ; 0x152c
    mov ax, word [bp - 0x0002]       ; 0x152d
    add ax, strict word 0x5d         ; 0x1530
    push ax                          ; 0x1533
    call ds_dispatch_e8da            ; 0x1534
    add sp, byte 8                   ; 0x1537
    mov ax, 0                        ; 0x153a
    push ax                          ; 0x153d
    mov ax, 1                        ; 0x153e
    push ax                          ; 0x1541
    mov ax, 0                        ; 0x1542
    push ax                          ; 0x1545
    mov ax, 7                        ; 0x1546
    push ax                          ; 0x1549
    mov ax, word [bp - 0x0004]       ; 0x154a
    add ax, strict word 0x20         ; 0x154d
    push ax                          ; 0x1550
    mov ax, word [bp - 0x0002]       ; 0x1551
    add ax, strict word 0x5f         ; 0x1554
    push ax                          ; 0x1557
    mov ax, 0xe38                    ; 0x1558
    push ax                          ; 0x155b
    call api_idx_0008                ; 0x155c
    add sp, byte 0x0e                ; 0x155f
    mov ax, 0xe38                    ; 0x1562
    push ax                          ; 0x1565
    push word [bp + 0xc]             ; 0x1566
    call ds_dispatch_f364            ; 0x1569
    add sp, byte 4                   ; 0x156c
    mov ax, 1                        ; 0x156f
    push ax                          ; 0x1572
    mov ax, 0xffff                   ; 0x1573
    push ax                          ; 0x1576
    mov ax, 0                        ; 0x1577
    push ax                          ; 0x157a
    mov ax, 1                        ; 0x157b
    push ax                          ; 0x157e
    mov ax, 0x11                     ; 0x157f
    push ax                          ; 0x1582
    mov ax, word [bp - 0x0004]       ; 0x1583
    add ax, strict word 0x1f         ; 0x1586
    push ax                          ; 0x1589
    mov ax, word [bp - 0x0002]       ; 0x158a
    add ax, strict word 0x5d         ; 0x158d
    push ax                          ; 0x1590
    call ds_dispatch_bf97            ; 0x1591
    add sp, byte 0x0e                ; 0x1594
    mov ax, word [bp - 0x0004]       ; 0x1597
    add ax, strict word 0x26         ; 0x159a
    push ax                          ; 0x159d
    mov ax, word [bp - 0x0002]       ; 0x159e
    add ax, 0xc5                     ; 0x15a1
    push ax                          ; 0x15a4
    mov ax, word [bp - 0x0004]       ; 0x15a5
    add ax, strict word 0x1f         ; 0x15a8
    push ax                          ; 0x15ab
    mov ax, word [bp - 0x0002]       ; 0x15ac
    add ax, strict word 0x5d         ; 0x15af
    push ax                          ; 0x15b2
    call ds_dispatch_e8da            ; 0x15b3
    add sp, byte 8                   ; 0x15b6
    jmp near @..api_idx_0026.l14     ; 0x15b9
@..api_idx_0026.l4:
    cmp word [bp + 0x6], byte 0      ; 0x15bc
    je short @..api_idx_0026.l5      ; 0x15c0
    mov ax, 1                        ; 0x15c2
    push ax                          ; 0x15c5
    push ax                          ; 0x15c6
    mov ax, 0xc                      ; 0x15c7
    push ax                          ; 0x15ca
    mov ax, word [bp - 0x0004]       ; 0x15cb
    add ax, strict word 7            ; 0x15ce
    push ax                          ; 0x15d1
    mov ax, word [bp - 0x0002]       ; 0x15d2
    add ax, strict word 8            ; 0x15d5
    push ax                          ; 0x15d8
    call ds_dispatch_be5f            ; 0x15d9
    add sp, byte 0x0a                ; 0x15dc
    mov ax, 0                        ; 0x15df
    push ax                          ; 0x15e2
    mov ax, 1                        ; 0x15e3
    push ax                          ; 0x15e6
    mov ax, 0xc                      ; 0x15e7
    push ax                          ; 0x15ea
    mov ax, word [bp - 0x0004]       ; 0x15eb
    add ax, strict word 7            ; 0x15ee
    push ax                          ; 0x15f1
    mov ax, word [bp - 0x0002]       ; 0x15f2
    add ax, strict word 8            ; 0x15f5
    push ax                          ; 0x15f8
    call ds_dispatch_be5f            ; 0x15f9
    add sp, byte 0x0a                ; 0x15fc
    mov word [data_9050], 0          ; 0x15ff
    mov word [bp - 0x0010], 0        ; 0x1605
@..api_idx_0026.l5:
    jmp near @..api_idx_0026.l14     ; 0x160a
@..api_idx_0026.l6:
    cmp word [bp + 0x8], byte 0      ; 0x160d
    je short @..api_idx_0026.l7      ; 0x1611
    mov ax, 1                        ; 0x1613
    push ax                          ; 0x1616
    push ax                          ; 0x1617
    mov ax, 0xc                      ; 0x1618
    push ax                          ; 0x161b
    mov ax, word [bp - 0x0004]       ; 0x161c
    add ax, strict word 0x17         ; 0x161f
    push ax                          ; 0x1622
    mov ax, word [bp - 0x0002]       ; 0x1623
    add ax, strict word 8            ; 0x1626
    push ax                          ; 0x1629
    call ds_dispatch_be5f            ; 0x162a
    add sp, byte 0x0a                ; 0x162d
    mov ax, 0                        ; 0x1630
    push ax                          ; 0x1633
    mov ax, 1                        ; 0x1634
    push ax                          ; 0x1637
    mov ax, 0xc                      ; 0x1638
    push ax                          ; 0x163b
    mov ax, word [bp - 0x0004]       ; 0x163c
    add ax, strict word 0x17         ; 0x163f
    push ax                          ; 0x1642
    mov ax, word [bp - 0x0002]       ; 0x1643
    add ax, strict word 8            ; 0x1646
    push ax                          ; 0x1649
    call ds_dispatch_be5f            ; 0x164a
    add sp, byte 0x0a                ; 0x164d
    mov word [data_9050], 1          ; 0x1650
    mov word [bp - 0x0010], 0        ; 0x1656
@..api_idx_0026.l7:
    jmp short @..api_idx_0026.l14    ; 0x165b
@..api_idx_0026.l8:
    cmp word [bp + 0xa], byte 0      ; 0x165d
    je short @..api_idx_0026.l9      ; 0x1661
    mov ax, 1                        ; 0x1663
    push ax                          ; 0x1666
    push ax                          ; 0x1667
    mov ax, 0xc                      ; 0x1668
    push ax                          ; 0x166b
    mov ax, word [bp - 0x0004]       ; 0x166c
    add ax, strict word 0x27         ; 0x166f
    push ax                          ; 0x1672
    mov ax, word [bp - 0x0002]       ; 0x1673
    add ax, strict word 8            ; 0x1676
    push ax                          ; 0x1679
    call ds_dispatch_be5f            ; 0x167a
    add sp, byte 0x0a                ; 0x167d
    mov ax, 0                        ; 0x1680
    push ax                          ; 0x1683
    mov ax, 1                        ; 0x1684
    push ax                          ; 0x1687
    mov ax, 0xc                      ; 0x1688
    push ax                          ; 0x168b
    mov ax, word [bp - 0x0004]       ; 0x168c
    add ax, strict word 0x27         ; 0x168f
    push ax                          ; 0x1692
    mov ax, word [bp - 0x0002]       ; 0x1693
    add ax, strict word 8            ; 0x1696
    push ax                          ; 0x1699
    call ds_dispatch_be5f            ; 0x169a
    add sp, byte 0x0a                ; 0x169d
    mov word [data_9050], data_0002  ; 0x16a0
    mov word [bp - 0x0010], 0        ; 0x16a6
@..api_idx_0026.l9:
    jmp short @..api_idx_0026.l14    ; 0x16ab
@..api_idx_0026.l10:
    cmp ax, strict word 0            ; 0x16ad
    jne short @..api_idx_0026.l11    ; 0x16b0
    jmp near @..api_idx_0026.l3      ; 0x16b2
@..api_idx_0026.l11:
    cmp ax, strict word 1            ; 0x16b5
    jne short @..api_idx_0026.l12    ; 0x16b8
    jmp near @..api_idx_0026.l4      ; 0x16ba
@..api_idx_0026.l12:
    cmp ax, strict word 2            ; 0x16bd
    jne short @..api_idx_0026.l13    ; 0x16c0
    jmp near @..api_idx_0026.l6      ; 0x16c2
@..api_idx_0026.l13:
    cmp ax, strict word 3            ; 0x16c5
    je short @..api_idx_0026.l8      ; 0x16c8
@..api_idx_0026.l14:
    cmp word [bp - 0x0010], byte 0   ; 0x16ca
    je short @..api_idx_0026.l15     ; 0x16ce
    jmp near @..api_idx_0026.l1      ; 0x16d0
@..api_idx_0026.l15:
    mov ax, 1                        ; 0x16d3
    push ax                          ; 0x16d6
    push word [bp - 0x0026]          ; 0x16d7
    call ds_dispatch_c459            ; 0x16da
    add sp, byte 4                   ; 0x16dd
    mov word [data_904e], 0xffff     ; 0x16e0
    mov ax, word [data_9050]         ; 0x16e6
    ret                              ; 0x16e9
%include "vpcmk/api_idx_000c.asm"

%include "vpcmk/api_idx_0004.asm"

%include "vpcmk/api_idx_0002_3.asm"

%include "vpcmk/api_idx_0002_4.asm"

%include "vpcmk/api_idx_0010.asm"

%include "vpcmk/api_idx_0002_5.asm"

%include "vpcmk/api_idx_000a.asm"

%include "vpcmk/api_idx_0054.asm"

    mul bx                           ; 0x1d40
    mov bx, ax                       ; 0x1d42
    pop ax                           ; 0x1d44
    mul cx                           ; 0x1d45
    add bx, ax                       ; 0x1d47
    pop ax                           ; 0x1d49
    mul cx                           ; 0x1d4a
    add dx, bx                       ; 0x1d4c
    mov cx, 0x12                     ; 0x1d4e
    mov bx, 0                        ; 0x1d51
    call ds_dispatch_f99f            ; 0x1d54
    mov word [data_95aa], ax         ; 0x1d57
    mov ax, 0x14                     ; 0x1d5a
    push ax                          ; 0x1d5d
    mov ax, 0                        ; 0x1d5e
    push ax                          ; 0x1d61
    push word [data_95aa]            ; 0x1d62
    call ds_dispatch_b7c2            ; 0x1d66
    add sp, byte 6                   ; 0x1d69
    mov word [data_95aa], ax         ; 0x1d6c
    mov ax, 0x248                    ; 0x1d6f
    imul word [bp + 0x4]             ; 0x1d72
    mov bx, ax                       ; 0x1d75
    cmp byte [bx + 0x5e2f], 3        ; 0x1d77
    jae short @..api_idx_0054.l1     ; 0x1d7c
    mov ax, 0                        ; 0x1d7e
    jmp short @..api_idx_0054.l2     ; 0x1d81
@..api_idx_0054.l1:
    mov ax, 1                        ; 0x1d83
@..api_idx_0054.l2:
    mov word [data_95ac], ax         ; 0x1d86
    mov word [data_95ae], 0          ; 0x1d89
    push word [data_95ae]            ; 0x1d8f
    call api_idx_000a                ; 0x1d93
    pop cx                           ; 0x1d96
    mov ax, 0                        ; 0x1d97
    push ax                          ; 0x1d9a
    mov ax, 0xfd                     ; 0x1d9b
    push ax                          ; 0x1d9e
    call ds_dispatch_e823            ; 0x1d9f
    add sp, byte 4                   ; 0x1da2
    lea ax, word [bp - 0x0054]       ; 0x1da5
    push ax                          ; 0x1da8
    mov ax, 0xc9                     ; 0x1da9
    push ax                          ; 0x1dac
    call ds_dispatch_b53b            ; 0x1dad
    add sp, byte 4                   ; 0x1db0
    mov ax, 6                        ; 0x1db3
    push ax                          ; 0x1db6
    mov ax, 0xe4                     ; 0x1db7
    push ax                          ; 0x1dba
    call ds_dispatch_e809            ; 0x1dbb
    add sp, byte 4                   ; 0x1dbe
    mov ax, 0                        ; 0x1dc1
    push ax                          ; 0x1dc4
    lea ax, word [bp - 0x0054]       ; 0x1dc5
    push ax                          ; 0x1dc8
    call ds_dispatch_e84e            ; 0x1dc9
    add sp, byte 4                   ; 0x1dcc
    lea ax, word [bp - 0x0054]       ; 0x1dcf
    push ax                          ; 0x1dd2
    mov ax, 0x248                    ; 0x1dd3
    imul word [bp + 0x4]             ; 0x1dd6
    mov bx, ax                       ; 0x1dd9
    mov al, byte [bx + 0x5e2d]       ; 0x1ddb
    sub ah, ah                       ; 0x1ddf
    mov cx, 0xa                      ; 0x1de1
    imul cx                          ; 0x1de4
    push ax                          ; 0x1de6
    mov al, byte [bx + 0x5e2e]       ; 0x1de7
    sub ah, ah                       ; 0x1deb
    mov cx, ax                       ; 0x1ded
    pop ax                           ; 0x1def
    add ax, cx                       ; 0x1df0
    add ax, 0x320                    ; 0x1df2
    push ax                          ; 0x1df5
    call ds_dispatch_b53b            ; 0x1df6
    add sp, byte 4                   ; 0x1df9
    mov ax, 6                        ; 0x1dfc
    push ax                          ; 0x1dff
    lea ax, word [bp - 0x0054]       ; 0x1e00
    push ax                          ; 0x1e03
    call ds_dispatch_fa90            ; 0x1e04
    pop cx                           ; 0x1e07
    mov cx, 0x34                     ; 0x1e08
    sub cx, ax                       ; 0x1e0b
    mov ax, 6                        ; 0x1e0d
    imul cx                          ; 0x1e10
    push ax                          ; 0x1e12
    call ds_dispatch_e809            ; 0x1e13
    add sp, byte 4                   ; 0x1e16
    mov ax, 0                        ; 0x1e19
    push ax                          ; 0x1e1c
    lea ax, word [bp - 0x0054]       ; 0x1e1d
    push ax                          ; 0x1e20
    call ds_dispatch_e84e            ; 0x1e21
    add sp, byte 4                   ; 0x1e24
    mov ax, 0                        ; 0x1e27
    push ax                          ; 0x1e2a
    mov ax, 0x47                     ; 0x1e2b
    push ax                          ; 0x1e2e
    call ds_dispatch_e823            ; 0x1e2f
    add sp, byte 4                   ; 0x1e32
    lea ax, word [bp - 0x0054]       ; 0x1e35
    push ax                          ; 0x1e38
    mov ax, 0xca                     ; 0x1e39
    push ax                          ; 0x1e3c
    call ds_dispatch_b53b            ; 0x1e3d
    add sp, byte 4                   ; 0x1e40
    mov ax, 0xc                      ; 0x1e43
    push ax                          ; 0x1e46
    mov ax, 0xe4                     ; 0x1e47
    push ax                          ; 0x1e4a
    call ds_dispatch_e809            ; 0x1e4b
    add sp, byte 4                   ; 0x1e4e
    mov ax, 0                        ; 0x1e51
    push ax                          ; 0x1e54
    lea ax, word [bp - 0x0054]       ; 0x1e55
    push ax                          ; 0x1e58
    call ds_dispatch_e84e            ; 0x1e59
    add sp, byte 4                   ; 0x1e5c
    mov ax, 0                        ; 0x1e5f
    push ax                          ; 0x1e62
    mov ax, 0x20                     ; 0x1e63
    push ax                          ; 0x1e66
    call ds_dispatch_e830            ; 0x1e67
    add sp, byte 4                   ; 0x1e6a
    mov ax, 0                        ; 0x1e6d
    push ax                          ; 0x1e70
    mov ax, 0xa                      ; 0x1e71
    push ax                          ; 0x1e74
    mov ax, 0x248                    ; 0x1e75
    imul word [bp + 0x4]             ; 0x1e78
    mov bx, ax                       ; 0x1e7b
    push word [bx + 0x5c02]          ; 0x1e7d
    push word [bx + 0x5c00]          ; 0x1e81
    call ds_dispatch_b293            ; 0x1e85
    add sp, byte 8                   ; 0x1e88
    lea ax, word [bp - 0x0054]       ; 0x1e8b
    push ax                          ; 0x1e8e
    mov ax, 0xcb                     ; 0x1e8f
    push ax                          ; 0x1e92
    call ds_dispatch_b53b            ; 0x1e93
    add sp, byte 4                   ; 0x1e96
    mov ax, 0x12                     ; 0x1e99
    push ax                          ; 0x1e9c
    mov ax, 0xe4                     ; 0x1e9d
    push ax                          ; 0x1ea0
    call ds_dispatch_e809            ; 0x1ea1
    add sp, byte 4                   ; 0x1ea4
    mov ax, 0                        ; 0x1ea7
    push ax                          ; 0x1eaa
    lea ax, word [bp - 0x0054]       ; 0x1eab
    push ax                          ; 0x1eae
    call ds_dispatch_e84e            ; 0x1eaf
    add sp, byte 4                   ; 0x1eb2
    mov ax, 0                        ; 0x1eb5
    push ax                          ; 0x1eb8
    mov ax, 0x20                     ; 0x1eb9
    push ax                          ; 0x1ebc
    call ds_dispatch_e830            ; 0x1ebd
    add sp, byte 4                   ; 0x1ec0
    mov ax, 0                        ; 0x1ec3
    push ax                          ; 0x1ec6
    mov ax, 0xa                      ; 0x1ec7
    push ax                          ; 0x1eca
    mov ax, 0x248                    ; 0x1ecb
    imul word [bp + 0x4]             ; 0x1ece
    mov bx, ax                       ; 0x1ed1
    push word [bx + 0x5c06]          ; 0x1ed3
    push word [bx + 0x5c04]          ; 0x1ed7
    call ds_dispatch_b293            ; 0x1edb
    add sp, byte 8                   ; 0x1ede
    mov ax, 0                        ; 0x1ee1
    push ax                          ; 0x1ee4
    mov ax, 0x1d                     ; 0x1ee5
    push ax                          ; 0x1ee8
    call ds_dispatch_e823            ; 0x1ee9
    add sp, byte 4                   ; 0x1eec
    lea ax, word [bp - 0x0054]       ; 0x1eef
    push ax                          ; 0x1ef2
    mov ax, 0xd4                     ; 0x1ef3
    push ax                          ; 0x1ef6
    call ds_dispatch_b53b            ; 0x1ef7
    add sp, byte 4                   ; 0x1efa
    mov ax, 0x5d                     ; 0x1efd
    push ax                          ; 0x1f00
    mov ax, 6                        ; 0x1f01
    push ax                          ; 0x1f04
    call ds_dispatch_e809            ; 0x1f05
    add sp, byte 4                   ; 0x1f08
    mov ax, 0                        ; 0x1f0b
    push ax                          ; 0x1f0e
    lea ax, word [bp - 0x0054]       ; 0x1f0f
    push ax                          ; 0x1f12
    call ds_dispatch_e84e            ; 0x1f13
    add sp, byte 4                   ; 0x1f16
    mov ax, 0                        ; 0x1f19
    push ax                          ; 0x1f1c
    mov ax, 0x20                     ; 0x1f1d
    push ax                          ; 0x1f20
    call ds_dispatch_e830            ; 0x1f21
    add sp, byte 4                   ; 0x1f24
    mov ax, 0                        ; 0x1f27
    push ax                          ; 0x1f2a
    mov ax, 0x1b                     ; 0x1f2b
    push ax                          ; 0x1f2e
    call ds_dispatch_e823            ; 0x1f2f
    add sp, byte 4                   ; 0x1f32
    lea ax, word [bp - 0x0054]       ; 0x1f35
    push ax                          ; 0x1f38
    mov ax, 0x248                    ; 0x1f39
    imul word [bp + 0x4]             ; 0x1f3c
    mov bx, ax                       ; 0x1f3f
    push word [bx + 0x5c0c]          ; 0x1f41
    call ds_dispatch_b27d            ; 0x1f45
    add sp, byte 4                   ; 0x1f48
    mov ax, 0                        ; 0x1f4b
    push ax                          ; 0x1f4e
    lea ax, word [bp - 0x0054]       ; 0x1f4f
    push ax                          ; 0x1f52
    call ds_dispatch_e84e            ; 0x1f53
    add sp, byte 4                   ; 0x1f56
    mov ax, 0                        ; 0x1f59
    push ax                          ; 0x1f5c
    mov ax, 0x2f                     ; 0x1f5d
    push ax                          ; 0x1f60
    call ds_dispatch_e830            ; 0x1f61
    add sp, byte 4                   ; 0x1f64
    lea ax, word [bp - 0x0054]       ; 0x1f67
    push ax                          ; 0x1f6a
    mov ax, 0x248                    ; 0x1f6b
    imul word [bp + 0x4]             ; 0x1f6e
    mov bx, ax                       ; 0x1f71
    push word [bx + 0x5c0e]          ; 0x1f73
    call ds_dispatch_b27d            ; 0x1f77
    add sp, byte 4                   ; 0x1f7a
    mov ax, 0                        ; 0x1f7d
    push ax                          ; 0x1f80
    lea ax, word [bp - 0x0054]       ; 0x1f81
    push ax                          ; 0x1f84
    call ds_dispatch_e84e            ; 0x1f85
    add sp, byte 4                   ; 0x1f88
    mov ax, 0                        ; 0x1f8b
    push ax                          ; 0x1f8e
    mov ax, 0x1d                     ; 0x1f8f
    push ax                          ; 0x1f92
    call ds_dispatch_e823            ; 0x1f93
    add sp, byte 4                   ; 0x1f96
    lea ax, word [bp - 0x0054]       ; 0x1f99
    push ax                          ; 0x1f9c
    mov ax, 0xd5                     ; 0x1f9d
    push ax                          ; 0x1fa0
    call ds_dispatch_b53b            ; 0x1fa1
    add sp, byte 4                   ; 0x1fa4
    mov ax, 0x63                     ; 0x1fa7
    push ax                          ; 0x1faa
    mov ax, 6                        ; 0x1fab
    push ax                          ; 0x1fae
    call ds_dispatch_e809            ; 0x1faf
    add sp, byte 4                   ; 0x1fb2
    mov ax, 0                        ; 0x1fb5
    push ax                          ; 0x1fb8
    lea ax, word [bp - 0x0054]       ; 0x1fb9
    push ax                          ; 0x1fbc
    call ds_dispatch_e84e            ; 0x1fbd
    add sp, byte 4                   ; 0x1fc0
    mov ax, 0                        ; 0x1fc3
    push ax                          ; 0x1fc6
    mov ax, 0x20                     ; 0x1fc7
    push ax                          ; 0x1fca
    call ds_dispatch_e830            ; 0x1fcb
    add sp, byte 4                   ; 0x1fce
    mov ax, 0                        ; 0x1fd1
    push ax                          ; 0x1fd4
    mov ax, 0x1b                     ; 0x1fd5
    push ax                          ; 0x1fd8
    call ds_dispatch_e823            ; 0x1fd9
    add sp, byte 4                   ; 0x1fdc
    mov ax, 0x248                    ; 0x1fdf
    imul word [bp + 0x4]             ; 0x1fe2
    mov bx, ax                       ; 0x1fe5
    mov ax, word [bx + 0x5c10]       ; 0x1fe7
    mov cx, 0x64                     ; 0x1feb
    imul cx                          ; 0x1fee
    mov cx, word [bx + 0x5c12]       ; 0x1ff0
    cwd                              ; 0x1ff4
    idiv cx                          ; 0x1ff5
    mov word [bp - 0x0004], ax       ; 0x1ff7
    cmp ax, strict word 1            ; 0x1ffa
    jge short @..api_idx_0054.l3     ; 0x1ffd
    cmp word [bx + 0x5c10], byte 0   ; 0x1fff
    jle short @..api_idx_0054.l3     ; 0x2004
    mov ax, 1                        ; 0x2006
    jmp short @..api_idx_0054.l4     ; 0x2009
@..api_idx_0054.l3:
    mov ax, word [bp - 0x0004]       ; 0x200b
@..api_idx_0054.l4:
    mov word [bp - 0x0004], ax       ; 0x200e
    lea ax, word [bp - 0x0054]       ; 0x2011
    push ax                          ; 0x2014
    push word [bp - 0x0004]          ; 0x2015
    call ds_dispatch_b27d            ; 0x2018
    add sp, byte 4                   ; 0x201b
    mov ax, 0                        ; 0x201e
    push ax                          ; 0x2021
    lea ax, word [bp - 0x0054]       ; 0x2022
    push ax                          ; 0x2025
    call ds_dispatch_e84e            ; 0x2026
    add sp, byte 4                   ; 0x2029
    mov ax, 0                        ; 0x202c
    push ax                          ; 0x202f
    mov ax, 0x90bb                   ; 0x2030
    push ax                          ; 0x2033
    call ds_dispatch_e84e            ; 0x2034
    add sp, byte 4                   ; 0x2037
    mov ax, 0                        ; 0x203a
    push ax                          ; 0x203d
    mov ax, 0x1d                     ; 0x203e
    push ax                          ; 0x2041
    call ds_dispatch_e823            ; 0x2042
    add sp, byte 4                   ; 0x2045
    mov ax, 0                        ; 0x2048
    push ax                          ; 0x204b
    mov ax, 0x28                     ; 0x204c
    push ax                          ; 0x204f
    call ds_dispatch_e830            ; 0x2050
    add sp, byte 4                   ; 0x2053
    lea ax, word [bp - 0x0054]       ; 0x2056
    push ax                          ; 0x2059
    mov ax, 0x248                    ; 0x205a
    imul word [bp + 0x4]             ; 0x205d
    mov bx, ax                       ; 0x2060
    push word [bx + 0x5c12]          ; 0x2062
    call ds_dispatch_b27d            ; 0x2066
    add sp, byte 4                   ; 0x2069
    mov ax, 0                        ; 0x206c
    push ax                          ; 0x206f
    lea ax, word [bp - 0x0054]       ; 0x2070
    push ax                          ; 0x2073
    call ds_dispatch_e84e            ; 0x2074
    add sp, byte 4                   ; 0x2077
    mov ax, 0                        ; 0x207a
    push ax                          ; 0x207d
    mov ax, 0x29                     ; 0x207e
    push ax                          ; 0x2081
    call ds_dispatch_e830            ; 0x2082
    add sp, byte 4                   ; 0x2085
    push word [bp + 0x4]             ; 0x2088
    call api_idx_0004                ; 0x208b
    pop cx                           ; 0x208e
    ret                              ; 0x208f
%include "vpcmk/api_idx_0004_2.asm"

%include "vpcmk/api_idx_0004_3.asm"

%include "vpcmk/api_idx_0004_4.asm"

    cmp word [bx - 0x6a50], byte 1   ; 0x2471
    jne short @..api_idx_0004_4.l5   ; 0x2476
    mov ax, 0x14                     ; 0x2478
    imul word [bp - 0x0004]          ; 0x247b
    add ax, 0xe38                    ; 0x247e
    push ax                          ; 0x2481
    mov ax, word [bp - 0x0002]       ; 0x2482
    add ax, 0x157c                   ; 0x2485
    push ax                          ; 0x2488
    call ds_dispatch_b53b            ; 0x2489
    add sp, byte 4                   ; 0x248c
    mov ax, word [bp - 0x0002]       ; 0x248f
    mov cx, word [bp - 0x0004]       ; 0x2492
    shl cx, 1                        ; 0x2495
    mov si, cx                       ; 0x2497
    mov bx, word [bp + 0x8]          ; 0x2499
    mov word [bx + si], ax           ; 0x249c
    inc word [bp - 0x0004]           ; 0x249e
@..api_idx_0004_4.l5:
    inc word [bp - 0x0002]           ; 0x24a1
@..api_idx_0004_4.l6:
    mov ax, word [bp + 0x6]          ; 0x24a4
    shl ax, 1                        ; 0x24a7
    shl ax, 1                        ; 0x24a9
    mov bx, ax                       ; 0x24ab
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]       ; 0x24b1
    jge short @..api_idx_0004_4.l4   ; 0x24b4
    mov ax, 0x95f4                   ; 0x24b6
    push ax                          ; 0x24b9
    mov ax, 0x159e                   ; 0x24ba
    push ax                          ; 0x24bd
    call ds_dispatch_b53b            ; 0x24be
    add sp, byte 4                   ; 0x24c1
    mov ax, word [bp - 0x0004]       ; 0x24c4
    ret                              ; 0x24c7
%include "vpcmk/api_idx_0002_6.asm"

%include "vpcmk/api_idx_002e.asm"

%include "vpcmk/api_idx_0032.asm"

    jne short @..api_idx_0032.l14    ; 0x28f1
    mov ax, 0x1a                     ; 0x28f3
@..api_idx_0032.l14:
    push ax                          ; 0x28f6
    call ds_dispatch_e823            ; 0x28f7
    add sp, byte 4                   ; 0x28fa
    mov ax, 0xbe                     ; 0x28fd
    push ax                          ; 0x2900
    mov ax, 0x14                     ; 0x2901
    imul word [bp - 0x0002]          ; 0x2904
    add ax, 0x9610                   ; 0x2907
    push ax                          ; 0x290a
    call ds_dispatch_fa90            ; 0x290b
    pop cx                           ; 0x290e
    mov cx, ax                       ; 0x290f
    mov ax, 9                        ; 0x2911
    sub ax, cx                       ; 0x2914
    mov cx, 6                        ; 0x2916
    imul cx                          ; 0x2919
    mov cx, data_0002                ; 0x291b
    cwd                              ; 0x291e
    idiv cx                          ; 0x291f
    add ax, word [bp - 0x0006]       ; 0x2921
    inc ax                           ; 0x2924
    push ax                          ; 0x2925
    call ds_dispatch_e809            ; 0x2926
    add sp, byte 4                   ; 0x2929
    mov ax, 0                        ; 0x292c
    push ax                          ; 0x292f
    mov ax, 0x14                     ; 0x2930
    imul word [bp - 0x0002]          ; 0x2933
    add ax, 0x9610                   ; 0x2936
    push ax                          ; 0x2939
    call ds_dispatch_e84e            ; 0x293a
    add sp, byte 4                   ; 0x293d
    mov ax, 0                        ; 0x2940
    push ax                          ; 0x2943
    push ax                          ; 0x2944
    mov ax, 0xc4                     ; 0x2945
    push ax                          ; 0x2948
    mov ax, word [bp - 0x0006]       ; 0x2949
    add ax, strict word 0x36         ; 0x294c
    push ax                          ; 0x294f
    mov ax, 0xbc                     ; 0x2950
    push ax                          ; 0x2953
    push word [bp - 0x0006]          ; 0x2954
    mov ax, word [bp + 0x8]          ; 0x2957
    add ax, word [bp - 0x000e]       ; 0x295a
    inc ax                           ; 0x295d
    push ax                          ; 0x295e
    call ds_dispatch_baa6            ; 0x295f
    add sp, byte 0x0e                ; 0x2962
    mov ax, word [bp - 0x0002]       ; 0x2965
    mov cx, word [bp - 0x000e]       ; 0x2968
    shl cx, 1                        ; 0x296b
    mov bx, cx                       ; 0x296d
    add bx, bp                       ; 0x296f
    mov word [bx - 0x0026], ax       ; 0x2971
    cmp ax, word [bp + 0x6]          ; 0x2974
    jne short @..api_idx_0032.l15    ; 0x2977
    mov ax, word [bp - 0x000e]       ; 0x2979
    mov word [bp - 0x0032], ax       ; 0x297c
    cmp word [data_0e32], byte 0     ; 0x297f
    jne short @..api_idx_0032.l15    ; 0x2984
    mov ax, 0x16                     ; 0x2986
    push ax                          ; 0x2989
    mov ax, 0xc4                     ; 0x298a
    push ax                          ; 0x298d
    mov ax, word [bp - 0x0006]       ; 0x298e
    add ax, strict word 0x36         ; 0x2991
    push ax                          ; 0x2994
    mov ax, 0xbc                     ; 0x2995
    push ax                          ; 0x2998
    push word [bp - 0x0006]          ; 0x2999
    call loc_03ca                    ; 0x299c
    add sp, byte 0x0a                ; 0x299f
@..api_idx_0032.l15:
    inc word [bp - 0x000e]           ; 0x29a2
@..api_idx_0032.l16:
    inc word [bp - 0x0002]           ; 0x29a5
    mov ax, word [bp - 0x0002]       ; 0x29a8
    cmp ax, strict word 4            ; 0x29ab
    jg short @..api_idx_0032.l17     ; 0x29ae
    jmp near @..api_idx_0032.l12     ; 0x29b0
@..api_idx_0032.l17:
    mov ax, 0                        ; 0x29b3
    push ax                          ; 0x29b6
    push ax                          ; 0x29b7
    push ax                          ; 0x29b8
    push ax                          ; 0x29b9
    push ax                          ; 0x29ba
    mov ax, 0xffff                   ; 0x29bb
    push ax                          ; 0x29be
    mov ax, word [bp + 0x8]          ; 0x29bf
    add ax, word [bp - 0x000e]       ; 0x29c2
    inc ax                           ; 0x29c5
    push ax                          ; 0x29c6
    call ds_dispatch_baa6            ; 0x29c7
    add sp, byte 0x0e                ; 0x29ca
    mov ax, 0xc6                     ; 0x29cd
    push ax                          ; 0x29d0
    mov ax, 0x13c                    ; 0x29d1
    push ax                          ; 0x29d4
    mov ax, 0x70                     ; 0x29d5
    push ax                          ; 0x29d8
    mov ax, 1                        ; 0x29d9
    push ax                          ; 0x29dc
    call ds_dispatch_e8da            ; 0x29dd
    add sp, byte 8                   ; 0x29e0
    cmp word [data_0e32], byte 0     ; 0x29e3
    je short @..api_idx_0032.l19     ; 0x29e8
@..api_idx_0032.l18:
    mov ax, 0x59fe                   ; 0x29ea
    push ax                          ; 0x29ed
    call ds_dispatch_b90d            ; 0x29ee
    pop cx                           ; 0x29f1
    dec ax                           ; 0x29f2
    mov word [bp - 0x0008], ax       ; 0x29f3
    cmp word [data_5b3e], byte 0     ; 0x29f6
    je short @..api_idx_0032.l18     ; 0x29fb
    jmp near @..api_idx_0032.l31     ; 0x29fd
@..api_idx_0032.l19:
    mov word [bp - 0x0008], 0xffff   ; 0x2a00
    mov ax, word [bp - 0x0032]       ; 0x2a05
    mov word [bp - 0x0002], ax       ; 0x2a08
@..api_idx_0032.l20:
    mov ax, 0x3a                     ; 0x2a0b
    imul word [bp - 0x0002]          ; 0x2a0e
    add ax, strict word 4            ; 0x2a11
    mov word [bp - 0x0006], ax       ; 0x2a14
    mov ax, 0x16                     ; 0x2a17
    push ax                          ; 0x2a1a
    mov ax, 0xc4                     ; 0x2a1b
    push ax                          ; 0x2a1e
    mov ax, word [bp - 0x0006]       ; 0x2a1f
    add ax, strict word 0x36         ; 0x2a22
    push ax                          ; 0x2a25
    mov ax, 0xbc                     ; 0x2a26
    push ax                          ; 0x2a29
    push word [bp - 0x0006]          ; 0x2a2a
    call loc_03ca                    ; 0x2a2d
    add sp, byte 0x0a                ; 0x2a30
    mov ax, 0xc7                     ; 0x2a33
    push ax                          ; 0x2a36
    mov ax, 0x13d                    ; 0x2a37
    push ax                          ; 0x2a3a
    mov ax, 0xbb                     ; 0x2a3b
    push ax                          ; 0x2a3e
    mov ax, 3                        ; 0x2a3f
    push ax                          ; 0x2a42
    call ds_dispatch_e8da            ; 0x2a43
    add sp, byte 8                   ; 0x2a46
    mov ax, 0                        ; 0x2a49
    push ax                          ; 0x2a4c
    mov ax, 0xc4                     ; 0x2a4d
    push ax                          ; 0x2a50
    mov ax, word [bp - 0x0006]       ; 0x2a51
    add ax, strict word 0x36         ; 0x2a54
    push ax                          ; 0x2a57
    mov ax, 0xbc                     ; 0x2a58
    push ax                          ; 0x2a5b
    push word [bp - 0x0006]          ; 0x2a5c
    call loc_03ca                    ; 0x2a5f
    add sp, byte 0x0a                ; 0x2a62
@..api_idx_0032.l21:
    mov ax, 1                        ; 0x2a65
    push ax                          ; 0x2a68
    call ds_dispatch_ea50            ; 0x2a69
    pop cx                           ; 0x2a6c
    test ax, ax                      ; 0x2a6d
    jne short @..api_idx_0032.l22    ; 0x2a6f
    jmp short @..api_idx_0032.l21    ; 0x2a71
@..api_idx_0032.l22:
    mov ax, 1                        ; 0x2a73
    push ax                          ; 0x2a76
    call ds_dispatch_eb32            ; 0x2a77
    pop cx                           ; 0x2a7a
    sub ah, ah                       ; 0x2a7b
    mov word [bp - 0x0030], ax       ; 0x2a7d
    jmp short @..api_idx_0032.l29    ; 0x2a80
@..api_idx_0032.l23:
    mov ax, word [bp - 0x0002]       ; 0x2a82
    add ax, word [bp - 0x000e]       ; 0x2a85
    dec ax                           ; 0x2a88
    cwd                              ; 0x2a89
    idiv word [bp - 0x000e]          ; 0x2a8a
    mov word [bp - 0x0002], dx       ; 0x2a8d
    jmp short @..api_idx_0032.l30    ; 0x2a90
@..api_idx_0032.l24:
    mov ax, word [bp - 0x0002]       ; 0x2a92
    inc ax                           ; 0x2a95
    cwd                              ; 0x2a96
    idiv word [bp - 0x000e]          ; 0x2a97
    mov word [bp - 0x0002], dx       ; 0x2a9a
    jmp short @..api_idx_0032.l30    ; 0x2a9d
@..api_idx_0032.l25:
    mov ax, word [bp + 0x8]          ; 0x2a9f
    add ax, word [bp - 0x0002]       ; 0x2aa2
    inc ax                           ; 0x2aa5
    mov word [bp - 0x0008], ax       ; 0x2aa6
    jmp short @..api_idx_0032.l30    ; 0x2aa9
@..api_idx_0032.l26:
    mov ax, word [bp - 0x000a]       ; 0x2aab
    mov word [bp - 0x0008], ax       ; 0x2aae
    jmp short @..api_idx_0032.l30    ; 0x2ab1
@..api_idx_0032.l27:
    mov ax, word [bp + 0x8]          ; 0x2ab3
    mov word [bp - 0x0008], ax       ; 0x2ab6
    jmp short @..api_idx_0032.l30    ; 0x2ab9
@..api_idx_0032.l28:
    mov ax, word [bp - 0x000a]       ; 0x2abb
    inc ax                           ; 0x2abe
    cwd                              ; 0x2abf
    idiv word [bp + 0x8]             ; 0x2ac0
    mov word [bp - 0x0008], dx       ; 0x2ac3
    jmp short @..api_idx_0032.l30    ; 0x2ac6
@..api_idx_0032.l29:
    cmp ax, strict word 8            ; 0x2ac8
    je short @..api_idx_0032.l23     ; 0x2acb
    cmp ax, strict word 0xa          ; 0x2acd
    je short @..api_idx_0032.l24     ; 0x2ad0
    cmp ax, strict word 0xd          ; 0x2ad2
    je short @..api_idx_0032.l25     ; 0x2ad5
    cmp ax, strict word 0x20         ; 0x2ad7
    je short @..api_idx_0032.l28     ; 0x2ada
    cmp ax, strict word 0x2b         ; 0x2adc
    je short @..api_idx_0032.l27     ; 0x2adf
    cmp ax, strict word 0x2d         ; 0x2ae1
    je short @..api_idx_0032.l26     ; 0x2ae4
    cmp ax, strict word 0x3d         ; 0x2ae6
    je short @..api_idx_0032.l27     ; 0x2ae9
@..api_idx_0032.l30:
    cmp word [bp - 0x0008], byte 0xff ; 0x2aeb
    jne short @..api_idx_0032.l31    ; 0x2aef
    jmp near @..api_idx_0032.l20     ; 0x2af1
@..api_idx_0032.l31:
    mov ax, word [bp - 0x0008]       ; 0x2af4
    cmp ax, word [bp + 0x8]          ; 0x2af7
    jge short @..api_idx_0032.l32    ; 0x2afa
    cmp ax, word [bp - 0x000a]       ; 0x2afc
    je short @..api_idx_0032.l32     ; 0x2aff
    mov word [bp - 0x000a], ax       ; 0x2b01
    jmp near @..api_idx_0032.l39     ; 0x2b04
@..api_idx_0032.l32:
    mov ax, word [bp - 0x0008]       ; 0x2b07
    cmp ax, word [bp - 0x000a]       ; 0x2b0a
    jne short @..api_idx_0032.l35    ; 0x2b0d
    mov ax, 0x248                    ; 0x2b0f
    imul word [bp + 0x4]             ; 0x2b12
    mov cx, word [bp - 0x000a]       ; 0x2b15
    shl cx, 1                        ; 0x2b18
    mov si, cx                       ; 0x2b1a
    mov bx, word [bp + 0xa]          ; 0x2b1c
    mov cx, word [bx + si]           ; 0x2b1f
    add ax, cx                       ; 0x2b21
    mov bx, ax                       ; 0x2b23
    mov al, byte [bx + 0x5d6c]       ; 0x2b25
    sub ah, ah                       ; 0x2b29
    shl cx, 1                        ; 0x2b2b
    mov bx, cx                       ; 0x2b2d
    mov cx, word [bx - 0x6928]       ; 0x2b2f
    cmp ax, cx                       ; 0x2b33
    jle short @..api_idx_0032.l33    ; 0x2b35
    mov ax, 0x248                    ; 0x2b37
    imul word [bp + 0x4]             ; 0x2b3a
    mov bx, word [bp + 0xa]          ; 0x2b3d
    mov cx, word [bx + si]           ; 0x2b40
    add ax, cx                       ; 0x2b42
    mov bx, ax                       ; 0x2b44
    dec byte [bx + 0x5d6c]           ; 0x2b46
    inc word [bp - 0x000c]           ; 0x2b4a
    jmp short @..api_idx_0032.l34    ; 0x2b4d
@..api_idx_0032.l33:
    mov ax, 0                        ; 0x2b4f
    push ax                          ; 0x2b52
    call ds_dispatch_b7e0            ; 0x2b53
    pop cx                           ; 0x2b56
@..api_idx_0032.l34:
    jmp short @..api_idx_0032.l39    ; 0x2b57
@..api_idx_0032.l35:
    mov ax, word [bp - 0x0008]       ; 0x2b59
    cmp ax, word [bp + 0x8]          ; 0x2b5c
    jne short @..api_idx_0032.l38    ; 0x2b5f
    mov ax, 0x248                    ; 0x2b61
    imul word [bp + 0x4]             ; 0x2b64
    mov cx, word [bp - 0x000a]       ; 0x2b67
    shl cx, 1                        ; 0x2b6a
    mov si, cx                       ; 0x2b6c
    mov bx, word [bp + 0xa]          ; 0x2b6e
    mov cx, word [bx + si]           ; 0x2b71
    add ax, cx                       ; 0x2b73
    mov bx, ax                       ; 0x2b75
    cmp byte [bx + 0x5d6c], 0x64     ; 0x2b77
    jae short @..api_idx_0032.l36    ; 0x2b7c
    cmp word [bp - 0x000c], byte 0   ; 0x2b7e
    jle short @..api_idx_0032.l36    ; 0x2b82
    inc byte [bx + 0x5d6c]           ; 0x2b84
    dec word [bp - 0x000c]           ; 0x2b88
    jmp short @..api_idx_0032.l37    ; 0x2b8b
@..api_idx_0032.l36:
    mov ax, 0                        ; 0x2b8d
    push ax                          ; 0x2b90
    call ds_dispatch_b7e0            ; 0x2b91
    pop cx                           ; 0x2b94
@..api_idx_0032.l37:
    jmp short @..api_idx_0032.l39    ; 0x2b95
@..api_idx_0032.l38:
    mov ax, word [bp - 0x0008]       ; 0x2b97
    sub ax, word [bp + 0x8]          ; 0x2b9a
    dec ax                           ; 0x2b9d
    mov word [bp - 0x0028], ax       ; 0x2b9e
    shl ax, 1                        ; 0x2ba1
    mov bx, ax                       ; 0x2ba3
    add bx, bp                       ; 0x2ba5
    mov ax, word [bx - 0x0026]       ; 0x2ba7
    mov word [bp - 0x002a], ax       ; 0x2baa
@..api_idx_0032.l39:
    cmp word [bp - 0x0028], byte 0xff ; 0x2bad
    jne short @..api_idx_0032.l40    ; 0x2bb1
    jmp near @..api_idx_0032.l1      ; 0x2bb3
@..api_idx_0032.l40:
    mov ax, word [bp - 0x000c]       ; 0x2bb6
    mov cx, word [bp + 0x6]          ; 0x2bb9
    shl cx, 1                        ; 0x2bbc
    mov bx, cx                       ; 0x2bbe
    mov word [bx - 0x69f8], ax       ; 0x2bc0
    mov ax, 1                        ; 0x2bc4
    push ax                          ; 0x2bc7
    push ax                          ; 0x2bc8
    mov ax, 9                        ; 0x2bc9
    push ax                          ; 0x2bcc
    mov ax, 0xbc                     ; 0x2bcd
    push ax                          ; 0x2bd0
    mov ax, 0x3a                     ; 0x2bd1
    imul word [bp - 0x0028]          ; 0x2bd4
    add ax, strict word 4            ; 0x2bd7
    push ax                          ; 0x2bda
    call ds_dispatch_be5f            ; 0x2bdb
    add sp, byte 0x0a                ; 0x2bde
    mov ax, 0                        ; 0x2be1
    push ax                          ; 0x2be4
    mov ax, 1                        ; 0x2be5
    push ax                          ; 0x2be8
    mov ax, 9                        ; 0x2be9
    push ax                          ; 0x2bec
    mov ax, 0xbc                     ; 0x2bed
    push ax                          ; 0x2bf0
    mov ax, 0x3a                     ; 0x2bf1
    imul word [bp - 0x0028]          ; 0x2bf4
    add ax, strict word 4            ; 0x2bf7
    push ax                          ; 0x2bfa
    call ds_dispatch_be5f            ; 0x2bfb
    add sp, byte 0x0a                ; 0x2bfe
    mov ax, 1                        ; 0x2c01
    push ax                          ; 0x2c04
    push word [bp - 0x002c]          ; 0x2c05
    push word [bp - 0x002e]          ; 0x2c08
    call ds_dispatch_e94f            ; 0x2c0b
    add sp, byte 6                   ; 0x2c0e
    mov ax, word [bp - 0x002a]       ; 0x2c11
    ret                              ; 0x2c14
%include "vpcmk/api_idx_0088.asm"

%include "vpcmk/api_idx_0004_5.asm"

%include "vpcmk/api_idx_000a_2.asm"

%include "vpcmk/math_loc_2e12.asm"

loc_2e9e:
    mov ax, 0                        ; 0x2e9e
    call ds_dispatch_f40b            ; 0x2ea1
    mov ax, word [bp + 0x6]          ; 0x2ea4
    add ax, strict word 6            ; 0x2ea7
    push ax                          ; 0x2eaa
    mov ax, word [bp + 0x4]          ; 0x2eab
    add ax, strict word 0x14         ; 0x2eae
    push ax                          ; 0x2eb1
    push word [bp + 0x6]             ; 0x2eb2
    push word [bp + 0x4]             ; 0x2eb5
    call ds_dispatch_bd98            ; 0x2eb8
    add sp, byte 8                   ; 0x2ebb
    mov ax, word [bp + 0x8]          ; 0x2ebe
    shl ax, 1                        ; 0x2ec1
    shl ax, 1                        ; 0x2ec3
    mov bx, ax                       ; 0x2ec5
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x2ecb
    add ax, strict word 6            ; 0x2ece
    push ax                          ; 0x2ed1
    mov ax, word [bp + 0x4]          ; 0x2ed2
    add ax, strict word 0x14         ; 0x2ed5
    push ax                          ; 0x2ed8
    push word [bp + 0x6]             ; 0x2ed9
    push word [bp + 0x4]             ; 0x2edc
    call ds_dispatch_e901            ; 0x2edf
    add sp, byte 0x0a                ; 0x2ee2
    mov ax, word [bp + 0x6]          ; 0x2ee5
    inc ax                           ; 0x2ee8
    push ax                          ; 0x2ee9
    mov ax, word [bp + 0x4]          ; 0x2eea
    inc ax                           ; 0x2eed
    inc ax                           ; 0x2eee
    push ax                          ; 0x2eef
    call ds_dispatch_e809            ; 0x2ef0
    add sp, byte 4                   ; 0x2ef3
    cmp word [bp + 0xa], byte 0      ; 0x2ef6
    jle short @..local.l1            ; 0x2efa
    mov ax, word [bp + 0xa]          ; 0x2efc
    cmp ax, word [bp + 0xc]          ; 0x2eff
    jg short @..local.l1             ; 0x2f02
    mov ax, 0                        ; 0x2f04
    push ax                          ; 0x2f07
    mov ax, 1                        ; 0x2f08
    push ax                          ; 0x2f0b
    call ds_dispatch_e823            ; 0x2f0c
    add sp, byte 4                   ; 0x2f0f
    mov ax, 0                        ; 0x2f12
    push ax                          ; 0x2f15
    mov ax, 3                        ; 0x2f16
    push ax                          ; 0x2f19
    push word [bp + 0xa]             ; 0x2f1a
    call ds_dispatch_b2e7            ; 0x2f1d
    add sp, byte 6                   ; 0x2f20
    jmp short @..local.l2            ; 0x2f23
@..local.l1:
    mov ax, 0                        ; 0x2f25
    push ax                          ; 0x2f28
    push ax                          ; 0x2f29
    call ds_dispatch_e823            ; 0x2f2a
    add sp, byte 4                   ; 0x2f2d
    mov ax, 0                        ; 0x2f30
    push ax                          ; 0x2f33
    mov ax, 0x92d2                   ; 0x2f34
    push ax                          ; 0x2f37
    call ds_dispatch_e84e            ; 0x2f38
    add sp, byte 4                   ; 0x2f3b
@..local.l2:
    ret                              ; 0x2f3e
%include "vpcmk/api_idx_000c_2.asm"

loc_2fd8:
    mov ax, 0                        ; 0x2fd8
    call ds_dispatch_f40b            ; 0x2fdb
    les bx, word [data_0002]         ; 0x2fde
    mov ax, word [es:bx]             ; 0x2fe2
    mov dx, word [es:bx + 0x2]       ; 0x2fe5
    mov word [data_9090], dx         ; 0x2fe9
    mov word [data_908e], ax         ; 0x2fed
    mov ax, word [data_908e]         ; 0x2ff0
    mov dx, word [data_9090]         ; 0x2ff3
    sub ax, word [data_908a]         ; 0x2ff7
    sbb dx, word [data_908c]         ; 0x2ffb
    mov word [data_9094], dx         ; 0x2fff
    mov word [data_9092], ax         ; 0x3003
    mov ax, word [data_976c]         ; 0x3006
    cwd                              ; 0x3009
    mov cx, ax                       ; 0x300a
    mov bx, dx                       ; 0x300c
    mov ax, word [data_9092]         ; 0x300e
    mov dx, word [data_9094]         ; 0x3011
    cmp bx, dx                       ; 0x3015
    jg short @..local.l3             ; 0x3017
    jne short @..local.l4            ; 0x3019
    cmp cx, ax                       ; 0x301b
    jbe short @..local.l4            ; 0x301d
@..local.l3:
    jmp short @..local.l5            ; 0x301f
@..local.l4:
    mov ax, word [data_908e]         ; 0x3021
    mov dx, word [data_9090]         ; 0x3024
    mov word [data_908c], dx         ; 0x3028
    mov word [data_908a], ax         ; 0x302c
    call api_idx_000a_2              ; 0x302f
    push word [bp + 0x4]             ; 0x3032
    call api_idx_000c_2              ; 0x3035
    pop cx                           ; 0x3038
    push word [bp + 0x6]             ; 0x3039
    call api_idx_0002_3              ; 0x303c
    pop cx                           ; 0x303f
    mov ax, 1                        ; 0x3040
    push ax                          ; 0x3043
    mov ax, 0x73                     ; 0x3044
loc_3047:
    push ax                          ; 0x3047
    mov ax, 0x32                     ; 0x3048
    push ax                          ; 0x304b
    call api_idx_000c                ; 0x304c
    add sp, byte 6                   ; 0x304f
    mov ax, 0xc5                     ; 0x3052
    push ax                          ; 0x3055
    mov ax, 0x93                     ; 0x3056
    push ax                          ; 0x3059
    mov ax, 0x73                     ; 0x305a
    push ax                          ; 0x305d
    mov ax, 0x32                     ; 0x305e
    push ax                          ; 0x3061
    call ds_dispatch_e8da            ; 0x3062
    add sp, byte 8                   ; 0x3065
@..local.l5:
    ret                              ; 0x3068
%include "vpcmk/api_idx_0050.asm"

    mov ax, 7                        ; 0x3269
    push ax                          ; 0x326c
    mov ax, 8                        ; 0x326d
    push ax                          ; 0x3270
    mov ax, word [bp - 0x0006]       ; 0x3271
    add ax, strict word 0x22         ; 0x3274
    push ax                          ; 0x3277
    mov ax, word [bp - 0x000c]       ; 0x3278
    add ax, strict word 0x6a         ; 0x327b
    push ax                          ; 0x327e
    call ds_dispatch_bfd8            ; 0x327f
    add sp, byte 0x0a                ; 0x3282
    mov ax, 0                        ; 0x3285
    push ax                          ; 0x3288
    push ax                          ; 0x3289
    mov ax, word [bp - 0x0006]       ; 0x328a
    add ax, word [bp - 0x0012]       ; 0x328d
    add ax, strict word 0x2e         ; 0x3290
    push ax                          ; 0x3293
    mov ax, word [bp - 0x000c]       ; 0x3294
    add ax, strict word 0x72         ; 0x3297
    push ax                          ; 0x329a
    mov ax, word [bp - 0x0006]       ; 0x329b
    add ax, word [bp - 0x0012]       ; 0x329e
    add ax, strict word 0x2a         ; 0x32a1
    push ax                          ; 0x32a4
    mov ax, word [bp - 0x000c]       ; 0x32a5
    add ax, strict word 0x6a         ; 0x32a8
    push ax                          ; 0x32ab
    mov ax, 0                        ; 0x32ac
    push ax                          ; 0x32af
    call ds_dispatch_baa6            ; 0x32b0
    add sp, byte 0x0e                ; 0x32b3
    mov ax, 0                        ; 0x32b6
    push ax                          ; 0x32b9
    mov ax, 9                        ; 0x32ba
    push ax                          ; 0x32bd
    mov ax, word [bp - 0x0006]       ; 0x32be
    add ax, strict word 0x28         ; 0x32c1
    push ax                          ; 0x32c4
    mov ax, word [bp - 0x000c]       ; 0x32c5
    add ax, strict word 0x72         ; 0x32c8
    push ax                          ; 0x32cb
    mov ax, word [bp - 0x0006]       ; 0x32cc
    add ax, strict word 0x22         ; 0x32cf
    push ax                          ; 0x32d2
    mov ax, word [bp - 0x000c]       ; 0x32d3
    add ax, strict word 0x6a         ; 0x32d6
    push ax                          ; 0x32d9
    mov ax, 1                        ; 0x32da
    push ax                          ; 0x32dd
    call ds_dispatch_baa6            ; 0x32de
    add sp, byte 0x0e                ; 0x32e1
    mov ax, 0                        ; 0x32e4
    push ax                          ; 0x32e7
    mov ax, 0xb                      ; 0x32e8
    push ax                          ; 0x32eb
    mov ax, word [bp - 0x0006]       ; 0x32ec
    add ax, strict word 0x4c         ; 0x32ef
    push ax                          ; 0x32f2
    mov ax, word [bp - 0x000c]       ; 0x32f3
    add ax, strict word 0x72         ; 0x32f6
    push ax                          ; 0x32f9
    mov ax, word [bp - 0x0006]       ; 0x32fa
    add ax, strict word 0x46         ; 0x32fd
    push ax                          ; 0x3300
    mov ax, word [bp - 0x000c]       ; 0x3301
    add ax, strict word 0x6a         ; 0x3304
    push ax                          ; 0x3307
    mov ax, data_0002                ; 0x3308
    push ax                          ; 0x330b
    call ds_dispatch_baa6            ; 0x330c
    add sp, byte 0x0e                ; 0x330f
    mov ax, 0                        ; 0x3312
    push ax                          ; 0x3315
    mov ax, 0xd                      ; 0x3316
    push ax                          ; 0x3319
    mov ax, word [bp - 0x0006]       ; 0x331a
    add ax, strict word 0xe          ; 0x331d
    push ax                          ; 0x3320
    mov ax, word [bp - 0x000c]       ; 0x3321
    add ax, strict word 0x36         ; 0x3324
    push ax                          ; 0x3327
    mov ax, word [bp - 0x0006]       ; 0x3328
    add ax, strict word 6            ; 0x332b
    push ax                          ; 0x332e
    mov ax, word [bp - 0x000c]       ; 0x332f
    add ax, strict word 6            ; 0x3332
    push ax                          ; 0x3335
    mov ax, 3                        ; 0x3336
    push ax                          ; 0x3339
    call ds_dispatch_baa6            ; 0x333a
    add sp, byte 0x0e                ; 0x333d
    mov ax, 0                        ; 0x3340
    push ax                          ; 0x3343
    mov ax, 0x1b                     ; 0x3344
    push ax                          ; 0x3347
    mov ax, word [bp - 0x0006]       ; 0x3348
    add ax, strict word 0xe          ; 0x334b
    push ax                          ; 0x334e
    mov ax, word [bp - 0x000c]       ; 0x334f
    add ax, strict word 0x72         ; 0x3352
    push ax                          ; 0x3355
    mov ax, word [bp - 0x0006]       ; 0x3356
    add ax, strict word 6            ; 0x3359
    push ax                          ; 0x335c
    mov ax, word [bp - 0x000c]       ; 0x335d
    add ax, strict word 0x42         ; 0x3360
    push ax                          ; 0x3363
    mov ax, 4                        ; 0x3364
    push ax                          ; 0x3367
    call ds_dispatch_baa6            ; 0x3368
    add sp, byte 0x0e                ; 0x336b
    mov word [bp - 0x0002], 0        ; 0x336e
@..api_idx_0050.l5:
    mov ax, 0                        ; 0x3373
    push ax                          ; 0x3376
    mov ax, word [bp - 0x0002]       ; 0x3377
    add ax, strict word 0x31         ; 0x337a
    cbw                              ; 0x337d
    push ax                          ; 0x337e
    mov ax, word [bp - 0x0006]       ; 0x337f
    add ax, strict word 0x1b         ; 0x3382
    push ax                          ; 0x3385
    mov ax, 0xa                      ; 0x3386
    imul word [bp - 0x0002]          ; 0x3389
    add ax, word [bp - 0x000c]       ; 0x338c
    add ax, strict word 0x13         ; 0x338f
    push ax                          ; 0x3392
    mov ax, word [bp - 0x0006]       ; 0x3393
    add ax, strict word 0x14         ; 0x3396
    push ax                          ; 0x3399
    mov ax, 0xa                      ; 0x339a
    imul word [bp - 0x0002]          ; 0x339d
    add ax, word [bp - 0x000c]       ; 0x33a0
    add ax, strict word 0xc          ; 0x33a3
    push ax                          ; 0x33a6
    mov ax, word [bp - 0x0002]       ; 0x33a7
    add ax, strict word 5            ; 0x33aa
    push ax                          ; 0x33ad
    call ds_dispatch_baa6            ; 0x33ae
    add sp, byte 0x0e                ; 0x33b1
    inc word [bp - 0x0002]           ; 0x33b4
    mov ax, word [bp - 0x0002]       ; 0x33b7
    cmp ax, strict word 7            ; 0x33ba
    jl short @..api_idx_0050.l5      ; 0x33bd
    mov ax, 0                        ; 0x33bf
    push ax                          ; 0x33c2
    mov ax, 0x46                     ; 0x33c3
    push ax                          ; 0x33c6
    mov ax, 0x87                     ; 0x33c7
    push ax                          ; 0x33ca
    mov ax, 0x52                     ; 0x33cb
    push ax                          ; 0x33ce
    mov ax, 0x74                     ; 0x33cf
    push ax                          ; 0x33d2
    mov ax, 0x46                     ; 0x33d3
    push ax                          ; 0x33d6
    mov ax, 0xc                      ; 0x33d7
    push ax                          ; 0x33da
    call ds_dispatch_baa6            ; 0x33db
    add sp, byte 0x0e                ; 0x33de
    mov ax, 0                        ; 0x33e1
    push ax                          ; 0x33e4
    mov ax, 0x57                     ; 0x33e5
    push ax                          ; 0x33e8
    mov ax, 0x9d                     ; 0x33e9
    push ax                          ; 0x33ec
    mov ax, 0x4b                     ; 0x33ed
    push ax                          ; 0x33f0
    mov ax, 0x90                     ; 0x33f1
    push ax                          ; 0x33f4
    mov ax, 0x32                     ; 0x33f5
    push ax                          ; 0x33f8
    mov ax, 0xd                      ; 0x33f9
    push ax                          ; 0x33fc
    call ds_dispatch_baa6            ; 0x33fd
    add sp, byte 0x0e                ; 0x3400
    mov ax, 0                        ; 0x3403
    push ax                          ; 0x3406
    mov ax, 0x41                     ; 0x3407
    push ax                          ; 0x340a
    mov ax, 0xbb                     ; 0x340b
    push ax                          ; 0x340e
    mov ax, 0x5f                     ; 0x340f
    push ax                          ; 0x3412
    mov ax, 0xa5                     ; 0x3413
    push ax                          ; 0x3416
    mov ax, 0x43                     ; 0x3417
    push ax                          ; 0x341a
    mov ax, 0xe                      ; 0x341b
    push ax                          ; 0x341e
    call ds_dispatch_baa6            ; 0x341f
    add sp, byte 0x0e                ; 0x3422
    mov ax, 0                        ; 0x3425
    push ax                          ; 0x3428
    mov ax, 0x45                     ; 0x3429
    push ax                          ; 0x342c
    mov ax, 0x89                     ; 0x342d
    push ax                          ; 0x3430
    mov ax, 0x87                     ; 0x3431
    push ax                          ; 0x3434
    mov ax, 0x77                     ; 0x3435
    push ax                          ; 0x3438
    mov ax, 0x6c                     ; 0x3439
    push ax                          ; 0x343c
    mov ax, 0xf                      ; 0x343d
    push ax                          ; 0x3440
    call ds_dispatch_baa6            ; 0x3441
    add sp, byte 0x0e                ; 0x3444
    mov ax, 0                        ; 0x3447
    push ax                          ; 0x344a
    mov ax, 0x4d                     ; 0x344b
    push ax                          ; 0x344e
    mov ax, 0x9c                     ; 0x344f
    push ax                          ; 0x3452
    mov ax, 0x8e                     ; 0x3453
    push ax                          ; 0x3456
    mov ax, 0x91                     ; 0x3457
    push ax                          ; 0x345a
    mov ax, 0x7f                     ; 0x345b
    push ax                          ; 0x345e
    mov ax, 0x10                     ; 0x345f
    push ax                          ; 0x3462
    call ds_dispatch_baa6            ; 0x3463
    add sp, byte 0x0e                ; 0x3466
    mov ax, 0                        ; 0x3469
    push ax                          ; 0x346c
    mov ax, data_0044                ; 0x346d
    push ax                          ; 0x3470
    mov ax, 0xb9                     ; 0x3471
    push ax                          ; 0x3474
    mov ax, 0x81                     ; 0x3475
    push ax                          ; 0x3478
    mov ax, 0xa6                     ; 0x3479
    push ax                          ; 0x347c
    mov ax, 0x71                     ; 0x347d
    push ax                          ; 0x3480
    mov ax, 0x11                     ; 0x3481
    push ax                          ; 0x3484
    call ds_dispatch_baa6            ; 0x3485
    add sp, byte 0x0e                ; 0x3488
    mov ax, 7                        ; 0x348b
    cmp word [bp - 0x0044], byte 7   ; 0x348e
    jge short @..api_idx_0050.l6     ; 0x3492
    mov ax, word [bp - 0x0044]       ; 0x3494
@..api_idx_0050.l6:
    mov word [bp - 0x0020], ax       ; 0x3497
    mov word [bp - 0x0002], 0        ; 0x349a
@..api_idx_0050.l7:
    mov ax, 0                        ; 0x349f
    push ax                          ; 0x34a2
    push ax                          ; 0x34a3
    mov ax, 6                        ; 0x34a4
    imul word [bp - 0x0002]          ; 0x34a7
    add ax, word [bp - 0x0006]       ; 0x34aa
    add ax, strict word 0x28         ; 0x34ad
    push ax                          ; 0x34b0
    mov ax, word [bp - 0x000c]       ; 0x34b1
    add ax, strict word 0x62         ; 0x34b4
    push ax                          ; 0x34b7
    mov ax, 6                        ; 0x34b8
    imul word [bp - 0x0002]          ; 0x34bb
    add ax, word [bp - 0x0006]       ; 0x34be
    add ax, strict word 0x22         ; 0x34c1
    push ax                          ; 0x34c4
    mov ax, word [bp - 0x000c]       ; 0x34c5
    add ax, strict word 6            ; 0x34c8
    push ax                          ; 0x34cb
    mov ax, word [bp - 0x0002]       ; 0x34cc
    add ax, strict word 0x12         ; 0x34cf
    push ax                          ; 0x34d2
    call ds_dispatch_baa6            ; 0x34d3
    add sp, byte 0x0e                ; 0x34d6
    inc word [bp - 0x0002]           ; 0x34d9
    mov ax, word [bp - 0x0002]       ; 0x34dc
    cmp ax, strict word 7            ; 0x34df
    jl short @..api_idx_0050.l7      ; 0x34e2
    mov ax, 0                        ; 0x34e4
    push ax                          ; 0x34e7
    push ax                          ; 0x34e8
    push ax                          ; 0x34e9
    push ax                          ; 0x34ea
    push ax                          ; 0x34eb
    mov ax, 0xffff                   ; 0x34ec
    push ax                          ; 0x34ef
    mov ax, 0x19                     ; 0x34f0
    push ax                          ; 0x34f3
    call ds_dispatch_baa6            ; 0x34f4
    add sp, byte 0x0e                ; 0x34f7
    mov ax, word [bp - 0x000a]       ; 0x34fa
    inc ax                           ; 0x34fd
    push ax                          ; 0x34fe
    mov ax, word [bp - 0x0008]       ; 0x34ff
    inc ax                           ; 0x3502
    push ax                          ; 0x3503
    mov ax, word [bp - 0x0006]       ; 0x3504
    dec ax                           ; 0x3507
    push ax                          ; 0x3508
    mov ax, word [bp - 0x0004]       ; 0x3509
    dec ax                           ; 0x350c
    push ax                          ; 0x350d
    call ds_dispatch_e8da            ; 0x350e
    add sp, byte 8                   ; 0x3511
    mov word [data_976c], 7          ; 0x3514
    les bx, word [data_0002]         ; 0x351a
    mov ax, word [es:bx]             ; 0x351e
    mov dx, word [es:bx + 0x2]       ; 0x3521
    mov word [data_908c], dx         ; 0x3525
    mov word [data_908a], ax         ; 0x3529
    mov word [bp - 0x001c], 1        ; 0x352c
@..api_idx_0050.l8:
    push word [bp - 0x0042]          ; 0x3531
    push word [bp + 0x4]             ; 0x3534
    call loc_2fd8                    ; 0x3537
    add sp, byte 4                   ; 0x353a
    mov ax, 0x59fe                   ; 0x353d
    push ax                          ; 0x3540
    call ds_dispatch_b90d            ; 0x3541
    pop cx                           ; 0x3544
    dec ax                           ; 0x3545
    mov word [bp - 0x001a], ax       ; 0x3546
    cmp word [data_59fc], byte 0     ; 0x3549
    je short @..api_idx_0050.l12     ; 0x354e
    mov ax, word [bp - 0x0022]       ; 0x3550
    cmp ax, word [bp - 0x0018]       ; 0x3553
    jl short @..api_idx_0050.l9      ; 0x3556
    inc word [bp - 0x0022]           ; 0x3558
@..api_idx_0050.l9:
    mov ax, word [bp - 0x0022]       ; 0x355b
    cmp ax, strict word 0xffff       ; 0x355e
    je short @..api_idx_0050.l10     ; 0x3561
    cmp ax, word [bp - 0x0018]       ; 0x3563
    jl short @..api_idx_0050.l10     ; 0x3566
    mov ax, word [bp - 0x0018]       ; 0x3568
    add ax, word [bp - 0x0020]       ; 0x356b
    mov cx, ax                       ; 0x356e
    dec ax                           ; 0x3570
    mov cx, ax                       ; 0x3571
    mov ax, word [bp - 0x0022]       ; 0x3573
    cmp cx, ax                       ; 0x3576
    jge short @..api_idx_0050.l11    ; 0x3578
@..api_idx_0050.l10:
    mov ax, word [bp - 0x0018]       ; 0x357a
    mov word [bp - 0x0022], ax       ; 0x357d
@..api_idx_0050.l11:
    mov word [data_5b3e], 1          ; 0x3580
    mov ax, word [bp - 0x0022]       ; 0x3586
    sub ax, word [bp - 0x0018]       ; 0x3589
    add ax, strict word 0x12         ; 0x358c
    mov word [bp - 0x001a], ax       ; 0x358f
@..api_idx_0050.l12:
    cmp word [data_5b3e], byte 1     ; 0x3592
    je short @..api_idx_0050.l13     ; 0x3597
    jmp near @..api_idx_0050.l37     ; 0x3599
@..api_idx_0050.l13:
    mov ax, word [bp - 0x001a]       ; 0x359c
    jmp near @..api_idx_0050.l35     ; 0x359f

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xa6, 0xba, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xf8, 0x81, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x78, 0xba, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xc8, 0x81, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x4f, 0x89, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x71, 0x89, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x0e, 0x84, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x20, 0xb2, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xc6, 0x87
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x95
    db 0x87, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x62, 0x80, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x0f, 0x88, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x31, 0x88, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xce, 0x82, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xe0, 0xb0, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xf1, 0x85, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xd1, 0x85, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x37, 0x7f, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x98, 0x85, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x78, 0x85, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..api_idx_0050.l14:
    cmp word [bp - 0x001a], byte 5   ; 0x38f8
    jge short @..api_idx_0050.l15    ; 0x38fc
    jmp near @..api_idx_0050.l23     ; 0x38fe
@..api_idx_0050.l15:
    cmp word [bp - 0x001a], byte 0x0b ; 0x3901
    jle short @..api_idx_0050.l16    ; 0x3905
    jmp near @..api_idx_0050.l23     ; 0x3907
@..api_idx_0050.l16:
    mov ax, 0                        ; 0x390a
    push ax                          ; 0x390d
    push word [bp - 0x003e]          ; 0x390e
    mov ax, word [bp - 0x0006]       ; 0x3911
    add ax, strict word 0x14         ; 0x3914
    push ax                          ; 0x3917
    mov ax, word [bp - 0x000c]       ; 0x3918
    add ax, strict word 0xc          ; 0x391b
    push ax                          ; 0x391e
    call math_loc_2e12               ; 0x391f
    add sp, byte 8                   ; 0x3922
    mov ax, word [bp - 0x001a]       ; 0x3925
    add ax, strict word 0xfffb       ; 0x3928
    mov word [bp - 0x003e], ax       ; 0x392b
    mov ax, 1                        ; 0x392e
    push ax                          ; 0x3931
    push word [bp - 0x003e]          ; 0x3932
    mov ax, word [bp - 0x0006]       ; 0x3935
    add ax, strict word 0x14         ; 0x3938
    push ax                          ; 0x393b
    mov ax, word [bp - 0x000c]       ; 0x393c
    add ax, strict word 0xc          ; 0x393f
    push ax                          ; 0x3942
    call math_loc_2e12               ; 0x3943
    add sp, byte 8                   ; 0x3946
    cmp word [bp - 0x003c], byte 0   ; 0x3949
    jge short @..api_idx_0050.l17    ; 0x394d
    jmp near @..api_idx_0050.l21     ; 0x394f
@..api_idx_0050.l17:
    mov ax, 6                        ; 0x3952
    push ax                          ; 0x3955
    mov ax, 0                        ; 0x3956
    push ax                          ; 0x3959
    mov ax, 0x248                    ; 0x395a
    imul word [bp + 0x4]             ; 0x395d
    mov bx, ax                       ; 0x3960
    mov ax, word [bx + 0x5c18]       ; 0x3962
    push ax                          ; 0x3966
    mov ax, 6                        ; 0x3967
    imul word [bp - 0x003c]          ; 0x396a
    mov bx, ax                       ; 0x396d
    mov al, byte [bx + 0x621]        ; 0x396f
    sub ah, ah                       ; 0x3973
    mov cx, ax                       ; 0x3975
    pop ax                           ; 0x3977
    sub ax, cx                       ; 0x3978
    push ax                          ; 0x397a
    call ds_dispatch_b7c2            ; 0x397b
    add sp, byte 6                   ; 0x397e
    mov word [bp - 0x0040], ax       ; 0x3981
    mov ax, 6                        ; 0x3984
    imul word [bp - 0x003c]          ; 0x3987
    mov bx, ax                       ; 0x398a
    mov al, byte [bx + 0x622]        ; 0x398c
    sub ah, ah                       ; 0x3990
    mov cx, word [bp - 0x0040]       ; 0x3992
    inc cx                           ; 0x3995
    imul cx                          ; 0x3996
    mov word [bp - 0x0002], ax       ; 0x3998
    cmp word [bp + 0xa], byte 0      ; 0x399b
    jne short @..api_idx_0050.l18    ; 0x399f
    mov ax, 0x3e7                    ; 0x39a1
    jmp short @..api_idx_0050.l20    ; 0x39a4
@..api_idx_0050.l18:
    mov ax, 0x248                    ; 0x39a6
    imul word [bp + 0x4]             ; 0x39a9
    mov cx, word [bp - 0x0042]       ; 0x39ac
    shl cx, 1                        ; 0x39af
    shl cx, 1                        ; 0x39b1
    add ax, cx                       ; 0x39b3
    mov bx, ax                       ; 0x39b5
    mov ax, word [bx + 0x5c1c]       ; 0x39b7
    cmp ax, word [bp - 0x0002]       ; 0x39bb
    jge short @..api_idx_0050.l19    ; 0x39be
    jmp short @..api_idx_0050.l20    ; 0x39c0
@..api_idx_0050.l19:
    mov ax, word [bp - 0x0002]       ; 0x39c2
@..api_idx_0050.l20:
    push ax                          ; 0x39c5
    mov ax, 6                        ; 0x39c6
    imul word [bp - 0x003c]          ; 0x39c9
    mov bx, ax                       ; 0x39cc
    mov al, byte [bx + 0x622]        ; 0x39ce
    sub ah, ah                       ; 0x39d2
    mov cx, word [bp - 0x003e]       ; 0x39d4
    inc cx                           ; 0x39d7
    imul cx                          ; 0x39d8
    push ax                          ; 0x39da
    push word [bp - 0x0042]          ; 0x39db
    mov ax, word [bp - 0x0006]       ; 0x39de
    add ax, strict word 0x15         ; 0x39e1
    push ax                          ; 0x39e4
    mov ax, word [bp - 0x000c]       ; 0x39e5
    add ax, strict word 0x5e         ; 0x39e8
    push ax                          ; 0x39eb
    call loc_2e9e                    ; 0x39ec
    add sp, byte 0x0a                ; 0x39ef
    jmp short @..api_idx_0050.l22    ; 0x39f2
@..api_idx_0050.l21:
    mov ax, 0                        ; 0x39f4
    push ax                          ; 0x39f7
    push ax                          ; 0x39f8
    push word [bp - 0x0042]          ; 0x39f9
    mov ax, word [bp - 0x0006]       ; 0x39fc
    add ax, strict word 0x15         ; 0x39ff
    push ax                          ; 0x3a02
    mov ax, word [bp - 0x000c]       ; 0x3a03
    add ax, strict word 0x5e         ; 0x3a06
    push ax                          ; 0x3a09
    call loc_2e9e                    ; 0x3a0a
    add sp, byte 0x0a                ; 0x3a0d
@..api_idx_0050.l22:
    mov ax, word [bp - 0x0006]       ; 0x3a10
    add ax, strict word 0x1c         ; 0x3a13
    push ax                          ; 0x3a16
    mov ax, word [bp - 0x000c]       ; 0x3a17
    add ax, strict word 0x56         ; 0x3a1a
    push ax                          ; 0x3a1d
    mov ax, word [bp - 0x0006]       ; 0x3a1e
    add ax, strict word 0x14         ; 0x3a21
    push ax                          ; 0x3a24
    mov ax, word [bp - 0x000c]       ; 0x3a25
    add ax, strict word 0xb          ; 0x3a28
    push ax                          ; 0x3a2b
    call ds_dispatch_e8da            ; 0x3a2c
    add sp, byte 8                   ; 0x3a2f
    mov ax, word [bp - 0x0006]       ; 0x3a32
    add ax, strict word 0x1b         ; 0x3a35
    push ax                          ; 0x3a38
    mov ax, word [bp - 0x000c]       ; 0x3a39
    add ax, strict word 0x72         ; 0x3a3c
    push ax                          ; 0x3a3f
    mov ax, word [bp - 0x0006]       ; 0x3a40
    add ax, strict word 0x15         ; 0x3a43
    push ax                          ; 0x3a46
    mov ax, word [bp - 0x000c]       ; 0x3a47
    add ax, strict word 0x5e         ; 0x3a4a
    push ax                          ; 0x3a4d
    call ds_dispatch_e8da            ; 0x3a4e
    add sp, byte 8                   ; 0x3a51
    jmp near @..api_idx_0050.l34     ; 0x3a54
@..api_idx_0050.l23:
    cmp word [bp - 0x001a], byte 0x0c ; 0x3a57
    jge short @..api_idx_0050.l24    ; 0x3a5b
    jmp near @..api_idx_0050.l28     ; 0x3a5d
@..api_idx_0050.l24:
    cmp word [bp - 0x001a], byte 0x11 ; 0x3a60
    jle short @..api_idx_0050.l25    ; 0x3a64
    jmp near @..api_idx_0050.l28     ; 0x3a66
@..api_idx_0050.l25:
    mov ax, word [bp - 0x001a]       ; 0x3a69
    add ax, strict word 0xfff4       ; 0x3a6c
    mov word [bp - 0x0042], ax       ; 0x3a6f
    mov word [bp - 0x003c], 0xffff   ; 0x3a72
    push ax                          ; 0x3a77
    push word [bp + 0x4]             ; 0x3a78
    call api_idx_0004_5              ; 0x3a7b
    add sp, byte 4                   ; 0x3a7e
    mov word [bp - 0x0044], ax       ; 0x3a81
    mov ax, 7                        ; 0x3a84
    cmp word [bp - 0x0044], byte 7   ; 0x3a87
    jge short @..api_idx_0050.l26    ; 0x3a8b
    mov ax, word [bp - 0x0044]       ; 0x3a8d
@..api_idx_0050.l26:
    mov word [bp - 0x0024], ax       ; 0x3a90
    mov ax, 7                        ; 0x3a93
    cmp word [bp - 0x0044], byte 7   ; 0x3a96
    jge short @..api_idx_0050.l27    ; 0x3a9a
    mov ax, word [bp - 0x0044]       ; 0x3a9c
@..api_idx_0050.l27:
    mov word [bp - 0x0020], ax       ; 0x3a9f
    mov word [bp - 0x0018], 0        ; 0x3aa2
    mov word [bp - 0x0022], 0xffff   ; 0x3aa7
    push word [bp - 0x0024]          ; 0x3aac
    push word [bp - 0x0022]          ; 0x3aaf
    push word [bp - 0x0018]          ; 0x3ab2
    mov ax, 7                        ; 0x3ab5
    push ax                          ; 0x3ab8
    mov ax, 0xf                      ; 0x3ab9
    push ax                          ; 0x3abc
    mov ax, word [bp - 0x0006]       ; 0x3abd
    add ax, strict word 0x22         ; 0x3ac0
    push ax                          ; 0x3ac3
    mov ax, word [bp - 0x000c]       ; 0x3ac4
    add ax, strict word 6            ; 0x3ac7
    push ax                          ; 0x3aca
    call ds_dispatch_bf97            ; 0x3acb
    add sp, byte 0x0e                ; 0x3ace
    mov word [bp - 0x0012], 0        ; 0x3ad1
    push word [bp - 0x0012]          ; 0x3ad6
    mov ax, 7                        ; 0x3ad9
    push ax                          ; 0x3adc
    mov ax, 8                        ; 0x3add
    push ax                          ; 0x3ae0
    mov ax, word [bp - 0x0006]       ; 0x3ae1
    add ax, strict word 0x22         ; 0x3ae4
    push ax                          ; 0x3ae7
    mov ax, word [bp - 0x000c]       ; 0x3ae8
    add ax, strict word 0x6a         ; 0x3aeb
    push ax                          ; 0x3aee
    call ds_dispatch_bfd8            ; 0x3aef
    add sp, byte 0x0a                ; 0x3af2
    mov ax, 0                        ; 0x3af5
    push ax                          ; 0x3af8
    push ax                          ; 0x3af9
    mov ax, word [bp - 0x0006]       ; 0x3afa
    add ax, word [bp - 0x0012]       ; 0x3afd
    add ax, strict word 0x2e         ; 0x3b00
    push ax                          ; 0x3b03
    mov ax, word [bp - 0x000c]       ; 0x3b04
    add ax, strict word 0x72         ; 0x3b07
    push ax                          ; 0x3b0a
    mov ax, word [bp - 0x0006]       ; 0x3b0b
    add ax, word [bp - 0x0012]       ; 0x3b0e
    add ax, strict word 0x2a         ; 0x3b11
    push ax                          ; 0x3b14
    mov ax, word [bp - 0x000c]       ; 0x3b15
    add ax, strict word 0x6a         ; 0x3b18
    push ax                          ; 0x3b1b
    mov ax, 0                        ; 0x3b1c
    push ax                          ; 0x3b1f
    call ds_dispatch_baa6            ; 0x3b20
    add sp, byte 0x0e                ; 0x3b23
    mov ax, 0                        ; 0x3b26
    push ax                          ; 0x3b29
    push ax                          ; 0x3b2a
    push word [bp - 0x0042]          ; 0x3b2b
    mov ax, word [bp - 0x0006]       ; 0x3b2e
    add ax, strict word 0x15         ; 0x3b31
    push ax                          ; 0x3b34
    mov ax, word [bp - 0x000c]       ; 0x3b35
    add ax, strict word 0x5e         ; 0x3b38
    push ax                          ; 0x3b3b
    call loc_2e9e                    ; 0x3b3c
    add sp, byte 0x0a                ; 0x3b3f
    mov ax, word [bp - 0x0006]       ; 0x3b42
    add ax, strict word 0x4c         ; 0x3b45
    push ax                          ; 0x3b48
    mov ax, word [bp - 0x000c]       ; 0x3b49
    add ax, strict word 0x72         ; 0x3b4c
    push ax                          ; 0x3b4f
    mov ax, word [bp - 0x0006]       ; 0x3b50
    add ax, strict word 0x22         ; 0x3b53
    push ax                          ; 0x3b56
    mov ax, word [bp - 0x000c]       ; 0x3b57
    add ax, strict word 6            ; 0x3b5a
    push ax                          ; 0x3b5d
    call ds_dispatch_e8da            ; 0x3b5e
    add sp, byte 8                   ; 0x3b61
    mov ax, word [bp - 0x0006]       ; 0x3b64
    add ax, strict word 0x1b         ; 0x3b67
    push ax                          ; 0x3b6a
    mov ax, word [bp - 0x000c]       ; 0x3b6b
    add ax, strict word 0x72         ; 0x3b6e
    push ax                          ; 0x3b71
    mov ax, word [bp - 0x0006]       ; 0x3b72
    add ax, strict word 0x15         ; 0x3b75
    push ax                          ; 0x3b78
    mov ax, word [bp - 0x000c]       ; 0x3b79
    add ax, strict word 0x5e         ; 0x3b7c
    push ax                          ; 0x3b7f
    call ds_dispatch_e8da            ; 0x3b80
    add sp, byte 8                   ; 0x3b83
    jmp near @..api_idx_0050.l34     ; 0x3b86
@..api_idx_0050.l28:
    cmp word [bp - 0x001a], byte 0x12 ; 0x3b89
    jge short @..api_idx_0050.l29    ; 0x3b8d
    jmp near @..api_idx_0050.l34     ; 0x3b8f
@..api_idx_0050.l29:
    mov ax, word [bp - 0x0020]       ; 0x3b92
    add ax, strict word 0x12         ; 0x3b95
    cmp ax, word [bp - 0x001a]       ; 0x3b98
    jg short @..api_idx_0050.l30     ; 0x3b9b
    jmp near @..api_idx_0050.l34     ; 0x3b9d
@..api_idx_0050.l30:
    mov ax, word [bp - 0x0018]       ; 0x3ba0
    add ax, word [bp - 0x001a]       ; 0x3ba3
    add ax, strict word 0xffee       ; 0x3ba6
    mov word [bp - 0x0022], ax       ; 0x3ba9
    shl ax, 1                        ; 0x3bac
    mov bx, ax                       ; 0x3bae
    mov ax, word [bx - 0x68e4]       ; 0x3bb0
    mov word [bp - 0x003c], ax       ; 0x3bb4
    push word [bp - 0x0024]          ; 0x3bb7
    push word [bp - 0x0022]          ; 0x3bba
    push word [bp - 0x0018]          ; 0x3bbd
    mov ax, 7                        ; 0x3bc0
    push ax                          ; 0x3bc3
    mov ax, 0xf                      ; 0x3bc4
    push ax                          ; 0x3bc7
    mov ax, word [bp - 0x0006]       ; 0x3bc8
    add ax, strict word 0x22         ; 0x3bcb
    push ax                          ; 0x3bce
    mov ax, word [bp - 0x000c]       ; 0x3bcf
    add ax, strict word 6            ; 0x3bd2
    push ax                          ; 0x3bd5
    call ds_dispatch_bf97            ; 0x3bd6
    add sp, byte 0x0e                ; 0x3bd9
    mov ax, 6                        ; 0x3bdc
    push ax                          ; 0x3bdf
    mov ax, 0                        ; 0x3be0
    push ax                          ; 0x3be3
    mov ax, 0x248                    ; 0x3be4
    imul word [bp + 0x4]             ; 0x3be7
    mov bx, ax                       ; 0x3bea
    mov ax, word [bx + 0x5c18]       ; 0x3bec
    push ax                          ; 0x3bf0
    mov ax, 6                        ; 0x3bf1
    imul word [bp - 0x003c]          ; 0x3bf4
    mov bx, ax                       ; 0x3bf7
    mov al, byte [bx + 0x621]        ; 0x3bf9
    sub ah, ah                       ; 0x3bfd
    mov cx, ax                       ; 0x3bff
    pop ax                           ; 0x3c01
    sub ax, cx                       ; 0x3c02
    push ax                          ; 0x3c04
    call ds_dispatch_b7c2            ; 0x3c05
    add sp, byte 6                   ; 0x3c08
    mov word [bp - 0x0040], ax       ; 0x3c0b
    mov ax, 6                        ; 0x3c0e
    imul word [bp - 0x003c]          ; 0x3c11
    mov bx, ax                       ; 0x3c14
    mov al, byte [bx + 0x622]        ; 0x3c16
    sub ah, ah                       ; 0x3c1a
    mov cx, word [bp - 0x0040]       ; 0x3c1c
    inc cx                           ; 0x3c1f
    imul cx                          ; 0x3c20
    mov word [bp - 0x0002], ax       ; 0x3c22
    cmp word [bp + 0xa], byte 0      ; 0x3c25
    jne short @..api_idx_0050.l31    ; 0x3c29
    mov ax, 0x3e7                    ; 0x3c2b
    jmp short @..api_idx_0050.l33    ; 0x3c2e
@..api_idx_0050.l31:
    mov ax, 0x248                    ; 0x3c30
    imul word [bp + 0x4]             ; 0x3c33
    mov cx, word [bp - 0x0042]       ; 0x3c36
    shl cx, 1                        ; 0x3c39
    shl cx, 1                        ; 0x3c3b
    add ax, cx                       ; 0x3c3d
    mov bx, ax                       ; 0x3c3f
    mov ax, word [bx + 0x5c1c]       ; 0x3c41
    cmp ax, word [bp - 0x0002]       ; 0x3c45
    jge short @..api_idx_0050.l32    ; 0x3c48
    jmp short @..api_idx_0050.l33    ; 0x3c4a
@..api_idx_0050.l32:
    mov ax, word [bp - 0x0002]       ; 0x3c4c
@..api_idx_0050.l33:
    push ax                          ; 0x3c4f
    mov ax, 6                        ; 0x3c50
    imul word [bp - 0x003c]          ; 0x3c53
    mov bx, ax                       ; 0x3c56
    mov al, byte [bx + 0x622]        ; 0x3c58
    sub ah, ah                       ; 0x3c5c
    mov cx, word [bp - 0x003e]       ; 0x3c5e
    inc cx                           ; 0x3c61
    imul cx                          ; 0x3c62
    push ax                          ; 0x3c64
    push word [bp - 0x0042]          ; 0x3c65
    mov ax, word [bp - 0x0006]       ; 0x3c68
    add ax, strict word 0x15         ; 0x3c6b
    push ax                          ; 0x3c6e
    mov ax, word [bp - 0x000c]       ; 0x3c6f
    add ax, strict word 0x5e         ; 0x3c72
    push ax                          ; 0x3c75
    call loc_2e9e                    ; 0x3c76
    add sp, byte 0x0a                ; 0x3c79
    mov ax, word [bp - 0x0006]       ; 0x3c7c
    add ax, strict word 0x4c         ; 0x3c7f
    push ax                          ; 0x3c82
    mov ax, word [bp - 0x000c]       ; 0x3c83
    add ax, strict word 0x72         ; 0x3c86
    push ax                          ; 0x3c89
    mov ax, word [bp - 0x0006]       ; 0x3c8a
    add ax, strict word 0x22         ; 0x3c8d
    push ax                          ; 0x3c90
    mov ax, word [bp - 0x000c]       ; 0x3c91
    add ax, strict word 6            ; 0x3c94
    push ax                          ; 0x3c97
    call ds_dispatch_e8da            ; 0x3c98
    add sp, byte 8                   ; 0x3c9b
    mov ax, word [bp - 0x0006]       ; 0x3c9e
    add ax, strict word 0x1b         ; 0x3ca1
    push ax                          ; 0x3ca4
    mov ax, word [bp - 0x000c]       ; 0x3ca5
    add ax, strict word 0x72         ; 0x3ca8
    push ax                          ; 0x3cab
    mov ax, word [bp - 0x0006]       ; 0x3cac
    add ax, strict word 0x15         ; 0x3caf
    push ax                          ; 0x3cb2
    mov ax, word [bp - 0x000c]       ; 0x3cb3
    add ax, strict word 0x5e         ; 0x3cb6
    push ax                          ; 0x3cb9
    call ds_dispatch_e8da            ; 0x3cba
    add sp, byte 8                   ; 0x3cbd
@..api_idx_0050.l34:
    jmp short @..api_idx_0050.l37    ; 0x3cc0
    jmp near loc_4d4a                ; 0x3cc2
    xchg word [bx + si], dx          ; 0x3cc5
    xchg word [bx - 0x0078], ax      ; 0x3cc7
    hlt                              ; 0x3cca
    db 0x88
@..api_idx_0050.l35:
    cmp ax, strict word 5            ; 0x3ccc
    jae short @..api_idx_0050.l36    ; 0x3ccf
    xchg bx, ax                      ; 0x3cd1
    shl bx, 1                        ; 0x3cd2
    jmp [cs:bx - 0x72f7]             ; 0x3cd4
@..api_idx_0050.l36:
    jmp near @..api_idx_0050.l14     ; 0x3cd9
@..api_idx_0050.l37:
    cmp word [bp - 0x001c], byte 0   ; 0x3cdc
    je short @..api_idx_0050.l38     ; 0x3ce0
    jmp near @..api_idx_0050.l8      ; 0x3ce2
@..api_idx_0050.l38:
    mov ax, 1                        ; 0x3ce5
    push ax                          ; 0x3ce8
    push word [bp - 0x003a]          ; 0x3ce9
    call ds_dispatch_c459            ; 0x3cec
    add sp, byte 4                   ; 0x3cef
    mov ax, word [bp - 0x000a]       ; 0x3cf2
    inc ax                           ; 0x3cf5
    push ax                          ; 0x3cf6
    mov ax, word [bp - 0x0008]       ; 0x3cf7
    inc ax                           ; 0x3cfa
    push ax                          ; 0x3cfb
    mov ax, word [bp - 0x0006]       ; 0x3cfc
    dec ax                           ; 0x3cff
    push ax                          ; 0x3d00
    mov ax, word [bp - 0x0004]       ; 0x3d01
    dec ax                           ; 0x3d04
    push ax                          ; 0x3d05
    call ds_dispatch_e8da            ; 0x3d06
    add sp, byte 8                   ; 0x3d09
    mov word [bp - 0x0002], 0        ; 0x3d0c
@..api_idx_0050.l39:
    mov ax, word [bp - 0x0002]       ; 0x3d11
    shl ax, 1                        ; 0x3d14
    mov bx, ax                       ; 0x3d16
    add bx, bp                       ; 0x3d18
    mov ax, word [bx - 0x0050]       ; 0x3d1a
    mov cx, word [bp - 0x0002]       ; 0x3d1d
    shl cx, 1                        ; 0x3d20
    mov bx, cx                       ; 0x3d22
    mov word [bx - 0x7cf2], ax       ; 0x3d24
    inc word [bp - 0x0002]           ; 0x3d28
    mov ax, word [bp - 0x0002]       ; 0x3d2b
    cmp ax, strict word 6            ; 0x3d2e
    jl short @..api_idx_0050.l39     ; 0x3d31
    les bx, word [data_0002]         ; 0x3d33
    mov ax, word [es:bx]             ; 0x3d37
    mov dx, word [es:bx + 0x2]       ; 0x3d3a
    mov word [data_908c], dx         ; 0x3d3e
    mov word [data_908a], ax         ; 0x3d42
    mov ax, word [bp - 0x003e]       ; 0x3d45
    xchg al, ah                      ; 0x3d48
    sub al, al                       ; 0x3d4a
    add ax, word [bp - 0x003c]       ; 0x3d4c
    add ax, 0x100                    ; 0x3d4f
    mov word [data_904e], ax         ; 0x3d52
    mov ax, word [data_9050]         ; 0x3d55
    ret                              ; 0x3d58
%include "vpcmk/api_idx_006e.asm"

loc_3f87:
    mov ax, 0                        ; 0x3f87
    call ds_dispatch_f40b            ; 0x3f8a
    les bx, word [data_0002]         ; 0x3f8d
    mov ax, word [es:bx]             ; 0x3f91
    mov dx, word [es:bx + 0x2]       ; 0x3f94
    mov word [data_9090], dx         ; 0x3f98
    mov word [data_908e], ax         ; 0x3f9c
    mov ax, word [data_908e]         ; 0x3f9f
    mov dx, word [data_9090]         ; 0x3fa2
    sub ax, word [data_908a]         ; 0x3fa6
    sbb dx, word [data_908c]         ; 0x3faa
    mov word [data_9094], dx         ; 0x3fae
    mov word [data_9092], ax         ; 0x3fb2
    mov ax, word [data_976c]         ; 0x3fb5
    cwd                              ; 0x3fb8
    mov cx, ax                       ; 0x3fb9
    mov bx, dx                       ; 0x3fbb
    mov ax, word [data_9092]         ; 0x3fbd
    mov dx, word [data_9094]         ; 0x3fc0
    cmp bx, dx                       ; 0x3fc4
    jg short @..local.l6             ; 0x3fc6
    jne short @..local.l7            ; 0x3fc8
    cmp cx, ax                       ; 0x3fca
    jbe short @..local.l7            ; 0x3fcc
@..local.l6:
    jmp short @..local.l8            ; 0x3fce
@..local.l7:
    mov ax, word [data_908e]         ; 0x3fd0
    mov dx, word [data_9090]         ; 0x3fd3
    mov word [data_908c], dx         ; 0x3fd7
    mov word [data_908a], ax         ; 0x3fdb
    mov ax, word [data_95ae]         ; 0x3fde
    inc ax                           ; 0x3fe1
    mov cx, 3                        ; 0x3fe2
    cwd                              ; 0x3fe5
    idiv cx                          ; 0x3fe6
    mov word [data_95ae], dx         ; 0x3fe8
    push dx                          ; 0x3fec
    call api_idx_000a                ; 0x3fed
    pop cx                           ; 0x3ff0
    mov ax, 0x41                     ; 0x3ff1
    push ax                          ; 0x3ff4
    mov ax, 0x65                     ; 0x3ff5
    push ax                          ; 0x3ff8
    mov ax, 0x19                     ; 0x3ff9
    push ax                          ; 0x3ffc
    mov ax, 0x5a                     ; 0x3ffd
    push ax                          ; 0x4000
    call ds_dispatch_e8da            ; 0x4001
    add sp, byte 8                   ; 0x4004
    mov ax, 0xffff                   ; 0x4007
    push ax                          ; 0x400a
    call api_idx_0002_3              ; 0x400b
    pop cx                           ; 0x400e
    push word [bp + 0x4]             ; 0x400f
    call api_idx_0004                ; 0x4012
    pop cx                           ; 0x4015
    mov ax, 0xbf                     ; 0x4016
    push ax                          ; 0x4019
    mov ax, 0x13f                    ; 0x401a
    push ax                          ; 0x401d
    mov ax, 0x7e                     ; 0x401e
    push ax                          ; 0x4021
    mov ax, 0xb8                     ; 0x4022
    push ax                          ; 0x4025
    call ds_dispatch_e8da            ; 0x4026
    add sp, byte 8                   ; 0x4029
@..local.l8:
    ret                              ; 0x402c
%include "vpcmk/api_idx_0002_7.asm"

%include "vpcmk/api_idx_0006.asm"

loc_4107:
    mov ax, 0                        ; 0x4107
    call ds_dispatch_f40b            ; 0x410a
    mov ax, word [bp + 0x6]          ; 0x410d
    jmp near @..local.l9             ; 0x4110

    db 0xff, 0x76, 0x08, 0xb8, 0xdc, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5e, 0xff
    db 0x83, 0xc4, 0x08, 0xe9, 0x67, 0x01, 0xff, 0x76, 0x08, 0xb8, 0xe5, 0x92, 0x50, 0xff, 0x76, 0x06
    db 0xff, 0x76, 0x04, 0xe8, 0x48, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x51, 0x01, 0xff, 0x76, 0x08, 0xb8
    db 0xee, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x32, 0xff, 0x83, 0xc4, 0x08, 0xe9
    db 0x3b, 0x01, 0xff, 0x76, 0x08, 0xb8, 0xf7, 0x92, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8
    db 0x1c, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x25, 0x01, 0xff, 0x76, 0x08, 0xb8, 0x00, 0x93, 0x50, 0xff
    db 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x06, 0xff, 0x83, 0xc4, 0x08, 0xe9, 0x0f, 0x01, 0xff, 0x76
    db 0x08, 0xb8, 0x09, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xf0, 0xfe, 0x83, 0xc4
    db 0x08, 0xe9, 0xf9, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x12, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0xda, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xe3, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x1b, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xc4, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xcd, 0x00
    db 0x83, 0x7e, 0x08, 0x00, 0x75, 0x0f, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x80, 0xbf
    db 0x2c, 0x5e, 0x01, 0x75, 0x15, 0xff, 0x76, 0x08, 0xb8, 0x24, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff
    db 0x76, 0x04, 0xe8, 0x99, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x0d, 0x8b, 0x46, 0x06, 0xd1, 0xe0, 0x8b
    db 0xd8, 0xc7, 0x87, 0x6e, 0x97, 0x00, 0x00, 0xe9, 0x93, 0x00, 0xff, 0x76, 0x08, 0xb8, 0x2d, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x74, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x7d, 0x00
    db 0xff, 0x76, 0x08, 0xb8, 0x36, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5e, 0xfe
    db 0x83, 0xc4, 0x08, 0xeb, 0x68, 0xff, 0x76, 0x08, 0xb8, 0x3f, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff
    db 0x76, 0x04, 0xe8, 0x49, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x53, 0xff, 0x76, 0x08, 0xb8, 0x48, 0x93
    db 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x34, 0xfe, 0x83, 0xc4, 0x08, 0xeb, 0x3e, 0xff
    db 0x76, 0x08, 0xb8, 0x51, 0x93, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x1f, 0xfe, 0x83
    db 0xc4, 0x08, 0xeb, 0x29, 0x5a, 0x91, 0x70, 0x91, 0x86, 0x91, 0x9c, 0x91, 0xb2, 0x91, 0xc8, 0x91
    db 0xde, 0x91, 0xf4, 0x91, 0x0a, 0x92, 0x44, 0x92, 0x5a, 0x92, 0x6f, 0x92, 0x84, 0x92, 0x99, 0x92

@..local.l9:
    cmp ax, strict word 0xe          ; 0x4283
    jae short @..local.l10           ; 0x4286
    xchg bx, ax                      ; 0x4288
    shl bx, 1                        ; 0x4289
    jmp [cs:bx - 0x6d52]             ; 0x428b
@..local.l10:
    ret                              ; 0x4290
%include "vpcmk/api_idx_0002_8.asm"

loc_42b8:
    mov ax, 0                        ; 0x42b8
    call ds_dispatch_f40b            ; 0x42bb
    mov ax, word [bp + 0x6]          ; 0x42be
    jmp near @..local.l11            ; 0x42c1

    db 0xb8, 0x5a, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x5f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0xbd, 0x00
    db 0xb8, 0x63, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0xad, 0x00
    db 0xb8, 0x6c, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x3f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x9d, 0x00
    db 0xb8, 0x75, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x8d, 0x00
    db 0xb8, 0x7e, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1f, 0xfd, 0x83, 0xc4, 0x04, 0xe9, 0x7d, 0x00
    db 0xb8, 0x87, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0f, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x6e, 0xb8
    db 0x90, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x00, 0xfd, 0x83, 0xc4, 0x04, 0xeb, 0x5f, 0xb8, 0x99
    db 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf1, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x50, 0xb8, 0xa2, 0x93
    db 0x50, 0xff, 0x76, 0x04, 0xe8, 0xe2, 0xfc

    add sp, byte 4                   ; 0x434b
    jmp short @..local.l12           ; 0x434e

    db 0xb8, 0xab, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd3, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x32, 0xb8
    db 0xb4, 0x93, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc4, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x23, 0x0b, 0x93
    db 0x1b, 0x93, 0x2b, 0x93, 0x3b, 0x93, 0x4b, 0x93, 0x5b, 0x93, 0x6a, 0x93, 0x79, 0x93, 0x88, 0x93
    db 0x97, 0x93, 0xa6, 0x93

@..local.l11:
    cmp ax, strict word 0xb          ; 0x4384
    jae short @..local.l12           ; 0x4387
    xchg bx, ax                      ; 0x4389
    shl bx, 1                        ; 0x438a
    jmp [cs:bx - 0x6c4b]             ; 0x438c
@..local.l12:
    ret                              ; 0x4391
loc_4392:
    mov ax, 0                        ; 0x4392
    call ds_dispatch_f40b            ; 0x4395
    cmp word [bp + 0x6], byte 1      ; 0x4398
    jne short @..local.l13           ; 0x439c
    mov ax, 0x248                    ; 0x439e
    imul word [bp + 0x4]             ; 0x43a1
    mov bx, ax                       ; 0x43a4
    mov al, byte [bx + 0x5d64]       ; 0x43a6
    sub ah, ah                       ; 0x43aa
    dec ax                           ; 0x43ac
    dec ax                           ; 0x43ad
    mov byte [bx + 0x5d64], al       ; 0x43ae
    inc byte [bx + 0x5d6a]           ; 0x43b2
    inc byte [bx + 0x5d6b]           ; 0x43b6
@..local.l13:
    ret                              ; 0x43ba
%include "vpcmk/api_idx_007a.asm"

%include "vpcmk/api_idx_007a_2.asm"

%include "vpcmk/api_idx_007c.asm"

%include "vpcmk/api_idx_006c.asm"

    add ax, word [bp - 0x0006]       ; 0x4895
    mov bx, ax                       ; 0x4898
    cmp byte [bx + 0x5d64], 0x12     ; 0x489a
    jae short @..api_idx_006c.l13    ; 0x489f
    cmp word [data_9594], byte 0     ; 0x48a1
    jle short @..api_idx_006c.l13    ; 0x48a6
    inc byte [bx + 0x5d64]           ; 0x48a8
    mov ax, word [bp - 0x0006]       ; 0x48ac
    shl ax, 1                        ; 0x48af
    mov bx, ax                       ; 0x48b1
    add bx, bp                       ; 0x48b3
    inc word [bx - 0x0018]           ; 0x48b5
    dec word [data_9594]             ; 0x48b8
    jmp short @..api_idx_006c.l14    ; 0x48bc
@..api_idx_006c.l13:
    mov ax, 0                        ; 0x48be
    push ax                          ; 0x48c1
    call ds_dispatch_b7e0            ; 0x48c2
    pop cx                           ; 0x48c5
@..api_idx_006c.l14:
    cmp word [bp - 0x0004], byte 8   ; 0x48c6
    je short @..api_idx_006c.l15     ; 0x48ca
    jmp near @..api_idx_006c.l1      ; 0x48cc
@..api_idx_006c.l15:
    cmp word [data_9594], byte 0     ; 0x48cf
    je short @..api_idx_006c.l16     ; 0x48d4
    jmp near @..api_idx_006c.l1      ; 0x48d6
@..api_idx_006c.l16:
    mov word [data_9594], 0xffff     ; 0x48d9
    mov ax, 1                        ; 0x48df
    push ax                          ; 0x48e2
    push ax                          ; 0x48e3
    mov ax, 0x18                     ; 0x48e4
    push ax                          ; 0x48e7
    mov ax, 0x97                     ; 0x48e8
    push ax                          ; 0x48eb
    mov ax, 0x58                     ; 0x48ec
    push ax                          ; 0x48ef
    call ds_dispatch_be5f            ; 0x48f0
    add sp, byte 0x0a                ; 0x48f3
    mov ax, 0                        ; 0x48f6
    push ax                          ; 0x48f9
    mov ax, 1                        ; 0x48fa
    push ax                          ; 0x48fd
    mov ax, 0x18                     ; 0x48fe
    push ax                          ; 0x4901
    mov ax, 0x97                     ; 0x4902
    push ax                          ; 0x4905
    mov ax, 0x58                     ; 0x4906
    push ax                          ; 0x4909
    call ds_dispatch_be5f            ; 0x490a
    add sp, byte 0x0a                ; 0x490d
    mov ax, 1                        ; 0x4910
    push ax                          ; 0x4913
    push word [bp - 0x006a]          ; 0x4914
    push word [bp - 0x006c]          ; 0x4917
    call ds_dispatch_e94f            ; 0x491a
    add sp, byte 6                   ; 0x491d
    mov ax, 0xc7                     ; 0x4920
    push ax                          ; 0x4923
    mov ax, 0x13f                    ; 0x4924
    push ax                          ; 0x4927
    mov ax, 0                        ; 0x4928
    push ax                          ; 0x492b
    push ax                          ; 0x492c
    call ds_dispatch_e8da            ; 0x492d
    add sp, byte 8                   ; 0x4930
    ret                              ; 0x4933
%include "vpcmk/api_idx_0008_3.asm"

loc_4aa1:
    mov ax, 0                        ; 0x4aa1
    call ds_dispatch_f40b            ; 0x4aa4
    mov ax, 0x248                    ; 0x4aa7
    imul word [bp + 0x4]             ; 0x4aaa
    mov bx, ax                       ; 0x4aad
    mov al, byte [bx + 0x5d6b]       ; 0x4aaf
    sub ah, ah                       ; 0x4ab3
    sub ax, word [bp + 0x8]          ; 0x4ab5
    jge short @..local.l14           ; 0x4ab8
    neg ax                           ; 0x4aba
    mov cx, ax                       ; 0x4abc
    jmp short @..local.l15           ; 0x4abe
@..local.l14:
    mov al, byte [bx + 0x5d6b]       ; 0x4ac0
    sub ah, ah                       ; 0x4ac4
    mov cx, ax                       ; 0x4ac6
    sub ax, word [bp + 0x8]          ; 0x4ac8
    mov cx, ax                       ; 0x4acb
@..local.l15:
    shl cx, 1                        ; 0x4acd
    shl cx, 1                        ; 0x4acf
    mov ax, 0x28                     ; 0x4ad1
    sub ax, cx                       ; 0x4ad4
    add bx, word [bp + 0x6]          ; 0x4ad6
    mov byte [bx + 0x5db2], al       ; 0x4ad9
    ret                              ; 0x4add
%include "vpcmk/api_idx_0002_9.asm"

%include "vpcmk/api_idx_004e.asm"

loc_4c21:
    mov ax, 0                        ; 0x4c21
    call ds_dispatch_f40b            ; 0x4c24
    cmp word [bp + 0x6], byte 0      ; 0x4c27
    je short @..local.l16            ; 0x4c2b
    push word [bp + 0x6]             ; 0x4c2d
    push word [bp + 0x4]             ; 0x4c30
    call api_idx_004e                ; 0x4c33
    add sp, byte 4                   ; 0x4c36
@..local.l16:
    cmp word [bp + 0x8], byte 0      ; 0x4c39
    je short @..local.l17            ; 0x4c3d
    push word [bp + 0x8]             ; 0x4c3f
    push word [bp + 0x4]             ; 0x4c42
    call api_idx_004e                ; 0x4c45
    add sp, byte 4                   ; 0x4c48
@..local.l17:
    cmp word [bp + 0xa], byte 0      ; 0x4c4b
    je short @..local.l18            ; 0x4c4f
    push word [bp + 0xa]             ; 0x4c51
    push word [bp + 0x4]             ; 0x4c54
    call api_idx_004e                ; 0x4c57
    add sp, byte 4                   ; 0x4c5a
@..local.l18:
    cmp word [bp + 0xc], byte 0      ; 0x4c5d
    je short @..local.l19            ; 0x4c61
    push word [bp + 0xc]             ; 0x4c63
    push word [bp + 0x4]             ; 0x4c66
    call api_idx_004e                ; 0x4c69
    add sp, byte 4                   ; 0x4c6c
@..local.l19:
    cmp word [bp + 0xe], byte 0      ; 0x4c6f
    je short @..local.l20            ; 0x4c73
    push word [bp + 0xe]             ; 0x4c75
    push word [bp + 0x4]             ; 0x4c78
    call api_idx_004e                ; 0x4c7b
    add sp, byte 4                   ; 0x4c7e
@..local.l20:
    ret                              ; 0x4c81
%include "vpcmk/math_loc_4c82.asm"


    db 0xb8, 0x8d, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x84, 0x00, 0x50, 0xb8, 0x87, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x41, 0xff, 0x83, 0xc4, 0x0c, 0xe9, 0xc6, 0x01
    db 0xb8, 0x4f, 0x01, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x12, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x21, 0xff, 0x83, 0xc4, 0x0c, 0xe9, 0xa6, 0x01
    db 0xb8, 0x3c, 0x01, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x18, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x01, 0xff, 0x83, 0xc4, 0x0c, 0xe9, 0x86, 0x01
    db 0xb8, 0x1b, 0x00, 0x50, 0xb8, 0x83, 0x00, 0x50, 0xb8, 0x79, 0x00, 0x50, 0xb8, 0x78, 0x00, 0x50
    db 0xb8, 0x06, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xe1, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x66, 0x01
    db 0xb8, 0x83, 0x00, 0x50, 0xb8, 0x7f, 0x00, 0x50, 0xb8, 0x7e, 0x00, 0x50, 0xb8, 0x21, 0x00, 0x50
    db 0xb8, 0x1f, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc1, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x46, 0x01
    db 0xb8, 0x47, 0x01, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x12, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa1, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x26, 0x01
    db 0xb8, 0x37, 0x00, 0x50, 0xb8, 0x79, 0x00, 0x50, 0xb8, 0x78, 0x00, 0x50, 0xb8, 0x1e, 0x00, 0x50
    db 0xb8, 0x1d, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x81, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x06, 0x01
    db 0xb8, 0xf1, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x61, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0xe6, 0x00
    db 0xb8, 0x8a, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7d, 0x00, 0x50, 0xb8, 0x7c, 0x00, 0x50
    db 0xb8, 0x16, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x41, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0xc6, 0x00
    db 0xb8, 0xa3, 0x00, 0x50, 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50
    db 0xb8, 0x18, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x21, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0xa6, 0x00
    db 0xb8, 0x8f, 0x00, 0x50, 0xb8, 0x83, 0x00, 0x50, 0xb8, 0x86, 0x00, 0x50, 0xb8, 0x85, 0x00, 0x50
    db 0xb8, 0x09, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x01, 0xfe, 0x83, 0xc4, 0x0c, 0xe9, 0x86, 0x00
    db 0xb8, 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x0a, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xe1, 0xfd, 0x83, 0xc4, 0x0c, 0xeb, 0x67, 0xb8
    db 0x82, 0x00, 0x50, 0xb8, 0x7b, 0x00, 0x50, 0xb8, 0x7a, 0x00, 0x50, 0xb8, 0x2f, 0x00, 0x50, 0xb8
    db 0x19, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc2, 0xfd, 0x83, 0xc4, 0x0c, 0xeb, 0x48, 0xb8, 0xa1
    db 0x00, 0x50, 0xb8, 0x9f, 0x00, 0x50, 0xb8, 0x9e, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0xb8, 0x2f
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa3, 0xfd, 0x83, 0xc4, 0x0c, 0xeb, 0x29, 0x0d, 0x9d, 0x2d
    db 0x9d, 0x4d, 0x9d, 0x6d, 0x9d, 0x8d, 0x9d, 0xad, 0x9d, 0xcd, 0x9d, 0xed, 0x9d, 0x0d, 0x9e, 0x2d
    db 0x9e, 0x4d, 0x9e, 0x6d, 0x9e, 0x8c, 0x9e, 0xab, 0x9e

@..math_loc_4c82.l2:
    cmp ax, strict word 0xe          ; 0x4e9f
    jae short @..math_loc_4c82.l3    ; 0x4ea2
    xchg bx, ax                      ; 0x4ea4
    shl bx, 1                        ; 0x4ea5
    jmp [cs:bx - 0x6136]             ; 0x4ea7
@..math_loc_4c82.l3:
    ret                              ; 0x4eac
%include "vpcmk/math_loc_4ead.asm"

%include "vpcmk/api_idx_0006_2.asm"

%include "vpcmk/api_idx_0002_10.asm"

%include "vpcmk/api_idx_0004_6.asm"

    jmp near @..api_idx_0004_6.l4    ; 0x5287
    mov ax, 0x19                     ; 0x528a
    push ax                          ; 0x528d
    mov ax, 0xa                      ; 0x528e
    push ax                          ; 0x5291
    mov ax, 0                        ; 0x5292
    push ax                          ; 0x5295
    push word [bp + 0x4]             ; 0x5296
    call math_loc_4ead               ; 0x5299
    add sp, byte 8                   ; 0x529c
    mov ax, 0xa                      ; 0x529f
    push ax                          ; 0x52a2
    mov ax, 8                        ; 0x52a3
    push ax                          ; 0x52a6
    mov ax, 0                        ; 0x52a7
    push ax                          ; 0x52aa
    push word [bp + 0x4]             ; 0x52ab
    call math_loc_4ead               ; 0x52ae
    add sp, byte 8                   ; 0x52b1
    mov ax, 0xffec                   ; 0x52b4
    push ax                          ; 0x52b7
    mov ax, 3                        ; 0x52b8
    push ax                          ; 0x52bb
    mov ax, 0                        ; 0x52bc
    push ax                          ; 0x52bf
    push word [bp + 0x4]             ; 0x52c0
    call math_loc_4ead               ; 0x52c3
    add sp, byte 8                   ; 0x52c6
    jmp near @..api_idx_0004_6.l4    ; 0x52c9
    mov ax, 0xf                      ; 0x52cc
    push ax                          ; 0x52cf
    mov ax, 7                        ; 0x52d0
    push ax                          ; 0x52d3
    mov ax, 0                        ; 0x52d4
    push ax                          ; 0x52d7
    push word [bp + 0x4]             ; 0x52d8
    call math_loc_4ead               ; 0x52db
    add sp, byte 8                   ; 0x52de
    mov ax, 0x14                     ; 0x52e1
    push ax                          ; 0x52e4
    mov ax, 4                        ; 0x52e5
    push ax                          ; 0x52e8
    mov ax, 0                        ; 0x52e9
    push ax                          ; 0x52ec
    push word [bp + 0x4]             ; 0x52ed
    call math_loc_4ead               ; 0x52f0
    add sp, byte 8                   ; 0x52f3
    mov ax, 0x14                     ; 0x52f6
    push ax                          ; 0x52f9
    mov ax, 3                        ; 0x52fa
    push ax                          ; 0x52fd
    mov ax, 0                        ; 0x52fe
    push ax                          ; 0x5301
    push word [bp + 0x4]             ; 0x5302
    call math_loc_4ead               ; 0x5305
    add sp, byte 8                   ; 0x5308
    jmp short @..api_idx_0004_6.l4   ; 0x530b
    mov ax, 0x19                     ; 0x530d
    push ax                          ; 0x5310
    mov ax, 0xc                      ; 0x5311
    push ax                          ; 0x5314
    mov ax, 0                        ; 0x5315
    push ax                          ; 0x5318
    push word [bp + 0x4]             ; 0x5319
    call math_loc_4ead               ; 0x531c
    add sp, byte 8                   ; 0x531f
    mov ax, 0xf                      ; 0x5322
    push ax                          ; 0x5325
    mov ax, 3                        ; 0x5326
    push ax                          ; 0x5329
    mov ax, 0                        ; 0x532a
    push ax                          ; 0x532d
    push word [bp + 0x4]             ; 0x532e
    call math_loc_4ead               ; 0x5331
    add sp, byte 8                   ; 0x5334
    jmp short @..api_idx_0004_6.l4   ; 0x5337
    loop loc_52dc                    ; 0x5339
    dec bp                           ; 0x533b
    mov byte [data_a1fa], al         ; 0x533c
    and ah, byte [bp + si - 0x5e06]  ; 0x533f
    mov byte [gs:data_a2d1], al      ; 0x5343
    shl word [bp + si - 0x5ced], 1   ; 0x5347
    cmp ax, 0x54a3                   ; 0x534b
    db 0xa3
@..api_idx_0004_6.l3:
    cmp ax, strict word 0xb          ; 0x534f
    jae short @..api_idx_0004_6.l4   ; 0x5352
    xchg bx, ax                      ; 0x5354
    shl bx, 1                        ; 0x5355
    jmp [cs:bx - 0x5c80]             ; 0x5357
@..api_idx_0004_6.l4:
    mov ax, 0x248                    ; 0x535c
    imul word [bp + 0x4]             ; 0x535f
    mov bx, ax                       ; 0x5362
    cmp byte [bx + 0x5d67], 0xf      ; 0x5364
    jbe short @..api_idx_0004_6.l5   ; 0x5369
    mov ax, 5                        ; 0x536b
    push ax                          ; 0x536e
    mov ax, 6                        ; 0x536f
    push ax                          ; 0x5372
    mov ax, 0                        ; 0x5373
    push ax                          ; 0x5376
    push word [bp + 0x4]             ; 0x5377
    call math_loc_4ead               ; 0x537a
    add sp, byte 8                   ; 0x537d
    mov ax, 5                        ; 0x5380
    push ax                          ; 0x5383
    mov ax, 0xb                      ; 0x5384
    push ax                          ; 0x5387
    mov ax, 0                        ; 0x5388
    push ax                          ; 0x538b
    push word [bp + 0x4]             ; 0x538c
    call math_loc_4ead               ; 0x538f
    add sp, byte 8                   ; 0x5392
@..api_idx_0004_6.l5:
    mov ax, 0x248                    ; 0x5395
    imul word [bp + 0x4]             ; 0x5398
    mov bx, ax                       ; 0x539b
    cmp byte [bx + 0x5d65], 0xf      ; 0x539d
    jbe short @..api_idx_0004_6.l6   ; 0x53a2
    mov ax, 5                        ; 0x53a4
    push ax                          ; 0x53a7
    mov ax, 9                        ; 0x53a8
    push ax                          ; 0x53ab
    mov ax, 0                        ; 0x53ac
    push ax                          ; 0x53af
    push word [bp + 0x4]             ; 0x53b0
    call math_loc_4ead               ; 0x53b3
    add sp, byte 8                   ; 0x53b6
@..api_idx_0004_6.l6:
    mov ax, 0x248                    ; 0x53b9
    imul word [bp + 0x4]             ; 0x53bc
    mov bx, ax                       ; 0x53bf
    cmp byte [bx + 0x5d69], 0xf      ; 0x53c1
    jbe short @..api_idx_0004_6.l7   ; 0x53c6
    mov ax, 5                        ; 0x53c8
    push ax                          ; 0x53cb
    mov ax, 7                        ; 0x53cc
    push ax                          ; 0x53cf
    mov ax, 0                        ; 0x53d0
    push ax                          ; 0x53d3
    push word [bp + 0x4]             ; 0x53d4
    call math_loc_4ead               ; 0x53d7
    add sp, byte 8                   ; 0x53da
    mov ax, 5                        ; 0x53dd
    push ax                          ; 0x53e0
    mov ax, 4                        ; 0x53e1
    push ax                          ; 0x53e4
    mov ax, 0                        ; 0x53e5
    push ax                          ; 0x53e8
    push word [bp + 0x4]             ; 0x53e9
    call math_loc_4ead               ; 0x53ec
    add sp, byte 8                   ; 0x53ef
@..api_idx_0004_6.l7:
    mov word [bp - 0x0004], 0        ; 0x53f2
@..api_idx_0004_6.l8:
    mov ax, 0x248                    ; 0x53f7
    imul word [bp + 0x4]             ; 0x53fa
    add ax, word [bp - 0x0004]       ; 0x53fd
    mov bx, ax                       ; 0x5400
    mov al, byte [bx + 0x5d8e]       ; 0x5402
    mov byte [bx + 0x5d9c], al       ; 0x5406
    inc word [bp - 0x0004]           ; 0x540a
    mov ax, word [bp - 0x0004]       ; 0x540d
    cmp ax, strict word 0xe          ; 0x5410
    jl short @..api_idx_0004_6.l8    ; 0x5413
    mov ax, 0x248                    ; 0x5415
    imul word [bp + 0x4]             ; 0x5418
    mov bx, ax                       ; 0x541b
    mov al, byte [bx + 0x5e2d]       ; 0x541d
    sub ah, ah                       ; 0x5421
    jmp short @..api_idx_0004_6.l9   ; 0x5423

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x56, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x61, 0xb8
    db 0x07, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x3d, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x48, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x1e, 0xfb, 0x83, 0xc4, 0x0c, 0xeb, 0x29, 0x6c, 0xa4, 0x8b, 0xa4, 0xa4, 0xa4, 0xa4, 0xa4, 0x6c
    db 0xa4, 0x8b, 0xa4, 0xa4, 0xa4, 0x8b, 0xa4, 0x6c, 0xa4, 0x8b, 0xa4, 0x6c, 0xa4, 0x6c, 0xa4, 0x6c
    db 0xa4, 0x6c, 0xa4

@..api_idx_0004_6.l9:
    cmp ax, strict word 0xe          ; 0x5498
    jae short @..api_idx_0004_6.l10  ; 0x549b
    xchg bx, ax                      ; 0x549d
    shl bx, 1                        ; 0x549e
    jmp [cs:bx - 0x5b3d]             ; 0x54a0
@..api_idx_0004_6.l10:
    mov word [bp - 0x0002], 0        ; 0x54a5
@..api_idx_0004_6.l11:
    push word [bp - 0x0002]          ; 0x54aa
    push word [bp + 0x4]             ; 0x54ad
    call ds_dispatch_c608            ; 0x54b0
    add sp, byte 4                   ; 0x54b3
    inc word [bp - 0x0002]           ; 0x54b6
    mov ax, word [bp - 0x0002]       ; 0x54b9
    cmp ax, strict word 2            ; 0x54bc
    jl short @..api_idx_0004_6.l11   ; 0x54bf
    mov ax, 0x248                    ; 0x54c1
    imul word [bp + 0x4]             ; 0x54c4
    mov bx, ax                       ; 0x54c7
    mov byte [bx + 0x5daa], 0xa      ; 0x54c9
    mov al, byte [bx + 0x5daa]       ; 0x54ce
    cbw                              ; 0x54d2
    mov cx, 0                        ; 0x54d3
    cmp byte [bx + 0x5d69], 0xf      ; 0x54d6
    jbe short @..api_idx_0004_6.l12  ; 0x54db
    mov cx, 1                        ; 0x54dd
@..api_idx_0004_6.l12:
    sub ax, cx                       ; 0x54e0
    mov byte [bx + 0x5daa], al       ; 0x54e2
    cbw                              ; 0x54e6
    mov cx, 0                        ; 0x54e7
    cmp byte [bx + 0x5d69], 0x11     ; 0x54ea
    jbe short @..api_idx_0004_6.l13  ; 0x54ef
    mov cx, 1                        ; 0x54f1
@..api_idx_0004_6.l13:
    sub ax, cx                       ; 0x54f4
    mov byte [bx + 0x5daa], al       ; 0x54f6
    mov al, byte [bx + 0x5daa]       ; 0x54fa
    cbw                              ; 0x54fe
    mov cx, 0                        ; 0x54ff
    cmp byte [bx + 0x5e2b], 5        ; 0x5502
    jne short @..api_idx_0004_6.l14  ; 0x5507
    mov cx, data_0002                ; 0x5509
@..api_idx_0004_6.l14:
    sub ax, cx                       ; 0x550c
    mov byte [bx + 0x5daa], al       ; 0x550e
    cmp byte [bx + 0x5e2d], 0xd      ; 0x5512
    je short @..api_idx_0004_6.l15   ; 0x5517
    cmp byte [bx + 0x5e2d], 0xc      ; 0x5519
    jne short @..api_idx_0004_6.l17  ; 0x551e
@..api_idx_0004_6.l15:
    mov ax, 0xa                      ; 0x5520
    cmp word [bx + 0x5c18], byte 0x14 ; 0x5523
    jg short @..api_idx_0004_6.l16   ; 0x5528
    mov ax, word [bx + 0x5c18]       ; 0x552a
    mov cx, data_0002                ; 0x552e
    cwd                              ; 0x5531
    idiv cx                          ; 0x5532
@..api_idx_0004_6.l16:
    mov word [bp - 0x0002], ax       ; 0x5534
    mov al, byte [bx + 0x5d7d]       ; 0x5537
    sub ah, ah                       ; 0x553b
    mov cx, 0xa                      ; 0x553d
    cwd                              ; 0x5540
    idiv cx                          ; 0x5541
    add word [bp - 0x0002], ax       ; 0x5543
    mov al, byte [bx + 0x5daa]       ; 0x5546
    cbw                              ; 0x554a
    sub ax, word [bp - 0x0002]       ; 0x554b
    mov byte [bx + 0x5daa], al       ; 0x554e
@..api_idx_0004_6.l17:
    mov byte [bx + 0x5dab], 0        ; 0x5552
    mov byte [bx + 0x5dac], 0        ; 0x5557
    mov word [bp - 0x0002], 3        ; 0x555c
@..api_idx_0004_6.l18:
    mov ax, 0x248                    ; 0x5561
    imul word [bp + 0x4]             ; 0x5564
    mov bx, ax                       ; 0x5567
    mov al, byte [bx + 0x5daa]       ; 0x5569
    add bx, word [bp - 0x0002]       ; 0x556d
    mov byte [bx + 0x5daa], al       ; 0x5570
    inc word [bp - 0x0002]           ; 0x5574
    mov ax, word [bp - 0x0002]       ; 0x5577
    cmp ax, strict word 8            ; 0x557a
    jl short @..api_idx_0004_6.l18   ; 0x557d
    ret                              ; 0x557f
%include "vpcmk/api_idx_001c.asm"

%include "vpcmk/api_idx_0002_11.asm"

%include "vpcmk/math_loc_5706.asm"


    db 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xa2, 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x8a, 0x5d, 0xe9, 0x67, 0x01, 0xb8, 0x05
    db 0x00, 0x50, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4f, 0xfc, 0x83, 0xc4, 0x08
    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x6e, 0xfd, 0x83, 0xc4
    db 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x70, 0x5d, 0xe9
    db 0x33, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1b
    db 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x3d, 0xfd, 0x83
    db 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x88, 0x5d
    db 0xe9, 0x02, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0xea, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x09, 0xfd, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58
    db 0x88, 0x87, 0x6d, 0x5d, 0xe9, 0xce, 0x00, 0xb8, 0x06, 0x00, 0x50, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xff, 0x76, 0x04, 0xe8, 0xb6, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00
    db 0x50, 0xff, 0x76, 0x04, 0xe8, 0xd5, 0xfc, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x75, 0x5d, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0xb9, 0xfc, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58
    db 0x88, 0x87, 0x8b, 0x5d, 0xe9, 0x7e, 0x00, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x08, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x63, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x82, 0xfc, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48
    db 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x75, 0x5d, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x63, 0xfc, 0x83, 0xc4, 0x06, 0x50, 0xb8, 0x48, 0x02
    db 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x58, 0x88, 0x87, 0x7d, 0x5d, 0xeb, 0x29, 0x64, 0xa7, 0x7c, 0xa7
    db 0xb3, 0xa7, 0xea, 0xa7, 0x21, 0xa8, 0xab, 0xa8, 0x74, 0xa8, 0xe2, 0xa8, 0x69, 0xa9, 0x19, 0xa9
    db 0x9d, 0xa9, 0xce, 0xa9, 0x02, 0xaa, 0x52, 0xaa

@..math_loc_5706.l1:
    cmp ax, strict word 0xe          ; 0x5a7c
    jae short @..math_loc_5706.l2    ; 0x5a7f
    xchg bx, ax                      ; 0x5a81
    shl bx, 1                        ; 0x5a82
    jmp [cs:bx - 0x5559]             ; 0x5a84
@..math_loc_5706.l2:
    ret                              ; 0x5a89
%include "vpcmk/api_idx_000a_3.asm"

    dec byte [bx + 0x5e3a]           ; 0x5c87
    jmp short @..api_idx_000a_3.l2   ; 0x5c8b
    mov ax, 5                        ; 0x5c8d
    push ax                          ; 0x5c90
    db 0xe8, 0x15, 0x5b ; call ds_dispatch_b7a9
    pop cx                           ; 0x5c94
    add ax, strict word 4            ; 0x5c95
    mov word [bp - 0x0002], ax       ; 0x5c98
    push word [bp + 0x4]             ; 0x5c9b
    call math_loc_5706               ; 0x5c9e
    pop cx                           ; 0x5ca1
    mov ax, 0x248                    ; 0x5ca2
    imul word [bp + 0x4]             ; 0x5ca5
    db 0x8b, 0xd8 ; mov bx, ax
    dec byte [bx + 0x5e3a]           ; 0x5caa
    dec byte [bx + 0x5e3a]           ; 0x5cae
    jmp short @..api_idx_000a_3.l2   ; 0x5cb2
    and al, 0xab                     ; 0x5cb4
    dec cx                           ; 0x5cb6
    stosw                            ; 0x5cb7
    pushaw                           ; 0x5cb8
    stosw                            ; 0x5cb9
    js short loc_5c67                ; 0x5cba
    pushf                            ; 0x5cbc
    stosw                            ; 0x5cbd
    shr byte [bp + di - 0x5416], cl  ; 0x5cbe
    add word [si - 0x53e7], bp       ; 0x5cc2
    db 0x3e, 0xac ; lodsb
    push si                          ; 0x5cc8
    lodsb                            ; 0x5cc9
    jnp short loc_5c78               ; 0x5cca
    lodsw                            ; 0x5ccc
    lodsb                            ; 0x5ccd
    aam 0xac                         ; 0x5cce
@..api_idx_000a_3.l1:
    cmp ax, strict word 0xe          ; 0x5cd0
    jae short @..api_idx_000a_3.l2   ; 0x5cd3
    xchg bx, ax                      ; 0x5cd5
    shl bx, 1                        ; 0x5cd6
    jmp [cs:bx - 0x5305]             ; 0x5cd8
@..api_idx_000a_3.l2:
    mov ax, word [bp - 0x000a]       ; 0x5cdd
    shl ax, 1                        ; 0x5ce0
    add ax, word [bp - 0x0008]       ; 0x5ce2
    mov cx, 3                        ; 0x5ce5
    imul cx                          ; 0x5ce8
    mov word [bp - 0x0004], ax       ; 0x5cea
    mov ax, word [bp - 0x0008]       ; 0x5ced
    shl ax, 1                        ; 0x5cf0
    add ax, word [bp - 0x000a]       ; 0x5cf2
    imul cx                          ; 0x5cf5
    mov word [bp - 0x0006], ax       ; 0x5cf7
    add word [bp - 0x0002], byte 4   ; 0x5cfa
    cmp word [bp - 0x000a], byte 8   ; 0x5cfe
    jge short @..api_idx_000a_3.l3   ; 0x5d02
    dec word [bp - 0x0002]           ; 0x5d04
@..api_idx_000a_3.l3:
    cmp word [bp - 0x000a], byte 0x0f ; 0x5d07
    jle short @..api_idx_000a_3.l4   ; 0x5d0b
    inc word [bp - 0x0002]           ; 0x5d0d
    mov ax, word [bp - 0x000a]       ; 0x5d10
    add word [bp - 0x0004], ax       ; 0x5d13
@..api_idx_000a_3.l4:
    cmp word [bp - 0x000a], byte 0x11 ; 0x5d16
    jle short @..api_idx_000a_3.l5   ; 0x5d1a
    inc word [bp - 0x0002]           ; 0x5d1c
    mov ax, word [bp - 0x000a]       ; 0x5d1f
    add word [bp - 0x0004], ax       ; 0x5d22
@..api_idx_000a_3.l5:
    cmp word [bp - 0x0008], byte 0x0f ; 0x5d25
    jle short @..api_idx_000a_3.l6   ; 0x5d29
    mov ax, word [bp - 0x0008]       ; 0x5d2b
    add word [bp - 0x0006], ax       ; 0x5d2e
@..api_idx_000a_3.l6:
    cmp word [bp - 0x0008], byte 0x11 ; 0x5d31
    jle short @..api_idx_000a_3.l7   ; 0x5d35
    mov ax, word [bp - 0x0008]       ; 0x5d37
    add word [bp - 0x0006], ax       ; 0x5d3a
@..api_idx_000a_3.l7:
    mov ax, word [bp - 0x0002]       ; 0x5d3d
    push ax                          ; 0x5d40
    mov ax, 0x248                    ; 0x5d41
    imul word [bp + 0x4]             ; 0x5d44
    mov bx, ax                       ; 0x5d47
    pop ax                           ; 0x5d49
    mov word [bx + 0x5c0c], ax       ; 0x5d4a
    mov word [bx + 0x5c0e], ax       ; 0x5d4e
    mov ax, word [bp - 0x0004]       ; 0x5d52
    mov word [bx + 0x5c10], ax       ; 0x5d55
    mov word [bx + 0x5c12], ax       ; 0x5d59
    mov word [bx + 0x5c14], 0        ; 0x5d5d
    mov ax, 0xf                      ; 0x5d63
    imul word [bp - 0x0006]          ; 0x5d66
    mov word [bx + 0x5c16], ax       ; 0x5d69
    cmp byte [bx + 0x5e2b], 5        ; 0x5d6d
    jne short @..api_idx_000a_3.l8   ; 0x5d72
    shl ax, 1                        ; 0x5d74
    cwd                              ; 0x5d76
    idiv cx                          ; 0x5d77
    mov word [bx + 0x5c16], ax       ; 0x5d79
@..api_idx_000a_3.l8:
    ret                              ; 0x5d7d
loc_5d7e:
    mov ax, 0                        ; 0x5d7e
    call ds_dispatch_f40b            ; 0x5d81
    mov ax, word [bp + 0x6]          ; 0x5d84
    push ax                          ; 0x5d87
    cmp ax, strict word 1            ; 0x5d88
    pop ax                           ; 0x5d8b
    jge short @..local.l21           ; 0x5d8c
    mov ax, 1                        ; 0x5d8e
@..local.l21:
    push ax                          ; 0x5d91
    mov ax, 0x248                    ; 0x5d92
    imul word [bp + 0x4]             ; 0x5d95
    mov bx, ax                       ; 0x5d98
    pop ax                           ; 0x5d9a
    mov byte [bx + 0x5d54], al       ; 0x5d9b
    mov ax, word [bp + 0x8]          ; 0x5d9f
    push ax                          ; 0x5da2
    cmp ax, strict word 1            ; 0x5da3
    pop ax                           ; 0x5da6
    jge short @..local.l22           ; 0x5da7
    mov ax, 1                        ; 0x5da9
@..local.l22:
    mov byte [bx + 0x5d55], al       ; 0x5dac
    mov ax, word [bp + 0xa]          ; 0x5db0
    push ax                          ; 0x5db3
    cmp ax, strict word 1            ; 0x5db4
    pop ax                           ; 0x5db7
    jge short @..local.l23           ; 0x5db8
    mov ax, 1                        ; 0x5dba
@..local.l23:
    mov byte [bx + 0x5d56], al       ; 0x5dbd
    mov ax, word [bp + 0xc]          ; 0x5dc1
    push ax                          ; 0x5dc4
    cmp ax, strict word 1            ; 0x5dc5
    pop ax                           ; 0x5dc8
    jge short @..local.l24           ; 0x5dc9
    mov ax, 1                        ; 0x5dcb
@..local.l24:
    mov byte [bx + 0x5d57], al       ; 0x5dce
    mov ax, word [bp + 0xe]          ; 0x5dd2
    push ax                          ; 0x5dd5
    cmp ax, strict word 1            ; 0x5dd6
    pop ax                           ; 0x5dd9
    jge short @..local.l25           ; 0x5dda
    mov ax, 1                        ; 0x5ddc
@..local.l25:
    mov byte [bx + 0x5d58], al       ; 0x5ddf
    mov ax, word [bp + 0x10]         ; 0x5de3
    push ax                          ; 0x5de6
    cmp ax, strict word 1            ; 0x5de7
    pop ax                           ; 0x5dea
    jge short @..local.l26           ; 0x5deb
    mov ax, 1                        ; 0x5ded
@..local.l26:
    mov byte [bx + 0x5d59], al       ; 0x5df0
    ret                              ; 0x5df4
%include "vpcmk/api_idx_0004_7.asm"

    mov ax, word [bp - 0x0004]       ; 0x5ff3
    inc ax                           ; 0x5ff6
    inc ax                           ; 0x5ff7
    push ax                          ; 0x5ff8
    mov ax, word [bp - 0x0004]       ; 0x5ff9
    inc ax                           ; 0x5ffc
    push ax                          ; 0x5ffd
    push ax                          ; 0x5ffe
    push ax                          ; 0x5fff
    mov ax, word [bp - 0x0004]       ; 0x6000
    inc ax                           ; 0x6003
    inc ax                           ; 0x6004
    push ax                          ; 0x6005
    push ax                          ; 0x6006
    push word [bp + 0x4]             ; 0x6007
    call loc_5d7e                    ; 0x600a
    add sp, byte 0x0e                ; 0x600d
    jmp short @..api_idx_0004_7.l6   ; 0x6010
    mov ax, word [bp - 0x0004]       ; 0x6012
    inc ax                           ; 0x6015
    push ax                          ; 0x6016
    mov ax, word [bp - 0x0004]       ; 0x6017
    inc ax                           ; 0x601a
    inc ax                           ; 0x601b
    inc ax                           ; 0x601c
    push ax                          ; 0x601d
    mov ax, word [bp - 0x0004]       ; 0x601e
    inc ax                           ; 0x6021
    push ax                          ; 0x6022
    push ax                          ; 0x6023
    push ax                          ; 0x6024
    mov ax, word [bp - 0x0004]       ; 0x6025
    inc ax                           ; 0x6028
    inc ax                           ; 0x6029
    push ax                          ; 0x602a
    push word [bp + 0x4]             ; 0x602b
    call loc_5d7e                    ; 0x602e
    add sp, byte 0x0e                ; 0x6031
    jmp short @..api_idx_0004_7.l6   ; 0x6034
    mov ax, word [bp - 0x0004]       ; 0x6036
    inc ax                           ; 0x6039
    push ax                          ; 0x603a
    push ax                          ; 0x603b
    mov ax, word [bp - 0x0004]       ; 0x603c
    inc ax                           ; 0x603f
    inc ax                           ; 0x6040
    push ax                          ; 0x6041
    push ax                          ; 0x6042
    mov ax, word [bp - 0x0004]       ; 0x6043
    inc ax                           ; 0x6046
    push ax                          ; 0x6047
    mov ax, word [bp - 0x0004]       ; 0x6048
    inc ax                           ; 0x604b
    inc ax                           ; 0x604c
    push ax                          ; 0x604d
    push word [bp + 0x4]             ; 0x604e
    call loc_5d7e                    ; 0x6051
    add sp, byte 0x0e                ; 0x6054
    jmp short @..api_idx_0004_7.l6   ; 0x6057
    wait                             ; 0x6059
    scasb                            ; 0x605a
    mov cl, 0xae                     ; 0x605b
    loope loc_600d                   ; 0x605d
    wait                             ; 0x605f
    scasb                            ; 0x6060
    push ss                          ; 0x6061
    scasw                            ; 0x6062
    xor ax, 0x6aaf                   ; 0x6063
    scasw                            ; 0x6066
    mov gs, word [bx - 0x503d]       ; 0x6067
    out 0xaf, ax                     ; 0x606b
    push ss                          ; 0x606d
    mov al, 0x3a                     ; 0x606e
    mov al, 0x59                     ; 0x6070
    mov al, 0x7d                     ; 0x6072
    db 0xb0
@..api_idx_0004_7.l5:
    cmp ax, strict word 0xe          ; 0x6075
    jae short @..api_idx_0004_7.l6   ; 0x6078
    xchg bx, ax                      ; 0x607a
    shl bx, 1                        ; 0x607b
    jmp [cs:bx - 0x4f60]             ; 0x607d
@..api_idx_0004_7.l6:
    ret                              ; 0x6082
%include "vpcmk/api_idx_0016.asm"

%include "vpcmk/api_idx_0006_3.asm"

%include "vpcmk/api_idx_0002_12.asm"

%include "vpcmk/math_loc_62fb.asm"

    mov ax, 0xc6                     ; 0x64fa
    push ax                          ; 0x64fd
    mov ax, 0x13c                    ; 0x64fe
    push ax                          ; 0x6501
    mov ax, 0x70                     ; 0x6502
    push ax                          ; 0x6505
    mov ax, 1                        ; 0x6506
    push ax                          ; 0x6509
    call ds_dispatch_e8da            ; 0x650a
    add sp, byte 8                   ; 0x650d
@..math_loc_62fb.l6:
    mov word [bp - 0x0002], 0        ; 0x6510
@..math_loc_62fb.l7:
    mov ax, 0x248                    ; 0x6515
    imul word [bp - 0x0006]          ; 0x6518
    add ax, word [bp - 0x0002]       ; 0x651b
    mov bx, ax                       ; 0x651e
    cmp byte [bx + 0x5d50], 0        ; 0x6520
    jbe short @..math_loc_62fb.l8    ; 0x6525
    push word [bp - 0x0002]          ; 0x6527
    push word [bp - 0x0006]          ; 0x652a
    call api_idx_006e                ; 0x652d
    add sp, byte 4                   ; 0x6530
    jmp short @..math_loc_62fb.l7    ; 0x6533
@..math_loc_62fb.l8:
    inc word [bp - 0x0002]           ; 0x6535
    mov ax, word [bp - 0x0002]       ; 0x6538
    cmp ax, strict word 4            ; 0x653b
    jl short @..math_loc_62fb.l7     ; 0x653e
    push word [bp - 0x0006]          ; 0x6540
    call api_idx_0008_3              ; 0x6543
    pop cx                           ; 0x6546
    push word [bp - 0x0006]          ; 0x6547
    call api_idx_0002_9              ; 0x654a
    pop cx                           ; 0x654d
    mov word [bp - 0x0030], 1        ; 0x654e
    mov word [bp - 0x002e], 1        ; 0x6553
    mov word [bp - 0x002c], 0xffff   ; 0x6558
    lea ax, word [bp - 0x0030]       ; 0x655d
    push ax                          ; 0x6560
    mov ax, 0                        ; 0x6561
    push ax                          ; 0x6564
    mov ax, 0xffff                   ; 0x6565
    push ax                          ; 0x6568
    mov ax, 1                        ; 0x6569
    push ax                          ; 0x656c
    mov ax, data_0002                ; 0x656d
    push ax                          ; 0x6570
    mov ax, 1                        ; 0x6571
    push ax                          ; 0x6574
    mov ax, 0xc                      ; 0x6575
    push ax                          ; 0x6578
    mov ax, 0x6a                     ; 0x6579
    push ax                          ; 0x657c
    mov ax, 0xb                      ; 0x657d
    push ax                          ; 0x6580
    mov ax, 0xb4                     ; 0x6581
    push ax                          ; 0x6584
    mov ax, 0x4a                     ; 0x6585
    push ax                          ; 0x6588
    mov ax, 0x467                    ; 0x6589
    push ax                          ; 0x658c
    mov ax, 0x468                    ; 0x658d
    push ax                          ; 0x6590
    call math_loc_0445               ; 0x6591
    add sp, byte 0x1a                ; 0x6594
    mov word [bp - 0x0004], ax       ; 0x6597
    cmp word [bp - 0x0004], byte 0   ; 0x659a
    jne short @..math_loc_62fb.l9    ; 0x659e
    mov ax, 1                        ; 0x65a0
    push ax                          ; 0x65a3
    push word [bp + 0x6]             ; 0x65a4
    mov ax, 0x248                    ; 0x65a7
    imul word [bp - 0x0006]          ; 0x65aa
    add ax, 0x5bf4                   ; 0x65ad
    push ax                          ; 0x65b0
    call api_idx_0002_2              ; 0x65b1
    add sp, byte 6                   ; 0x65b4
    mov bx, word [bp + 0x6]          ; 0x65b7
    mov byte [bx - 0x6f8a], 1        ; 0x65ba
    mov ax, 0                        ; 0x65bf
    push ax                          ; 0x65c2
    call ds_dispatch_ef14            ; 0x65c3
    pop cx                           ; 0x65c6
    mov ax, data_0002                ; 0x65c7
    push ax                          ; 0x65ca
    mov ax, 0                        ; 0x65cb
    push ax                          ; 0x65ce
    mov ax, 0x94f6                   ; 0x65cf
    push ax                          ; 0x65d2
    call ds_dispatch_d161            ; 0x65d3
    add sp, byte 4                   ; 0x65d6
    push ax                          ; 0x65d9
    call ds_dispatch_f909            ; 0x65da
    add sp, byte 4                   ; 0x65dd
    mov word [bp - 0x0008], ax       ; 0x65e0
    mov ax, 0x18                     ; 0x65e3
    push ax                          ; 0x65e6
    mov ax, data_906e                ; 0x65e7
    push ax                          ; 0x65ea
    push word [bp - 0x0008]          ; 0x65eb
    call ds_dispatch_fd76            ; 0x65ee
    add sp, byte 6                   ; 0x65f1
    push word [bp - 0x0008]          ; 0x65f4
    call ds_dispatch_fda5            ; 0x65f7
    pop cx                           ; 0x65fa
@..math_loc_62fb.l9:
    ret                              ; 0x65fb
%include "vpcmk/api_idx_0002_13.asm"

loc_6626:
    mov ax, 0xfdb6                   ; 0x6626
    call ds_dispatch_f40b            ; 0x6629
    mov word [bp - 0x0002], 0        ; 0x662c
    jmp short @..local.l29           ; 0x6631
@..local.l27:
    mov bx, word [bp - 0x0002]       ; 0x6633
    cmp byte [bx - 0x6f8a], 0        ; 0x6636
    jbe short @..local.l28           ; 0x663b
    mov ax, 0                        ; 0x663d
    push ax                          ; 0x6640
    push bx                          ; 0x6641
    lea ax, word [bp - 0x024a]       ; 0x6642
    push ax                          ; 0x6646
    call api_idx_0002_2              ; 0x6647
    add sp, byte 6                   ; 0x664a
    lea ax, word [bp - 0x024a]       ; 0x664d
    push ax                          ; 0x6651
    push word [bp + 0x4]             ; 0x6652
    call string_loc_6fca             ; 0x6655
    add sp, byte 4                   ; 0x6658
    test ax, ax                      ; 0x665b
    jne short @..local.l28           ; 0x665d
    mov ax, 0xffff                   ; 0x665f
    ret                              ; 0x6662
@..local.l28:
    inc word [bp - 0x0002]           ; 0x6663
@..local.l29:
    mov ax, word [bp - 0x0002]       ; 0x6666
    cmp ax, word [data_9070]         ; 0x6669
    jl short @..local.l27            ; 0x666d
    mov ax, 0                        ; 0x666f
    ret                              ; 0x6672
%include "vpcmk/api_idx_0014.asm"

%include "vpcmk/math_loc_66c3.asm"

%include "vpcmk/api_idx_002c.asm"

loc_67e2:
    mov ax, 0                        ; 0x67e2
    call ds_dispatch_f40b            ; 0x67e5
    push word [bp + 0x4]             ; 0x67e8
    mov ax, 0                        ; 0x67eb
    push ax                          ; 0x67ee
    call math_loc_66c3               ; 0x67ef
    add sp, byte 4                   ; 0x67f2
@..local.l30:
    call ds_dispatch_baef            ; 0x67f5
    test ax, ax                      ; 0x67f8
    jne short @..local.l31           ; 0x67fa
    jmp short @..local.l30           ; 0x67fc
@..local.l31:
    ret                              ; 0x67fe
%include "vpcmk/api_idx_0018.asm"

%include "vpcmk/api_idx_0006_4.asm"

%include "vpcmk/math_loc_68fa.asm"

%include "vpcmk/api_idx_002c_2.asm"

    mov word [bp - 0x0002], 0        ; 0x6c3d
@..api_idx_002c_2.l3:
    mov ax, word [bp - 0x0002]       ; 0x6c42
    shl ax, 1                        ; 0x6c45
    mov bx, ax                       ; 0x6c47
    mov word [bx - 0x7cf2], 0        ; 0x6c49
    inc word [bp - 0x0002]           ; 0x6c4f
    mov ax, word [bp - 0x0002]       ; 0x6c52
    cmp ax, strict word 6            ; 0x6c55
    jl short @..api_idx_002c_2.l3    ; 0x6c58
    mov word [data_976c], 7          ; 0x6c5a
    les bx, word [data_0002]         ; 0x6c60
    mov ax, word [es:bx]             ; 0x6c64
    mov dx, word [es:bx + 0x2]       ; 0x6c67
    mov word [data_908c], dx         ; 0x6c6b
    mov word [data_908a], ax         ; 0x6c6f
@..api_idx_002c_2.l4:
    mov word [data_95aa], 0x14       ; 0x6c72
    mov word [data_95ac], 0          ; 0x6c78
    mov ax, 0                        ; 0x6c7e
    push ax                          ; 0x6c81
    push ax                          ; 0x6c82
    push word [data_9526]            ; 0x6c83
    push word [data_9524]            ; 0x6c87
    call ds_dispatch_e942            ; 0x6c8b
    add sp, byte 8                   ; 0x6c8e
    mov ax, 0                        ; 0x6c91
    push ax                          ; 0x6c94
    push ax                          ; 0x6c95
    push word [data_952a]            ; 0x6c96
    push word [data_9528]            ; 0x6c9a
    call ds_dispatch_e942            ; 0x6c9e
    add sp, byte 8                   ; 0x6ca1
    mov ax, 0                        ; 0x6ca4
    push ax                          ; 0x6ca7
    push ax                          ; 0x6ca8
    push word [data_952e]            ; 0x6ca9
    push word [data_952c]            ; 0x6cad
    call ds_dispatch_e942            ; 0x6cb1
    add sp, byte 8                   ; 0x6cb4
    mov ax, 0                        ; 0x6cb7
    push ax                          ; 0x6cba
    push ax                          ; 0x6cbb
    push word [data_9532]            ; 0x6cbc
    push word [data_9530]            ; 0x6cc0
    call ds_dispatch_e942            ; 0x6cc4
    add sp, byte 8                   ; 0x6cc7
    mov ax, 0                        ; 0x6cca
    push ax                          ; 0x6ccd
    push ax                          ; 0x6cce
    push word [data_9536]            ; 0x6ccf
    push word [data_9534]            ; 0x6cd3
    call ds_dispatch_e942            ; 0x6cd7
    add sp, byte 8                   ; 0x6cda
    mov ax, 0                        ; 0x6cdd
    push ax                          ; 0x6ce0
    push ax                          ; 0x6ce1
    push word [data_953a]            ; 0x6ce2
    push word [data_9538]            ; 0x6ce6
    call ds_dispatch_e942            ; 0x6cea
    add sp, byte 8                   ; 0x6ced
    mov word [bp - 0x0002], 0        ; 0x6cf0
@..api_idx_002c_2.l5:
    mov ax, word [bp - 0x0002]       ; 0x6cf5
    shl ax, 1                        ; 0x6cf8
    mov bx, ax                       ; 0x6cfa
    add bx, bp                       ; 0x6cfc
    mov word [bx - 0x002c], 0        ; 0x6cfe
    inc word [bp - 0x0002]           ; 0x6d03
    mov ax, word [bp - 0x0002]       ; 0x6d06
    cmp ax, strict word 5            ; 0x6d09
    jl short @..api_idx_002c_2.l5    ; 0x6d0c
    mov word [bp - 0x0022], 1        ; 0x6d0e
    mov word [bp - 0x0020], 0xffff   ; 0x6d13
    call api_idx_0002_13             ; 0x6d18
    mov word [bp - 0x000a], ax       ; 0x6d1b
    cmp ax, strict word 0xffff       ; 0x6d1e
    je short @..api_idx_002c_2.l6    ; 0x6d21
    mov word [bp - 0x002c], 1        ; 0x6d23
@..api_idx_002c_2.l6:
    mov word [bp - 0x0002], 0        ; 0x6d28
    jmp short @..api_idx_002c_2.l9   ; 0x6d2d
@..api_idx_002c_2.l7:
    mov bx, word [bp - 0x0002]       ; 0x6d2f
    cmp byte [bx - 0x6f8a], 1        ; 0x6d32
    jne short @..api_idx_002c_2.l8   ; 0x6d37
    mov word [bp - 0x002a], 1        ; 0x6d39
    mov word [bp - 0x0028], 1        ; 0x6d3e
    mov word [bp - 0x0026], 1        ; 0x6d43
    mov word [bp - 0x0024], 1        ; 0x6d48
@..api_idx_002c_2.l8:
    inc word [bp - 0x0002]           ; 0x6d4d
@..api_idx_002c_2.l9:
    mov ax, word [bp - 0x0002]       ; 0x6d50
    cmp ax, word [data_9070]         ; 0x6d53
    jl short @..api_idx_002c_2.l7    ; 0x6d57
    lea ax, word [bp - 0x002c]       ; 0x6d59
    push ax                          ; 0x6d5c
    mov ax, 0                        ; 0x6d5d
    push ax                          ; 0x6d60
    mov ax, 0xffff                   ; 0x6d61
    push ax                          ; 0x6d64
    mov ax, 1                        ; 0x6d65
    push ax                          ; 0x6d68
    mov ax, 6                        ; 0x6d69
    push ax                          ; 0x6d6c
    mov ax, 1                        ; 0x6d6d
    push ax                          ; 0x6d70
    mov ax, 0xc                      ; 0x6d71
    push ax                          ; 0x6d74
    mov ax, 0x34                     ; 0x6d75
    push ax                          ; 0x6d78
    mov ax, 8                        ; 0x6d79
    push ax                          ; 0x6d7c
    mov ax, 0xbc                     ; 0x6d7d
    push ax                          ; 0x6d80
    mov ax, 4                        ; 0x6d81
    push ax                          ; 0x6d84
    mov ax, 0                        ; 0x6d85
    push ax                          ; 0x6d88
    mov ax, 0x46a                    ; 0x6d89
    push ax                          ; 0x6d8c
    call math_loc_0445               ; 0x6d8d
    add sp, byte 0x1a                ; 0x6d90
    mov word [bp - 0x0006], ax       ; 0x6d93
    jmp near @..api_idx_002c_2.l10   ; 0x6d96

    db 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x31, 0x7b
    db 0x83, 0xc4, 0x08, 0xff, 0x76, 0xf6, 0xe8, 0xc1, 0xf8, 0x59, 0xe9, 0xc0, 0x00, 0xb8, 0xc7, 0x00
    db 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x14, 0x7b, 0x83, 0xc4, 0x08
    db 0xb8, 0x82, 0x04, 0x50, 0xe8, 0x2a, 0xfb, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05
    db 0x50, 0xe8, 0x5b, 0xf9, 0x59, 0xe9, 0x95, 0x00, 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0xe9, 0x7a, 0x83, 0xc4, 0x08, 0xb8, 0x85, 0x04, 0x50, 0xe8
    db 0xff, 0xfa, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50, 0xe8, 0xda, 0xf9, 0x59
    db 0xeb, 0x6b, 0xb8, 0xc7, 0x00, 0x50, 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8
    db 0xbf, 0x7a, 0x83, 0xc4, 0x08, 0xb8, 0x88, 0x04, 0x50, 0xe8, 0xd5, 0xfa, 0x59, 0x89, 0x46, 0xf8
    db 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50, 0xe8, 0xcd, 0xf9, 0x59, 0xeb, 0x41, 0xb8, 0xc7, 0x00, 0x50
    db 0xb8, 0x3f, 0x01, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0x95, 0x7a, 0x83, 0xc4, 0x08, 0xb8
    db 0x8b, 0x04, 0x50, 0xe8, 0xab, 0xfa, 0x59, 0x89, 0x46, 0xf8, 0x3d, 0xff, 0xff, 0x74, 0x05, 0x50
    db 0xe8, 0x2b, 0xfa, 0x59, 0xeb, 0x17, 0xe0, 0xbd, 0x28, 0xbe, 0xfd, 0xbd, 0x52, 0xbe, 0x7c, 0xbe

@..api_idx_002c_2.l10:
    cmp ax, strict word 5            ; 0x6e69
    jae short @..api_idx_002c_2.l11  ; 0x6e6c
    xchg bx, ax                      ; 0x6e6e
    shl bx, 1                        ; 0x6e6f
    jmp [cs:bx - 0x415a]             ; 0x6e71
@..api_idx_002c_2.l11:
    cmp word [bp - 0x0006], byte 5   ; 0x6e76
    je short @..api_idx_002c_2.l12   ; 0x6e7a
    jmp near @..api_idx_002c_2.l4    ; 0x6e7c
@..api_idx_002c_2.l12:
    cmp word [data_8450], byte 0     ; 0x6e7f
    je short @..api_idx_002c_2.l13   ; 0x6e84
    push word [data_844c]            ; 0x6e86
    push word [data_844e]            ; 0x6e8a
    call ds_dispatch_d91b            ; 0x6e8e
    add sp, byte 4                   ; 0x6e91
    mov ax, 0                        ; 0x6e94
    push ax                          ; 0x6e97
    call ds_dispatch_d907            ; 0x6e98
    pop cx                           ; 0x6e9b
@..api_idx_002c_2.l13:
    mov ax, 0xf                      ; 0x6e9c
    push ax                          ; 0x6e9f
    call ds_dispatch_c12a            ; 0x6ea0
    pop cx                           ; 0x6ea3
    mov ax, 0                        ; 0x6ea4
    push ax                          ; 0x6ea7
    mov ax, 1                        ; 0x6ea8
    push ax                          ; 0x6eab
    push word [data_9542]            ; 0x6eac
    push word [data_9540]            ; 0x6eb0
    call ds_dispatch_e942            ; 0x6eb4
    add sp, byte 8                   ; 0x6eb7
    mov ax, 0                        ; 0x6eba
    push ax                          ; 0x6ebd
    mov ax, 1                        ; 0x6ebe
    push ax                          ; 0x6ec1
    push word [data_953e]            ; 0x6ec2
    push word [data_953c]            ; 0x6ec6
    call ds_dispatch_e942            ; 0x6eca
    add sp, byte 8                   ; 0x6ecd
    mov ax, 0                        ; 0x6ed0
    push ax                          ; 0x6ed3
    mov ax, 1                        ; 0x6ed4
    push ax                          ; 0x6ed7
    push word [data_953a]            ; 0x6ed8
    push word [data_9538]            ; 0x6edc
    call ds_dispatch_e942            ; 0x6ee0
    add sp, byte 8                   ; 0x6ee3
    mov ax, 0                        ; 0x6ee6
    push ax                          ; 0x6ee9
    mov ax, 1                        ; 0x6eea
    push ax                          ; 0x6eed
    push word [data_9536]            ; 0x6eee
    push word [data_9534]            ; 0x6ef2
    call ds_dispatch_e942            ; 0x6ef6
    add sp, byte 8                   ; 0x6ef9
    mov ax, 0                        ; 0x6efc
    push ax                          ; 0x6eff
    mov ax, 1                        ; 0x6f00
    push ax                          ; 0x6f03
    push word [data_9532]            ; 0x6f04
    push word [data_9530]            ; 0x6f08
    call ds_dispatch_e942            ; 0x6f0c
    add sp, byte 8                   ; 0x6f0f
    mov ax, 0                        ; 0x6f12
    push ax                          ; 0x6f15
    mov ax, 1                        ; 0x6f16
    push ax                          ; 0x6f19
    push word [data_952e]            ; 0x6f1a
    push word [data_952c]            ; 0x6f1e
    call ds_dispatch_e942            ; 0x6f22
    add sp, byte 8                   ; 0x6f25
    mov ax, 0                        ; 0x6f28
    push ax                          ; 0x6f2b
    mov ax, 1                        ; 0x6f2c
    push ax                          ; 0x6f2f
    push word [data_952a]            ; 0x6f30
    push word [data_9528]            ; 0x6f34
    call ds_dispatch_e942            ; 0x6f38
    add sp, byte 8                   ; 0x6f3b
    mov ax, 0                        ; 0x6f3e
    push ax                          ; 0x6f41
    mov ax, 1                        ; 0x6f42
    push ax                          ; 0x6f45
    push word [data_9526]            ; 0x6f46
    push word [data_9524]            ; 0x6f4a
    call ds_dispatch_e942            ; 0x6f4e
    add sp, byte 8                   ; 0x6f51
    mov ax, 0                        ; 0x6f54
    push ax                          ; 0x6f57
    mov ax, 1                        ; 0x6f58
    push ax                          ; 0x6f5b
    push word [bp - 0x000c]          ; 0x6f5c
    push word [bp - 0x000e]          ; 0x6f5f
    call ds_dispatch_e942            ; 0x6f62
    add sp, byte 8                   ; 0x6f65
    mov ax, 1                        ; 0x6f68
    push ax                          ; 0x6f6b
    call ds_dispatch_c12a            ; 0x6f6c
    pop cx                           ; 0x6f6f
    mov ax, data_0002                ; 0x6f70
    push ax                          ; 0x6f73
    call ds_dispatch_c12a            ; 0x6f74
    pop cx                           ; 0x6f77
    mov ax, 0xc7                     ; 0x6f78
    push ax                          ; 0x6f7b
    mov ax, 0x13f                    ; 0x6f7c
    push ax                          ; 0x6f7f
    mov ax, 0                        ; 0x6f80
    push ax                          ; 0x6f83
    push ax                          ; 0x6f84
    call ds_dispatch_e8da            ; 0x6f85
    add sp, byte 8                   ; 0x6f88
    ret                              ; 0x6f8b

    db 0x8f, 0x06, 0x22, 0x95, 0x59, 0x89, 0x26, 0x1e, 0x95, 0x89, 0x2e, 0x20, 0x95, 0x89, 0x36, 0x1a
    db 0x95, 0x89, 0x3e, 0x1c, 0x95, 0xfc, 0xbf, 0x24, 0x95, 0xb9, 0x8c, 0x97, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x59, 0x90, 0x8b, 0x2e, 0x20, 0x95, 0x8b, 0x26, 0x1e
    db 0x95, 0x8b, 0x36, 0x1a, 0x95, 0x8b, 0x3e, 0x1c, 0x95, 0x51, 0xff, 0x26, 0x22, 0x95

%include "vpcmk/string_loc_6fca.asm"


    db 'PCFILE.DBS', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x25, 0x20, 0x00
    db '1111111110', 0
    db '11100000', 0
    db '000000', 0
    db '1111000000', 0
    db '1000111100', 0
    db '11101000', 0
    db '000000', 0
    db '1111000010', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101111', 0
    db '000000', 0
    db '1111000000', 0
    db '1111111110', 0
    db '11100111', 0
    db '000000', 0
    db '1111010000', 0
    db '1001110000', 0
    db '11100000', 0
    db '000000', 0
    db '1111010000', 0
    db '1111111110', 0
    db '11111111', 0
    db '000000', 0
    db '1111000010', 0
    db '1001111000', 0
    db '11101000', 0
    db '000000', 0
    db '1111000100', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111001000', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101010', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111000011', 0
    db '1001111101', 0
    db '11101001', 0
    db '000000', 0
    db '1111000101', 0
    db '1111111111', 0
    db '11100111', 0
    db '000000', 0
    db '1111010001', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'MAAAAAAA', 0
    db 'AMAAAAAA', 0
    db 'AAMAAAIA', 0
    db 'AAAAMIAA', 0
    db 'KIILKIIA', 0
    db 'ANAANAAA', 0
    db 'AKAAMIMA', 0
    db 'KOAOAAKA', 0
    db 'KALLKLIA', 0
    db 'APPAAAIA', 0
    db 'MJMMJJOA', 0
    db 'MLAJMOIA', 0
    db 'NINAKNIA', 0
    db 'MKKMMMAA', 0
    db 'JIIJJIIA', 0
    db 'HKKHJJIA', 0
    db 'LGKMHHHA', 0
    db 'KHNKIGGA', 0
    db 'IHGJKHNA', 0
    db 'FLGGKOMA', 0
    db 'MFFOIKDA', 0
    db 'KHGMKIGA', 0
    db 'HKHHKMKA', 0
    db 'IGMKIIKA', 0
    db 'KKGKHHJA', 0
    db 'ACBCBCCCCHCHBA', 0
    db '02222232112230', 0
    db 'ACCCCDCCCHHKDA', 0
    db '02222232123230', 0
    db 'ACCCCDCCCIFKEA', 0
    db '02222232121230', 0
    db 'ACHCHDCCCHFIDA', 0
    db '02323232111230', 0
    db 'ACKCHHGCCIECBA', 0
    db '02322322121220', 0
    db 'ACBCCDECCEEEGA', 0
    db '02121212111330', 0
    db 'ACICIBHCCFKFFA', 0
    db '02323112113330', 0
    db 'ACECCEGCCIFKFA', 0
    db '02222222122220', 0
    db 'ACKCGDHCCFKIDA', 0
    db '02322212112320', 0
    db 'ACHCHHGCCCECHA', 0
    db '02322322112230', 0
    db 'PORTDATA.VGA', 0
    db 'PCFILE.DBS', 0
    db 'PCFILE.DBS', 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0

