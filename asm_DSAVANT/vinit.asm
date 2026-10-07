%include "structs/structs.inc"
%include "structs/data_91b8.inc"
org 0
bits 16
%include "labels/vinit_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x09, 0x16, 0x98, 0x90

data_0002 equ 0x0002
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e14 equ 0x0e14
data_0e16 equ 0x0e16
data_0e18 equ 0x0e18
data_0e1a equ 0x0e1a
data_0e1c equ 0x0e1c
data_0e1e equ 0x0e1e
data_0e20 equ 0x0e20
data_0e22 equ 0x0e22
data_0e24 equ 0x0e24
data_0e26 equ 0x0e26
data_0e28 equ 0x0e28
data_0e2a equ 0x0e2a
data_0e2c equ 0x0e2c
data_0e2e equ 0x0e2e
data_0e30 equ 0x0e30
data_0e32 equ 0x0e32
data_0e36 equ 0x0e36
data_1008 equ 0x1008
data_100a equ 0x100a
data_5212 equ 0x5212
data_5214 equ 0x5214
data_5216 equ 0x5216
data_5528 equ 0x5528
data_552a equ 0x552a
data_5978 equ 0x5978
data_5979 equ 0x5979
data_5980 equ 0x5980
data_5984 equ 0x5984
data_5986 equ 0x5986
data_5989 equ 0x5989
data_598a equ 0x598a
data_598e equ 0x598e
data_59f8 equ 0x59f8
data_5b3e equ 0x5b3e
data_5b6c equ 0x5b6c
data_5b6e equ 0x5b6e
data_5b70 equ 0x5b70
data_69c8 equ 0x69c8
data_82b6 equ 0x82b6
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8d06 equ 0x8d06
data_8d08 equ 0x8d08
data_904c equ 0x904c
data_9056 equ 0x9056
data_9058 equ 0x9058
data_905a equ 0x905a
data_905c equ 0x905c
data_9068 equ 0x9068
data_906a equ 0x906a
data_9088 equ 0x9088
data_91b8 equ 0x91b8

    db 0x20, 0x01, 0x02, 0x00, 0x20, 0x66
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov ax, word [data_830a]         ; 0x0014
    jmp short @..local.l5            ; 0x0017
@..local.l1:
    call loc_03a8                    ; 0x0019
    jmp short @..local.l6            ; 0x001c
@..local.l2:
    call api_idx_0068                ; 0x001e
    jmp short @..local.l6            ; 0x0021
@..local.l3:
    call api_idx_0002_7              ; 0x0023
    jmp short @..local.l6            ; 0x0026
@..local.l4:
    call api_idx_0008                ; 0x0028
    jmp short @..local.l6            ; 0x002b
@..local.l5:
    cmp ax, strict word 0            ; 0x002d
    je short @..local.l1             ; 0x0030
    cmp ax, strict word 1            ; 0x0032
    je short @..local.l2             ; 0x0035
    cmp ax, strict word 2            ; 0x0037
    je short @..local.l4             ; 0x003a
    cmp ax, strict word 8            ; 0x003c
    je short @..local.l3             ; 0x003f
@..local.l6:
    mov ax, 0                        ; 0x0041
    ret                              ; 0x0044
%include "vinit/api_idx_0002.asm"

%include "vinit/api_idx_0002_2.asm"

%include "vinit/api_idx_0002_3.asm"

%include "vinit/api_idx_0002_4.asm"

%include "vinit/api_idx_000c.asm"

%include "vinit/math_loc_0211.asm"

loc_03a8:
    mov ax, 0xfce6                   ; 0x03a8
    call ds_dispatch_f40b            ; 0x03ab
    mov word [data_905c], 0          ; 0x03ae
    mov word [data_0e30], 0          ; 0x03b4
    mov word [data_0e2e], 0          ; 0x03ba
    mov word [data_0e2c], 0          ; 0x03c0
    mov word [data_0e2a], 0          ; 0x03c6
    mov word [data_0e28], 0          ; 0x03cc
    mov word [data_0e26], 0          ; 0x03d2
    mov ax, 0                        ; 0x03d8
    push ax                          ; 0x03db
    mov ax, 0x9098                   ; 0x03dc
    push ax                          ; 0x03df
    call ds_dispatch_f909            ; 0x03e0
    add sp, byte 4                   ; 0x03e3
    mov word [data_9088], ax         ; 0x03e6
    cmp ax, strict word 0xffff       ; 0x03e9
    jne short @..local.l7            ; 0x03ec
    mov ax, 1                        ; 0x03ee
    push ax                          ; 0x03f1
    call ds_dispatch_b171            ; 0x03f2
    pop cx                           ; 0x03f5
@..local.l7:
    mov ax, 0x34c                    ; 0x03f6
    push ax                          ; 0x03f9
    mov ax, 0x5642                   ; 0x03fa
    push ax                          ; 0x03fd
    push word [data_9088]            ; 0x03fe
    call ds_dispatch_fd6f            ; 0x0402
    add sp, byte 6                   ; 0x0405
    push word [data_9088]            ; 0x0408
    call ds_dispatch_fda5            ; 0x040c
    pop cx                           ; 0x040f
    mov word [data_905a], 0x36       ; 0x0410
    mov al, byte [data_5986]         ; 0x0416
    sub ah, ah                       ; 0x0419
    mov word [data_9058], ax         ; 0x041b
    mov al, byte [data_598a]         ; 0x041e
    sub ah, ah                       ; 0x0421
    jmp short @..local.l12           ; 0x0423
@..local.l8:
    mov ax, data_0002                ; 0x0425
    push ax                          ; 0x0428
    call ds_dispatch_b171            ; 0x0429
    pop cx                           ; 0x042c
    jmp short @..local.l13           ; 0x042d
@..local.l9:
    mov word [bp - 0x0002], 1        ; 0x042f
    jmp short @..local.l13           ; 0x0434
@..local.l10:
    mov word [bp - 0x0002], data_0002 ; 0x0436
    jmp short @..local.l13           ; 0x043b
@..local.l11:
    mov ax, data_0002                ; 0x043d
    push ax                          ; 0x0440
    call ds_dispatch_b171            ; 0x0441
    pop cx                           ; 0x0444
    jmp short @..local.l13           ; 0x0445
@..local.l12:
    cmp ax, strict word 1            ; 0x0447
    je short @..local.l9             ; 0x044a
    cmp ax, strict word 2            ; 0x044c
    je short @..local.l10            ; 0x044f
    cmp ax, 0xff                     ; 0x0451
    je short @..local.l8             ; 0x0454
    jmp short @..local.l11           ; 0x0456
@..local.l13:
    push word [bp - 0x0002]          ; 0x0458
    call ds_dispatch_de20            ; 0x045b
    pop cx                           ; 0x045e
    mov word [data_9056], ax         ; 0x045f
    test ax, 1                       ; 0x0462
    jne short @..local.l14           ; 0x0465
    test ax, data_0002               ; 0x0467
    je short @..local.l15            ; 0x046a
@..local.l14:
    jmp short @..local.l16           ; 0x046c
@..local.l15:
    mov ax, 3                        ; 0x046e
    push ax                          ; 0x0471
    call ds_dispatch_b171            ; 0x0472
    pop cx                           ; 0x0475
@..local.l16:
    mov word [0x0e34], data_905c     ; 0x0476
    mov al, byte [data_5984]         ; 0x047c
    sub ah, ah                       ; 0x047f
    mov word [bp - 0x000a], ax       ; 0x0481
    cmp ax, strict word 6            ; 0x0484
    jne short @..local.l17           ; 0x0487
    mov word [bp - 0x000a], 4        ; 0x0489
@..local.l17:
    mov ax, word [data_5980]         ; 0x048e
    cmp word [bp - 0x000a], byte 0   ; 0x0491
    jne short @..local.l18           ; 0x0495
    mov ax, 0                        ; 0x0497
@..local.l18:
    mov word [bp - 0x000c], ax       ; 0x049a
    push word [bp - 0x000a]          ; 0x049d
    push ax                          ; 0x04a0
    call ds_dispatch_ef2e            ; 0x04a1
    add sp, byte 4                   ; 0x04a4
    mov word [data_59f8], data_905c  ; 0x04a7
    mov word [data_0e32], 0          ; 0x04ad
    mov word [data_5b3e], 0          ; 0x04b3
    mov word [bp - 0x0006], 0        ; 0x04b9
@..local.l19:
    mov ax, 0x64                     ; 0x04be
    push ax                          ; 0x04c1
    call ds_dispatch_b7a9            ; 0x04c2
    pop cx                           ; 0x04c5
    mov bx, word [bp - 0x0006]       ; 0x04c6
    mov byte [bx + 0x5990], al       ; 0x04c9
    inc word [bp - 0x0006]           ; 0x04cd
    mov ax, word [bp - 0x0006]       ; 0x04d0
    cmp ax, strict word 0x64         ; 0x04d3
    jl short @..local.l19            ; 0x04d6
    call ds_dispatch_b186            ; 0x04d8
    mov ax, 0                        ; 0x04db
    push ax                          ; 0x04de
    push ax                          ; 0x04df
    call ds_dispatch_e91b            ; 0x04e0
    add sp, byte 4                   ; 0x04e3
    cmp dx, byte 1                   ; 0x04e6
    jg short @..local.l20            ; 0x04e9
    jne short @..local.l21           ; 0x04eb
    cmp ax, 0x6200                   ; 0x04ed
    jb short @..local.l21            ; 0x04f0
@..local.l20:
    jmp short @..local.l22           ; 0x04f2
@..local.l21:
    mov ax, 4                        ; 0x04f4
    push ax                          ; 0x04f7
    call ds_dispatch_b171            ; 0x04f8
    pop cx                           ; 0x04fb
@..local.l22:
    mov ax, 0                        ; 0x04fc
    push ax                          ; 0x04ff
    mov ax, 0x90a5                   ; 0x0500
    push ax                          ; 0x0503
    call api_idx_0002                ; 0x0504
    add sp, byte 4                   ; 0x0507
    mov ax, 1                        ; 0x050a
    push ax                          ; 0x050d
    mov ax, 0x90b1                   ; 0x050e
    push ax                          ; 0x0511
    call api_idx_0002                ; 0x0512
    add sp, byte 4                   ; 0x0515
    mov ax, data_0002                ; 0x0518
    push ax                          ; 0x051b
    mov ax, 0x90bd                   ; 0x051c
    push ax                          ; 0x051f
    call api_idx_0002                ; 0x0520
    add sp, byte 4                   ; 0x0523
    mov ax, 3                        ; 0x0526
    push ax                          ; 0x0529
    mov ax, 0x90c9                   ; 0x052a
    push ax                          ; 0x052d
    call api_idx_0002                ; 0x052e
    add sp, byte 4                   ; 0x0531
    mov ax, 4                        ; 0x0534
    push ax                          ; 0x0537
    mov ax, 0x90d5                   ; 0x0538
    push ax                          ; 0x053b
    call api_idx_0002                ; 0x053c
    add sp, byte 4                   ; 0x053f
    mov ax, 5                        ; 0x0542
    push ax                          ; 0x0545
    mov ax, 0x90e1                   ; 0x0546
    push ax                          ; 0x0549
    call api_idx_0002                ; 0x054a
    add sp, byte 4                   ; 0x054d
    mov ax, 6                        ; 0x0550
    push ax                          ; 0x0553
    mov ax, 0x90ed                   ; 0x0554
    push ax                          ; 0x0557
    call api_idx_0002                ; 0x0558
    add sp, byte 4                   ; 0x055b
    mov ax, 7                        ; 0x055e
    push ax                          ; 0x0561
    mov ax, 0x90f9                   ; 0x0562
    push ax                          ; 0x0565
    call api_idx_0002                ; 0x0566
    add sp, byte 4                   ; 0x0569
    call ds_dispatch_ca6a            ; 0x056c
    mov ax, 0x9105                   ; 0x056f
    push ax                          ; 0x0572
    call api_idx_000c                ; 0x0573
    pop cx                           ; 0x0576
    mov word [data_0e30], dx         ; 0x0577
    mov word [data_0e2e], ax         ; 0x057b
    mov ax, 0x9111                   ; 0x057e
    push ax                          ; 0x0581
    call api_idx_000c                ; 0x0582
    pop cx                           ; 0x0585
    mov word [data_0e2c], dx         ; 0x0586
    mov word [data_0e2a], ax         ; 0x058a
    mov ax, 0x911d                   ; 0x058d
    push ax                          ; 0x0590
    call api_idx_000c                ; 0x0591
    pop cx                           ; 0x0594
    mov word [data_0e28], dx         ; 0x0595
    mov word [data_0e26], ax         ; 0x0599
    mov ax, 3                        ; 0x059c
    push ax                          ; 0x059f
    mov ax, 0x9129                   ; 0x05a0
    push ax                          ; 0x05a3
    call api_idx_0002_2              ; 0x05a4
    add sp, byte 4                   ; 0x05a7
    mov word [data_1008], data_905c  ; 0x05aa
    mov ax, 0x52                     ; 0x05b0
    push ax                          ; 0x05b3
    mov ax, 0x5524                   ; 0x05b4
    push ax                          ; 0x05b7
    mov ax, 0x9136                   ; 0x05b8
    push ax                          ; 0x05bb
    call api_idx_0002_3              ; 0x05bc
    add sp, byte 6                   ; 0x05bf
    mov ax, 0x30c                    ; 0x05c2
    push ax                          ; 0x05c5
    mov ax, 0x5218                   ; 0x05c6
    push ax                          ; 0x05c9
    mov ax, 0x9141                   ; 0x05ca
    push ax                          ; 0x05cd
    call api_idx_0002_3              ; 0x05ce
    add sp, byte 6                   ; 0x05d1
    mov ax, 0x2dfe                   ; 0x05d4
    push ax                          ; 0x05d7
    mov ax, 0x100c                   ; 0x05d8
    push ax                          ; 0x05db
    mov ax, 0x914a                   ; 0x05dc
    push ax                          ; 0x05df
    call api_idx_0002_3              ; 0x05e0
    add sp, byte 6                   ; 0x05e3
    mov ax, 0x18                     ; 0x05e6
    push ax                          ; 0x05e9
    mov ax, 0x906e                   ; 0x05ea
    push ax                          ; 0x05ed
    mov ax, 0x9152                   ; 0x05ee
    push ax                          ; 0x05f1
    call api_idx_0002_3              ; 0x05f2
    add sp, byte 6                   ; 0x05f5
    mov ax, 0x915d                   ; 0x05f8
    push ax                          ; 0x05fb
    call api_idx_0002_4              ; 0x05fc
    pop cx                           ; 0x05ff
    mov ax, 0                        ; 0x0600
    push ax                          ; 0x0603
    push ax                          ; 0x0604
    mov ax, 0x9166                   ; 0x0605
    push ax                          ; 0x0608
    call ds_dispatch_d161            ; 0x0609
    add sp, byte 4                   ; 0x060c
    push ax                          ; 0x060f
    call ds_dispatch_f909            ; 0x0610
    add sp, byte 4                   ; 0x0613
    mov word [data_0e24], ax         ; 0x0616
    cmp ax, strict word 0xffff       ; 0x0619
    jne short @..local.l23           ; 0x061c
    mov ax, 9                        ; 0x061e
    push ax                          ; 0x0621
    call ds_dispatch_b171            ; 0x0622
    pop cx                           ; 0x0625
@..local.l23:
    mov word [data_5212], 0xffff     ; 0x0626
    mov word [data_5214], 0          ; 0x062c
@..local.l24:
    mov ax, word [data_5214]         ; 0x0632
    shl ax, 1                        ; 0x0635
    mov bx, ax                       ; 0x0637
    mov word [bx + 0x3e0a], 0xffff   ; 0x0639
    inc word [data_5214]             ; 0x063f
    mov ax, word [data_5214]         ; 0x0643
    cmp ax, strict word 4            ; 0x0646
    jl short @..local.l24            ; 0x0649
    mov word [data_5214], 0          ; 0x064b
    mov word [bp - 0x0006], 0        ; 0x0651
@..local.l25:
    mov ax, word [bp - 0x0006]       ; 0x0656
    shl ax, 1                        ; 0x0659
    mov bx, ax                       ; 0x065b
    mov word [bx + 0x5b72], 0xffff   ; 0x065d
    mov ax, 0x14                     ; 0x0663
    imul word [bp - 0x0006]          ; 0x0666
    mov bx, ax                       ; 0x0669
    mov byte [bx + 0x5b7c], 0        ; 0x066b
    mov ax, word [bp - 0x0006]       ; 0x0670
    shl ax, 1                        ; 0x0673
    shl ax, 1                        ; 0x0675
    mov bx, ax                       ; 0x0677
    mov word [bx + 0x5be2], 0        ; 0x0679
    mov word [bx + 0x5be0], 0        ; 0x067f
    inc word [bp - 0x0006]           ; 0x0685
    mov ax, word [bp - 0x0006]       ; 0x0688
    cmp ax, strict word 5            ; 0x068b
    jl short @..local.l25            ; 0x068e
    mov ax, 0                        ; 0x0690
    push ax                          ; 0x0693
    push ax                          ; 0x0694
    mov ax, 0x916e                   ; 0x0695
    push ax                          ; 0x0698
    call ds_dispatch_d161            ; 0x0699
    add sp, byte 4                   ; 0x069c
    push ax                          ; 0x069f
    call ds_dispatch_f909            ; 0x06a0
    add sp, byte 4                   ; 0x06a3
    mov word [data_0e22], ax         ; 0x06a6
    cmp ax, strict word 0xffff       ; 0x06a9
    jne short @..local.l26           ; 0x06ac
    mov ax, 0xa                      ; 0x06ae
    push ax                          ; 0x06b1
    call ds_dispatch_b171            ; 0x06b2
    pop cx                           ; 0x06b5
@..local.l26:
    call ds_dispatch_b9c4            ; 0x06b6
    mov ax, 1                        ; 0x06b9
    push ax                          ; 0x06bc
    mov ax, 0                        ; 0x06bd
    push ax                          ; 0x06c0
    push ax                          ; 0x06c1
    call ds_dispatch_d6dc            ; 0x06c2
    add sp, byte 6                   ; 0x06c5
    mov ax, 1                        ; 0x06c8
    push ax                          ; 0x06cb
    push ax                          ; 0x06cc
    push ax                          ; 0x06cd
    call ds_dispatch_d6dc            ; 0x06ce
    add sp, byte 6                   ; 0x06d1
    mov ax, 1                        ; 0x06d4
    push ax                          ; 0x06d7
    mov ax, data_0002                ; 0x06d8
    push ax                          ; 0x06db
    push ax                          ; 0x06dc
    call ds_dispatch_d6dc            ; 0x06dd
    add sp, byte 6                   ; 0x06e0
    mov ax, 1                        ; 0x06e3
    push ax                          ; 0x06e6
    mov ax, 3                        ; 0x06e7
    push ax                          ; 0x06ea
    push ax                          ; 0x06eb
    call ds_dispatch_d6dc            ; 0x06ec
    add sp, byte 6                   ; 0x06ef
    mov ax, 1                        ; 0x06f2
    push ax                          ; 0x06f5
    mov ax, 4                        ; 0x06f6
    push ax                          ; 0x06f9
    push ax                          ; 0x06fa
    call ds_dispatch_d6dc            ; 0x06fb
    add sp, byte 6                   ; 0x06fe
    mov ax, 1                        ; 0x0701
    push ax                          ; 0x0704
    mov ax, 8                        ; 0x0705
    push ax                          ; 0x0708
    push ax                          ; 0x0709
    call ds_dispatch_d6dc            ; 0x070a
    add sp, byte 6                   ; 0x070d
    mov ax, 1                        ; 0x0710
    push ax                          ; 0x0713
    mov ax, 9                        ; 0x0714
    push ax                          ; 0x0717
    push ax                          ; 0x0718
    call ds_dispatch_d6dc            ; 0x0719
    add sp, byte 6                   ; 0x071c
    mov word [data_598e], 0xffff     ; 0x071f
    mov word [data_82b6], 0xffff     ; 0x0725
    mov word [data_100a], data_905c  ; 0x072b
    mov word [data_0e20], 0          ; 0x0731
    mov word [data_0e1e], 0          ; 0x0737
    mov word [data_0e1c], 0          ; 0x073d
    mov word [data_0e1a], 0          ; 0x0743
    mov word [data_0e18], 0          ; 0x0749
    mov word [data_0e16], 0          ; 0x074f
    mov word [data_0e14], 0          ; 0x0755
    mov word [data_0e12], 0          ; 0x075b
    mov word [data_0e10], 0          ; 0x0761
    mov word [0x0e0e], 0             ; 0x0767
    mov ax, 0x400                    ; 0x076d
    mov dx, 0                        ; 0x0770
    push dx                          ; 0x0773
    push ax                          ; 0x0774
    call ds_dispatch_afb9            ; 0x0775
    add sp, byte 4                   ; 0x0778
    mov word [data_0e20], dx         ; 0x077b
    mov word [data_0e1e], ax         ; 0x077f
    cmp word [data_0e20], byte 0     ; 0x0782
    jne short @..local.l27           ; 0x0787
    cmp word [data_0e1e], byte 0     ; 0x0789
@..local.l27:
    jne short @..local.l28           ; 0x078e
    mov ax, 0xd                      ; 0x0790
    push ax                          ; 0x0793
    call ds_dispatch_b171            ; 0x0794
    pop cx                           ; 0x0797
@..local.l28:
    mov ax, 0x1000                   ; 0x0798
    mov dx, 0                        ; 0x079b
    push dx                          ; 0x079e
    push ax                          ; 0x079f
    call ds_dispatch_afb9            ; 0x07a0
    add sp, byte 4                   ; 0x07a3
    mov word [data_0e1c], dx         ; 0x07a6
    mov word [data_0e1a], ax         ; 0x07aa
    cmp word [data_0e1c], byte 0     ; 0x07ad
    jne short @..local.l29           ; 0x07b2
    cmp word [data_0e1a], byte 0     ; 0x07b4
@..local.l29:
    jne short @..local.l30           ; 0x07b9
    mov ax, 0xd                      ; 0x07bb
    push ax                          ; 0x07be
    call ds_dispatch_b171            ; 0x07bf
    pop cx                           ; 0x07c2
@..local.l30:
    mov ax, 0x1000                   ; 0x07c3
    mov dx, 0                        ; 0x07c6
    push dx                          ; 0x07c9
    push ax                          ; 0x07ca
    call ds_dispatch_afb9            ; 0x07cb
    add sp, byte 4                   ; 0x07ce
    mov word [data_0e18], dx         ; 0x07d1
    mov word [data_0e16], ax         ; 0x07d5
    cmp word [data_0e18], byte 0     ; 0x07d8
    jne short @..local.l31           ; 0x07dd
    cmp word [data_0e16], byte 0     ; 0x07df
@..local.l31:
    jne short @..local.l32           ; 0x07e4
    mov ax, 0xd                      ; 0x07e6
    push ax                          ; 0x07e9
    call ds_dispatch_b171            ; 0x07ea
    pop cx                           ; 0x07ed
@..local.l32:
    push word [data_5528]            ; 0x07ee
    call ds_dispatch_f4a3            ; 0x07f2
    pop cx                           ; 0x07f5
    mov word [data_0e14], ax         ; 0x07f6
    cmp word [data_0e14], byte 0     ; 0x07f9
    jne short @..local.l33           ; 0x07fe
    mov ax, 0xd                      ; 0x0800
    push ax                          ; 0x0803
    call ds_dispatch_b171            ; 0x0804
    pop cx                           ; 0x0807
@..local.l33:
    push word [data_552a]            ; 0x0808
    call ds_dispatch_f4a3            ; 0x080c
    pop cx                           ; 0x080f
    mov word [data_0e12], ax         ; 0x0810
    cmp word [data_0e12], byte 0     ; 0x0813
    jne short @..local.l34           ; 0x0818
    mov ax, 0xd                      ; 0x081a
    push ax                          ; 0x081d
    call ds_dispatch_b171            ; 0x081e
    pop cx                           ; 0x0821
@..local.l34:
    mov ax, 0xc00                    ; 0x0822
    push ax                          ; 0x0825
    call ds_dispatch_f4a3            ; 0x0826
    pop cx                           ; 0x0829
    mov word [data_0e10], ax         ; 0x082a
    cmp word [data_0e10], byte 0     ; 0x082d
    jne short @..local.l35           ; 0x0832
    mov ax, 0xd                      ; 0x0834
    push ax                          ; 0x0837
    call ds_dispatch_b171            ; 0x0838
    pop cx                           ; 0x083b
@..local.l35:
    mov ax, 0x400                    ; 0x083c
    push ax                          ; 0x083f
    call ds_dispatch_f4a3            ; 0x0840
    pop cx                           ; 0x0843
    mov word [0x0e0e], ax            ; 0x0844
    cmp word [0x0e0e], byte 0        ; 0x0847
    jne short @..local.l36           ; 0x084c
    mov ax, 0xd                      ; 0x084e
    push ax                          ; 0x0851
    call ds_dispatch_b171            ; 0x0852
    pop cx                           ; 0x0855
@..local.l36:
    mov word [data_904c], 0          ; 0x0856
    mov ax, 0                        ; 0x085c
    push ax                          ; 0x085f
    push ax                          ; 0x0860
    mov ax, 0x917b                   ; 0x0861
    push ax                          ; 0x0864
    call ds_dispatch_d161            ; 0x0865
    add sp, byte 4                   ; 0x0868
    push ax                          ; 0x086b
    call ds_dispatch_f909            ; 0x086c
    add sp, byte 4                   ; 0x086f
    mov word [bp - 0x0004], ax       ; 0x0872
    cmp ax, strict word 0xffff       ; 0x0875
    jne short @..local.l37           ; 0x0878
    mov ax, 0xe                      ; 0x087a
    push ax                          ; 0x087d
    call ds_dispatch_b171            ; 0x087e
    pop cx                           ; 0x0881
@..local.l37:
    mov ax, 0x300                    ; 0x0882
    push ax                          ; 0x0885
    lea ax, word [bp - 0x031a]       ; 0x0886
    push ax                          ; 0x088a
    push word [bp - 0x0004]          ; 0x088b
    call ds_dispatch_fd6f            ; 0x088e
    add sp, byte 6                   ; 0x0891
    push word [bp - 0x0004]          ; 0x0894
    call ds_dispatch_fda5            ; 0x0897
    pop cx                           ; 0x089a
    lea ax, word [bp - 0x031a]       ; 0x089b
    push ax                          ; 0x089f
    mov al, byte [data_5979]         ; 0x08a0
    cbw                              ; 0x08a3
    push ax                          ; 0x08a4
    mov al, byte [data_5978]         ; 0x08a5
    cbw                              ; 0x08a8
    push ax                          ; 0x08a9
    call math_loc_0211               ; 0x08aa
    add sp, byte 6                   ; 0x08ad
    mov word [data_830a], 1          ; 0x08b0
    ret                              ; 0x08b6
%include "vinit/api_idx_0002_5.asm"

%include "vinit/api_idx_0002_6.asm"

@..api_idx_0002_6.l1:
    mov ax, 1                        ; 0x095b
    push ax                          ; 0x095e
    call ds_dispatch_ea50            ; 0x095f
    pop cx                           ; 0x0962
    test ax, ax                      ; 0x0963
    je short @..api_idx_0002_6.l3    ; 0x0965
    mov ax, 1                        ; 0x0967
    push ax                          ; 0x096a
    call ds_dispatch_eb32            ; 0x096b
    pop cx                           ; 0x096e
    sub ah, ah                       ; 0x096f
    mov word [bp - 0x0002], ax       ; 0x0971
    mov ax, 0                        ; 0x0974
    cmp word [bp - 0x0002], byte 0x1b ; 0x0977
    jne short @..api_idx_0002_6.l2   ; 0x097b
    mov ax, 1                        ; 0x097d
@..api_idx_0002_6.l2:
    or word [data_91b8], ax          ; 0x0980
@..api_idx_0002_6.l3:
    mov ax, word [data_91b8]         ; 0x0984
    ret                              ; 0x0987
%include "vinit/api_idx_0004.asm"

@..api_idx_0004.l4:
    mov ax, 0xa                      ; 0x09c8
    push ax                          ; 0x09cb
    call ds_dispatch_e489            ; 0x09cc
    pop cx                           ; 0x09cf
    jmp short @..api_idx_0004.l1     ; 0x09d0
@..api_idx_0004.l5:
    ret                              ; 0x09d2
%include "vinit/api_idx_000e.asm"

loc_0a56:
    mov ax, 0                        ; 0x0a56
    call ds_dispatch_f40b            ; 0x0a59
    mov ax, 0                        ; 0x0a5c
    push ax                          ; 0x0a5f
    mov ax, 0xc7                     ; 0x0a60
    push ax                          ; 0x0a63
    mov ax, 0x13f                    ; 0x0a64
    push ax                          ; 0x0a67
    mov ax, 0                        ; 0x0a68
    push ax                          ; 0x0a6b
    push ax                          ; 0x0a6c
    call ds_dispatch_e901            ; 0x0a6d
    add sp, byte 0x0a                ; 0x0a70
    mov ax, 0                        ; 0x0a73
    push ax                          ; 0x0a76
    push word [bp + 0x4]             ; 0x0a77
    call api_idx_000e                ; 0x0a7a
    add sp, byte 4                   ; 0x0a7d
    cmp word [bp + 0x6], byte 0      ; 0x0a80
    je short @..local.l38            ; 0x0a84
    mov ax, 0                        ; 0x0a86
    push ax                          ; 0x0a89
    push word [bp + 0x6]             ; 0x0a8a
    call api_idx_000e                ; 0x0a8d
    add sp, byte 4                   ; 0x0a90
@..local.l38:
    cmp word [bp + 0x8], byte 0      ; 0x0a93
    je short @..local.l39            ; 0x0a97
    mov ax, 0                        ; 0x0a99
    push ax                          ; 0x0a9c
    push word [bp + 0x8]             ; 0x0a9d
    call api_idx_000e                ; 0x0aa0
    add sp, byte 4                   ; 0x0aa3
@..local.l39:
    mov ax, 0xc7                     ; 0x0aa6
    push ax                          ; 0x0aa9
    mov ax, 0x13f                    ; 0x0aaa
    push ax                          ; 0x0aad
    mov ax, 0                        ; 0x0aae
    push ax                          ; 0x0ab1
    push ax                          ; 0x0ab2
    call ds_dispatch_e8da            ; 0x0ab3
    add sp, byte 8                   ; 0x0ab6
    cmp word [bp + 0xa], byte 0      ; 0x0ab9
    je short @..local.l40            ; 0x0abd
    push word [bp + 0xa]             ; 0x0abf
    call api_idx_0004                ; 0x0ac2
    pop cx                           ; 0x0ac5
@..local.l40:
    ret                              ; 0x0ac6
%include "vinit/api_idx_0068.asm"

    push ax                          ; 0x0cc7
    call loc_0a56                    ; 0x0cc8
    add sp, byte 8                   ; 0x0ccb
@..api_idx_0068.l15:
    mov ax, 0x90                     ; 0x0cce
    push ax                          ; 0x0cd1
    call api_idx_0004                ; 0x0cd2
    pop cx                           ; 0x0cd5
    call api_idx_0002_6              ; 0x0cd6
    test ax, ax                      ; 0x0cd9
    jne short @..api_idx_0068.l16    ; 0x0cdb
    mov ax, 0xa                      ; 0x0cdd
    push ax                          ; 0x0ce0
    mov ax, 0xb                      ; 0x0ce1
    push ax                          ; 0x0ce4
    mov ax, 0xa                      ; 0x0ce5
    push ax                          ; 0x0ce8
    mov ax, 9                        ; 0x0ce9
    push ax                          ; 0x0cec
    call loc_0a56                    ; 0x0ced
    add sp, byte 8                   ; 0x0cf0
@..api_idx_0068.l16:
    call api_idx_0002_6              ; 0x0cf3
    test ax, ax                      ; 0x0cf6
    jne short @..api_idx_0068.l17    ; 0x0cf8
    mov ax, 0xa                      ; 0x0cfa
    push ax                          ; 0x0cfd
    mov ax, 0xe                      ; 0x0cfe
    push ax                          ; 0x0d01
    mov ax, 0xd                      ; 0x0d02
    push ax                          ; 0x0d05
    mov ax, 0xc                      ; 0x0d06
    push ax                          ; 0x0d09
    call loc_0a56                    ; 0x0d0a
    add sp, byte 8                   ; 0x0d0d
@..api_idx_0068.l17:
    call api_idx_0002_6              ; 0x0d10
    test ax, ax                      ; 0x0d13
    jne short @..api_idx_0068.l18    ; 0x0d15
    mov ax, 0                        ; 0x0d17
    push ax                          ; 0x0d1a
    mov ax, 0x11                     ; 0x0d1b
    push ax                          ; 0x0d1e
    mov ax, 0x10                     ; 0x0d1f
    push ax                          ; 0x0d22
    mov ax, 0xf                      ; 0x0d23
    push ax                          ; 0x0d26
    call loc_0a56                    ; 0x0d27
    add sp, byte 8                   ; 0x0d2a
@..api_idx_0068.l18:
    mov ax, 5                        ; 0x0d2d
    push ax                          ; 0x0d30
    call api_idx_0004                ; 0x0d31
    pop cx                           ; 0x0d34
    mov ax, 0xf                      ; 0x0d35
    push ax                          ; 0x0d38
    call ds_dispatch_c12a            ; 0x0d39
    pop cx                           ; 0x0d3c
@..api_idx_0068.l19:
    call api_idx_0002_6              ; 0x0d3d
    test ax, ax                      ; 0x0d40
    je short @..api_idx_0068.l20     ; 0x0d42
    jmp near @..api_idx_0068.l27     ; 0x0d44
@..api_idx_0068.l20:
    mov ax, 0xf                      ; 0x0d47
    push ax                          ; 0x0d4a
    mov ax, 0x3e                     ; 0x0d4b
    push ax                          ; 0x0d4e
    call ds_dispatch_d61c            ; 0x0d4f
    add sp, byte 4                   ; 0x0d52
    call api_idx_0002_6              ; 0x0d55
    test ax, ax                      ; 0x0d58
    jne short @..api_idx_0068.l21    ; 0x0d5a
    mov ax, 0                        ; 0x0d5c
    push ax                          ; 0x0d5f
    mov ax, 0xc7                     ; 0x0d60
    push ax                          ; 0x0d63
    mov ax, 0x13f                    ; 0x0d64
    push ax                          ; 0x0d67
    mov ax, 0                        ; 0x0d68
    push ax                          ; 0x0d6b
    push ax                          ; 0x0d6c
    call ds_dispatch_e901            ; 0x0d6d
    add sp, byte 0x0a                ; 0x0d70
@..api_idx_0068.l21:
    call api_idx_0002_6              ; 0x0d73
    test ax, ax                      ; 0x0d76
    jne short @..api_idx_0068.l22    ; 0x0d78
    mov ax, 0                        ; 0x0d7a
    push ax                          ; 0x0d7d
    mov ax, 1                        ; 0x0d7e
    push ax                          ; 0x0d81
    call api_idx_000e                ; 0x0d82
    add sp, byte 4                   ; 0x0d85
@..api_idx_0068.l22:
    call api_idx_0002_6              ; 0x0d88
    test ax, ax                      ; 0x0d8b
    jne short @..api_idx_0068.l23    ; 0x0d8d
    mov ax, 0                        ; 0x0d8f
    push ax                          ; 0x0d92
    mov ax, data_0002                ; 0x0d93
    push ax                          ; 0x0d96
    call api_idx_000e                ; 0x0d97
    add sp, byte 4                   ; 0x0d9a
@..api_idx_0068.l23:
    call api_idx_0002_6              ; 0x0d9d
    test ax, ax                      ; 0x0da0
    jne short @..api_idx_0068.l24    ; 0x0da2
    mov ax, 0                        ; 0x0da4
    push ax                          ; 0x0da7
    mov ax, 3                        ; 0x0da8
    push ax                          ; 0x0dab
    call api_idx_000e                ; 0x0dac
    add sp, byte 4                   ; 0x0daf
@..api_idx_0068.l24:
    call api_idx_0002_6              ; 0x0db2
    test ax, ax                      ; 0x0db5
    jne short @..api_idx_0068.l25    ; 0x0db7
    mov ax, 0                        ; 0x0db9
    push ax                          ; 0x0dbc
    mov ax, 4                        ; 0x0dbd
    push ax                          ; 0x0dc0
    call api_idx_000e                ; 0x0dc1
    add sp, byte 4                   ; 0x0dc4
@..api_idx_0068.l25:
    call api_idx_0002_6              ; 0x0dc7
    test ax, ax                      ; 0x0dca
    jne short @..api_idx_0068.l26    ; 0x0dcc
    mov ax, 0xc7                     ; 0x0dce
    push ax                          ; 0x0dd1
    mov ax, 0x13f                    ; 0x0dd2
    push ax                          ; 0x0dd5
    mov ax, 0                        ; 0x0dd6
    push ax                          ; 0x0dd9
    push ax                          ; 0x0dda
    call ds_dispatch_e8da            ; 0x0ddb
    add sp, byte 8                   ; 0x0dde
@..api_idx_0068.l26:
    mov ax, 5                        ; 0x0de1
    push ax                          ; 0x0de4
    call api_idx_0004                ; 0x0de5
    pop cx                           ; 0x0de8
    mov ax, 0xf                      ; 0x0de9
    push ax                          ; 0x0dec
    call ds_dispatch_c12a            ; 0x0ded
    pop cx                           ; 0x0df0
@..api_idx_0068.l27:
    call api_idx_0002_6              ; 0x0df1
    test ax, ax                      ; 0x0df4
    jne short @..api_idx_0068.l28    ; 0x0df6
    mov ax, 1                        ; 0x0df8
    push ax                          ; 0x0dfb
    mov ax, 0x9187                   ; 0x0dfc
    push ax                          ; 0x0dff
    call api_idx_0002_5              ; 0x0e00
    add sp, byte 4                   ; 0x0e03
    mov ax, 5                        ; 0x0e06
    push ax                          ; 0x0e09
    call api_idx_0004                ; 0x0e0a
    pop cx                           ; 0x0e0d
@..api_idx_0068.l28:
    mov ax, 0                        ; 0x0e0e
    push ax                          ; 0x0e11
    mov ax, 0x9194                   ; 0x0e12
    push ax                          ; 0x0e15
    call api_idx_0002_5              ; 0x0e16
    add sp, byte 4                   ; 0x0e19
    mov ax, 0xf                      ; 0x0e1c
    push ax                          ; 0x0e1f
    mov ax, 0x3f                     ; 0x0e20
    push ax                          ; 0x0e23
    call ds_dispatch_d61c            ; 0x0e24
    add sp, byte 4                   ; 0x0e27
    call api_idx_0002_6              ; 0x0e2a
    test ax, ax                      ; 0x0e2d
    je short @..api_idx_0068.l29     ; 0x0e2f
    jmp near @..api_idx_0068.l31     ; 0x0e31
@..api_idx_0068.l29:
    mov ax, 0xc7                     ; 0x0e34
    push ax                          ; 0x0e37
    mov ax, 0x13f                    ; 0x0e38
    push ax                          ; 0x0e3b
    mov ax, 0                        ; 0x0e3c
    push ax                          ; 0x0e3f
    push ax                          ; 0x0e40
    call ds_dispatch_e8da            ; 0x0e41
    add sp, byte 8                   ; 0x0e44
    mov ax, 0xc                      ; 0x0e47
    push ax                          ; 0x0e4a
    call api_idx_0004                ; 0x0e4b
    pop cx                           ; 0x0e4e
    mov ax, 0                        ; 0x0e4f
    push ax                          ; 0x0e52
    mov ax, data_0002                ; 0x0e53
    push ax                          ; 0x0e56
    mov ax, 0x62                     ; 0x0e57
    push ax                          ; 0x0e5a
    mov ax, 0x110                    ; 0x0e5b
    push ax                          ; 0x0e5e
    mov ax, 0                        ; 0x0e5f
    push ax                          ; 0x0e62
    mov ax, 0x37                     ; 0x0e63
    push ax                          ; 0x0e66
    call ds_dispatch_e935            ; 0x0e67
    add sp, byte 0x0c                ; 0x0e6a
    mov word [bp - 0x000a], dx       ; 0x0e6d
    mov word [bp - 0x000c], ax       ; 0x0e70
    mov word [bp - 0x0002], 0x5f     ; 0x0e73
@..api_idx_0068.l30:
    mov ax, 0                        ; 0x0e78
    push ax                          ; 0x0e7b
    push ax                          ; 0x0e7c
    push word [bp - 0x000a]          ; 0x0e7d
    push word [bp - 0x000c]          ; 0x0e80
    call ds_dispatch_e942            ; 0x0e83
    add sp, byte 8                   ; 0x0e86
    push word [bp - 0x0002]          ; 0x0e89
    mov ax, 1                        ; 0x0e8c
    push ax                          ; 0x0e8f
    call api_idx_000e                ; 0x0e90
    add sp, byte 4                   ; 0x0e93
    mov ax, 0x62                     ; 0x0e96
    push ax                          ; 0x0e99
    mov ax, 0x110                    ; 0x0e9a
    push ax                          ; 0x0e9d
    mov ax, 9                        ; 0x0e9e
    push ax                          ; 0x0ea1
    mov ax, 0x37                     ; 0x0ea2
    push ax                          ; 0x0ea5
    call ds_dispatch_e8da            ; 0x0ea6
    add sp, byte 8                   ; 0x0ea9
    add word [bp - 0x0002], byte 0xfb ; 0x0eac
    cmp word [bp - 0x0002], byte 0   ; 0x0eb0
    jge short @..api_idx_0068.l30    ; 0x0eb4
    mov ax, 0                        ; 0x0eb6
    push ax                          ; 0x0eb9
    mov ax, 1                        ; 0x0eba
    push ax                          ; 0x0ebd
    push word [bp - 0x000a]          ; 0x0ebe
    push word [bp - 0x000c]          ; 0x0ec1
    call ds_dispatch_e942            ; 0x0ec4
    add sp, byte 8                   ; 0x0ec7
    jmp short @..api_idx_0068.l32    ; 0x0eca
@..api_idx_0068.l31:
    mov ax, 0                        ; 0x0ecc
    push ax                          ; 0x0ecf
    mov ax, 1                        ; 0x0ed0
    push ax                          ; 0x0ed3
    call api_idx_000e                ; 0x0ed4
    add sp, byte 4                   ; 0x0ed7
    mov ax, 0xc7                     ; 0x0eda
    push ax                          ; 0x0edd
    mov ax, 0x13f                    ; 0x0ede
    push ax                          ; 0x0ee1
    mov ax, 0                        ; 0x0ee2
    push ax                          ; 0x0ee5
    push ax                          ; 0x0ee6
    call ds_dispatch_e8da            ; 0x0ee7
    add sp, byte 8                   ; 0x0eea
@..api_idx_0068.l32:
    mov ax, 0xf                      ; 0x0eed
    push ax                          ; 0x0ef0
    call ds_dispatch_c12a            ; 0x0ef1
    pop cx                           ; 0x0ef4
    mov ax, 0                        ; 0x0ef5
    push ax                          ; 0x0ef8
    mov ax, data_0002                ; 0x0ef9
    push ax                          ; 0x0efc
    mov ax, 0xa2                     ; 0x0efd
    push ax                          ; 0x0f00
    mov ax, 0x13f                    ; 0x0f01
    push ax                          ; 0x0f04
    mov ax, 0x66                     ; 0x0f05
    push ax                          ; 0x0f08
    mov ax, 0                        ; 0x0f09
    push ax                          ; 0x0f0c
    call ds_dispatch_e935            ; 0x0f0d
    add sp, byte 0x0c                ; 0x0f10
    mov word [bp - 0x000a], dx       ; 0x0f13
    mov word [bp - 0x000c], ax       ; 0x0f16
    call api_idx_0002_6              ; 0x0f19
    mov ax, 0xb54                    ; 0x0f1c
    cmp word [data_91b8], byte 0     ; 0x0f1f
    je short @..api_idx_0068.l33     ; 0x0f24
    mov ax, 0xb69                    ; 0x0f26
@..api_idx_0068.l33:
    mov word [bp - 0x0060], ax       ; 0x0f29
    lea ax, word [bp - 0x005c]       ; 0x0f2c
    push ax                          ; 0x0f2f
    push word [bp - 0x0060]          ; 0x0f30
    call ds_dispatch_b53b            ; 0x0f33
    add sp, byte 4                   ; 0x0f36
    lea ax, word [bp - 0x005c]       ; 0x0f39
    mov word [bp - 0x005e], ax       ; 0x0f3c
    mov word [bp - 0x0002], 0        ; 0x0f3f
@..api_idx_0068.l34:
    mov ax, word [bp - 0x0002]       ; 0x0f44
    mov word [bp - 0x0066], ax       ; 0x0f47
    mov bx, word [bp - 0x005e]       ; 0x0f4a
    mov al, byte [bx]                ; 0x0f4d
    sub ah, ah                       ; 0x0f4f
    mov word [bp - 0x0002], ax       ; 0x0f51
    inc word [bp - 0x005e]           ; 0x0f54
    mov word [bp - 0x0004], 0        ; 0x0f57
    jmp near @..api_idx_0068.l46     ; 0x0f5c
@..api_idx_0068.l35:
    mov bx, word [bp - 0x005e]       ; 0x0f5f
    mov al, byte [bx]                ; 0x0f62
    sub ah, ah                       ; 0x0f64
    mov word [bp - 0x0062], ax       ; 0x0f66
    inc word [bp - 0x005e]           ; 0x0f69
    cmp ax, strict word 2            ; 0x0f6c
    je short @..api_idx_0068.l36     ; 0x0f6f
    jmp near @..api_idx_0068.l37     ; 0x0f71
@..api_idx_0068.l36:
    mov ax, data_0002                ; 0x0f74
    push ax                          ; 0x0f77
    push word [bp - 0x005e]          ; 0x0f78
    call ds_dispatch_e883            ; 0x0f7b
    add sp, byte 4                   ; 0x0f7e
    inc ax                           ; 0x0f81
    mov cx, data_0002                ; 0x0f82
    cwd                              ; 0x0f85
    idiv cx                          ; 0x0f86
    mov cx, ax                       ; 0x0f88
    mov ax, 0xa0                     ; 0x0f8a
    sub ax, cx                       ; 0x0f8d
    mov word [bp - 0x0064], ax       ; 0x0f8f
    mov ax, 0xc                      ; 0x0f92
    imul word [bp - 0x0004]          ; 0x0f95
    add ax, strict word 0x66         ; 0x0f98
    push ax                          ; 0x0f9b
    mov ax, word [bp - 0x0064]       ; 0x0f9c
    dec ax                           ; 0x0f9f
    push ax                          ; 0x0fa0
    call ds_dispatch_e809            ; 0x0fa1
    add sp, byte 4                   ; 0x0fa4
    mov ax, 0                        ; 0x0fa7
    push ax                          ; 0x0faa
    mov ax, 0xc                      ; 0x0fab
    push ax                          ; 0x0fae
    call ds_dispatch_e823            ; 0x0faf
    add sp, byte 4                   ; 0x0fb2
    mov ax, data_0002                ; 0x0fb5
    push ax                          ; 0x0fb8
    push word [bp - 0x005e]          ; 0x0fb9
    call ds_dispatch_e84e            ; 0x0fbc
    add sp, byte 4                   ; 0x0fbf
    mov ax, 0xc                      ; 0x0fc2
    imul word [bp - 0x0004]          ; 0x0fc5
    add ax, strict word 0x66         ; 0x0fc8
    push ax                          ; 0x0fcb
    mov ax, word [bp - 0x0064]       ; 0x0fcc
    inc ax                           ; 0x0fcf
    push ax                          ; 0x0fd0
    call ds_dispatch_e809            ; 0x0fd1
    add sp, byte 4                   ; 0x0fd4
    mov ax, 0                        ; 0x0fd7
    push ax                          ; 0x0fda
    mov ax, 0xc                      ; 0x0fdb
    push ax                          ; 0x0fde
    call ds_dispatch_e823            ; 0x0fdf
    add sp, byte 4                   ; 0x0fe2
    mov ax, data_0002                ; 0x0fe5
    push ax                          ; 0x0fe8
    push word [bp - 0x005e]          ; 0x0fe9
    call ds_dispatch_e84e            ; 0x0fec
    add sp, byte 4                   ; 0x0fef
    mov ax, 0xc                      ; 0x0ff2
    imul word [bp - 0x0004]          ; 0x0ff5
    add ax, strict word 0x67         ; 0x0ff8
    push ax                          ; 0x0ffb
    push word [bp - 0x0064]          ; 0x0ffc
    call ds_dispatch_e809            ; 0x0fff
    add sp, byte 4                   ; 0x1002
    mov ax, 0                        ; 0x1005
    push ax                          ; 0x1008
    mov ax, 0xc                      ; 0x1009
    push ax                          ; 0x100c
    call ds_dispatch_e823            ; 0x100d
    add sp, byte 4                   ; 0x1010
    mov ax, data_0002                ; 0x1013
    push ax                          ; 0x1016
    push word [bp - 0x005e]          ; 0x1017
    call ds_dispatch_e84e            ; 0x101a
    add sp, byte 4                   ; 0x101d
    mov ax, 0xc                      ; 0x1020
    imul word [bp - 0x0004]          ; 0x1023
    add ax, strict word 0x65         ; 0x1026
    push ax                          ; 0x1029
    push word [bp - 0x0064]          ; 0x102a
    call ds_dispatch_e809            ; 0x102d
    add sp, byte 4                   ; 0x1030
    mov ax, 0                        ; 0x1033
    push ax                          ; 0x1036
    mov ax, 0xc                      ; 0x1037
    push ax                          ; 0x103a
    call ds_dispatch_e823            ; 0x103b
    add sp, byte 4                   ; 0x103e
    mov ax, data_0002                ; 0x1041
    push ax                          ; 0x1044
    push word [bp - 0x005e]          ; 0x1045
    call ds_dispatch_e84e            ; 0x1048
    add sp, byte 4                   ; 0x104b
    mov ax, 0xc                      ; 0x104e
    imul word [bp - 0x0004]          ; 0x1051
    add ax, strict word 0x66         ; 0x1054
    push ax                          ; 0x1057
    push word [bp - 0x0064]          ; 0x1058
    call ds_dispatch_e809            ; 0x105b
    add sp, byte 4                   ; 0x105e
    mov ax, 0                        ; 0x1061
    push ax                          ; 0x1064
    mov ax, 1                        ; 0x1065
    push ax                          ; 0x1068
    call ds_dispatch_e823            ; 0x1069
    add sp, byte 4                   ; 0x106c
    mov ax, data_0002                ; 0x106f
    push ax                          ; 0x1072
    push word [bp - 0x005e]          ; 0x1073
    call ds_dispatch_e84e            ; 0x1076
    add sp, byte 4                   ; 0x1079
    jmp near @..api_idx_0068.l45     ; 0x107c
@..api_idx_0068.l37:
    cmp word [bp - 0x0062], byte 3   ; 0x107f
    jne short @..api_idx_0068.l38    ; 0x1083
    push word [bp - 0x005e]          ; 0x1085
    call ds_dispatch_fa90            ; 0x1088
    pop cx                           ; 0x108b
    mov cx, 6                        ; 0x108c
    imul cx                          ; 0x108f
    mov cx, data_0002                ; 0x1091
    cwd                              ; 0x1094
    idiv cx                          ; 0x1095
    mov cx, ax                       ; 0x1097
    mov ax, 0xa0                     ; 0x1099
    sub ax, cx                       ; 0x109c
    mov word [bp - 0x0064], ax       ; 0x109e
    mov word [bp - 0x0068], 0        ; 0x10a1
    jmp short @..api_idx_0068.l39    ; 0x10a6
@..api_idx_0068.l38:
    mov ax, data_0002                ; 0x10a8
    push ax                          ; 0x10ab
    push word [bp - 0x005e]          ; 0x10ac
    call ds_dispatch_e883            ; 0x10af
    add sp, byte 4                   ; 0x10b2
    inc ax                           ; 0x10b5
    mov cx, data_0002                ; 0x10b6
    cwd                              ; 0x10b9
    idiv cx                          ; 0x10ba
    mov cx, ax                       ; 0x10bc
    mov ax, 0xa0                     ; 0x10be
    sub ax, cx                       ; 0x10c1
    mov word [bp - 0x0064], ax       ; 0x10c3
    mov word [bp - 0x0068], data_0002 ; 0x10c6
@..api_idx_0068.l39:
    mov ax, 0xc                      ; 0x10cb
    imul word [bp - 0x0004]          ; 0x10ce
    add ax, strict word 0x66         ; 0x10d1
    push ax                          ; 0x10d4
    mov ax, word [bp - 0x0064]       ; 0x10d5
    dec ax                           ; 0x10d8
    push ax                          ; 0x10d9
    call ds_dispatch_e809            ; 0x10da
    add sp, byte 4                   ; 0x10dd
    mov ax, 0                        ; 0x10e0
    push ax                          ; 0x10e3
    cmp word [bp - 0x0062], byte 1   ; 0x10e4
    jne short @..api_idx_0068.l40    ; 0x10e8
    mov ax, 0x22                     ; 0x10ea
@..api_idx_0068.l40:
    push ax                          ; 0x10ed
    call ds_dispatch_e823            ; 0x10ee
    add sp, byte 4                   ; 0x10f1
    push word [bp - 0x0068]          ; 0x10f4
    push word [bp - 0x005e]          ; 0x10f7
    call ds_dispatch_e84e            ; 0x10fa
    add sp, byte 4                   ; 0x10fd
    mov ax, 0xc                      ; 0x1100
    imul word [bp - 0x0004]          ; 0x1103
    add ax, strict word 0x66         ; 0x1106
    push ax                          ; 0x1109
    mov ax, word [bp - 0x0064]       ; 0x110a
    inc ax                           ; 0x110d
    push ax                          ; 0x110e
    call ds_dispatch_e809            ; 0x110f
    add sp, byte 4                   ; 0x1112
    mov ax, 0                        ; 0x1115
    push ax                          ; 0x1118
    cmp word [bp - 0x0062], byte 1   ; 0x1119
    jne short @..api_idx_0068.l41    ; 0x111d
    mov ax, 0x22                     ; 0x111f
@..api_idx_0068.l41:
    push ax                          ; 0x1122
    call ds_dispatch_e823            ; 0x1123
    add sp, byte 4                   ; 0x1126
    push word [bp - 0x0068]          ; 0x1129
    push word [bp - 0x005e]          ; 0x112c
    call ds_dispatch_e84e            ; 0x112f
    add sp, byte 4                   ; 0x1132
    mov ax, 0xc                      ; 0x1135
    imul word [bp - 0x0004]          ; 0x1138
    add ax, strict word 0x67         ; 0x113b
    push ax                          ; 0x113e
    push word [bp - 0x0064]          ; 0x113f
    call ds_dispatch_e809            ; 0x1142
    add sp, byte 4                   ; 0x1145
    mov ax, 0                        ; 0x1148
    push ax                          ; 0x114b
    cmp word [bp - 0x0062], byte 1   ; 0x114c
    jne short @..api_idx_0068.l42    ; 0x1150
    mov ax, 0x22                     ; 0x1152
@..api_idx_0068.l42:
    push ax                          ; 0x1155
    call ds_dispatch_e823            ; 0x1156
    add sp, byte 4                   ; 0x1159
    push word [bp - 0x0068]          ; 0x115c
    push word [bp - 0x005e]          ; 0x115f
    call ds_dispatch_e84e            ; 0x1162
    add sp, byte 4                   ; 0x1165
    mov ax, 0xc                      ; 0x1168
    imul word [bp - 0x0004]          ; 0x116b
    add ax, strict word 0x65         ; 0x116e
    push ax                          ; 0x1171
    push word [bp - 0x0064]          ; 0x1172
    call ds_dispatch_e809            ; 0x1175
    add sp, byte 4                   ; 0x1178
    mov ax, 0                        ; 0x117b
    push ax                          ; 0x117e
    cmp word [bp - 0x0062], byte 1   ; 0x117f
    jne short @..api_idx_0068.l43    ; 0x1183
    mov ax, 0x22                     ; 0x1185
@..api_idx_0068.l43:
    push ax                          ; 0x1188
    call ds_dispatch_e823            ; 0x1189
    add sp, byte 4                   ; 0x118c
    push word [bp - 0x0068]          ; 0x118f
    push word [bp - 0x005e]          ; 0x1192
    call ds_dispatch_e84e            ; 0x1195
    add sp, byte 4                   ; 0x1198
    mov ax, 0xc                      ; 0x119b
    imul word [bp - 0x0004]          ; 0x119e
    add ax, strict word 0x66         ; 0x11a1
    push ax                          ; 0x11a4
    push word [bp - 0x0064]          ; 0x11a5
    call ds_dispatch_e809            ; 0x11a8
    add sp, byte 4                   ; 0x11ab
    mov ax, 0                        ; 0x11ae
    push ax                          ; 0x11b1
    mov ax, 0x55                     ; 0x11b2
    cmp word [bp - 0x0062], byte 1   ; 0x11b5
    jne short @..api_idx_0068.l44    ; 0x11b9
    mov ax, 0x16                     ; 0x11bb
@..api_idx_0068.l44:
    push ax                          ; 0x11be
    call ds_dispatch_e823            ; 0x11bf
    add sp, byte 4                   ; 0x11c2
    push word [bp - 0x0068]          ; 0x11c5
    push word [bp - 0x005e]          ; 0x11c8
    call ds_dispatch_e84e            ; 0x11cb
    add sp, byte 4                   ; 0x11ce
@..api_idx_0068.l45:
    inc word [bp - 0x0060]           ; 0x11d1
    lea ax, word [bp - 0x005c]       ; 0x11d4
    push ax                          ; 0x11d7
    push word [bp - 0x0060]          ; 0x11d8
    call ds_dispatch_b53b            ; 0x11db
    add sp, byte 4                   ; 0x11de
    lea ax, word [bp - 0x005c]       ; 0x11e1
    mov word [bp - 0x005e], ax       ; 0x11e4
    inc word [bp - 0x0004]           ; 0x11e7
@..api_idx_0068.l46:
    mov ax, word [bp - 0x0004]       ; 0x11ea
    cmp ax, word [bp - 0x0002]       ; 0x11ed
    jge short @..api_idx_0068.l47    ; 0x11f0
    jmp near @..api_idx_0068.l35     ; 0x11f2
@..api_idx_0068.l47:
    mov ax, 0                        ; 0x11f5
    push ax                          ; 0x11f8
    mov ax, word [bp - 0x0002]       ; 0x11f9
    cmp ax, word [bp - 0x0066]       ; 0x11fc
    jle short @..api_idx_0068.l48    ; 0x11ff
    mov cx, 0xc                      ; 0x1201
    imul cx                          ; 0x1204
    jmp short @..api_idx_0068.l49    ; 0x1206
@..api_idx_0068.l48:
    mov ax, 0xc                      ; 0x1208
    imul word [bp - 0x0066]          ; 0x120b
@..api_idx_0068.l49:
    add ax, strict word 0x66         ; 0x120e
    push ax                          ; 0x1211
    mov ax, 0x10d                    ; 0x1212
    push ax                          ; 0x1215
    mov ax, 0x66                     ; 0x1216
    push ax                          ; 0x1219
    mov ax, 0x32                     ; 0x121a
    push ax                          ; 0x121d
    call ds_dispatch_f005            ; 0x121e
    add sp, byte 0x0a                ; 0x1221
    mov ax, 0x10                     ; 0x1224
    push ax                          ; 0x1227
    call api_idx_0004                ; 0x1228
    pop cx                           ; 0x122b
    mov ax, 0                        ; 0x122c
    push ax                          ; 0x122f
    push ax                          ; 0x1230
    push word [bp - 0x000a]          ; 0x1231
    push word [bp - 0x000c]          ; 0x1234
    call ds_dispatch_e942            ; 0x1237
    add sp, byte 8                   ; 0x123a
    call api_idx_0002_6              ; 0x123d
    test ax, ax                      ; 0x1240
    je short @..api_idx_0068.l50     ; 0x1242
    cmp word [bp - 0x0060], strict word 0xb69 ; 0x1244
    jge short @..api_idx_0068.l50    ; 0x1249
    mov word [bp - 0x0060], 0xb69    ; 0x124b
    lea ax, word [bp - 0x005c]       ; 0x1250
    push ax                          ; 0x1253
    push word [bp - 0x0060]          ; 0x1254
    call ds_dispatch_b53b            ; 0x1257
    add sp, byte 4                   ; 0x125a
    lea ax, word [bp - 0x005c]       ; 0x125d
    mov word [bp - 0x005e], ax       ; 0x1260
@..api_idx_0068.l50:
    cmp word [data_5216], byte 0     ; 0x1263
    jne short @..api_idx_0068.l51    ; 0x1268
    jmp near @..api_idx_0068.l34     ; 0x126a
@..api_idx_0068.l51:
    call api_idx_0002_6              ; 0x126d
    test ax, ax                      ; 0x1270
    je short @..api_idx_0068.l52     ; 0x1272
    mov word [data_91b8], 0xffff     ; 0x1274
@..api_idx_0068.l52:
    mov ax, 0x32                     ; 0x127a
    push ax                          ; 0x127d
    call api_idx_0004                ; 0x127e
    pop cx                           ; 0x1281
    mov ax, 0                        ; 0x1282
    push ax                          ; 0x1285
    mov ax, 1                        ; 0x1286
    push ax                          ; 0x1289
    push word [bp - 0x000a]          ; 0x128a
    push word [bp - 0x000c]          ; 0x128d
    call ds_dispatch_e942            ; 0x1290
    add sp, byte 8                   ; 0x1293
    cmp word [data_8450], byte 0     ; 0x1296
    je short @..api_idx_0068.l55     ; 0x129b
    cmp word [data_91b8], byte 0     ; 0x129d
    jne short @..api_idx_0068.l54    ; 0x12a2
@..api_idx_0068.l53:
    call ds_dispatch_ef83            ; 0x12a4
    test ax, ax                      ; 0x12a7
    je short @..api_idx_0068.l54     ; 0x12a9
    jmp short @..api_idx_0068.l53    ; 0x12ab
@..api_idx_0068.l54:
    push word [data_844c]            ; 0x12ad
    push word [data_844e]            ; 0x12b1
    call ds_dispatch_d91b            ; 0x12b5
    add sp, byte 4                   ; 0x12b8
    mov ax, 0                        ; 0x12bb
    push ax                          ; 0x12be
    call ds_dispatch_d907            ; 0x12bf
    pop cx                           ; 0x12c2
    jmp short @..api_idx_0068.l56    ; 0x12c3
@..api_idx_0068.l55:
    call ds_dispatch_baef            ; 0x12c5
    test ax, ax                      ; 0x12c8
    jne short @..api_idx_0068.l56    ; 0x12ca
    jmp short @..api_idx_0068.l55    ; 0x12cc
@..api_idx_0068.l56:
    call ds_dispatch_ec17            ; 0x12ce
    mov ax, 0                        ; 0x12d1
    push ax                          ; 0x12d4
    push ax                          ; 0x12d5
    push ax                          ; 0x12d6
    push ax                          ; 0x12d7
    call ds_dispatch_f0ca            ; 0x12d8
    add sp, byte 8                   ; 0x12db
    mov ax, 0                        ; 0x12de
    push ax                          ; 0x12e1
    mov ax, 0xc7                     ; 0x12e2
    push ax                          ; 0x12e5
    mov ax, 0x13f                    ; 0x12e6
    push ax                          ; 0x12e9
    mov ax, 0                        ; 0x12ea
    push ax                          ; 0x12ed
    push ax                          ; 0x12ee
    call ds_dispatch_e901            ; 0x12ef
    add sp, byte 0x0a                ; 0x12f2
    mov ax, 0xc7                     ; 0x12f5
    push ax                          ; 0x12f8
    mov ax, 0x13f                    ; 0x12f9
    push ax                          ; 0x12fc
    mov ax, 0                        ; 0x12fd
    push ax                          ; 0x1300
    push ax                          ; 0x1301
    call ds_dispatch_e8da            ; 0x1302
    add sp, byte 8                   ; 0x1305
    mov ax, 1                        ; 0x1308
    push ax                          ; 0x130b
    call ds_dispatch_ef14            ; 0x130c
    pop cx                           ; 0x130f
    test word [data_9056], 0x1000    ; 0x1310
    je short @..api_idx_0068.l57     ; 0x1316
    cmp byte [data_5989], 1          ; 0x1318
    jne short @..api_idx_0068.l57    ; 0x131d
    call ds_dispatch_f02c            ; 0x131f
    mov word [data_0e32], 1          ; 0x1322
    jmp short @..api_idx_0068.l58    ; 0x1328
@..api_idx_0068.l57:
    mov word [data_0e32], 0          ; 0x132a
@..api_idx_0068.l58:
    mov word [data_5b3e], 0          ; 0x1330
    mov word [data_830a], data_0002  ; 0x1336
    ret                              ; 0x133c
%include "vinit/api_idx_0002_7.asm"

%include "vinit/api_idx_0008.asm"


    db 0x8f, 0x06, 0xb6, 0x91, 0x59, 0x89, 0x26, 0xb2, 0x91, 0x89, 0x2e, 0xb4, 0x91, 0x89, 0x36, 0xae
    db 0x91, 0x89, 0x3e, 0xb0, 0x91, 0xfc, 0xbf, 0xb8, 0x91, 0xb9, 0xba, 0x91, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x0c, 0xea, 0x8b, 0x2e, 0xb4, 0x91, 0x8b, 0x26, 0xb2
    db 0x91, 0x8b, 0x36, 0xae, 0x91, 0x8b, 0x3e, 0xb0, 0x91, 0x51, 0xff, 0x26, 0xb6, 0x91
    db 'SCENARIO.HDR', 0
    db 'VBFONT0.VGA', 0
    db 'VBFONT1.VGA', 0
    db 'VBFONT2.VGA', 0
    db 'VBFONT3.VGA', 0
    db 'VCFONT1.VGA', 0
    db 'VCPORT0.VGA', 0
    db 'VCFONT2.VGA', 0
    db 'VCFONT3.VGA', 0
    db 'VMPNTR0.VGA', 0
    db 'VMPNTR1.VGA', 0
    db 'VMPNTR2.VGA', 0
    db 'BASEDATA.VGA', 0
    db 'MASTER.HDR', 0
    db 'DISK.HDR', 0
    db 'MSG.HDR', 0
    db 'PCFILE.DBS', 0
    db 'MISC.HDR', 0
    db 'MSG.DBS', 0
    db 'SCENARIO.DBS', 0
    db 'PALETTE.DEF', 0
    db 'TIT1SCRN.VGA', 0
    db 'TIT2SCRN.VGA', 0
    db 'MAINSCRN.VGA', 0
    times 10 db 0

