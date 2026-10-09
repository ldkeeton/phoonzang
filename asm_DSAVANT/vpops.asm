%include "structs/structs.inc"
%include "structs/loc_290d.inc"
org 0
bits 16
%include "labels/vpops_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xcd, 0x4e, 0x98, 0x90

data_0002 equ 0x0002
data_0e32 equ 0x0e32
data_0e36 equ 0x0e36
loc_290d equ 0x290d
loc_2925 equ 0x2925
loc_295e equ 0x295e
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_69c8 equ 0x69c8
data_7abc equ 0x7abc
data_7b04 equ 0x7b04
data_82e8 equ 0x82e8
data_82ee equ 0x82ee
data_830a equ 0x830a
data_8454 equ 0x8454
data_845e equ 0x845e
data_8466 equ 0x8466
data_8468 equ 0x8468
data_8482 equ 0x8482
data_8484 equ 0x8484
data_848e equ 0x848e
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8f20 equ 0x8f20
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_906c equ 0x906c
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_90cc equ 0x90cc
data_90ce equ 0x90ce
data_90d0 equ 0x90d0
data_90d2 equ 0x90d2
data_90d4 equ 0x90d4
data_90d6 equ 0x90d6
data_9386 equ 0x9386
data_9388 equ 0x9388
data_938a equ 0x938a
data_938c equ 0x938c

    db 0x3e, 0x00, 0xb8, 0x02, 0xe4, 0x9e
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [data_830a], byte 0x0c  ; 0x0014
    jne short @..local.l1            ; 0x0019
    call api_idx_0004_5              ; 0x001b
@..local.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
%include "vpops/api_idx_002a.asm"

%include "vpops/api_idx_000a.asm"

%include "vpops/math_loc_0149.asm"

%include "vpops/api_idx_0006.asm"

loc_02af:
    mov ax, 0                        ; 0x02af
    call ds_dispatch_f40b            ; 0x02b2
    mov ax, word [bp + 0x4]          ; 0x02b5
    jmp near @..local.l6             ; 0x02b8
@..local.l2:
    mov ax, 0x9f                     ; 0x02bb
    push ax                          ; 0x02be
    mov ax, 0xcd                     ; 0x02bf
    push ax                          ; 0x02c2
    mov ax, 0x93                     ; 0x02c3
    push ax                          ; 0x02c6
    mov ax, 0x73                     ; 0x02c7
    push ax                          ; 0x02ca
    call ds_dispatch_e8da            ; 0x02cb
    add sp, byte 8                   ; 0x02ce
    mov ax, 0xc2                     ; 0x02d1
    push ax                          ; 0x02d4
    mov ax, 0x60                     ; 0x02d5
    push ax                          ; 0x02d8
    mov ax, 0xa5                     ; 0x02d9
    push ax                          ; 0x02dc
    mov ax, 8                        ; 0x02dd
    push ax                          ; 0x02e0
    call ds_dispatch_e8da            ; 0x02e1
    add sp, byte 8                   ; 0x02e4
    mov ax, 0xc2                     ; 0x02e7
    push ax                          ; 0x02ea
    mov ax, 0x13a                    ; 0x02eb
    push ax                          ; 0x02ee
    mov ax, 0xa5                     ; 0x02ef
    push ax                          ; 0x02f2
    mov ax, 0xe7                     ; 0x02f3
    push ax                          ; 0x02f6
    call ds_dispatch_e8da            ; 0x02f7
    add sp, byte 8                   ; 0x02fa
    jmp short @..local.l8            ; 0x02fd
@..local.l3:
    mov ax, 0xc2                     ; 0x02ff
    push ax                          ; 0x0302
    mov ax, 0xe0                     ; 0x0303
    push ax                          ; 0x0306
    mov ax, 0xa4                     ; 0x0307
    push ax                          ; 0x030a
    mov ax, 0x62                     ; 0x030b
    push ax                          ; 0x030e
    call ds_dispatch_e8da            ; 0x030f
    add sp, byte 8                   ; 0x0312
    jmp short @..local.l8            ; 0x0315
@..local.l4:
    mov ax, 0x9f                     ; 0x0317
    push ax                          ; 0x031a
    mov ax, 0xcd                     ; 0x031b
    push ax                          ; 0x031e
    mov ax, 0x93                     ; 0x031f
    push ax                          ; 0x0322
    mov ax, 0x73                     ; 0x0323
    push ax                          ; 0x0326
    call ds_dispatch_e8da            ; 0x0327
    add sp, byte 8                   ; 0x032a
    jmp short @..local.l8            ; 0x032d
@..local.l5:
    mov ax, 0xc2                     ; 0x032f
    push ax                          ; 0x0332
    mov ax, 0x13a                    ; 0x0333
    push ax                          ; 0x0336
    mov ax, 0x93                     ; 0x0337
    push ax                          ; 0x033a
    mov ax, 8                        ; 0x033b
    push ax                          ; 0x033e
    call ds_dispatch_e8da            ; 0x033f
    add sp, byte 8                   ; 0x0342
    jmp short @..local.l8            ; 0x0345
@..local.l6:
    cmp ax, strict word 0            ; 0x0347
    jne short @..local.l7            ; 0x034a
    jmp near @..local.l2             ; 0x034c
@..local.l7:
    cmp ax, strict word 1            ; 0x034f
    je short @..local.l3             ; 0x0352
    cmp ax, strict word 2            ; 0x0354
    je short @..local.l4             ; 0x0357
    cmp ax, strict word 3            ; 0x0359
    je short @..local.l5             ; 0x035c
@..local.l8:
    ret                              ; 0x035e
%include "vpops/api_idx_0054.asm"

%include "vpops/api_idx_000a_2.asm"

@..api_idx_000a_2.l3:
    mov ax, 0x15e                    ; 0x0563
    imul word [bp - 0x0002]          ; 0x0566
    add ax, word [bp - 0x0004]       ; 0x0569
    mov bx, ax                       ; 0x056c
    mov al, byte [bx + 0x6a22]       ; 0x056e
    sub ah, ah                       ; 0x0572
    mov word [bp - 0x0006], ax       ; 0x0574
    cmp word [bp + 0xa], byte 0      ; 0x0577
    jne short @..api_idx_000a_2.l6   ; 0x057b
    mov ax, 0x15e                    ; 0x057d
    imul word [bp - 0x0002]          ; 0x0580
    mov bx, ax                       ; 0x0583
    cmp byte [bx + 0x6b75], 0        ; 0x0585
    jbe short @..api_idx_000a_2.l6   ; 0x058a
    mov al, byte [bx + 0x6b75]       ; 0x058c
    sub ah, ah                       ; 0x0590
    cmp ax, 0xfe                     ; 0x0592
    jge short @..api_idx_000a_2.l6   ; 0x0595
    cmp ax, 0xfd                     ; 0x0597
    jne short @..api_idx_000a_2.l4   ; 0x059a
    mov word [bp - 0x0006], 0        ; 0x059c
    mov word [bp - 0x0008], 0        ; 0x05a1
    jmp short @..api_idx_000a_2.l5   ; 0x05a6
@..api_idx_000a_2.l4:
    mov word [bp - 0x0008], ax       ; 0x05a8
    mov ax, word [bp + 0x4]          ; 0x05ab
    shl ax, 1                        ; 0x05ae
    mov bx, ax                       ; 0x05b0
    mov bx, word [bx - 0x7b70]       ; 0x05b2
    cmp byte [bx + 0xd7], 0x47       ; 0x05b6
    jne short @..api_idx_000a_2.l5   ; 0x05bb
    cmp word [bp - 0x000a], byte 0   ; 0x05bd
    jne short @..api_idx_000a_2.l5   ; 0x05c1
    mov word [bp - 0x0006], 1        ; 0x05c3
    mov word [bp - 0x0008], 0xb      ; 0x05c8
@..api_idx_000a_2.l5:
    jmp short @..api_idx_000a_2.l7   ; 0x05cd
@..api_idx_000a_2.l6:
    mov ax, 0x15e                    ; 0x05cf
    imul word [bp - 0x0002]          ; 0x05d2
    add ax, word [bp - 0x0004]       ; 0x05d5
    mov bx, ax                       ; 0x05d8
    mov al, byte [bx + 0x6a2c]       ; 0x05da
    sub ah, ah                       ; 0x05de
    push ax                          ; 0x05e0
    call ds_dispatch_b7a9            ; 0x05e1
    pop cx                           ; 0x05e4
    add word [bp - 0x0006], ax       ; 0x05e5
    mov ax, 0x15e                    ; 0x05e8
    imul word [bp - 0x0002]          ; 0x05eb
    add ax, word [bp - 0x0006]       ; 0x05ee
    mov bx, ax                       ; 0x05f1
    mov al, byte [bx + 0x6a40]       ; 0x05f3
    sub ah, ah                       ; 0x05f7
    mov word [bp - 0x0008], ax       ; 0x05f9
    cmp word [bp - 0x000a], byte 0   ; 0x05fc
    je short @..api_idx_000a_2.l7    ; 0x0600
    mov al, byte [bx + 0x6a4a]       ; 0x0602
    sub ah, ah                       ; 0x0606
    push ax                          ; 0x0608
    call ds_dispatch_b7a9            ; 0x0609
    pop cx                           ; 0x060c
    add word [bp - 0x0008], ax       ; 0x060d
@..api_idx_000a_2.l7:
    mov al, byte [bp + 0xa]          ; 0x0610
    push ax                          ; 0x0613
    mov ax, 3                        ; 0x0614
    imul word [bp + 0x6]             ; 0x0617
    mov cx, ax                       ; 0x061a
    add ax, word [bp + 0x8]          ; 0x061c
    mov bx, ax                       ; 0x061f
    pop ax                           ; 0x0621
    mov byte [bx - 0x7bd0], al       ; 0x0622
    mov al, byte [bp - 0x0006]       ; 0x0626
    push ax                          ; 0x0629
    mov ax, 0x5a                     ; 0x062a
    imul word [bp + 0x6]             ; 0x062d
    mov cx, ax                       ; 0x0630
    mov ax, 0x1e                     ; 0x0632
    imul word [bp + 0x8]             ; 0x0635
    mov dx, ax                       ; 0x0638
    add cx, ax                       ; 0x063a
    mov ax, 3                        ; 0x063c
    imul word [bp - 0x0004]          ; 0x063f
    mov dx, ax                       ; 0x0642
    add cx, ax                       ; 0x0644
    mov bx, cx                       ; 0x0646
    pop ax                           ; 0x0648
    mov byte [bx - 0x7cde], al       ; 0x0649
    mov al, byte [bp - 0x0008]       ; 0x064d
    mov byte [bx - 0x7cdd], al       ; 0x0650
    mov ax, 0x15e                    ; 0x0654
    imul word [bp - 0x0002]          ; 0x0657
    mov cx, word [bp - 0x0008]       ; 0x065a
    shl cx, 1                        ; 0x065d
    shl cx, 1                        ; 0x065f
    add ax, cx                       ; 0x0661
    mov bx, ax                       ; 0x0663
    mov al, byte [bx + 0x6ac1]       ; 0x0665
    inc al                           ; 0x0669
    push ax                          ; 0x066b
    mov ax, 0x5a                     ; 0x066c
    imul word [bp + 0x6]             ; 0x066f
    mov cx, ax                       ; 0x0672
    mov ax, 0x1e                     ; 0x0674
    imul word [bp + 0x8]             ; 0x0677
    mov dx, ax                       ; 0x067a
    add cx, ax                       ; 0x067c
    mov ax, 3                        ; 0x067e
    imul word [bp - 0x0004]          ; 0x0681
    mov dx, ax                       ; 0x0684
    add cx, ax                       ; 0x0686
    mov bx, cx                       ; 0x0688
    pop ax                           ; 0x068a
    mov byte [bx - 0x7cdc], al       ; 0x068b
    mov al, byte [bx - 0x7cdc]       ; 0x068f
    sub ah, ah                       ; 0x0693
    mov cx, ax                       ; 0x0695
    push cx                          ; 0x0697
    mov ax, 0x15e                    ; 0x0698
    imul word [bp - 0x0002]          ; 0x069b
    mov cx, word [bp - 0x0008]       ; 0x069e
    shl cx, 1                        ; 0x06a1
    shl cx, 1                        ; 0x06a3
    add ax, cx                       ; 0x06a5
    mov bx, ax                       ; 0x06a7
    mov al, byte [bx + 0x6ac2]       ; 0x06a9
    sub ah, ah                       ; 0x06ad
    push ax                          ; 0x06af
    call ds_dispatch_b7a9            ; 0x06b0
    pop cx                           ; 0x06b3
    pop cx                           ; 0x06b4
    add ax, cx                       ; 0x06b5
    push ax                          ; 0x06b7
    mov ax, 0x5a                     ; 0x06b8
    imul word [bp + 0x6]             ; 0x06bb
    mov cx, ax                       ; 0x06be
    mov ax, 0x1e                     ; 0x06c0
    imul word [bp + 0x8]             ; 0x06c3
    mov dx, ax                       ; 0x06c6
    add cx, ax                       ; 0x06c8
    mov ax, 3                        ; 0x06ca
    imul word [bp - 0x0004]          ; 0x06cd
    mov dx, ax                       ; 0x06d0
    add cx, ax                       ; 0x06d2
    mov bx, cx                       ; 0x06d4
    pop ax                           ; 0x06d6
    mov byte [bx - 0x7cdc], al       ; 0x06d7
    inc word [bp - 0x0004]           ; 0x06db
@..api_idx_000a_2.l8:
    mov ax, 0x15e                    ; 0x06de
    imul word [bp - 0x0002]          ; 0x06e1
    add ax, word [bp + 0xa]          ; 0x06e4
    mov bx, ax                       ; 0x06e7
    mov al, byte [bx + 0x6a1a]       ; 0x06e9
    sub ah, ah                       ; 0x06ed
    push ax                          ; 0x06ef
    mov al, byte [bx + 0x6a1e]       ; 0x06f0
    sub ah, ah                       ; 0x06f4
    mov cx, ax                       ; 0x06f6
    pop ax                           ; 0x06f8
    add ax, cx                       ; 0x06f9
    cmp ax, word [bp - 0x0004]       ; 0x06fb
    jle short @..api_idx_000a_2.l9   ; 0x06fe
    jmp near @..api_idx_000a_2.l3    ; 0x0700
@..api_idx_000a_2.l9:
    ret                              ; 0x0703
%include "vpops/api_idx_000e.asm"

@..api_idx_000e.l2:
    mov ax, 0x2c                     ; 0x075a
    imul word [bp + 0x6]             ; 0x075d
    mov si, ax                       ; 0x0760
    mov ax, word [bp + 0x4]          ; 0x0762
    shl ax, 1                        ; 0x0765
    mov bx, ax                       ; 0x0767
    mov bx, word [bx - 0x7b7e]       ; 0x0769
    cmp byte [bx + si + 0x22], data_0002 ; 0x076d
    je short @..api_idx_000e.l3      ; 0x0771
    cmp byte [bx + si + 0x11], 0     ; 0x0773
    ja short @..api_idx_000e.l3      ; 0x0777
    cmp byte [bx + si + 0x10], 0     ; 0x0779
    jbe short @..api_idx_000e.l4     ; 0x077d
@..api_idx_000e.l3:
    mov ax, 0x5a                     ; 0x077f
    imul word [bp + 0x8]             ; 0x0782
    push ax                          ; 0x0785
    mov ax, 0x1e                     ; 0x0786
    imul word [bp + 0xa]             ; 0x0789
    mov cx, ax                       ; 0x078c
    pop ax                           ; 0x078e
    add ax, cx                       ; 0x078f
    push ax                          ; 0x0791
    mov ax, 3                        ; 0x0792
    imul word [bp - 0x0004]          ; 0x0795
    mov cx, ax                       ; 0x0798
    pop ax                           ; 0x079a
    add ax, cx                       ; 0x079b
    mov bx, ax                       ; 0x079d
    mov al, byte [bx - 0x7cde]       ; 0x079f
    sub ah, ah                       ; 0x07a3
    mov word [bp - 0x0006], ax       ; 0x07a5
    mov ax, 0x15e                    ; 0x07a8
    imul word [bp - 0x0002]          ; 0x07ab
    mov cx, ax                       ; 0x07ae
    mov ax, word [bp - 0x0006]       ; 0x07b0
    add cx, ax                       ; 0x07b3
    mov bx, cx                       ; 0x07b5
    mov al, byte [bx + 0x6a40]       ; 0x07b7
    sub ah, ah                       ; 0x07bb
    mov word [bp - 0x0008], ax       ; 0x07bd
    jmp near @..api_idx_000e.l11     ; 0x07c0
@..api_idx_000e.l4:
    mov ax, 0x5a                     ; 0x07c3
    imul word [bp + 0x8]             ; 0x07c6
    push ax                          ; 0x07c9
    mov ax, 0x1e                     ; 0x07ca
    imul word [bp + 0xa]             ; 0x07cd
    mov cx, ax                       ; 0x07d0
    pop ax                           ; 0x07d2
    add ax, cx                       ; 0x07d3
    push ax                          ; 0x07d5
    mov ax, 3                        ; 0x07d6
    imul word [bp - 0x0004]          ; 0x07d9
    mov cx, ax                       ; 0x07dc
    pop ax                           ; 0x07de
    add ax, cx                       ; 0x07df
    mov bx, ax                       ; 0x07e1
    mov al, byte [bx - 0x7cdd]       ; 0x07e3
    sub ah, ah                       ; 0x07e7
    mov word [bp - 0x0008], ax       ; 0x07e9
    mov al, byte [bx - 0x7cdc]       ; 0x07ec
    sub ah, ah                       ; 0x07f0
    mov word [bp - 0x000a], ax       ; 0x07f2
    cmp word [bp + 0xc], byte 0      ; 0x07f5
    je short @..api_idx_000e.l5      ; 0x07f9
    dec word [bp - 0x000a]           ; 0x07fb
@..api_idx_000e.l5:
    cmp word [bp - 0x000a], byte 0   ; 0x07fe
    jle short @..api_idx_000e.l6     ; 0x0802
    jmp near @..api_idx_000e.l10     ; 0x0804
@..api_idx_000e.l6:
    mov al, byte [bx - 0x7cde]       ; 0x0807
    sub ah, ah                       ; 0x080b
    mov word [bp - 0x0006], ax       ; 0x080d
    inc word [bp - 0x0008]           ; 0x0810
    mov ax, 0x15e                    ; 0x0813
    imul word [bp - 0x0002]          ; 0x0816
    mov cx, ax                       ; 0x0819
    mov ax, word [bp - 0x0006]       ; 0x081b
    add cx, ax                       ; 0x081e
    mov bx, cx                       ; 0x0820
    mov al, byte [bx + 0x6a40]       ; 0x0822
    sub ah, ah                       ; 0x0826
    push ax                          ; 0x0828
    mov al, byte [bx + 0x6a4a]       ; 0x0829
    sub ah, ah                       ; 0x082d
    mov cx, ax                       ; 0x082f
    pop ax                           ; 0x0831
    add ax, cx                       ; 0x0832
    dec ax                           ; 0x0834
    cmp ax, word [bp - 0x0008]       ; 0x0835
    jl short @..api_idx_000e.l7      ; 0x0838
    jmp near @..api_idx_000e.l9      ; 0x083a
@..api_idx_000e.l7:
    mov ax, 3                        ; 0x083d
    imul word [bp + 0x8]             ; 0x0840
    add ax, word [bp + 0xa]          ; 0x0843
    mov bx, ax                       ; 0x0846
    cmp byte [bx - 0x7bd0], 0        ; 0x0848
    je short @..api_idx_000e.l8      ; 0x084d
    mov byte [bx - 0x7bd0], 0        ; 0x084f
    mov ax, 0                        ; 0x0854
    push ax                          ; 0x0857
    push word [bp + 0xa]             ; 0x0858
    push word [bp + 0x8]             ; 0x085b
    push word [bp + 0x4]             ; 0x085e
    call api_idx_000a_2              ; 0x0861
    add sp, byte 8                   ; 0x0864
    push word [bp + 0xe]             ; 0x0867
    mov ax, 0                        ; 0x086a
    push ax                          ; 0x086d
    push word [bp + 0xa]             ; 0x086e
    push word [bp + 0x8]             ; 0x0871
    push word [bp + 0x6]             ; 0x0874
    push word [bp + 0x4]             ; 0x0877
    call api_idx_000e                ; 0x087a
    add sp, byte 0x0c                ; 0x087d
    ret                              ; 0x0880
@..api_idx_000e.l8:
    mov ax, 0x15e                    ; 0x0881
    imul word [bp - 0x0002]          ; 0x0884
    add ax, word [bp - 0x0004]       ; 0x0887
    mov bx, ax                       ; 0x088a
    mov al, byte [bx + 0x6a2c]       ; 0x088c
    sub ah, ah                       ; 0x0890
    push ax                          ; 0x0892
    call ds_dispatch_b7a9            ; 0x0893
    pop cx                           ; 0x0896
    push ax                          ; 0x0897
    mov ax, 0x15e                    ; 0x0898
    imul word [bp - 0x0002]          ; 0x089b
    add ax, word [bp - 0x0004]       ; 0x089e
    mov bx, ax                       ; 0x08a1
    mov al, byte [bx + 0x6a22]       ; 0x08a3
    sub ah, ah                       ; 0x08a7
    mov cx, ax                       ; 0x08a9
    pop ax                           ; 0x08ab
    add ax, cx                       ; 0x08ac
    mov word [bp - 0x0006], ax       ; 0x08ae
    mov al, byte [bp - 0x0006]       ; 0x08b1
    push ax                          ; 0x08b4
    mov ax, 0x5a                     ; 0x08b5
    imul word [bp + 0x8]             ; 0x08b8
    mov cx, ax                       ; 0x08bb
    mov ax, 0x1e                     ; 0x08bd
    imul word [bp + 0xa]             ; 0x08c0
    mov dx, ax                       ; 0x08c3
    add cx, ax                       ; 0x08c5
    mov ax, 3                        ; 0x08c7
    imul word [bp - 0x0004]          ; 0x08ca
    mov dx, ax                       ; 0x08cd
    add cx, ax                       ; 0x08cf
    mov bx, cx                       ; 0x08d1
    pop ax                           ; 0x08d3
    mov byte [bx - 0x7cde], al       ; 0x08d4
    mov ax, 0x15e                    ; 0x08d8
    imul word [bp - 0x0002]          ; 0x08db
    add ax, word [bp - 0x0006]       ; 0x08de
    mov bx, ax                       ; 0x08e1
    mov al, byte [bx + 0x6a40]       ; 0x08e3
    sub ah, ah                       ; 0x08e7
    mov word [bp - 0x0008], ax       ; 0x08e9
@..api_idx_000e.l9:
    mov al, byte [bp - 0x0008]       ; 0x08ec
    push ax                          ; 0x08ef
    mov ax, 0x5a                     ; 0x08f0
    imul word [bp + 0x8]             ; 0x08f3
    mov cx, ax                       ; 0x08f6
    mov ax, 0x1e                     ; 0x08f8
    imul word [bp + 0xa]             ; 0x08fb
    mov dx, ax                       ; 0x08fe
    add cx, ax                       ; 0x0900
    mov ax, 3                        ; 0x0902
    imul word [bp - 0x0004]          ; 0x0905
    mov dx, ax                       ; 0x0908
    add cx, ax                       ; 0x090a
    mov bx, cx                       ; 0x090c
    pop ax                           ; 0x090e
    mov byte [bx - 0x7cdd], al       ; 0x090f
    mov ax, 0x15e                    ; 0x0913
    imul word [bp - 0x0002]          ; 0x0916
    mov cx, word [bp - 0x0008]       ; 0x0919
    shl cx, 1                        ; 0x091c
    shl cx, 1                        ; 0x091e
    add ax, cx                       ; 0x0920
    mov bx, ax                       ; 0x0922
    mov al, byte [bx + 0x6ac2]       ; 0x0924
    sub ah, ah                       ; 0x0928
    push ax                          ; 0x092a
    call ds_dispatch_b7a9            ; 0x092b
    pop cx                           ; 0x092e
    push ax                          ; 0x092f
    mov ax, 0x15e                    ; 0x0930
    imul word [bp - 0x0002]          ; 0x0933
    mov cx, word [bp - 0x0008]       ; 0x0936
    shl cx, 1                        ; 0x0939
    shl cx, 1                        ; 0x093b
    add ax, cx                       ; 0x093d
    mov bx, ax                       ; 0x093f
    mov al, byte [bx + 0x6ac1]       ; 0x0941
    sub ah, ah                       ; 0x0945
    mov cx, ax                       ; 0x0947
    pop ax                           ; 0x0949
    add ax, cx                       ; 0x094a
    mov word [bp - 0x000a], ax       ; 0x094c
@..api_idx_000e.l10:
    mov al, byte [bp - 0x000a]       ; 0x094f
    push ax                          ; 0x0952
    mov ax, 0x5a                     ; 0x0953
    imul word [bp + 0x8]             ; 0x0956
    mov cx, ax                       ; 0x0959
    mov ax, 0x1e                     ; 0x095b
    imul word [bp + 0xa]             ; 0x095e
    mov dx, ax                       ; 0x0961
    add cx, ax                       ; 0x0963
    mov ax, 3                        ; 0x0965
    imul word [bp - 0x0004]          ; 0x0968
    mov dx, ax                       ; 0x096b
    add cx, ax                       ; 0x096d
    mov bx, cx                       ; 0x096f
    pop ax                           ; 0x0971
    mov byte [bx - 0x7cdc], al       ; 0x0972
@..api_idx_000e.l11:
    mov ax, 0x15e                    ; 0x0976
    imul word [bp - 0x0002]          ; 0x0979
    mov cx, word [bp - 0x0008]       ; 0x097c
    shl cx, 1                        ; 0x097f
    shl cx, 1                        ; 0x0981
    add ax, cx                       ; 0x0983
    mov bx, ax                       ; 0x0985
    mov al, byte [bx + 0x6ac0]       ; 0x0987
    mov bx, word [bp + 0xe]          ; 0x098b
    mov si, word [bp - 0x000e]       ; 0x098e
    mov byte [bx + si], al           ; 0x0991
    mov ax, word [bp + 0x4]          ; 0x0993
    shl ax, 1                        ; 0x0996
    mov bx, ax                       ; 0x0998
    mov bx, word [bx - 0x7b7e]       ; 0x099a
    cmp byte [bx + 0x19e], 0x79      ; 0x099e
    je short @..api_idx_000e.l12     ; 0x09a3
    mov al, byte [bx + 0x19e]        ; 0x09a5
    sub ah, ah                       ; 0x09a9
    cmp ax, 0x8d                     ; 0x09ab
    jne short @..api_idx_000e.l13    ; 0x09ae
@..api_idx_000e.l12:
    inc word [bp - 0x000e]           ; 0x09b0
    mov bx, word [bp + 0xe]          ; 0x09b3
    mov si, word [bp - 0x000e]       ; 0x09b6
    mov al, byte [bx + si - 0x0001]  ; 0x09b9
    mov byte [bx + si], al           ; 0x09bc
    mov ax, 0x15e                    ; 0x09be
    imul word [bp - 0x0002]          ; 0x09c1
    mov bx, ax                       ; 0x09c4
    mov al, byte [bx + 0x6b76]       ; 0x09c6
    mov bx, word [bp + 0xe]          ; 0x09ca
    mov si, word [bp - 0x000e]       ; 0x09cd
    mov byte [bx + si - 0x0001], al  ; 0x09d0
@..api_idx_000e.l13:
    mov bx, word [bp + 0xe]          ; 0x09d3
    mov si, word [bp - 0x000e]       ; 0x09d6
    cmp byte [bx + si], 0            ; 0x09d9
    je short @..api_idx_000e.l14     ; 0x09dc
    inc word [bp - 0x000e]           ; 0x09de
@..api_idx_000e.l14:
    inc word [bp - 0x0004]           ; 0x09e1
@..api_idx_000e.l15:
    mov ax, 0x15e                    ; 0x09e4
    imul word [bp - 0x0002]          ; 0x09e7
    push ax                          ; 0x09ea
    mov ax, 3                        ; 0x09eb
    imul word [bp + 0x8]             ; 0x09ee
    add ax, word [bp + 0xa]          ; 0x09f1
    mov bx, ax                       ; 0x09f4
    mov al, byte [bx - 0x7bd0]       ; 0x09f6
    sub ah, ah                       ; 0x09fa
    mov cx, ax                       ; 0x09fc
    pop ax                           ; 0x09fe
    add ax, cx                       ; 0x09ff
    mov bx, ax                       ; 0x0a01
    mov al, byte [bx + 0x6a1a]       ; 0x0a03
    sub ah, ah                       ; 0x0a07
    push ax                          ; 0x0a09
    mov al, byte [bx + 0x6a1e]       ; 0x0a0a
    sub ah, ah                       ; 0x0a0e
    mov cx, ax                       ; 0x0a10
    pop ax                           ; 0x0a12
    add ax, cx                       ; 0x0a13
    cmp ax, word [bp - 0x0004]       ; 0x0a15
    jle short @..api_idx_000e.l16    ; 0x0a18
    jmp near @..api_idx_000e.l2      ; 0x0a1a
@..api_idx_000e.l16:
    mov bx, word [bp + 0xe]          ; 0x0a1d
    mov si, word [bp - 0x000e]       ; 0x0a20
    mov byte [bx + si], 0            ; 0x0a23
    ret                              ; 0x0a26
%include "vpops/api_idx_0004.asm"

%include "vpops/api_idx_001c.asm"

%include "vpops/api_idx_000e_2.asm"

loc_0e6c:
    mov ax, 0                        ; 0x0e6c
    call ds_dispatch_f40b            ; 0x0e6f
    mov ax, word [bp + 0x4]          ; 0x0e72
    shl ax, 1                        ; 0x0e75
    mov bx, ax                       ; 0x0e77
    mov bx, word [bx - 0x7b96]       ; 0x0e79
    mov al, byte [bx + 0x14]         ; 0x0e7d
    sub ah, ah                       ; 0x0e80
    cmp ax, 0xff                     ; 0x0e82
    je short @..local.l9             ; 0x0e85
    mov al, byte [bx + 0x17]         ; 0x0e87
    sub ah, ah                       ; 0x0e8a
    push ax                          ; 0x0e8c
    mov ax, 0                        ; 0x0e8d
    push ax                          ; 0x0e90
    add bx, byte 8                   ; 0x0e91
    mov ax, bx                       ; 0x0e94
    push ax                          ; 0x0e96
    mov ax, word [bp + 0x4]          ; 0x0e97
    shl ax, 1                        ; 0x0e9a
    mov bx, ax                       ; 0x0e9c
    mov bx, word [bx - 0x7b96]       ; 0x0e9e
    mov al, byte [bx + 0x16]         ; 0x0ea2
    sub ah, ah                       ; 0x0ea5
    push ax                          ; 0x0ea7
    mov ax, 0x8e                     ; 0x0ea8
    push ax                          ; 0x0eab
    mov ax, 0x21                     ; 0x0eac
    push ax                          ; 0x0eaf
    push word [bx + 0x6]             ; 0x0eb0
    push word [bx + 0x4]             ; 0x0eb3
    push word [bx + 0x2]             ; 0x0eb6
    push word [bx]                   ; 0x0eb9
    mov al, byte [bx + 0x15]         ; 0x0ebb
    sub ah, ah                       ; 0x0ebe
    push ax                          ; 0x0ec0
    call ds_dispatch_efd1            ; 0x0ec1
    add sp, byte 0x16                ; 0x0ec4
@..local.l9:
    ret                              ; 0x0ec7
loc_0ec8:
    mov ax, 0                        ; 0x0ec8
    call ds_dispatch_f40b            ; 0x0ecb
    les bx, word [data_0002]         ; 0x0ece
    mov ax, word [es:bx]             ; 0x0ed2
    mov dx, word [es:bx + 0x2]       ; 0x0ed5
    mov word [data_9090], dx         ; 0x0ed9
    mov word [data_908e], ax         ; 0x0edd
    mov ax, word [data_908e]         ; 0x0ee0
    mov dx, word [data_9090]         ; 0x0ee3
    sub ax, word [data_908a]         ; 0x0ee7
    sbb dx, word [data_908c]         ; 0x0eeb
    mov word [data_9094], dx         ; 0x0eef
    mov word [data_9092], ax         ; 0x0ef3
    mov ax, word [data_90d6]         ; 0x0ef6
    cwd                              ; 0x0ef9
    mov cx, ax                       ; 0x0efa
    mov bx, dx                       ; 0x0efc
    mov ax, word [data_9092]         ; 0x0efe
    mov dx, word [data_9094]         ; 0x0f01
    cmp bx, dx                       ; 0x0f05
    jg short @..local.l10            ; 0x0f07
    jne short @..local.l11           ; 0x0f09
    cmp cx, ax                       ; 0x0f0b
    jbe short @..local.l11           ; 0x0f0d
@..local.l10:
    jmp short @..local.l12           ; 0x0f0f
@..local.l11:
    mov ax, word [data_908e]         ; 0x0f11
    mov dx, word [data_9090]         ; 0x0f14
    mov word [data_908c], dx         ; 0x0f18
    mov word [data_908a], ax         ; 0x0f1c
    mov ax, 1                        ; 0x0f1f
    ret                              ; 0x0f22
@..local.l12:
    mov ax, 0                        ; 0x0f23
    ret                              ; 0x0f26
%include "vpops/api_idx_0006_2.asm"

loc_1076:
    mov ax, 0                        ; 0x1076
    call ds_dispatch_f40b            ; 0x1079
    mov word [data_845e], 0xfffe     ; 0x107c
@..local.l13:
    call api_idx_0006_2              ; 0x1082
    cmp word [data_845e], byte 0xfe  ; 0x1085
    jne short @..local.l13           ; 0x108a
    ret                              ; 0x108c
loc_108d:
    mov ax, 0                        ; 0x108d
    call ds_dispatch_f40b            ; 0x1090
@..local.l14:
    cmp word [data_845e], byte 0xfe  ; 0x1093
    je short @..local.l15            ; 0x1098
    call api_idx_0006_2              ; 0x109a
    jmp short @..local.l14           ; 0x109d
@..local.l15:
    ret                              ; 0x109f
loc_10a0:
    mov ax, 0                        ; 0x10a0
    call ds_dispatch_f40b            ; 0x10a3
    push word [bp + 0xc]             ; 0x10a6
    mov ax, word [bp + 0x6]          ; 0x10a9
    dec ax                           ; 0x10ac
    push ax                          ; 0x10ad
    mov ax, word [bp + 0x8]          ; 0x10ae
    inc ax                           ; 0x10b1
    push ax                          ; 0x10b2
    mov ax, word [bp + 0x6]          ; 0x10b3
    dec ax                           ; 0x10b6
    push ax                          ; 0x10b7
    mov ax, word [bp + 0x4]          ; 0x10b8
    dec ax                           ; 0x10bb
    push ax                          ; 0x10bc
    call ds_dispatch_e901            ; 0x10bd
    add sp, byte 0x0a                ; 0x10c0
    push word [bp + 0xc]             ; 0x10c3
    mov ax, word [bp + 0xa]          ; 0x10c6
    inc ax                           ; 0x10c9
    push ax                          ; 0x10ca
    mov ax, word [bp + 0x8]          ; 0x10cb
    inc ax                           ; 0x10ce
    push ax                          ; 0x10cf
    mov ax, word [bp + 0x6]          ; 0x10d0
    dec ax                           ; 0x10d3
    push ax                          ; 0x10d4
    mov ax, word [bp + 0x8]          ; 0x10d5
    inc ax                           ; 0x10d8
    push ax                          ; 0x10d9
    call ds_dispatch_e901            ; 0x10da
    add sp, byte 0x0a                ; 0x10dd
    push word [bp + 0xc]             ; 0x10e0
    mov ax, word [bp + 0xa]          ; 0x10e3
    inc ax                           ; 0x10e6
    push ax                          ; 0x10e7
    mov ax, word [bp + 0x8]          ; 0x10e8
    inc ax                           ; 0x10eb
    push ax                          ; 0x10ec
    mov ax, word [bp + 0xa]          ; 0x10ed
    inc ax                           ; 0x10f0
    push ax                          ; 0x10f1
    mov ax, word [bp + 0x4]          ; 0x10f2
    dec ax                           ; 0x10f5
    push ax                          ; 0x10f6
    call ds_dispatch_e901            ; 0x10f7
    add sp, byte 0x0a                ; 0x10fa
    push word [bp + 0xc]             ; 0x10fd
    mov ax, word [bp + 0xa]          ; 0x1100
    inc ax                           ; 0x1103
    push ax                          ; 0x1104
    mov ax, word [bp + 0x4]          ; 0x1105
    dec ax                           ; 0x1108
    push ax                          ; 0x1109
    mov ax, word [bp + 0x6]          ; 0x110a
    dec ax                           ; 0x110d
    push ax                          ; 0x110e
    mov ax, word [bp + 0x4]          ; 0x110f
    dec ax                           ; 0x1112
    push ax                          ; 0x1113
    call ds_dispatch_e901            ; 0x1114
    add sp, byte 0x0a                ; 0x1117
    ret                              ; 0x111a
%include "vpops/math_loc_111b.asm"

    call ds_dispatch_baa6            ; 0x131a
    add sp, byte 0x0e                ; 0x131d
@..math_loc_111b.l10:
    push word [bp + 0x6]             ; 0x1320
    call loc_02af                    ; 0x1323
    pop cx                           ; 0x1326
    cmp word [data_0e32], byte 0     ; 0x1327
    je short @..math_loc_111b.l12    ; 0x132c
@..math_loc_111b.l11:
    mov ax, 0x59fe                   ; 0x132e
    push ax                          ; 0x1331
    call ds_dispatch_b90d            ; 0x1332
    pop cx                           ; 0x1335
    mov word [bp - 0x0004], ax       ; 0x1336
    call api_idx_0006_2              ; 0x1339
    cmp word [data_5b3e], byte 0     ; 0x133c
    je short @..math_loc_111b.l11    ; 0x1341
    jmp near @..math_loc_111b.l46    ; 0x1343
@..math_loc_111b.l12:
    mov word [bp - 0x0004], 0        ; 0x1346
@..math_loc_111b.l13:
    cmp word [bp + 0x16], byte 0     ; 0x134b
    je short @..math_loc_111b.l14    ; 0x134f
    mov ax, word [bp - 0x0004]       ; 0x1351
    shl ax, 1                        ; 0x1354
    mov si, ax                       ; 0x1356
    mov bx, word [bp + 0x1a]         ; 0x1358
    cmp word [bx + si], byte 1       ; 0x135b
    je short @..math_loc_111b.l14    ; 0x135e
    inc word [bp - 0x0004]           ; 0x1360
    jmp short @..math_loc_111b.l13   ; 0x1363
@..math_loc_111b.l14:
    mov ax, word [bp + 0xa]          ; 0x1365
    mov cx, word [bp - 0x0004]       ; 0x1368
    cmp cx, word [bp - 0x0010]       ; 0x136b
    jge short @..math_loc_111b.l15   ; 0x136e
    mov ax, word [bp + 0x8]          ; 0x1370
@..math_loc_111b.l15:
    mov word [bp - 0x0006], ax       ; 0x1373
    mov ax, cx                       ; 0x1376
    cwd                              ; 0x1378
    idiv word [bp - 0x0010]          ; 0x1379
    mov ax, dx                       ; 0x137c
    cwd                              ; 0x137e
    idiv word [bp + 0x14]            ; 0x137f
    imul word [bp + 0x10]            ; 0x1382
    mov word [bp - 0x000a], ax       ; 0x1385
    mov ax, cx                       ; 0x1388
    cwd                              ; 0x138a
    idiv word [bp - 0x0010]          ; 0x138b
    mov ax, dx                       ; 0x138e
    cwd                              ; 0x1390
    idiv word [bp + 0x14]            ; 0x1391
    mov ax, dx                       ; 0x1394
    imul word [bp + 0x12]            ; 0x1396
    mov word [bp - 0x000c], ax       ; 0x1399
    mov ax, 0x16                     ; 0x139c
    push ax                          ; 0x139f
    mov ax, word [bp + 0xc]          ; 0x13a0
    add ax, word [bp - 0x000c]       ; 0x13a3
    add ax, strict word 6            ; 0x13a6
    push ax                          ; 0x13a9
    mov ax, 6                        ; 0x13aa
    imul word [bp + 0xe]             ; 0x13ad
    add ax, word [bp - 0x0006]       ; 0x13b0
    add ax, word [bp - 0x000a]       ; 0x13b3
    push ax                          ; 0x13b6
    mov ax, word [bp + 0xc]          ; 0x13b7
    add ax, word [bp - 0x000c]       ; 0x13ba
    push ax                          ; 0x13bd
    mov ax, word [bp - 0x0006]       ; 0x13be
    add ax, word [bp - 0x000a]       ; 0x13c1
    push ax                          ; 0x13c4
    call loc_10a0                    ; 0x13c5
    add sp, byte 0x0a                ; 0x13c8
    push word [bp + 0x6]             ; 0x13cb
    call loc_02af                    ; 0x13ce
    pop cx                           ; 0x13d1
    mov ax, 0                        ; 0x13d2
    push ax                          ; 0x13d5
    mov ax, word [bp + 0xc]          ; 0x13d6
    add ax, word [bp - 0x000c]       ; 0x13d9
    add ax, strict word 6            ; 0x13dc
    push ax                          ; 0x13df
    mov ax, 6                        ; 0x13e0
    imul word [bp + 0xe]             ; 0x13e3
    add ax, word [bp - 0x0006]       ; 0x13e6
    add ax, word [bp - 0x000a]       ; 0x13e9
    push ax                          ; 0x13ec
    mov ax, word [bp + 0xc]          ; 0x13ed
    add ax, word [bp - 0x000c]       ; 0x13f0
    push ax                          ; 0x13f3
    mov ax, word [bp - 0x0006]       ; 0x13f4
    add ax, word [bp - 0x000a]       ; 0x13f7
    push ax                          ; 0x13fa
    call loc_10a0                    ; 0x13fb
    add sp, byte 0x0a                ; 0x13fe
@..math_loc_111b.l16:
    mov ax, 1                        ; 0x1401
    push ax                          ; 0x1404
    call ds_dispatch_ea50            ; 0x1405
    pop cx                           ; 0x1408
    test ax, ax                      ; 0x1409
    jne short @..math_loc_111b.l17   ; 0x140b
    call api_idx_0006_2              ; 0x140d
    jmp short @..math_loc_111b.l16   ; 0x1410
@..math_loc_111b.l17:
    mov ax, 1                        ; 0x1412
    push ax                          ; 0x1415
    call ds_dispatch_eb32            ; 0x1416
    pop cx                           ; 0x1419
    sub ah, ah                       ; 0x141a
    mov word [bp - 0x01ae], ax       ; 0x141c
    cmp ax, strict word 0xd          ; 0x1420
    jne short @..math_loc_111b.l18   ; 0x1423
    mov ax, word [bp - 0x0004]       ; 0x1425
    shl ax, 1                        ; 0x1428
    mov bx, ax                       ; 0x142a
    add bx, bp                       ; 0x142c
    mov ax, word [bx - 0x01ce]       ; 0x142e
    mov word [bp - 0x0004], ax       ; 0x1432
    jmp near @..math_loc_111b.l44    ; 0x1435
@..math_loc_111b.l18:
    cmp word [bp + 0x16], byte 1     ; 0x1438
    jne short @..math_loc_111b.l19   ; 0x143c
    cmp word [bp - 0x01ae], byte 0x31 ; 0x143e
    jl short @..math_loc_111b.l19    ; 0x1443
    mov ax, word [data_8466]         ; 0x1445
    add ax, strict word 0x30         ; 0x1448
    cmp ax, word [bp - 0x01ae]       ; 0x144b
    jl short @..math_loc_111b.l19    ; 0x144f
    mov ax, word [bp - 0x0002]       ; 0x1451
    add ax, word [bp - 0x01ae]       ; 0x1454
    add ax, strict word 0xffcf       ; 0x1458
    mov word [bp - 0x0004], ax       ; 0x145b
    mov word [bp - 0x01ae], 0xd      ; 0x145e
    jmp near @..math_loc_111b.l44    ; 0x1464
@..math_loc_111b.l19:
    mov ax, word [bp - 0x0004]       ; 0x1467
    cwd                              ; 0x146a
    idiv word [bp + 0x14]            ; 0x146b
    mov word [bp - 0x000a], ax       ; 0x146e
    mov ax, word [bp - 0x01ac]       ; 0x1471
    dec ax                           ; 0x1475
    cwd                              ; 0x1476
    idiv word [bp + 0x14]            ; 0x1477
    inc ax                           ; 0x147a
    imul word [bp + 0x14]            ; 0x147b
    mov word [bp - 0x000c], ax       ; 0x147e
    mov ax, word [bp - 0x01ae]       ; 0x1481
    jmp near @..math_loc_111b.l40    ; 0x1485
@..math_loc_111b.l20:
    mov ax, word [bp - 0x0004]       ; 0x1488
    add ax, word [bp + 0x14]         ; 0x148b
    dec ax                           ; 0x148e
    cwd                              ; 0x148f
    idiv word [bp + 0x14]            ; 0x1490
    mov ax, dx                       ; 0x1493
    push ax                          ; 0x1495
    mov ax, word [bp - 0x000a]       ; 0x1496
    imul word [bp + 0x14]            ; 0x1499
    mov cx, ax                       ; 0x149c
    pop ax                           ; 0x149e
    add ax, cx                       ; 0x149f
    mov word [bp - 0x0004], ax       ; 0x14a1
    cmp word [bp + 0x16], byte 0     ; 0x14a4
    je short @..math_loc_111b.l21    ; 0x14a8
    mov ax, word [bp - 0x0004]       ; 0x14aa
    shl ax, 1                        ; 0x14ad
    mov si, ax                       ; 0x14af
    mov bx, word [bp + 0x1a]         ; 0x14b1
    cmp word [bx + si], byte 1       ; 0x14b4
    jne short @..math_loc_111b.l20   ; 0x14b7
@..math_loc_111b.l21:
    cmp word [bp + 0x16], byte 0     ; 0x14b9
    jne short @..math_loc_111b.l22   ; 0x14bd
    mov ax, word [bp - 0x0004]       ; 0x14bf
    cmp ax, word [bp - 0x0002]       ; 0x14c2
    jge short @..math_loc_111b.l20   ; 0x14c5
@..math_loc_111b.l22:
    jmp near @..math_loc_111b.l44    ; 0x14c7
@..math_loc_111b.l23:
    mov ax, word [bp - 0x0004]       ; 0x14ca
    inc ax                           ; 0x14cd
    cwd                              ; 0x14ce
    idiv word [bp + 0x14]            ; 0x14cf
    mov ax, dx                       ; 0x14d2
    push ax                          ; 0x14d4
    mov ax, word [bp - 0x000a]       ; 0x14d5
    imul word [bp + 0x14]            ; 0x14d8
    mov cx, ax                       ; 0x14db
    pop ax                           ; 0x14dd
    add ax, cx                       ; 0x14de
    mov word [bp - 0x0004], ax       ; 0x14e0
    cmp word [bp + 0x16], byte 0     ; 0x14e3
    je short @..math_loc_111b.l24    ; 0x14e7
    mov ax, word [bp - 0x0004]       ; 0x14e9
    shl ax, 1                        ; 0x14ec
    mov si, ax                       ; 0x14ee
    mov bx, word [bp + 0x1a]         ; 0x14f0
    cmp word [bx + si], byte 1       ; 0x14f3
    jne short @..math_loc_111b.l23   ; 0x14f6
@..math_loc_111b.l24:
    cmp word [bp + 0x16], byte 0     ; 0x14f8
    jne short @..math_loc_111b.l25   ; 0x14fc
    mov ax, word [bp - 0x0004]       ; 0x14fe
    cmp ax, word [bp - 0x0002]       ; 0x1501
    jge short @..math_loc_111b.l23   ; 0x1504
@..math_loc_111b.l25:
    jmp near @..math_loc_111b.l44    ; 0x1506
@..math_loc_111b.l26:
    mov ax, word [bp - 0x0004]       ; 0x1509
    sub ax, word [bp + 0x14]         ; 0x150c
    add ax, word [bp - 0x000c]       ; 0x150f
    cwd                              ; 0x1512
    idiv word [bp - 0x000c]          ; 0x1513
    mov word [bp - 0x0004], dx       ; 0x1516
    mov ax, dx                       ; 0x1519
    cwd                              ; 0x151b
    idiv word [bp + 0x14]            ; 0x151c
    mov word [bp - 0x000a], ax       ; 0x151f
    mov word [bp - 0x01b0], 0        ; 0x1522
@..math_loc_111b.l27:
    mov ax, word [bp - 0x01b0]       ; 0x1528
    cmp ax, word [bp + 0x14]         ; 0x152c
    jge short @..math_loc_111b.l30   ; 0x152f
    cmp word [bp + 0x16], byte 0     ; 0x1531
    je short @..math_loc_111b.l28    ; 0x1535
    mov ax, word [bp - 0x0004]       ; 0x1537
    shl ax, 1                        ; 0x153a
    mov si, ax                       ; 0x153c
    mov bx, word [bp + 0x1a]         ; 0x153e
    cmp word [bx + si], byte 1       ; 0x1541
    jne short @..math_loc_111b.l29   ; 0x1544
@..math_loc_111b.l28:
    cmp word [bp + 0x16], byte 0     ; 0x1546
    jne short @..math_loc_111b.l30   ; 0x154a
    mov ax, word [bp - 0x0004]       ; 0x154c
    cmp ax, word [bp - 0x0002]       ; 0x154f
    jl short @..math_loc_111b.l30    ; 0x1552
@..math_loc_111b.l29:
    mov ax, word [bp - 0x0004]       ; 0x1554
    add ax, word [bp + 0x14]         ; 0x1557
    dec ax                           ; 0x155a
    cwd                              ; 0x155b
    idiv word [bp + 0x14]            ; 0x155c
    mov ax, dx                       ; 0x155f
    push ax                          ; 0x1561
    mov ax, word [bp - 0x000a]       ; 0x1562
    imul word [bp + 0x14]            ; 0x1565
    mov cx, ax                       ; 0x1568
    pop ax                           ; 0x156a
    add ax, cx                       ; 0x156b
    mov word [bp - 0x0004], ax       ; 0x156d
    inc word [bp - 0x01b0]           ; 0x1570
    jmp short @..math_loc_111b.l27   ; 0x1574
@..math_loc_111b.l30:
    cmp word [bp + 0x16], byte 0     ; 0x1576
    je short @..math_loc_111b.l31    ; 0x157a
    mov ax, word [bp - 0x0004]       ; 0x157c
    shl ax, 1                        ; 0x157f
    mov si, ax                       ; 0x1581
    mov bx, word [bp + 0x1a]         ; 0x1583
    cmp word [bx + si], byte 1       ; 0x1586
    je short @..math_loc_111b.l31    ; 0x1589
    jmp near @..math_loc_111b.l26    ; 0x158b
@..math_loc_111b.l31:
    cmp word [bp + 0x16], byte 0     ; 0x158e
    jne short @..math_loc_111b.l32   ; 0x1592
    mov ax, word [bp - 0x0004]       ; 0x1594
    cmp ax, word [bp - 0x0002]       ; 0x1597
    jl short @..math_loc_111b.l32    ; 0x159a
    jmp near @..math_loc_111b.l26    ; 0x159c
@..math_loc_111b.l32:
    jmp near @..math_loc_111b.l44    ; 0x159f
@..math_loc_111b.l33:
    mov ax, word [bp - 0x0004]       ; 0x15a2
    add ax, word [bp + 0x14]         ; 0x15a5
    cwd                              ; 0x15a8
    idiv word [bp - 0x000c]          ; 0x15a9
    mov word [bp - 0x0004], dx       ; 0x15ac
    mov ax, dx                       ; 0x15af
    cwd                              ; 0x15b1
    idiv word [bp + 0x14]            ; 0x15b2
    mov word [bp - 0x000a], ax       ; 0x15b5
    mov word [bp - 0x01b0], 0        ; 0x15b8
@..math_loc_111b.l34:
    mov ax, word [bp - 0x01b0]       ; 0x15be
    cmp ax, word [bp + 0x14]         ; 0x15c2
    jge short @..math_loc_111b.l37   ; 0x15c5
    cmp word [bp + 0x16], byte 0     ; 0x15c7
    je short @..math_loc_111b.l35    ; 0x15cb
    mov ax, word [bp - 0x0004]       ; 0x15cd
    shl ax, 1                        ; 0x15d0
    mov si, ax                       ; 0x15d2
    mov bx, word [bp + 0x1a]         ; 0x15d4
    cmp word [bx + si], byte 1       ; 0x15d7
    jne short @..math_loc_111b.l36   ; 0x15da
@..math_loc_111b.l35:
    cmp word [bp + 0x16], byte 0     ; 0x15dc
    jne short @..math_loc_111b.l37   ; 0x15e0
    mov ax, word [bp - 0x0004]       ; 0x15e2
    cmp ax, word [bp - 0x0002]       ; 0x15e5
    jl short @..math_loc_111b.l37    ; 0x15e8
@..math_loc_111b.l36:
    mov ax, word [bp - 0x0004]       ; 0x15ea
    inc ax                           ; 0x15ed
    cwd                              ; 0x15ee
    idiv word [bp + 0x14]            ; 0x15ef
    mov ax, dx                       ; 0x15f2
    push ax                          ; 0x15f4
    mov ax, word [bp - 0x000a]       ; 0x15f5
    imul word [bp + 0x14]            ; 0x15f8
    mov cx, ax                       ; 0x15fb
    pop ax                           ; 0x15fd
    add ax, cx                       ; 0x15fe
    mov word [bp - 0x0004], ax       ; 0x1600
    inc word [bp - 0x01b0]           ; 0x1603
    jmp short @..math_loc_111b.l34   ; 0x1607
@..math_loc_111b.l37:
    cmp word [bp + 0x16], byte 0     ; 0x1609
    je short @..math_loc_111b.l38    ; 0x160d
    mov ax, word [bp - 0x0004]       ; 0x160f
    shl ax, 1                        ; 0x1612
    mov si, ax                       ; 0x1614
    mov bx, word [bp + 0x1a]         ; 0x1616
    cmp word [bx + si], byte 1       ; 0x1619
    jne short @..math_loc_111b.l33   ; 0x161c
@..math_loc_111b.l38:
    cmp word [bp + 0x16], byte 0     ; 0x161e
    jne short @..math_loc_111b.l39   ; 0x1622
    mov ax, word [bp - 0x0004]       ; 0x1624
    cmp ax, word [bp - 0x0002]       ; 0x1627
    jl short @..math_loc_111b.l39    ; 0x162a
    jmp near @..math_loc_111b.l33    ; 0x162c
@..math_loc_111b.l39:
    jmp short @..math_loc_111b.l44   ; 0x162f
@..math_loc_111b.l40:
    cmp ax, strict word 8            ; 0x1631
    jne short @..math_loc_111b.l41   ; 0x1634
    jmp near @..math_loc_111b.l26    ; 0x1636
@..math_loc_111b.l41:
    cmp ax, strict word 9            ; 0x1639
    jne short @..math_loc_111b.l42   ; 0x163c
    jmp near @..math_loc_111b.l20    ; 0x163e
@..math_loc_111b.l42:
    cmp ax, strict word 0xa          ; 0x1641
    jne short @..math_loc_111b.l43   ; 0x1644
    jmp near @..math_loc_111b.l33    ; 0x1646
@..math_loc_111b.l43:
    cmp ax, strict word 0xb          ; 0x1649
    jne short @..math_loc_111b.l44   ; 0x164c
    jmp near @..math_loc_111b.l23    ; 0x164e
@..math_loc_111b.l44:
    cmp word [bp - 0x01ae], byte 0x0d ; 0x1651
    je short @..math_loc_111b.l45    ; 0x1656
    jmp near @..math_loc_111b.l14    ; 0x1658
@..math_loc_111b.l45:
    inc word [bp - 0x0004]           ; 0x165b
    push word [bp + 0x6]             ; 0x165e
    call loc_02af                    ; 0x1661
    pop cx                           ; 0x1664
@..math_loc_111b.l46:
    dec word [bp - 0x0004]           ; 0x1665
    mov ax, word [bp - 0x0004]       ; 0x1668
    cmp ax, word [bp - 0x0002]       ; 0x166b
    jl short @..math_loc_111b.l47    ; 0x166e
    mov ax, 0                        ; 0x1670
    mov cx, word [bp - 0x0004]       ; 0x1673
    sub cx, word [bp - 0x0002]       ; 0x1676
    sub ax, cx                       ; 0x1679
    dec ax                           ; 0x167b
    ret                              ; 0x167c
@..math_loc_111b.l47:
    mov ax, word [bp - 0x0004]       ; 0x167d
    cmp word [bp + 0x16], byte 0     ; 0x1680
    je short @..math_loc_111b.l48    ; 0x1684
    shl ax, 1                        ; 0x1686
    mov bx, ax                       ; 0x1688
    add bx, bp                       ; 0x168a
    mov ax, word [bx - 0x002e]       ; 0x168c
@..math_loc_111b.l48:
    mov word [bp - 0x0008], ax       ; 0x168f
    mov ax, word [bp + 0xa]          ; 0x1692
    mov cx, word [bp - 0x0008]       ; 0x1695
    cmp cx, word [bp - 0x0010]       ; 0x1698
    jge short @..math_loc_111b.l49   ; 0x169b
    mov ax, word [bp + 0x8]          ; 0x169d
@..math_loc_111b.l49:
    mov word [bp - 0x0006], ax       ; 0x16a0
    mov ax, cx                       ; 0x16a3
    cwd                              ; 0x16a5
    idiv word [bp - 0x0010]          ; 0x16a6
    mov ax, dx                       ; 0x16a9
    cwd                              ; 0x16ab
    idiv word [bp + 0x14]            ; 0x16ac
    imul word [bp + 0x10]            ; 0x16af
    mov word [bp - 0x000a], ax       ; 0x16b2
    mov ax, cx                       ; 0x16b5
    cwd                              ; 0x16b7
    idiv word [bp - 0x0010]          ; 0x16b8
    mov ax, dx                       ; 0x16bb
    cwd                              ; 0x16bd
    idiv word [bp + 0x14]            ; 0x16be
    mov ax, dx                       ; 0x16c1
    imul word [bp + 0x12]            ; 0x16c3
    mov word [bp - 0x000c], ax       ; 0x16c6
    add ax, word [bp + 0xc]          ; 0x16c9
    add ax, strict word 6            ; 0x16cc
    push ax                          ; 0x16cf
    mov ax, 6                        ; 0x16d0
    imul word [bp + 0xe]             ; 0x16d3
    add ax, word [bp - 0x0006]       ; 0x16d6
    add ax, word [bp - 0x000a]       ; 0x16d9
    push ax                          ; 0x16dc
    mov ax, word [bp - 0x000c]       ; 0x16dd
    add ax, word [bp + 0xc]          ; 0x16e0
    push ax                          ; 0x16e3
    mov ax, word [bp - 0x0006]       ; 0x16e4
    add ax, word [bp - 0x000a]       ; 0x16e7
    push ax                          ; 0x16ea
    call ds_dispatch_e90e            ; 0x16eb
    add sp, byte 8                   ; 0x16ee
    mov ax, word [bp - 0x000c]       ; 0x16f1
    add ax, word [bp + 0xc]          ; 0x16f4
    add ax, strict word 6            ; 0x16f7
    push ax                          ; 0x16fa
    mov ax, 6                        ; 0x16fb
    imul word [bp + 0xe]             ; 0x16fe
    add ax, word [bp - 0x0006]       ; 0x1701
    add ax, word [bp - 0x000a]       ; 0x1704
    push ax                          ; 0x1707
    mov ax, word [bp - 0x000c]       ; 0x1708
    add ax, word [bp + 0xc]          ; 0x170b
    push ax                          ; 0x170e
    mov ax, word [bp - 0x0006]       ; 0x170f
    add ax, word [bp - 0x000a]       ; 0x1712
    push ax                          ; 0x1715
    call ds_dispatch_e8da            ; 0x1716
    add sp, byte 8                   ; 0x1719
    mov ax, 0x19                     ; 0x171c
    push ax                          ; 0x171f
    call ds_dispatch_e489            ; 0x1720
    pop cx                           ; 0x1723
    mov ax, word [bp + 0xc]          ; 0x1724
    add ax, word [bp - 0x000c]       ; 0x1727
    add ax, strict word 6            ; 0x172a
    push ax                          ; 0x172d
    mov ax, 6                        ; 0x172e
    imul word [bp + 0xe]             ; 0x1731
    add ax, word [bp - 0x0006]       ; 0x1734
    add ax, word [bp - 0x000a]       ; 0x1737
    push ax                          ; 0x173a
    mov ax, word [bp + 0xc]          ; 0x173b
    add ax, word [bp - 0x000c]       ; 0x173e
    push ax                          ; 0x1741
    mov ax, word [bp - 0x0006]       ; 0x1742
    add ax, word [bp - 0x000a]       ; 0x1745
    push ax                          ; 0x1748
    call ds_dispatch_e90e            ; 0x1749
    add sp, byte 8                   ; 0x174c
    mov ax, word [bp + 0xc]          ; 0x174f
    add ax, word [bp - 0x000c]       ; 0x1752
    add ax, strict word 6            ; 0x1755
    push ax                          ; 0x1758
    mov ax, 6                        ; 0x1759
    imul word [bp + 0xe]             ; 0x175c
    add ax, word [bp - 0x0006]       ; 0x175f
    add ax, word [bp - 0x000a]       ; 0x1762
    push ax                          ; 0x1765
    mov ax, word [bp + 0xc]          ; 0x1766
    add ax, word [bp - 0x000c]       ; 0x1769
    push ax                          ; 0x176c
    mov ax, word [bp - 0x0006]       ; 0x176d
    add ax, word [bp - 0x000a]       ; 0x1770
    push ax                          ; 0x1773
    call ds_dispatch_e8da            ; 0x1774
    add sp, byte 8                   ; 0x1777
    mov ax, word [bp - 0x0004]       ; 0x177a
    mov word [data_9052], ax         ; 0x177d
    shl ax, 1                        ; 0x1780
    mov bx, ax                       ; 0x1782
    add bx, bp                       ; 0x1784
    mov ax, word [bx - 0x002e]       ; 0x1786
    ret                              ; 0x1789
%include "vpops/api_idx_000c.asm"

%include "vpops/api_idx_000c_2.asm"

%include "vpops/api_idx_0002.asm"

%include "vpops/api_idx_0004_2.asm"

%include "vpops/api_idx_000a_3.asm"

%include "vpops/math_loc_1a4b.asm"

loc_1ad7:
    mov ax, 0                        ; 0x1ad7
    call ds_dispatch_f40b            ; 0x1ada
    mov ax, word [bp + 0x6]          ; 0x1add
    add ax, strict word 6            ; 0x1ae0
    push ax                          ; 0x1ae3
    mov ax, word [bp + 0x4]          ; 0x1ae4
    add ax, strict word 0x14         ; 0x1ae7
    push ax                          ; 0x1aea
    push word [bp + 0x6]             ; 0x1aeb
    push word [bp + 0x4]             ; 0x1aee
    call ds_dispatch_bd98            ; 0x1af1
    add sp, byte 8                   ; 0x1af4
    mov ax, word [bp + 0x8]          ; 0x1af7
    shl ax, 1                        ; 0x1afa
    shl ax, 1                        ; 0x1afc
    mov bx, ax                       ; 0x1afe
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x1b04
    add ax, strict word 6            ; 0x1b07
    push ax                          ; 0x1b0a
    mov ax, word [bp + 0x4]          ; 0x1b0b
    add ax, strict word 0x14         ; 0x1b0e
    push ax                          ; 0x1b11
    push word [bp + 0x6]             ; 0x1b12
    push word [bp + 0x4]             ; 0x1b15
    call ds_dispatch_e901            ; 0x1b18
    add sp, byte 0x0a                ; 0x1b1b
    mov ax, word [bp + 0x6]          ; 0x1b1e
    inc ax                           ; 0x1b21
    push ax                          ; 0x1b22
    mov ax, word [bp + 0x4]          ; 0x1b23
    inc ax                           ; 0x1b26
    inc ax                           ; 0x1b27
    push ax                          ; 0x1b28
    call ds_dispatch_e809            ; 0x1b29
    add sp, byte 4                   ; 0x1b2c
    cmp word [bp + 0xa], byte 0      ; 0x1b2f
    jle short @..local.l16           ; 0x1b33
    mov ax, word [bp + 0xa]          ; 0x1b35
    cmp ax, word [bp + 0xc]          ; 0x1b38
    jg short @..local.l16            ; 0x1b3b
    mov ax, 0                        ; 0x1b3d
    push ax                          ; 0x1b40
    mov ax, 1                        ; 0x1b41
    push ax                          ; 0x1b44
    call ds_dispatch_e823            ; 0x1b45
    add sp, byte 4                   ; 0x1b48
    mov ax, 0                        ; 0x1b4b
    push ax                          ; 0x1b4e
    mov ax, 3                        ; 0x1b4f
    push ax                          ; 0x1b52
    push word [bp + 0xa]             ; 0x1b53
    call ds_dispatch_b2e7            ; 0x1b56
    add sp, byte 6                   ; 0x1b59
    jmp short @..local.l17           ; 0x1b5c
@..local.l16:
    mov ax, 0                        ; 0x1b5e
    push ax                          ; 0x1b61
    push ax                          ; 0x1b62
    call ds_dispatch_e823            ; 0x1b63
    add sp, byte 4                   ; 0x1b66
    mov ax, 0                        ; 0x1b69
    push ax                          ; 0x1b6c
    mov ax, 0x90bb                   ; 0x1b6d
    push ax                          ; 0x1b70
    call ds_dispatch_e84e            ; 0x1b71
    add sp, byte 4                   ; 0x1b74
@..local.l17:
    ret                              ; 0x1b77
%include "vpops/api_idx_000c_3.asm"

loc_1c11:
    mov ax, 0                        ; 0x1c11
    call ds_dispatch_f40b            ; 0x1c14
    les bx, word [data_0002]         ; 0x1c17
    mov ax, word [es:bx]             ; 0x1c1b
    mov dx, word [es:bx + 0x2]       ; 0x1c1e
    mov word [data_9090], dx         ; 0x1c22
    mov word [data_908e], ax         ; 0x1c26
    mov ax, word [data_908e]         ; 0x1c29
    mov dx, word [data_9090]         ; 0x1c2c
    sub ax, word [data_908a]         ; 0x1c30
    sbb dx, word [data_908c]         ; 0x1c34
    mov word [data_9094], dx         ; 0x1c38
    mov word [data_9092], ax         ; 0x1c3c
    mov ax, word [data_90d6]         ; 0x1c3f
    cwd                              ; 0x1c42
    mov cx, ax                       ; 0x1c43
    mov bx, dx                       ; 0x1c45
    mov ax, word [data_9092]         ; 0x1c47
    mov dx, word [data_9094]         ; 0x1c4a
    cmp bx, dx                       ; 0x1c4e
    jg short @..local.l18            ; 0x1c50
    jne short @..local.l19           ; 0x1c52
    cmp cx, ax                       ; 0x1c54
    jbe short @..local.l19           ; 0x1c56
@..local.l18:
    jmp short @..local.l20           ; 0x1c58
@..local.l19:
    mov ax, word [data_908e]         ; 0x1c5a
    mov dx, word [data_9090]         ; 0x1c5d
    mov word [data_908c], dx         ; 0x1c61
    mov word [data_908a], ax         ; 0x1c65
    call api_idx_000a_3              ; 0x1c68
    push word [bp + 0x4]             ; 0x1c6b
    call api_idx_000c_3              ; 0x1c6e
    pop cx                           ; 0x1c71
    push word [bp + 0x6]             ; 0x1c72
    call api_idx_0002                ; 0x1c75
    pop cx                           ; 0x1c78
    mov ax, 1                        ; 0x1c79
    push ax                          ; 0x1c7c
    mov ax, 0x73                     ; 0x1c7d
    push ax                          ; 0x1c80
    mov ax, 0x32                     ; 0x1c81
    push ax                          ; 0x1c84
    call api_idx_000c_2              ; 0x1c85
    add sp, byte 6                   ; 0x1c88
    mov ax, 0xc5                     ; 0x1c8b
    push ax                          ; 0x1c8e
    mov ax, 0x93                     ; 0x1c8f
    push ax                          ; 0x1c92
    mov ax, 0x73                     ; 0x1c93
    push ax                          ; 0x1c96
    mov ax, 0x32                     ; 0x1c97
    push ax                          ; 0x1c9a
    call ds_dispatch_e8da            ; 0x1c9b
    add sp, byte 8                   ; 0x1c9e
@..local.l20:
    ret                              ; 0x1ca1
%include "vpops/api_idx_0044.asm"

    mov ax, word [bp - 0x000c]       ; 0x1ea1
    add ax, strict word 0x6a         ; 0x1ea4
    push ax                          ; 0x1ea7
    call ds_dispatch_bfd8            ; 0x1ea8
    add sp, byte 0x0a                ; 0x1eab
    mov ax, 0                        ; 0x1eae
    push ax                          ; 0x1eb1
    push ax                          ; 0x1eb2
    mov ax, word [bp - 0x0006]       ; 0x1eb3
    add ax, word [bp - 0x0012]       ; 0x1eb6
    add ax, strict word 0x2e         ; 0x1eb9
    push ax                          ; 0x1ebc
    mov ax, word [bp - 0x000c]       ; 0x1ebd
    add ax, strict word 0x72         ; 0x1ec0
    push ax                          ; 0x1ec3
    mov ax, word [bp - 0x0006]       ; 0x1ec4
    add ax, word [bp - 0x0012]       ; 0x1ec7
    add ax, strict word 0x2a         ; 0x1eca
    push ax                          ; 0x1ecd
    mov ax, word [bp - 0x000c]       ; 0x1ece
    add ax, strict word 0x6a         ; 0x1ed1
    push ax                          ; 0x1ed4
    mov ax, 0                        ; 0x1ed5
    push ax                          ; 0x1ed8
    call ds_dispatch_baa6            ; 0x1ed9
    add sp, byte 0x0e                ; 0x1edc
    mov ax, 0                        ; 0x1edf
    push ax                          ; 0x1ee2
    mov ax, 9                        ; 0x1ee3
    push ax                          ; 0x1ee6
    mov ax, word [bp - 0x0006]       ; 0x1ee7
    add ax, strict word 0x28         ; 0x1eea
    push ax                          ; 0x1eed
    mov ax, word [bp - 0x000c]       ; 0x1eee
    add ax, strict word 0x72         ; 0x1ef1
    push ax                          ; 0x1ef4
    mov ax, word [bp - 0x0006]       ; 0x1ef5
    add ax, strict word 0x22         ; 0x1ef8
    push ax                          ; 0x1efb
    mov ax, word [bp - 0x000c]       ; 0x1efc
    add ax, strict word 0x6a         ; 0x1eff
    push ax                          ; 0x1f02
    mov ax, 1                        ; 0x1f03
    push ax                          ; 0x1f06
    call ds_dispatch_baa6            ; 0x1f07
    add sp, byte 0x0e                ; 0x1f0a
    mov ax, 0                        ; 0x1f0d
    push ax                          ; 0x1f10
    mov ax, 0xb                      ; 0x1f11
    push ax                          ; 0x1f14
    mov ax, word [bp - 0x0006]       ; 0x1f15
    add ax, strict word 0x4c         ; 0x1f18
    push ax                          ; 0x1f1b
    mov ax, word [bp - 0x000c]       ; 0x1f1c
    add ax, strict word 0x72         ; 0x1f1f
    push ax                          ; 0x1f22
    mov ax, word [bp - 0x0006]       ; 0x1f23
    add ax, strict word 0x46         ; 0x1f26
    push ax                          ; 0x1f29
    mov ax, word [bp - 0x000c]       ; 0x1f2a
    add ax, strict word 0x6a         ; 0x1f2d
    push ax                          ; 0x1f30
    mov ax, data_0002                ; 0x1f31
    push ax                          ; 0x1f34
    call ds_dispatch_baa6            ; 0x1f35
    add sp, byte 0x0e                ; 0x1f38
    mov ax, 0                        ; 0x1f3b
    push ax                          ; 0x1f3e
    mov ax, 0xd                      ; 0x1f3f
    push ax                          ; 0x1f42
    mov ax, word [bp - 0x0006]       ; 0x1f43
    add ax, strict word 0xe          ; 0x1f46
    push ax                          ; 0x1f49
    mov ax, word [bp - 0x000c]       ; 0x1f4a
    add ax, strict word 0x36         ; 0x1f4d
    push ax                          ; 0x1f50
    mov ax, word [bp - 0x0006]       ; 0x1f51
    add ax, strict word 6            ; 0x1f54
    push ax                          ; 0x1f57
    mov ax, word [bp - 0x000c]       ; 0x1f58
    add ax, strict word 6            ; 0x1f5b
    push ax                          ; 0x1f5e
    mov ax, 3                        ; 0x1f5f
    push ax                          ; 0x1f62
    call ds_dispatch_baa6            ; 0x1f63
    add sp, byte 0x0e                ; 0x1f66
    mov ax, 0                        ; 0x1f69
    push ax                          ; 0x1f6c
    mov ax, 0x1b                     ; 0x1f6d
    push ax                          ; 0x1f70
    mov ax, word [bp - 0x0006]       ; 0x1f71
    add ax, strict word 0xe          ; 0x1f74
    push ax                          ; 0x1f77
    mov ax, word [bp - 0x000c]       ; 0x1f78
    add ax, strict word 0x72         ; 0x1f7b
    push ax                          ; 0x1f7e
    mov ax, word [bp - 0x0006]       ; 0x1f7f
    add ax, strict word 6            ; 0x1f82
    push ax                          ; 0x1f85
    mov ax, word [bp - 0x000c]       ; 0x1f86
    add ax, strict word 0x42         ; 0x1f89
    push ax                          ; 0x1f8c
    mov ax, 4                        ; 0x1f8d
    push ax                          ; 0x1f90
    call ds_dispatch_baa6            ; 0x1f91
    add sp, byte 0x0e                ; 0x1f94
    mov word [bp - 0x0002], 0        ; 0x1f97
@..api_idx_0044.l5:
    mov ax, 0                        ; 0x1f9c
    push ax                          ; 0x1f9f
    mov ax, word [bp - 0x0002]       ; 0x1fa0
    add ax, strict word 0x31         ; 0x1fa3
    cbw                              ; 0x1fa6
    push ax                          ; 0x1fa7
    mov ax, word [bp - 0x0006]       ; 0x1fa8
    add ax, strict word 0x1b         ; 0x1fab
    push ax                          ; 0x1fae
    mov ax, 0xa                      ; 0x1faf
    imul word [bp - 0x0002]          ; 0x1fb2
    add ax, word [bp - 0x000c]       ; 0x1fb5
    add ax, strict word 0x13         ; 0x1fb8
    push ax                          ; 0x1fbb
    mov ax, word [bp - 0x0006]       ; 0x1fbc
    add ax, strict word 0x14         ; 0x1fbf
    push ax                          ; 0x1fc2
    mov ax, 0xa                      ; 0x1fc3
    imul word [bp - 0x0002]          ; 0x1fc6
    add ax, word [bp - 0x000c]       ; 0x1fc9
    add ax, strict word 0xc          ; 0x1fcc
    push ax                          ; 0x1fcf
    mov ax, word [bp - 0x0002]       ; 0x1fd0
    add ax, strict word 5            ; 0x1fd3
    push ax                          ; 0x1fd6
    call ds_dispatch_baa6            ; 0x1fd7
    add sp, byte 0x0e                ; 0x1fda
    inc word [bp - 0x0002]           ; 0x1fdd
    mov ax, word [bp - 0x0002]       ; 0x1fe0
    cmp ax, strict word 7            ; 0x1fe3
    jl short @..api_idx_0044.l5      ; 0x1fe6
    mov ax, 0                        ; 0x1fe8
    push ax                          ; 0x1feb
    mov ax, 0x46                     ; 0x1fec
    push ax                          ; 0x1fef
    mov ax, 0x87                     ; 0x1ff0
    push ax                          ; 0x1ff3
    mov ax, 0x52                     ; 0x1ff4
    push ax                          ; 0x1ff7
    mov ax, 0x74                     ; 0x1ff8
    push ax                          ; 0x1ffb
    mov ax, 0x46                     ; 0x1ffc
    push ax                          ; 0x1fff
    mov ax, 0xc                      ; 0x2000
    push ax                          ; 0x2003
    call ds_dispatch_baa6            ; 0x2004
    add sp, byte 0x0e                ; 0x2007
    mov ax, 0                        ; 0x200a
    push ax                          ; 0x200d
    mov ax, 0x57                     ; 0x200e
    push ax                          ; 0x2011
    mov ax, 0x9d                     ; 0x2012
    push ax                          ; 0x2015
    mov ax, 0x4b                     ; 0x2016
    push ax                          ; 0x2019
    mov ax, 0x90                     ; 0x201a
    push ax                          ; 0x201d
    mov ax, 0x32                     ; 0x201e
    push ax                          ; 0x2021
    mov ax, 0xd                      ; 0x2022
    push ax                          ; 0x2025
    call ds_dispatch_baa6            ; 0x2026
    add sp, byte 0x0e                ; 0x2029
    mov ax, 0                        ; 0x202c
    push ax                          ; 0x202f
    mov ax, 0x41                     ; 0x2030
    push ax                          ; 0x2033
    mov ax, 0xbb                     ; 0x2034
    push ax                          ; 0x2037
    mov ax, 0x5f                     ; 0x2038
    push ax                          ; 0x203b
    mov ax, 0xa5                     ; 0x203c
    push ax                          ; 0x203f
    mov ax, 0x43                     ; 0x2040
    push ax                          ; 0x2043
    mov ax, 0xe                      ; 0x2044
    push ax                          ; 0x2047
    call ds_dispatch_baa6            ; 0x2048
    add sp, byte 0x0e                ; 0x204b
    mov ax, 0                        ; 0x204e
    push ax                          ; 0x2051
    mov ax, 0x45                     ; 0x2052
    push ax                          ; 0x2055
    mov ax, 0x89                     ; 0x2056
    push ax                          ; 0x2059
    mov ax, 0x87                     ; 0x205a
    push ax                          ; 0x205d
    mov ax, 0x77                     ; 0x205e
    push ax                          ; 0x2061
    mov ax, 0x6c                     ; 0x2062
    push ax                          ; 0x2065
    mov ax, 0xf                      ; 0x2066
    push ax                          ; 0x2069
    call ds_dispatch_baa6            ; 0x206a
    add sp, byte 0x0e                ; 0x206d
    mov ax, 0                        ; 0x2070
    push ax                          ; 0x2073
    mov ax, 0x4d                     ; 0x2074
    push ax                          ; 0x2077
    mov ax, 0x9c                     ; 0x2078
    push ax                          ; 0x207b
    mov ax, 0x8e                     ; 0x207c
    push ax                          ; 0x207f
    mov ax, 0x91                     ; 0x2080
    push ax                          ; 0x2083
    mov ax, 0x7f                     ; 0x2084
    push ax                          ; 0x2087
    mov ax, 0x10                     ; 0x2088
    push ax                          ; 0x208b
    call ds_dispatch_baa6            ; 0x208c
    add sp, byte 0x0e                ; 0x208f
    mov ax, 0                        ; 0x2092
    push ax                          ; 0x2095
    mov ax, 0x44                     ; 0x2096
    push ax                          ; 0x2099
    mov ax, 0xb9                     ; 0x209a
    push ax                          ; 0x209d
    mov ax, 0x81                     ; 0x209e
    push ax                          ; 0x20a1
    mov ax, 0xa6                     ; 0x20a2
    push ax                          ; 0x20a5
    mov ax, 0x71                     ; 0x20a6
    push ax                          ; 0x20a9
    mov ax, 0x11                     ; 0x20aa
    push ax                          ; 0x20ad
    call ds_dispatch_baa6            ; 0x20ae
    add sp, byte 0x0e                ; 0x20b1
    mov ax, 7                        ; 0x20b4
    cmp word [bp - 0x0044], byte 7   ; 0x20b7
    jge short @..api_idx_0044.l6     ; 0x20bb
    mov ax, word [bp - 0x0044]       ; 0x20bd
@..api_idx_0044.l6:
    mov word [bp - 0x0020], ax       ; 0x20c0
    mov word [bp - 0x0002], 0        ; 0x20c3
@..api_idx_0044.l7:
    mov ax, 0                        ; 0x20c8
    push ax                          ; 0x20cb
    push ax                          ; 0x20cc
    mov ax, 6                        ; 0x20cd
    imul word [bp - 0x0002]          ; 0x20d0
    add ax, word [bp - 0x0006]       ; 0x20d3
    add ax, strict word 0x28         ; 0x20d6
    push ax                          ; 0x20d9
    mov ax, word [bp - 0x000c]       ; 0x20da
    add ax, strict word 0x62         ; 0x20dd
    push ax                          ; 0x20e0
    mov ax, 6                        ; 0x20e1
    imul word [bp - 0x0002]          ; 0x20e4
    add ax, word [bp - 0x0006]       ; 0x20e7
    add ax, strict word 0x22         ; 0x20ea
    push ax                          ; 0x20ed
    mov ax, word [bp - 0x000c]       ; 0x20ee
    add ax, strict word 6            ; 0x20f1
    push ax                          ; 0x20f4
    mov ax, word [bp - 0x0002]       ; 0x20f5
    add ax, strict word 0x12         ; 0x20f8
    push ax                          ; 0x20fb
    call ds_dispatch_baa6            ; 0x20fc
    add sp, byte 0x0e                ; 0x20ff
    inc word [bp - 0x0002]           ; 0x2102
    mov ax, word [bp - 0x0002]       ; 0x2105
    cmp ax, strict word 7            ; 0x2108
    jl short @..api_idx_0044.l7      ; 0x210b
    mov ax, 0                        ; 0x210d
    push ax                          ; 0x2110
    push ax                          ; 0x2111
    push ax                          ; 0x2112
    push ax                          ; 0x2113
    push ax                          ; 0x2114
    mov ax, 0xffff                   ; 0x2115
    push ax                          ; 0x2118
    mov ax, 0x19                     ; 0x2119
    push ax                          ; 0x211c
    call ds_dispatch_baa6            ; 0x211d
    add sp, byte 0x0e                ; 0x2120
    mov ax, word [bp - 0x000a]       ; 0x2123
    inc ax                           ; 0x2126
    push ax                          ; 0x2127
    mov ax, 0x139                    ; 0x2128
    push ax                          ; 0x212b
    mov ax, word [bp - 0x0006]       ; 0x212c
    dec ax                           ; 0x212f
    push ax                          ; 0x2130
    mov ax, 9                        ; 0x2131
    push ax                          ; 0x2134
    call ds_dispatch_e8da            ; 0x2135
    add sp, byte 8                   ; 0x2138
    mov word [data_90d6], 5          ; 0x213b
    les bx, word [data_0002]         ; 0x2141
    mov ax, word [es:bx]             ; 0x2145
    mov dx, word [es:bx + 0x2]       ; 0x2148
    mov word [data_908c], dx         ; 0x214c
    mov word [data_908a], ax         ; 0x2150
    mov word [bp - 0x001c], 1        ; 0x2153
@..api_idx_0044.l8:
    push word [bp - 0x0042]          ; 0x2158
    push word [bp + 0x4]             ; 0x215b
    call loc_1c11                    ; 0x215e
    add sp, byte 4                   ; 0x2161
    mov ax, 0x59fe                   ; 0x2164
    push ax                          ; 0x2167
    call ds_dispatch_b90d            ; 0x2168
    pop cx                           ; 0x216b
    dec ax                           ; 0x216c
    mov word [bp - 0x001a], ax       ; 0x216d
    cmp word [data_59fc], byte 0     ; 0x2170
    je short @..api_idx_0044.l12     ; 0x2175
    mov ax, word [bp - 0x0022]       ; 0x2177
    cmp ax, word [bp - 0x0018]       ; 0x217a
    jl short @..api_idx_0044.l9      ; 0x217d
    inc word [bp - 0x0022]           ; 0x217f
@..api_idx_0044.l9:
    mov ax, word [bp - 0x0022]       ; 0x2182
    cmp ax, strict word 0xffff       ; 0x2185
    je short @..api_idx_0044.l10     ; 0x2188
    cmp ax, word [bp - 0x0018]       ; 0x218a
    jl short @..api_idx_0044.l10     ; 0x218d
    mov ax, word [bp - 0x0018]       ; 0x218f
    add ax, word [bp - 0x0020]       ; 0x2192
    mov cx, ax                       ; 0x2195
    dec ax                           ; 0x2197
    mov cx, ax                       ; 0x2198
    mov ax, word [bp - 0x0022]       ; 0x219a
    cmp cx, ax                       ; 0x219d
    jge short @..api_idx_0044.l11    ; 0x219f
@..api_idx_0044.l10:
    mov ax, word [bp - 0x0018]       ; 0x21a1
    mov word [bp - 0x0022], ax       ; 0x21a4
@..api_idx_0044.l11:
    mov word [data_5b3e], 1          ; 0x21a7
    mov ax, word [bp - 0x0022]       ; 0x21ad
    sub ax, word [bp - 0x0018]       ; 0x21b0
    add ax, strict word 0x12         ; 0x21b3
    mov word [bp - 0x001a], ax       ; 0x21b6
@..api_idx_0044.l12:
    cmp word [data_5b3e], byte 1     ; 0x21b9
    je short @..api_idx_0044.l13     ; 0x21be
    jmp near @..api_idx_0044.l37     ; 0x21c0
@..api_idx_0044.l13:
    mov ax, word [bp - 0x001a]       ; 0x21c3
    jmp near @..api_idx_0044.l35     ; 0x21c6

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x7f, 0xce, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0xd1, 0x95, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0x51, 0xce, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xa1, 0x95, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x28, 0x9d, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x4a, 0x9d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xe7, 0x97, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xf9, 0xc5, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x9f, 0x9b
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0x6e
    db 0x9b, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x3b, 0x94, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0xe8, 0x9b, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x0a, 0x9c, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xa7, 0x96, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xb9, 0xc4, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xca, 0x99, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xaa, 0x99, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x10, 0x93, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x71, 0x99, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0x51, 0x99, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..api_idx_0044.l14:
    cmp word [bp - 0x001a], byte 5   ; 0x251f
    jge short @..api_idx_0044.l15    ; 0x2523
    jmp near @..api_idx_0044.l23     ; 0x2525
@..api_idx_0044.l15:
    cmp word [bp - 0x001a], byte 0x0b ; 0x2528
    jle short @..api_idx_0044.l16    ; 0x252c
    jmp near @..api_idx_0044.l23     ; 0x252e
@..api_idx_0044.l16:
    mov ax, 0                        ; 0x2531
    push ax                          ; 0x2534
    push word [bp - 0x003e]          ; 0x2535
    mov ax, word [bp - 0x0006]       ; 0x2538
    add ax, strict word 0x14         ; 0x253b
    push ax                          ; 0x253e
    mov ax, word [bp - 0x000c]       ; 0x253f
    add ax, strict word 0xc          ; 0x2542
    push ax                          ; 0x2545
    call math_loc_1a4b               ; 0x2546
    add sp, byte 8                   ; 0x2549
    mov ax, word [bp - 0x001a]       ; 0x254c
    add ax, strict word 0xfffb       ; 0x254f
    mov word [bp - 0x003e], ax       ; 0x2552
    mov ax, 1                        ; 0x2555
    push ax                          ; 0x2558
    push word [bp - 0x003e]          ; 0x2559
    mov ax, word [bp - 0x0006]       ; 0x255c
    add ax, strict word 0x14         ; 0x255f
    push ax                          ; 0x2562
    mov ax, word [bp - 0x000c]       ; 0x2563
    add ax, strict word 0xc          ; 0x2566
    push ax                          ; 0x2569
    call math_loc_1a4b               ; 0x256a
    add sp, byte 8                   ; 0x256d
    cmp word [bp - 0x003c], byte 0   ; 0x2570
    jge short @..api_idx_0044.l17    ; 0x2574
    jmp near @..api_idx_0044.l21     ; 0x2576
@..api_idx_0044.l17:
    mov ax, 6                        ; 0x2579
    push ax                          ; 0x257c
    mov ax, 0                        ; 0x257d
    push ax                          ; 0x2580
    mov ax, 0x248                    ; 0x2581
    imul word [bp + 0x4]             ; 0x2584
    mov bx, ax                       ; 0x2587
    mov ax, word [bx + 0x5c18]       ; 0x2589
    push ax                          ; 0x258d
    mov ax, 6                        ; 0x258e
    imul word [bp - 0x003c]          ; 0x2591
    mov bx, ax                       ; 0x2594
    mov al, byte [bx + 0x621]        ; 0x2596
    sub ah, ah                       ; 0x259a
    mov cx, ax                       ; 0x259c
    pop ax                           ; 0x259e
    sub ax, cx                       ; 0x259f
    push ax                          ; 0x25a1
    call ds_dispatch_b7c2            ; 0x25a2
    add sp, byte 6                   ; 0x25a5
    mov word [bp - 0x0040], ax       ; 0x25a8
    mov ax, 6                        ; 0x25ab
    imul word [bp - 0x003c]          ; 0x25ae
    mov bx, ax                       ; 0x25b1
    mov al, byte [bx + 0x622]        ; 0x25b3
    sub ah, ah                       ; 0x25b7
    mov cx, word [bp - 0x0040]       ; 0x25b9
    inc cx                           ; 0x25bc
    imul cx                          ; 0x25bd
    mov word [bp - 0x0002], ax       ; 0x25bf
    cmp word [bp + 0xa], byte 0      ; 0x25c2
    jne short @..api_idx_0044.l18    ; 0x25c6
    mov ax, 0x3e7                    ; 0x25c8
    jmp short @..api_idx_0044.l20    ; 0x25cb
@..api_idx_0044.l18:
    mov ax, 0x248                    ; 0x25cd
    imul word [bp + 0x4]             ; 0x25d0
    mov cx, word [bp - 0x0042]       ; 0x25d3
    shl cx, 1                        ; 0x25d6
    shl cx, 1                        ; 0x25d8
    add ax, cx                       ; 0x25da
    mov bx, ax                       ; 0x25dc
    mov ax, word [bx + 0x5c1c]       ; 0x25de
    cmp ax, word [bp - 0x0002]       ; 0x25e2
    jge short @..api_idx_0044.l19    ; 0x25e5
    jmp short @..api_idx_0044.l20    ; 0x25e7
@..api_idx_0044.l19:
    mov ax, word [bp - 0x0002]       ; 0x25e9
@..api_idx_0044.l20:
    push ax                          ; 0x25ec
    mov ax, 6                        ; 0x25ed
    imul word [bp - 0x003c]          ; 0x25f0
    mov bx, ax                       ; 0x25f3
    mov al, byte [bx + 0x622]        ; 0x25f5
    sub ah, ah                       ; 0x25f9
    mov cx, word [bp - 0x003e]       ; 0x25fb
    inc cx                           ; 0x25fe
    imul cx                          ; 0x25ff
    push ax                          ; 0x2601
    push word [bp - 0x0042]          ; 0x2602
    mov ax, word [bp - 0x0006]       ; 0x2605
    add ax, strict word 0x15         ; 0x2608
    push ax                          ; 0x260b
    mov ax, word [bp - 0x000c]       ; 0x260c
    add ax, strict word 0x5e         ; 0x260f
    push ax                          ; 0x2612
    call loc_1ad7                    ; 0x2613
    add sp, byte 0x0a                ; 0x2616
    jmp short @..api_idx_0044.l22    ; 0x2619
@..api_idx_0044.l21:
    mov ax, 0                        ; 0x261b
    push ax                          ; 0x261e
    push ax                          ; 0x261f
    push word [bp - 0x0042]          ; 0x2620
    mov ax, word [bp - 0x0006]       ; 0x2623
    add ax, strict word 0x15         ; 0x2626
    push ax                          ; 0x2629
    mov ax, word [bp - 0x000c]       ; 0x262a
    add ax, strict word 0x5e         ; 0x262d
    push ax                          ; 0x2630
    call loc_1ad7                    ; 0x2631
    add sp, byte 0x0a                ; 0x2634
@..api_idx_0044.l22:
    mov ax, word [bp - 0x0006]       ; 0x2637
    add ax, strict word 0x1c         ; 0x263a
    push ax                          ; 0x263d
    mov ax, word [bp - 0x000c]       ; 0x263e
    add ax, strict word 0x56         ; 0x2641
    push ax                          ; 0x2644
    mov ax, word [bp - 0x0006]       ; 0x2645
    add ax, strict word 0x14         ; 0x2648
    push ax                          ; 0x264b
    mov ax, word [bp - 0x000c]       ; 0x264c
    add ax, strict word 0xb          ; 0x264f
    push ax                          ; 0x2652
    call ds_dispatch_e8da            ; 0x2653
    add sp, byte 8                   ; 0x2656
    mov ax, word [bp - 0x0006]       ; 0x2659
    add ax, strict word 0x1b         ; 0x265c
    push ax                          ; 0x265f
    mov ax, word [bp - 0x000c]       ; 0x2660
    add ax, strict word 0x72         ; 0x2663
    push ax                          ; 0x2666
    mov ax, word [bp - 0x0006]       ; 0x2667
    add ax, strict word 0x15         ; 0x266a
    push ax                          ; 0x266d
    mov ax, word [bp - 0x000c]       ; 0x266e
    add ax, strict word 0x5e         ; 0x2671
    push ax                          ; 0x2674
    call ds_dispatch_e8da            ; 0x2675
    add sp, byte 8                   ; 0x2678
    jmp near @..api_idx_0044.l34     ; 0x267b
@..api_idx_0044.l23:
    cmp word [bp - 0x001a], byte 0x0c ; 0x267e
    jge short @..api_idx_0044.l24    ; 0x2682
    jmp near @..api_idx_0044.l28     ; 0x2684
@..api_idx_0044.l24:
    cmp word [bp - 0x001a], byte 0x11 ; 0x2687
    jle short @..api_idx_0044.l25    ; 0x268b
    jmp near @..api_idx_0044.l28     ; 0x268d
@..api_idx_0044.l25:
    mov ax, word [bp - 0x001a]       ; 0x2690
    add ax, strict word 0xfff4       ; 0x2693
    mov word [bp - 0x0042], ax       ; 0x2696
    mov word [bp - 0x003c], 0xffff   ; 0x2699
    push ax                          ; 0x269e
    push word [bp + 0x4]             ; 0x269f
    call api_idx_0004_2              ; 0x26a2
    add sp, byte 4                   ; 0x26a5
    mov word [bp - 0x0044], ax       ; 0x26a8
    mov ax, 7                        ; 0x26ab
    cmp word [bp - 0x0044], byte 7   ; 0x26ae
    jge short @..api_idx_0044.l26    ; 0x26b2
    mov ax, word [bp - 0x0044]       ; 0x26b4
@..api_idx_0044.l26:
    mov word [bp - 0x0024], ax       ; 0x26b7
    mov ax, 7                        ; 0x26ba
    cmp word [bp - 0x0044], byte 7   ; 0x26bd
    jge short @..api_idx_0044.l27    ; 0x26c1
    mov ax, word [bp - 0x0044]       ; 0x26c3
@..api_idx_0044.l27:
    mov word [bp - 0x0020], ax       ; 0x26c6
    mov word [bp - 0x0018], 0        ; 0x26c9
    mov word [bp - 0x0022], 0xffff   ; 0x26ce
    push word [bp - 0x0024]          ; 0x26d3
    push word [bp - 0x0022]          ; 0x26d6
    push word [bp - 0x0018]          ; 0x26d9
    mov ax, 7                        ; 0x26dc
    push ax                          ; 0x26df
    mov ax, 0xf                      ; 0x26e0
    push ax                          ; 0x26e3
    mov ax, word [bp - 0x0006]       ; 0x26e4
    add ax, strict word 0x22         ; 0x26e7
    push ax                          ; 0x26ea
    mov ax, word [bp - 0x000c]       ; 0x26eb
    add ax, strict word 6            ; 0x26ee
    push ax                          ; 0x26f1
    call ds_dispatch_bf97            ; 0x26f2
    add sp, byte 0x0e                ; 0x26f5
    mov word [bp - 0x0012], 0        ; 0x26f8
    push word [bp - 0x0012]          ; 0x26fd
    mov ax, 7                        ; 0x2700
    push ax                          ; 0x2703
    mov ax, 8                        ; 0x2704
    push ax                          ; 0x2707
    mov ax, word [bp - 0x0006]       ; 0x2708
    add ax, strict word 0x22         ; 0x270b
    push ax                          ; 0x270e
    mov ax, word [bp - 0x000c]       ; 0x270f
    add ax, strict word 0x6a         ; 0x2712
    push ax                          ; 0x2715
    call ds_dispatch_bfd8            ; 0x2716
    add sp, byte 0x0a                ; 0x2719
    mov ax, 0                        ; 0x271c
    push ax                          ; 0x271f
    push ax                          ; 0x2720
    mov ax, word [bp - 0x0006]       ; 0x2721
    add ax, word [bp - 0x0012]       ; 0x2724
    add ax, strict word 0x2e         ; 0x2727
    push ax                          ; 0x272a
    mov ax, word [bp - 0x000c]       ; 0x272b
    add ax, strict word 0x72         ; 0x272e
    push ax                          ; 0x2731
    mov ax, word [bp - 0x0006]       ; 0x2732
    add ax, word [bp - 0x0012]       ; 0x2735
    add ax, strict word 0x2a         ; 0x2738
    push ax                          ; 0x273b
    mov ax, word [bp - 0x000c]       ; 0x273c
    add ax, strict word 0x6a         ; 0x273f
    push ax                          ; 0x2742
    mov ax, 0                        ; 0x2743
    push ax                          ; 0x2746
    call ds_dispatch_baa6            ; 0x2747
    add sp, byte 0x0e                ; 0x274a
    mov ax, 0                        ; 0x274d
    push ax                          ; 0x2750
    push ax                          ; 0x2751
    push word [bp - 0x0042]          ; 0x2752
    mov ax, word [bp - 0x0006]       ; 0x2755
    add ax, strict word 0x15         ; 0x2758
    push ax                          ; 0x275b
    mov ax, word [bp - 0x000c]       ; 0x275c
    add ax, strict word 0x5e         ; 0x275f
    push ax                          ; 0x2762
    call loc_1ad7                    ; 0x2763
    add sp, byte 0x0a                ; 0x2766
    mov ax, word [bp - 0x0006]       ; 0x2769
    add ax, strict word 0x4c         ; 0x276c
    push ax                          ; 0x276f
    mov ax, word [bp - 0x000c]       ; 0x2770
    add ax, strict word 0x72         ; 0x2773
    push ax                          ; 0x2776
    mov ax, word [bp - 0x0006]       ; 0x2777
    add ax, strict word 0x22         ; 0x277a
    push ax                          ; 0x277d
    mov ax, word [bp - 0x000c]       ; 0x277e
    add ax, strict word 6            ; 0x2781
    push ax                          ; 0x2784
    call ds_dispatch_e8da            ; 0x2785
    add sp, byte 8                   ; 0x2788
    mov ax, word [bp - 0x0006]       ; 0x278b
    add ax, strict word 0x1b         ; 0x278e
    push ax                          ; 0x2791
    mov ax, word [bp - 0x000c]       ; 0x2792
    add ax, strict word 0x72         ; 0x2795
    push ax                          ; 0x2798
    mov ax, word [bp - 0x0006]       ; 0x2799
    add ax, strict word 0x15         ; 0x279c
    push ax                          ; 0x279f
    mov ax, word [bp - 0x000c]       ; 0x27a0
    add ax, strict word 0x5e         ; 0x27a3
    push ax                          ; 0x27a6
    call ds_dispatch_e8da            ; 0x27a7
    add sp, byte 8                   ; 0x27aa
    jmp near @..api_idx_0044.l34     ; 0x27ad
@..api_idx_0044.l28:
    cmp word [bp - 0x001a], byte 0x12 ; 0x27b0
    jge short @..api_idx_0044.l29    ; 0x27b4
    jmp near @..api_idx_0044.l34     ; 0x27b6
@..api_idx_0044.l29:
    mov ax, word [bp - 0x0020]       ; 0x27b9
    add ax, strict word 0x12         ; 0x27bc
    cmp ax, word [bp - 0x001a]       ; 0x27bf
    jg short @..api_idx_0044.l30     ; 0x27c2
    jmp near @..api_idx_0044.l34     ; 0x27c4
@..api_idx_0044.l30:
    mov ax, word [bp - 0x0018]       ; 0x27c7
    add ax, word [bp - 0x001a]       ; 0x27ca
    add ax, strict word 0xffee       ; 0x27cd
    mov word [bp - 0x0022], ax       ; 0x27d0
    shl ax, 1                        ; 0x27d3
    mov bx, ax                       ; 0x27d5
    mov ax, word [bx - 0x6efa]       ; 0x27d7
    mov word [bp - 0x003c], ax       ; 0x27db
    push word [bp - 0x0024]          ; 0x27de
    push word [bp - 0x0022]          ; 0x27e1
    push word [bp - 0x0018]          ; 0x27e4
    mov ax, 7                        ; 0x27e7
    push ax                          ; 0x27ea
    mov ax, 0xf                      ; 0x27eb
    push ax                          ; 0x27ee
    mov ax, word [bp - 0x0006]       ; 0x27ef
    add ax, strict word 0x22         ; 0x27f2
    push ax                          ; 0x27f5
    mov ax, word [bp - 0x000c]       ; 0x27f6
    add ax, strict word 6            ; 0x27f9
    push ax                          ; 0x27fc
    call ds_dispatch_bf97            ; 0x27fd
    add sp, byte 0x0e                ; 0x2800
    mov ax, 6                        ; 0x2803
    push ax                          ; 0x2806
    mov ax, 0                        ; 0x2807
    push ax                          ; 0x280a
    mov ax, 0x248                    ; 0x280b
    imul word [bp + 0x4]             ; 0x280e
    mov bx, ax                       ; 0x2811
    mov ax, word [bx + 0x5c18]       ; 0x2813
    push ax                          ; 0x2817
    mov ax, 6                        ; 0x2818
    imul word [bp - 0x003c]          ; 0x281b
    mov bx, ax                       ; 0x281e
    mov al, byte [bx + 0x621]        ; 0x2820
    sub ah, ah                       ; 0x2824
    mov cx, ax                       ; 0x2826
    pop ax                           ; 0x2828
    sub ax, cx                       ; 0x2829
    push ax                          ; 0x282b
    call ds_dispatch_b7c2            ; 0x282c
    add sp, byte 6                   ; 0x282f
    mov word [bp - 0x0040], ax       ; 0x2832
    mov ax, 6                        ; 0x2835
    imul word [bp - 0x003c]          ; 0x2838
    mov bx, ax                       ; 0x283b
    mov al, byte [bx + 0x622]        ; 0x283d
    sub ah, ah                       ; 0x2841
    mov cx, word [bp - 0x0040]       ; 0x2843
    inc cx                           ; 0x2846
    imul cx                          ; 0x2847
    mov word [bp - 0x0002], ax       ; 0x2849
    cmp word [bp + 0xa], byte 0      ; 0x284c
    jne short @..api_idx_0044.l31    ; 0x2850
    mov ax, 0x3e7                    ; 0x2852
    jmp short @..api_idx_0044.l33    ; 0x2855
@..api_idx_0044.l31:
    mov ax, 0x248                    ; 0x2857
    imul word [bp + 0x4]             ; 0x285a
    mov cx, word [bp - 0x0042]       ; 0x285d
    shl cx, 1                        ; 0x2860
    shl cx, 1                        ; 0x2862
    add ax, cx                       ; 0x2864
    mov bx, ax                       ; 0x2866
    mov ax, word [bx + 0x5c1c]       ; 0x2868
    cmp ax, word [bp - 0x0002]       ; 0x286c
    jge short @..api_idx_0044.l32    ; 0x286f
    jmp short @..api_idx_0044.l33    ; 0x2871
@..api_idx_0044.l32:
    mov ax, word [bp - 0x0002]       ; 0x2873
@..api_idx_0044.l33:
    push ax                          ; 0x2876
    mov ax, 6                        ; 0x2877
    imul word [bp - 0x003c]          ; 0x287a
    mov bx, ax                       ; 0x287d
    mov al, byte [bx + 0x622]        ; 0x287f
    sub ah, ah                       ; 0x2883
    mov cx, word [bp - 0x003e]       ; 0x2885
    inc cx                           ; 0x2888
    imul cx                          ; 0x2889
    push ax                          ; 0x288b
    push word [bp - 0x0042]          ; 0x288c
    mov ax, word [bp - 0x0006]       ; 0x288f
    add ax, strict word 0x15         ; 0x2892
    push ax                          ; 0x2895
    mov ax, word [bp - 0x000c]       ; 0x2896
    add ax, strict word 0x5e         ; 0x2899
    push ax                          ; 0x289c
    call loc_1ad7                    ; 0x289d
    add sp, byte 0x0a                ; 0x28a0
    mov ax, word [bp - 0x0006]       ; 0x28a3
    add ax, strict word 0x4c         ; 0x28a6
    push ax                          ; 0x28a9
    mov ax, word [bp - 0x000c]       ; 0x28aa
    add ax, strict word 0x72         ; 0x28ad
    push ax                          ; 0x28b0
    mov ax, word [bp - 0x0006]       ; 0x28b1
    add ax, strict word 0x22         ; 0x28b4
    push ax                          ; 0x28b7
    mov ax, word [bp - 0x000c]       ; 0x28b8
    add ax, strict word 6            ; 0x28bb
    push ax                          ; 0x28be
    call ds_dispatch_e8da            ; 0x28bf
    add sp, byte 8                   ; 0x28c2
    mov ax, word [bp - 0x0006]       ; 0x28c5
    add ax, strict word 0x1b         ; 0x28c8
    push ax                          ; 0x28cb
    mov ax, word [bp - 0x000c]       ; 0x28cc
    add ax, strict word 0x72         ; 0x28cf
    push ax                          ; 0x28d2
    mov ax, word [bp - 0x0006]       ; 0x28d3
    add ax, strict word 0x15         ; 0x28d6
    push ax                          ; 0x28d9
    mov ax, word [bp - 0x000c]       ; 0x28da
    add ax, strict word 0x5e         ; 0x28dd
    push ax                          ; 0x28e0
    call ds_dispatch_e8da            ; 0x28e1
    add sp, byte 8                   ; 0x28e4
@..api_idx_0044.l34:
    jmp short @..api_idx_0044.l37    ; 0x28e7
    adc byte [bp + si + 0x37], dh    ; 0x28e9
    jae short loc_2925               ; 0x28ec
    jae short loc_295e               ; 0x28ee
    je short loc_290d                ; 0x28f0
    db 0x75
@..api_idx_0044.l35:
    cmp ax, strict word 5            ; 0x28f3
    jae short @..api_idx_0044.l36    ; 0x28f6
    xchg bx, ax                      ; 0x28f8
    shl bx, 1                        ; 0x28f9
    jmp [cs:bx + 0x7930]             ; 0x28fb
@..api_idx_0044.l36:
    jmp near @..api_idx_0044.l14     ; 0x2900
@..api_idx_0044.l37:
    cmp word [bp - 0x001c], byte 0   ; 0x2903
    je short @..api_idx_0044.l38     ; 0x2907
    jmp near @..api_idx_0044.l8      ; 0x2909
@..api_idx_0044.l38:
    mov ax, 1                        ; 0x290c
    push ax                          ; 0x290f
    push word [bp - 0x003a]          ; 0x2910
    call ds_dispatch_c459            ; 0x2913
    add sp, byte 4                   ; 0x2916
    mov ax, word [bp - 0x000a]       ; 0x2919
    inc ax                           ; 0x291c
    push ax                          ; 0x291d
    mov ax, word [bp - 0x0008]       ; 0x291e
    inc ax                           ; 0x2921
    push ax                          ; 0x2922
    mov ax, word [bp - 0x0006]       ; 0x2923
    dec ax                           ; 0x2926
    push ax                          ; 0x2927
    mov ax, word [bp - 0x0004]       ; 0x2928
    dec ax                           ; 0x292b
    push ax                          ; 0x292c
    call ds_dispatch_e8da            ; 0x292d
    add sp, byte 8                   ; 0x2930
    mov ax, word [bp - 0x003e]       ; 0x2933
    xchg al, ah                      ; 0x2936
    sub al, al                       ; 0x2938
    add ax, word [bp - 0x003c]       ; 0x293a
    add ax, 0x100                    ; 0x293d
    mov word [data_904e], ax         ; 0x2940
    mov ax, word [data_9050]         ; 0x2943
    ret                              ; 0x2946
%include "vpops/api_idx_000a_4.asm"

%include "vpops/api_idx_0018.asm"

%include "vpops/api_idx_0004_3.asm"

%include "vpops/math_loc_2c51.asm"

%include "vpops/api_idx_0038.asm"

    add ax, strict word 0x50         ; 0x2e92
    push ax                          ; 0x2e95
    mov ax, word [bp - 0x0006]       ; 0x2e96
    add ax, strict word 7            ; 0x2e99
    push ax                          ; 0x2e9c
    mov ax, word [bp - 0x0004]       ; 0x2e9d
    add ax, strict word 8            ; 0x2ea0
    push ax                          ; 0x2ea3
    mov ax, 3                        ; 0x2ea4
    push ax                          ; 0x2ea7
    call ds_dispatch_baa6            ; 0x2ea8
    add sp, byte 0x0e                ; 0x2eab
    mov ax, 0xd                      ; 0x2eae
    push ax                          ; 0x2eb1
    mov ax, 0x55                     ; 0x2eb2
    push ax                          ; 0x2eb5
    mov ax, word [bp - 0x0006]       ; 0x2eb6
    add ax, strict word 0x1f         ; 0x2eb9
    push ax                          ; 0x2ebc
    mov ax, word [bp - 0x0004]       ; 0x2ebd
    add ax, strict word 0x50         ; 0x2ec0
    push ax                          ; 0x2ec3
    mov ax, word [bp - 0x0006]       ; 0x2ec4
    add ax, strict word 0x17         ; 0x2ec7
    push ax                          ; 0x2eca
    mov ax, word [bp - 0x0004]       ; 0x2ecb
    add ax, strict word 8            ; 0x2ece
    push ax                          ; 0x2ed1
    mov ax, 4                        ; 0x2ed2
    push ax                          ; 0x2ed5
    call ds_dispatch_baa6            ; 0x2ed6
    add sp, byte 0x0e                ; 0x2ed9
    mov ax, 0                        ; 0x2edc
    push ax                          ; 0x2edf
    mov ax, 0x1b                     ; 0x2ee0
    push ax                          ; 0x2ee3
    mov ax, word [bp - 0x0006]       ; 0x2ee4
    add ax, strict word 0x2f         ; 0x2ee7
    push ax                          ; 0x2eea
    mov ax, word [bp - 0x0004]       ; 0x2eeb
    add ax, strict word 0x50         ; 0x2eee
    push ax                          ; 0x2ef1
    mov ax, word [bp - 0x0006]       ; 0x2ef2
    add ax, strict word 0x27         ; 0x2ef5
    push ax                          ; 0x2ef8
    mov ax, word [bp - 0x0004]       ; 0x2ef9
    add ax, strict word 8            ; 0x2efc
    push ax                          ; 0x2eff
    mov ax, 5                        ; 0x2f00
    push ax                          ; 0x2f03
    call ds_dispatch_baa6            ; 0x2f04
    add sp, byte 0x0e                ; 0x2f07
    mov ax, 3                        ; 0x2f0a
    cmp word [bp + 0xc], byte 3      ; 0x2f0d
    jge short @..api_idx_0038.l4     ; 0x2f11
    mov ax, word [bp + 0xc]          ; 0x2f13
@..api_idx_0038.l4:
    mov word [bp - 0x001e], ax       ; 0x2f16
    mov word [bp - 0x0002], 0        ; 0x2f19
    jmp short @..api_idx_0038.l6     ; 0x2f1e
@..api_idx_0038.l5:
    mov ax, 0                        ; 0x2f20
    push ax                          ; 0x2f23
    push ax                          ; 0x2f24
    mov ax, 0xe                      ; 0x2f25
    imul word [bp - 0x0002]          ; 0x2f28
    add ax, word [bp - 0x0006]       ; 0x2f2b
    add ax, strict word 0x13         ; 0x2f2e
    push ax                          ; 0x2f31
    mov ax, word [bp - 0x0004]       ; 0x2f32
    add ax, 0xb9                     ; 0x2f35
    push ax                          ; 0x2f38
    mov ax, 0xe                      ; 0x2f39
    imul word [bp - 0x0002]          ; 0x2f3c
    add ax, word [bp - 0x0006]       ; 0x2f3f
    add ax, strict word 7            ; 0x2f42
    push ax                          ; 0x2f45
    mov ax, word [bp - 0x0004]       ; 0x2f46
    add ax, strict word 0x5d         ; 0x2f49
    push ax                          ; 0x2f4c
    mov ax, word [bp - 0x0002]       ; 0x2f4d
    add ax, strict word 6            ; 0x2f50
    push ax                          ; 0x2f53
    call ds_dispatch_baa6            ; 0x2f54
    add sp, byte 0x0e                ; 0x2f57
    inc word [bp - 0x0002]           ; 0x2f5a
@..api_idx_0038.l6:
    mov ax, word [bp - 0x0002]       ; 0x2f5d
    cmp ax, word [bp - 0x001e]       ; 0x2f60
    jl short @..api_idx_0038.l5      ; 0x2f63
    mov ax, 0                        ; 0x2f65
    push ax                          ; 0x2f68
    push ax                          ; 0x2f69
    push ax                          ; 0x2f6a
    push ax                          ; 0x2f6b
    push ax                          ; 0x2f6c
    mov ax, 0xffff                   ; 0x2f6d
    push ax                          ; 0x2f70
    mov ax, word [bp - 0x001e]       ; 0x2f71
    add ax, strict word 6            ; 0x2f74
    push ax                          ; 0x2f77
    call ds_dispatch_baa6            ; 0x2f78
    add sp, byte 0x0e                ; 0x2f7b
    mov ax, 0xc6                     ; 0x2f7e
    push ax                          ; 0x2f81
    mov ax, 0x139                    ; 0x2f82
    push ax                          ; 0x2f85
    mov ax, 0x8e                     ; 0x2f86
    push ax                          ; 0x2f89
    mov ax, 9                        ; 0x2f8a
    push ax                          ; 0x2f8d
    call ds_dispatch_e8da            ; 0x2f8e
    add sp, byte 8                   ; 0x2f91
    mov word [bp - 0x001a], 1        ; 0x2f94
@..api_idx_0038.l7:
    mov ax, 0x59fe                   ; 0x2f99
    push ax                          ; 0x2f9c
    call ds_dispatch_b90d            ; 0x2f9d
    pop cx                           ; 0x2fa0
    dec ax                           ; 0x2fa1
    mov word [bp - 0x0018], ax       ; 0x2fa2
    cmp word [data_59fc], byte 0     ; 0x2fa5
    je short @..api_idx_0038.l11     ; 0x2faa
    mov ax, word [bp - 0x0020]       ; 0x2fac
    cmp ax, word [bp - 0x0016]       ; 0x2faf
    jl short @..api_idx_0038.l8      ; 0x2fb2
    inc word [bp - 0x0020]           ; 0x2fb4
@..api_idx_0038.l8:
    mov ax, word [bp - 0x0020]       ; 0x2fb7
    cmp ax, strict word 0xffff       ; 0x2fba
    je short @..api_idx_0038.l9      ; 0x2fbd
    cmp ax, word [bp - 0x0016]       ; 0x2fbf
    jl short @..api_idx_0038.l9      ; 0x2fc2
    mov ax, word [bp - 0x0016]       ; 0x2fc4
    add ax, word [bp - 0x001e]       ; 0x2fc7
    mov cx, ax                       ; 0x2fca
    dec ax                           ; 0x2fcc
    mov cx, ax                       ; 0x2fcd
    mov ax, word [bp - 0x0020]       ; 0x2fcf
    cmp cx, ax                       ; 0x2fd2
    jge short @..api_idx_0038.l10    ; 0x2fd4
@..api_idx_0038.l9:
    mov ax, word [bp - 0x0016]       ; 0x2fd6
    mov word [bp - 0x0020], ax       ; 0x2fd9
@..api_idx_0038.l10:
    mov word [data_5b3e], 1          ; 0x2fdc
    mov ax, word [bp - 0x0020]       ; 0x2fe2
    sub ax, word [bp - 0x0016]       ; 0x2fe5
    add ax, strict word 6            ; 0x2fe8
    mov word [bp - 0x0018], ax       ; 0x2feb
@..api_idx_0038.l11:
    cmp word [data_5b3e], byte 1     ; 0x2fee
    je short @..api_idx_0038.l12     ; 0x2ff3
    jmp near @..api_idx_0038.l16     ; 0x2ff5
@..api_idx_0038.l12:
    mov ax, word [bp - 0x0018]       ; 0x2ff8
    jmp near @..api_idx_0038.l14     ; 0x2ffb

    db 0x8d, 0x46, 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x4a, 0xc0, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xf0, 0x83
    db 0xc1, 0x0e, 0x2b, 0xc1, 0x50, 0xe8, 0x9c, 0x87, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xec, 0x8d, 0x46
    db 0xf2, 0x50, 0x8d, 0x46, 0xf4, 0x50, 0xe8, 0x1c, 0xc0, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe4, 0xff
    db 0x76, 0xee, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf2, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x0e, 0x2b
    db 0xc1, 0x2b, 0x46, 0xec, 0x50, 0xe8, 0x6c, 0x87, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0x83, 0x7e
    db 0x0c, 0x03, 0x7e, 0x1f, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xee, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49, 0x49, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7, 0xf9
    db 0x89, 0x46, 0xea, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76, 0xea, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d
    db 0x00, 0x50, 0xe8, 0xae, 0xfb, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00
    db 0x50, 0xe8, 0x16, 0x8f, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa, 0x03
    db 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xb8, 0x00
    db 0x00, 0x50, 0xe8, 0xb3, 0x89, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc
    db 0x05, 0x5d, 0x00, 0x50, 0xe8, 0xc5, 0xb7, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x03
    db 0xe9, 0x0b, 0xff, 0xe9, 0x97, 0x02, 0x83, 0x7e, 0xe8, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x6b, 0x8d, 0x83
    db 0xc4, 0x0a, 0x83, 0x7e, 0xea, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xea, 0xeb, 0x34, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0x3a, 0x8d
    db 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0x0c
    db 'HHH;F'
    db 0xea, 0x7e, 0x03, 0xff, 0x46, 0xea, 0x83, 0x7e, 0x0c, 0x03, 0x7e, 0x2c, 0xff, 0x76, 0xee, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x64, 0x00, 0xf7, 0x6e, 0xee, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0x0c, 0x49
    db 0x49, 0x49, 0x99, 0xf7, 0xf9, 0xf7, 0x6e, 0xea, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8
    db 0x07, 0x86, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xf0, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe0, 0xff, 0x76
    db 0xea, 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50
    db 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x6e, 0xfa, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xf0
    db 0xb8, 0x07, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b
    db 0x46, 0xfc, 0x05, 0xc1, 0x00, 0x50, 0xe8, 0xd6, 0x8d, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50
    db 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x12, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x03, 0x46, 0xf0, 0x05, 0x0e, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05
    db 0xc1, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x73, 0x88, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa
    db 0x05, 0x30, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0xc9, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x5d, 0x00, 0x50, 0xe8, 0x85, 0xb6, 0x83, 0xc4, 0x08, 0xe9
    db 0x60, 0x01, 0x83, 0x7e, 0x06, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0xe4, 0x8b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x07, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50, 0xe8
    db 0xc4, 0x8b, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe6, 0x00, 0x00
    db 0xe9, 0x0f, 0x01, 0x83, 0x7e, 0x08, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0x93, 0x8b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x0c
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x17, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00, 0x50
    db 0xe8, 0x73, 0x8b, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46, 0xe6, 0x00
    db 0x00, 0xe9, 0xbe, 0x00, 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0x42, 0x8b, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x0c, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x27, 0x00, 0x50, 0x8b, 0x46, 0xfc, 0x05, 0x08, 0x00
    db 0x50, 0xe8, 0x22, 0x8b, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x02, 0x00, 0xc7, 0x46, 0xe6
    db 0x00, 0x00, 0xeb, 0x6e

@..api_idx_0038.l13:
    mov ax, word [bp - 0x0016]       ; 0x334d
    add ax, word [bp - 0x0018]       ; 0x3350
    add ax, strict word 0xfffa       ; 0x3353
    mov word [bp - 0x0020], ax       ; 0x3356
    push word [bp - 0x0022]          ; 0x3359
    push ax                          ; 0x335c
    push word [bp - 0x0016]          ; 0x335d
    mov ax, 7                        ; 0x3360
    push ax                          ; 0x3363
    mov ax, 0xf                      ; 0x3364
    push ax                          ; 0x3367
    mov ax, word [bp - 0x0006]       ; 0x3368
    add ax, strict word 6            ; 0x336b
    push ax                          ; 0x336e
    mov ax, word [bp - 0x0004]       ; 0x336f
    add ax, strict word 0x5d         ; 0x3372
    push ax                          ; 0x3375
    call math_loc_2c51               ; 0x3376
    add sp, byte 0x0e                ; 0x3379
    mov ax, word [bp - 0x0006]       ; 0x337c
    add ax, strict word 0x30         ; 0x337f
    push ax                          ; 0x3382
    mov ax, word [bp - 0x0004]       ; 0x3383
    add ax, 0xb9                     ; 0x3386
    push ax                          ; 0x3389
    mov ax, word [bp - 0x0006]       ; 0x338a
    add ax, strict word 6            ; 0x338d
    push ax                          ; 0x3390
    mov ax, word [bp - 0x0004]       ; 0x3391
    add ax, strict word 0x5d         ; 0x3394
    push ax                          ; 0x3397
    call ds_dispatch_e8da            ; 0x3398
    add sp, byte 8                   ; 0x339b
    jmp short @..api_idx_0038.l16    ; 0x339e
    db 0x45, 0x80, 0x6b, 0x81, 0x6b, 0x81, 0xa2, 0x82, 0xf3, 0x82, 0x44, 0x83
@..api_idx_0038.l14:
    cmp ax, strict word 6            ; 0x33ac
    jae short @..api_idx_0038.l15    ; 0x33af
    xchg bx, ax                      ; 0x33b1
    shl bx, 1                        ; 0x33b2
    jmp [cs:bx - 0x7c19]             ; 0x33b4
@..api_idx_0038.l15:
    jmp short @..api_idx_0038.l13    ; 0x33b9
@..api_idx_0038.l16:
    cmp word [bp - 0x001a], byte 0   ; 0x33bb
    je short @..api_idx_0038.l17     ; 0x33bf
    jmp near @..api_idx_0038.l7      ; 0x33c1
@..api_idx_0038.l17:
    mov ax, 1                        ; 0x33c4
    push ax                          ; 0x33c7
    push word [bp - 0x0038]          ; 0x33c8
    call ds_dispatch_c459            ; 0x33cb
    add sp, byte 4                   ; 0x33ce
    mov ax, word [bp - 0x0020]       ; 0x33d1
    mov word [data_904e], ax         ; 0x33d4
    mov ax, word [data_9050]         ; 0x33d7
    ret                              ; 0x33da
%include "vpops/api_idx_0094.asm"

%include "vpops/api_idx_0006_3.asm"

%include "vpops/api_idx_00d4.asm"

@..api_idx_00d4.l16:
    mov ax, 0x2c                     ; 0x390e
    imul word [bp - 0x0006]          ; 0x3911
    mov si, ax                       ; 0x3914
    mov bx, word [data_8482]         ; 0x3916
    cmp byte [bx + si + 0x1f], 1     ; 0x391a
    jb short @..api_idx_00d4.l17     ; 0x391e
    mov al, byte [bx + si + 0x1f]    ; 0x3920
    sub ah, ah                       ; 0x3923
    cmp ax, word [data_8466]         ; 0x3925
    jle short @..api_idx_00d4.l18    ; 0x3929
@..api_idx_00d4.l17:
    mov byte [bx + si + 0x1f], 1     ; 0x392b
@..api_idx_00d4.l18:
    mov word [bp - 0x0002], 0        ; 0x392f
@..api_idx_00d4.l19:
    mov ax, word [bp - 0x0002]       ; 0x3934
    shl ax, 1                        ; 0x3937
    mov bx, ax                       ; 0x3939
    add bx, bp                       ; 0x393b
    mov word [bx - 0x0028], 1        ; 0x393d
    inc word [bp - 0x0002]           ; 0x3942
    mov ax, word [bp - 0x0002]       ; 0x3945
    cmp ax, strict word 0xb          ; 0x3948
    jl short @..api_idx_00d4.l19     ; 0x394b
    mov ax, 0x248                    ; 0x394d
    imul word [bp - 0x0006]          ; 0x3950
    mov bx, ax                       ; 0x3953
    cmp byte [bx + 0x5e2b], 7        ; 0x3955
    je short @..api_idx_00d4.l20     ; 0x395a
    mov word [bp - 0x001e], 0        ; 0x395c
@..api_idx_00d4.l20:
    mov ax, 0x2c                     ; 0x3961
    imul word [bp - 0x0006]          ; 0x3964
    mov si, ax                       ; 0x3967
    mov bx, word [data_8482]         ; 0x3969
    cmp byte [bx + si + 0x2b], 0     ; 0x396d
    jne short @..api_idx_00d4.l21    ; 0x3971
    mov ax, 0x248                    ; 0x3973
    imul word [bp - 0x0006]          ; 0x3976
    mov bx, ax                       ; 0x3979
    mov al, byte [bx + 0x5e2d]       ; 0x397b
    cmp al, 3                        ; 0x397f
    je short @..api_idx_00d4.l22     ; 0x3981
    cmp al, 0xd                      ; 0x3983
    je short @..api_idx_00d4.l22     ; 0x3985
    cmp al, 4                        ; 0x3987
    je short @..api_idx_00d4.l22     ; 0x3989
    cmp al, 6                        ; 0x398b
    je short @..api_idx_00d4.l22     ; 0x398d
    cmp al, 0xc                      ; 0x398f
    je short @..api_idx_00d4.l22     ; 0x3991
    cmp byte [bx + 0x5d7d], 0        ; 0x3993
    jne short @..api_idx_00d4.l22    ; 0x3998
@..api_idx_00d4.l21:
    mov word [bp - 0x0024], 0        ; 0x399a
@..api_idx_00d4.l22:
    mov word [bp - 0x0020], 0        ; 0x399f
    mov word [bp - 0x00ae], 0        ; 0x39a4
@..api_idx_00d4.l23:
    mov word [bp - 0x00ac], 0        ; 0x39aa
@..api_idx_00d4.l24:
    mov ax, 0x248                    ; 0x39b0
    imul word [bp - 0x0006]          ; 0x39b3
    push ax                          ; 0x39b6
    mov ax, 0x78                     ; 0x39b7
    imul word [bp - 0x00ae]          ; 0x39ba
    mov cx, ax                       ; 0x39be
    pop ax                           ; 0x39c0
    add ax, cx                       ; 0x39c1
    push ax                          ; 0x39c3
    mov ax, 0xc                      ; 0x39c4
    imul word [bp - 0x00ac]          ; 0x39c7
    mov cx, ax                       ; 0x39cb
    pop ax                           ; 0x39cd
    add ax, cx                       ; 0x39ce
    mov bx, ax                       ; 0x39d0
    cmp word [bx + 0x5c34], byte 0   ; 0x39d2
    jle short @..api_idx_00d4.l25    ; 0x39d7
    mov word [bp - 0x0020], 1        ; 0x39d9
@..api_idx_00d4.l25:
    inc word [bp - 0x00ac]           ; 0x39de
    mov ax, word [bp - 0x00ac]       ; 0x39e2
    cmp ax, strict word 0xa          ; 0x39e6
    jl short @..api_idx_00d4.l24     ; 0x39e9
    inc word [bp - 0x00ae]           ; 0x39eb
    mov ax, word [bp - 0x00ae]       ; 0x39ef
    cmp ax, strict word 2            ; 0x39f3
    jl short @..api_idx_00d4.l23     ; 0x39f6
    cmp word [bp - 0x00b4], byte 2   ; 0x39f8
    jge short @..api_idx_00d4.l26    ; 0x39fd
    mov word [bp - 0x0016], 0        ; 0x39ff
    mov word [bp - 0x0014], 0        ; 0x3a04
@..api_idx_00d4.l26:
    mov ax, 0x248                    ; 0x3a09
    imul word [bp - 0x0006]          ; 0x3a0c
    mov bx, ax                       ; 0x3a0f
    mov al, byte [bx + 0x5d48]       ; 0x3a11
    sub ah, ah                       ; 0x3a15
    mov word [bp - 0x00ac], ax       ; 0x3a17
    cmp ax, 0xff                     ; 0x3a1b
    jne short @..api_idx_00d4.l27    ; 0x3a1e
    jmp near @..api_idx_00d4.l37     ; 0x3a20
@..api_idx_00d4.l27:
    mov cx, 0xc                      ; 0x3a23
    imul cx                          ; 0x3a26
    add bx, ax                       ; 0x3a28
    cmp byte [bx + 0x5c38], 3        ; 0x3a2a
    je short @..api_idx_00d4.l28     ; 0x3a2f
    jmp near @..api_idx_00d4.l37     ; 0x3a31
@..api_idx_00d4.l28:
    mov al, byte [bx + 0x5c3b]       ; 0x3a34
    sub ah, ah                       ; 0x3a38
    test ax, 0x20                    ; 0x3a3a
    je short @..api_idx_00d4.l29     ; 0x3a3d
    jmp near @..api_idx_00d4.l37     ; 0x3a3f
@..api_idx_00d4.l29:
    mov ax, 0x248                    ; 0x3a42
    imul word [bp - 0x0006]          ; 0x3a45
    mov bx, ax                       ; 0x3a48
    mov al, byte [bx + 0x5d49]       ; 0x3a4a
    sub ah, ah                       ; 0x3a4e
    mov word [bp - 0x00ae], ax       ; 0x3a50
    cmp ax, 0xff                     ; 0x3a54
    jne short @..api_idx_00d4.l30    ; 0x3a57
    jmp near @..api_idx_00d4.l36     ; 0x3a59
@..api_idx_00d4.l30:
    imul cx                          ; 0x3a5c
    add bx, ax                       ; 0x3a5e
    cmp byte [bx + 0x5c38], 4        ; 0x3a60
    je short @..api_idx_00d4.l31     ; 0x3a65
    mov word [bp - 0x0028], 0        ; 0x3a67
    jmp near @..api_idx_00d4.l35     ; 0x3a6c
@..api_idx_00d4.l31:
    mov ax, 0x248                    ; 0x3a6f
    imul word [bp - 0x0006]          ; 0x3a72
    push ax                          ; 0x3a75
    mov ax, word [bp - 0x00ac]       ; 0x3a76
    imul cx                          ; 0x3a7a
    mov cx, ax                       ; 0x3a7c
    pop ax                           ; 0x3a7e
    add ax, cx                       ; 0x3a7f
    mov bx, ax                       ; 0x3a81
    mov al, byte [bx + 0x5c39]       ; 0x3a83
    cmp al, 0xb                      ; 0x3a87
    jne short @..api_idx_00d4.l32    ; 0x3a89
    mov ax, 0x248                    ; 0x3a8b
    imul word [bp - 0x0006]          ; 0x3a8e
    push ax                          ; 0x3a91
    mov ax, 0xc                      ; 0x3a92
    imul word [bp - 0x00ae]          ; 0x3a95
    mov cx, ax                       ; 0x3a99
    pop ax                           ; 0x3a9b
    add ax, cx                       ; 0x3a9c
    mov bx, ax                       ; 0x3a9e
    mov al, byte [bx + 0x5c39]       ; 0x3aa0
    cmp al, 0x16                     ; 0x3aa4
    je short @..api_idx_00d4.l32     ; 0x3aa6
    jmp near @..api_idx_00d4.l34     ; 0x3aa8
@..api_idx_00d4.l32:
    mov ax, 0x248                    ; 0x3aab
    imul word [bp - 0x0006]          ; 0x3aae
    push ax                          ; 0x3ab1
    mov ax, 0xc                      ; 0x3ab2
    imul word [bp - 0x00ac]          ; 0x3ab5
    mov cx, ax                       ; 0x3ab9
    pop ax                           ; 0x3abb
    add ax, cx                       ; 0x3abc
    mov bx, ax                       ; 0x3abe
    mov al, byte [bx + 0x5c39]       ; 0x3ac0
    cmp al, 0xd                      ; 0x3ac4
    jne short @..api_idx_00d4.l33    ; 0x3ac6
    mov ax, 0x248                    ; 0x3ac8
    imul word [bp - 0x0006]          ; 0x3acb
    push ax                          ; 0x3ace
    mov ax, 0xc                      ; 0x3acf
    imul word [bp - 0x00ae]          ; 0x3ad2
    mov cx, ax                       ; 0x3ad6
    pop ax                           ; 0x3ad8
    add ax, cx                       ; 0x3ad9
    mov bx, ax                       ; 0x3adb
    mov al, byte [bx + 0x5c39]       ; 0x3add
    cmp al, 0x17                     ; 0x3ae1
    jne short @..api_idx_00d4.l34    ; 0x3ae3
@..api_idx_00d4.l33:
    mov ax, 0x248                    ; 0x3ae5
    imul word [bp - 0x0006]          ; 0x3ae8
    push ax                          ; 0x3aeb
    mov ax, 0xc                      ; 0x3aec
    imul word [bp - 0x00ac]          ; 0x3aef
    mov cx, ax                       ; 0x3af3
    pop ax                           ; 0x3af5
    add ax, cx                       ; 0x3af6
    mov bx, ax                       ; 0x3af8
    mov al, byte [bx + 0x5c39]       ; 0x3afa
    cmp al, 0xc                      ; 0x3afe
    jne short @..api_idx_00d4.l35    ; 0x3b00
    mov ax, 0x248                    ; 0x3b02
    imul word [bp - 0x0006]          ; 0x3b05
    push ax                          ; 0x3b08
    mov ax, 0xc                      ; 0x3b09
    imul word [bp - 0x00ae]          ; 0x3b0c
    mov cx, ax                       ; 0x3b10
    pop ax                           ; 0x3b12
    add ax, cx                       ; 0x3b13
    mov bx, ax                       ; 0x3b15
    mov al, byte [bx + 0x5c39]       ; 0x3b17
    cmp al, 0x53                     ; 0x3b1b
    je short @..api_idx_00d4.l35     ; 0x3b1d
@..api_idx_00d4.l34:
    mov word [bp - 0x0028], 0        ; 0x3b1f
@..api_idx_00d4.l35:
    jmp short @..api_idx_00d4.l37    ; 0x3b24
@..api_idx_00d4.l36:
    mov word [bp - 0x0028], 0        ; 0x3b26
@..api_idx_00d4.l37:
    mov ax, 0x248                    ; 0x3b2b
    imul word [bp - 0x0006]          ; 0x3b2e
    mov bx, ax                       ; 0x3b31
    mov al, byte [bx + 0x5d31]       ; 0x3b33
    sub ah, ah                       ; 0x3b37
    mov word [bp - 0x00b2], ax       ; 0x3b39
    mov ax, 0x2c                     ; 0x3b3d
    imul word [bp - 0x0006]          ; 0x3b40
    mov si, ax                       ; 0x3b43
    mov bx, word [data_8482]         ; 0x3b45
    mov al, byte [bx + si + 0x1f]    ; 0x3b49
    sub ah, ah                       ; 0x3b4c
    mov cx, word [bp - 0x00b2]       ; 0x3b4e
    shl cx, 1                        ; 0x3b52
    mov bx, cx                       ; 0x3b54
    mov cx, word [bx - 0x6c7a]       ; 0x3b56
    cmp ax, cx                       ; 0x3b5a
    jle short @..api_idx_00d4.l38    ; 0x3b5c
    mov word [bp - 0x0028], 0        ; 0x3b5e
@..api_idx_00d4.l38:
    cmp word [bp - 0x0006], byte 3   ; 0x3b63
    jl short @..api_idx_00d4.l39     ; 0x3b67
    cmp word [bp - 0x00b2], byte 0   ; 0x3b69
    jne short @..api_idx_00d4.l39    ; 0x3b6e
    mov bx, word [data_8482]         ; 0x3b70
    cmp byte [bx + si + 0x2b], 1     ; 0x3b74
    je short @..api_idx_00d4.l39     ; 0x3b78
    mov word [bp - 0x0028], 0        ; 0x3b7a
@..api_idx_00d4.l39:
    mov bx, word [data_8482]         ; 0x3b7f
    mov al, byte [bx + si + 0x1f]    ; 0x3b83
    sub ah, ah                       ; 0x3b86
    cmp ax, word [data_9388]         ; 0x3b88
    jle short @..api_idx_00d4.l40    ; 0x3b8c
    mov word [bp - 0x001e], 0        ; 0x3b8e
@..api_idx_00d4.l40:
    mov word [bp - 0x0012], 0xffff   ; 0x3b93
    mov word [bp - 0x0098], 0xffff   ; 0x3b98
    mov byte [bx + si + 0x20], 0     ; 0x3b9e
    mov ax, 3                        ; 0x3ba2
    push ax                          ; 0x3ba5
    call api_idx_0006                ; 0x3ba6
    pop cx                           ; 0x3ba9
    mov ax, 0x2c                     ; 0x3baa
    imul word [bp - 0x0006]          ; 0x3bad
    mov si, ax                       ; 0x3bb0
    mov bx, word [data_8482]         ; 0x3bb2
    mov al, byte [bx + si + 0x1f]    ; 0x3bb6
    sub ah, ah                       ; 0x3bb9
    push ax                          ; 0x3bbb
    call api_idx_0054                ; 0x3bbc
    pop cx                           ; 0x3bbf
    mov ax, 1                        ; 0x3bc0
    push ax                          ; 0x3bc3
    mov ax, 0x93                     ; 0x3bc4
    push ax                          ; 0x3bc7
    mov ax, 0xa0                     ; 0x3bc8
    push ax                          ; 0x3bcb
    mov ax, 0x248                    ; 0x3bcc
    imul word [bp - 0x0006]          ; 0x3bcf
    add ax, 0x5bf4                   ; 0x3bd2
    push ax                          ; 0x3bd5
    call math_loc_0149               ; 0x3bd6
    add sp, byte 8                   ; 0x3bd9
    mov ax, 0x16                     ; 0x3bdc
    push ax                          ; 0x3bdf
    mov ax, 0x9a                     ; 0x3be0
    push ax                          ; 0x3be3
    mov ax, 0xa0                     ; 0x3be4
    push ax                          ; 0x3be7
    lea ax, word [bp - 0x00d4]       ; 0x3be8
    push ax                          ; 0x3bec
    call math_loc_0149               ; 0x3bed
    add sp, byte 8                   ; 0x3bf0
    mov word [bp - 0x009e], 0        ; 0x3bf3
    mov word [bp - 0x00a0], 0        ; 0x3bf9
    lea ax, word [bp - 0x0028]       ; 0x3bff
    push ax                          ; 0x3c02
    mov ax, 1                        ; 0x3c03
    push ax                          ; 0x3c06
    push ax                          ; 0x3c07
    mov ax, 3                        ; 0x3c08
    push ax                          ; 0x3c0b
    mov ax, 0xa                      ; 0x3c0c
    push ax                          ; 0x3c0f
    mov ax, 0x2a                     ; 0x3c10
    push ax                          ; 0x3c13
    mov ax, 6                        ; 0x3c14
    push ax                          ; 0x3c17
    mov ax, 0xa6                     ; 0x3c18
    push ax                          ; 0x3c1b
    mov ax, 0xe7                     ; 0x3c1c
    push ax                          ; 0x3c1f
    mov ax, 9                        ; 0x3c20
    push ax                          ; 0x3c23
    mov ax, 3                        ; 0x3c24
    push ax                          ; 0x3c27
    mov ax, 0xbb8                    ; 0x3c28
    push ax                          ; 0x3c2b
    call math_loc_111b               ; 0x3c2c
    add sp, byte 0x18                ; 0x3c2f
    mov word [bp - 0x0008], ax       ; 0x3c32
    cmp ax, strict word 0            ; 0x3c35
    jge short @..api_idx_00d4.l42    ; 0x3c38
    mov word [bp - 0x009e], 1        ; 0x3c3a
    push ax                          ; 0x3c40
    cmp ax, strict word 0            ; 0x3c41
    pop ax                           ; 0x3c44
    jge short @..api_idx_00d4.l41    ; 0x3c45
    neg ax                           ; 0x3c47
@..api_idx_00d4.l41:
    push ax                          ; 0x3c49
    mov ax, 0x2c                     ; 0x3c4a
    imul word [bp - 0x0006]          ; 0x3c4d
    mov si, ax                       ; 0x3c50
    mov bx, word [data_8482]         ; 0x3c52
    pop ax                           ; 0x3c56
    mov byte [bx + si + 0x1f], al    ; 0x3c57
    mov ax, 0                        ; 0x3c5a
    push ax                          ; 0x3c5d
    call api_idx_0054                ; 0x3c5e
    pop cx                           ; 0x3c61
    jmp near @..api_idx_00d4.l44     ; 0x3c62
@..api_idx_00d4.l42:
    mov ax, word [bp - 0x0008]       ; 0x3c65
    jmp near @..api_idx_00d4.l43     ; 0x3c68

    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x1b, 0xc5, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x93, 0x00, 0x50
    db 0xb8, 0xa0, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x05, 0xf4, 0x5b, 0x50, 0xe8, 0xbd
    db 0xc4, 0x83, 0xc4, 0x08, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x9a, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50
    db 0x8d, 0x86, 0x2c, 0xff, 0x50, 0xe8, 0xa6, 0xc4, 0x83, 0xc4, 0x08, 0xb8, 0x48, 0x02, 0xf7, 0x6e
    db 0xfa, 0x8b, 0xd8, 0x8a, 0x87, 0x48, 0x5d, 0x2a, 0xe4, 0x89, 0x86, 0x54, 0xff, 0x3d, 0xff, 0x00
    db 0x74, 0x1a, 0xb9, 0x0c, 0x00, 0xf7, 0xe9, 0x03, 0xd8, 0x80, 0xbf, 0x38, 0x5c, 0x03, 0x75, 0x0c
    db 0xc7, 0x86, 0x50, 0xff, 0x01, 0x00, 0xc7, 0x86, 0x68, 0xff, 0x08, 0x00, 0x83, 0xbe, 0x68, 0xff
    db 0xff, 0x74, 0x03, 0xe9, 0x97, 0x00, 0xc7, 0x86, 0x50, 0xff, 0x00, 0x00, 0xc7, 0x46, 0xfe, 0x00
    db 0x00, 0xff, 0x76, 0xfe, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x05, 0x33, 0x5d, 0x50, 0xe8, 0x78
    db 0xaf, 0x83, 0xc4, 0x04, 0x8b, 0x4e, 0xfe, 0xd1, 0xe1, 0x8b, 0xd9, 0x03, 0xdd, 0x89, 0x47, 0xba
    db 0x8b, 0x46, 0xfe, 0x3d, 0x04, 0x00, 0x74, 0x38, 0x83, 0x7e, 0xfa, 0x03, 0x7c, 0x32, 0x81, 0xbe
    db 0x54, 0xff, 0xff, 0x00, 0x74, 0x2a, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x50, 0xb8, 0x0c, 0x00
    db 0xf7, 0xae, 0x54, 0xff, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x80, 0xbf, 0x38, 0x5c, 0x02
    db 0x75, 0x0e, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0xc7, 0x47, 0xba, 0x00, 0x00
    db 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0x83, 0x7f, 0xba, 0x01, 0x75, 0x0b, 0xff
    db 0x86, 0x50, 0xff, 0x8b, 0x46, 0xfe, 0x89, 0x86, 0x68, 0xff, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe
    db 0x3d, 0x08, 0x00, 0x7d, 0x03, 0xe9, 0x79, 0xff, 0xc7, 0x46, 0xca, 0xff, 0xff, 0x83, 0xbe, 0x50
    db 0xff, 0x01, 0x7e, 0x3a, 0x8d, 0x46, 0xba, 0x50, 0xb8, 0x1b, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x2a, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50
    db 0xb8, 0xa6, 0x00, 0x50, 0xb8, 0xe7, 0x00, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50
    db 0xb8, 0xea, 0x0b, 0x50, 0xe8, 0x69, 0xd3, 0x83, 0xc4, 0x18, 0x89, 0x86, 0x68, 0xff, 0x83, 0xbe
    db 0x68, 0xff, 0xff, 0x75, 0x03, 0xe9, 0x82, 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8
    db 0x8a, 0x87, 0x31, 0x5d, 0x2a, 0xe4, 0x89, 0x86, 0x4e, 0xff, 0x3d, 0x02, 0x00, 0x75, 0x0d, 0x83
    db 0xbe, 0x68, 0xff, 0x04, 0x74, 0x06, 0xc7, 0x86, 0x4e, 0xff, 0x00, 0x00, 0xb8, 0x2c, 0x00, 0xf7
    db 0x6e, 0xfa, 0x8b, 0xf0, 0x8b, 0x1e, 0x82, 0x84, 0x8a, 0x40, 0x1f, 0x2a, 0xe4, 0x8b, 0x8e, 0x4e
    db 0xff, 0xd1, 0xe1, 0x8b, 0xd9, 0x8b, 0x8f, 0x86, 0x93, 0x3b, 0xc1, 0x7e, 0x0e, 0xb8, 0x00, 0x00
    db 0x50, 0xe8, 0xd1, 0x79, 0x59, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0x83, 0xbe, 0x4e, 0xff, 0x00
    db 0x75, 0x26, 0x83, 0x7e, 0xfa, 0x03, 0x7c, 0x20, 0xb8, 0x2c, 0x00, 0xf7, 0x6e, 0xfa, 0x8b, 0xf0
    db 0x8b, 0x1e, 0x82, 0x84, 0x80, 0x78, 0x2b, 0x01, 0x74, 0x0e, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xa4
    db 0x79, 0x59, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0xeb, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00
    db 0xe9, 0x2d, 0x02, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x38, 0xc3, 0x59, 0xb8, 0x01, 0x00, 0x50, 0xb8
    db 0x93, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x05, 0xf4, 0x5b
    db 0x50, 0xe8, 0xda, 0xc2, 0x83, 0xc4, 0x08, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x9a, 0x00, 0x50, 0xb8
    db 0xa0, 0x00, 0x50, 0x8d, 0x86, 0x2c, 0xff, 0x50, 0xe8, 0xc3, 0xc2, 0x83, 0xc4, 0x08, 0xc7, 0x46
    db 0xfe, 0x00, 0x00, 0x8b, 0x46, 0xfe, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd, 0xc7, 0x47, 0xd8, 0x01
    db 0x00, 0xff, 0x46, 0xfe, 0x8b, 0x46, 0xfe, 0x3d, 0x04, 0x00, 0x7c, 0xe7, 0xc7, 0x46, 0xd8, 0x00
    db 0x00, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0xfa, 0x8b, 0xd8, 0x8a, 0x87, 0x49, 0x5d, 0x2a, 0xe4, 0x89
    db 0x86, 0x54, 0xff, 0x3d, 0xff, 0x00, 0x74, 0x13, 0xb9, 0x0c, 0x00, 0xf7, 0xe9, 0x03, 0xd8, 0x80
    db 0xbf, 0x38, 0x5c, 0x0b, 0x75, 0x05, 0xc7, 0x46, 0xd8, 0x01, 0x00, 0xc7, 0x46, 0xe0, 0xff, 0xff
    db 0x8d, 0x46, 0xd8, 0x50, 0xb8, 0x1b, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x2a, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0xa6, 0x00, 0x50
    db 0xb8, 0xe7, 0x00, 0x50, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x1c, 0x0c, 0x50
    db 0xe8, 0x0d, 0xd2, 0x83, 0xc4, 0x18, 0x89, 0x86, 0x68, 0xff, 0x3d, 0xff, 0xff, 0x75, 0x06, 0xc7
    db 0x86, 0x62, 0xff, 0x01, 0x00, 0xe9, 0x58, 0x01, 0xe9, 0x55, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xe8
    db 0x60, 0xc2, 0x59, 0xb8, 0x16, 0x00, 0x50, 0xb8, 0x9a, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0x8d
    db 0x86, 0x2c, 0xff, 0x50, 0xe8, 0x07, 0xc2, 0x83, 0xc4, 0x08, 0xff, 0x76, 0xfa, 0xe8, 0xfc, 0xe9
    db 0x59, 0x89, 0x86, 0x68, 0xff, 0x3d, 0xff, 0xff, 0x75, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00
    db 0xe9, 0x1d, 0x01, 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x28, 0xc2, 0x59, 0xb8, 0x16, 0x00, 0x50, 0xb8
    db 0x9a, 0x00, 0x50, 0xb8, 0xa0, 0x00, 0x50, 0x8d, 0x86, 0x2c, 0xff, 0x50, 0xe8, 0xcf, 0xc1, 0x83
    db 0xc4, 0x08, 0xff, 0x76, 0xfa, 0xe8, 0x58, 0xf4, 0x59, 0x89, 0x86, 0x68, 0xff, 0x3d, 0xff, 0xff
    db 0x75, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0xe9, 0xe5, 0x00, 0xe8, 0x18, 0x8f, 0x89, 0x86
    db 0x68, 0xff, 0x3d, 0xff, 0xff, 0x75, 0x06, 0xc7, 0x86, 0x62, 0xff, 0x01, 0x00, 0xe9, 0xd0, 0x00
    db 0xe9, 0xcd, 0x00, 0xc7, 0x86, 0x68, 0xff, 0x08, 0x00, 0xe9, 0xc4, 0x00, 0xe9, 0xc1, 0x00, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x2d, 0x00, 0x50, 0xb8, 0xd8, 0x90, 0x50, 0xe8, 0x3d, 0xb3, 0x83, 0xc4
    db 0x06, 0xc7, 0x86, 0x66, 0xff, 0x00, 0x00, 0xeb, 0x33, 0xb8, 0x2c, 0x00, 0xf7, 0xae, 0x66, 0xff
    db 0x8b, 0xf0, 0x8b, 0x1e, 0x82, 0x84, 0x80, 0x78, 0x1f, 0x00, 0x76, 0x1c, 0x8a, 0x40, 0x1f, 0x2a
    db 0xe4, 0xb9, 0x09, 0x00, 0xf7, 0xe9, 0x50, 0x8a, 0x40, 0x20, 0x2a, 0xe4, 0x8b, 0xc8, 0x58, 0x03
    db 0xc1, 0x8b, 0xd8, 0xc6, 0x87, 0xd8, 0x90, 0x01, 0xff, 0x86, 0x66, 0xff, 0x8b, 0x46, 0xfa, 0x48
    db 0x3b, 0x86, 0x66, 0xff, 0x7f, 0xc3, 0x8b, 0x86, 0x4c, 0xff, 0xd1, 0xe0, 0x8b, 0xd8, 0x03, 0xdd
    db 0x8b, 0x87, 0x3c, 0xff, 0x48, 0x89, 0x46, 0xfa, 0xff, 0x8e, 0x4c, 0xff, 0xff, 0x8e, 0x4c, 0xff
    db 0xc7, 0x86, 0x60, 0xff, 0x01, 0x00, 0xeb, 0x48, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x2d, 0x00, 0x50
    db 0xb8, 0xd8, 0x90, 0x50, 0xe8, 0xc4, 0xb2, 0x83, 0xc4, 0x06, 0xc7, 0x46, 0xfa, 0xff, 0xff, 0xc7
    db 0x86, 0x60, 0xff, 0x01, 0x00, 0xc7, 0x86, 0x4c, 0xff, 0x00, 0x00, 0xeb, 0x23, 0xb2, 0x8c, 0x95
    db 0x8e, 0xf2, 0x8f, 0x6d, 0x8f, 0xa5, 0x8f, 0xf5, 0x8f, 0xfe, 0x8f, 0xdd, 0x8f, 0x6a, 0x8f, 0x01
    db 0x90, 0x7a, 0x90

@..api_idx_00d4.l43:
    cmp ax, strict word 0xb          ; 0x406e
    jae short @..api_idx_00d4.l44    ; 0x4071
    xchg bx, ax                      ; 0x4073
    shl bx, 1                        ; 0x4074
    jmp [cs:bx - 0x6f61]             ; 0x4076
@..api_idx_00d4.l44:
    cmp word [bp - 0x009e], byte 1   ; 0x407b
    jne short @..api_idx_00d4.l45    ; 0x4080
    jmp near @..api_idx_00d4.l16     ; 0x4082
@..api_idx_00d4.l45:
    mov ax, 0                        ; 0x4085
    push ax                          ; 0x4088
    call api_idx_0006                ; 0x4089
    pop cx                           ; 0x408c
    mov ax, 0x16                     ; 0x408d
    push ax                          ; 0x4090
    mov ax, 0x9a                     ; 0x4091
    push ax                          ; 0x4094
    mov ax, 0xa0                     ; 0x4095
    push ax                          ; 0x4098
    lea ax, word [bp - 0x00d4]       ; 0x4099
    push ax                          ; 0x409d
    call math_loc_0149               ; 0x409e
    add sp, byte 8                   ; 0x40a1
    mov ax, 0                        ; 0x40a4
    push ax                          ; 0x40a7
    call loc_02af                    ; 0x40a8
    pop cx                           ; 0x40ab
    mov ax, 0x32                     ; 0x40ac
    push ax                          ; 0x40af
    call ds_dispatch_e489            ; 0x40b0
    pop cx                           ; 0x40b3
    cmp word [bp - 0x00a0], byte 0   ; 0x40b4
    je short @..api_idx_00d4.l46     ; 0x40b9
    jmp near @..api_idx_00d4.l59     ; 0x40bb
@..api_idx_00d4.l46:
    mov ax, word [bp - 0x0098]       ; 0x40be
    push ax                          ; 0x40c2
    mov ax, 0x2c                     ; 0x40c3
    imul word [bp - 0x0006]          ; 0x40c6
    mov si, ax                       ; 0x40c9
    mov bx, word [data_8482]         ; 0x40cb
    pop ax                           ; 0x40cf
    mov word [bx + si + 0xa], ax     ; 0x40d0
    mov ax, 0x2c                     ; 0x40d3
    imul word [bp - 0x0006]          ; 0x40d6
    mov si, ax                       ; 0x40d9
    mov bx, word [data_8482]         ; 0x40db
    mov word [bx + si + 0xc], 0xffff ; 0x40df
    mov al, byte [bp - 0x0008]       ; 0x40e4
    push ax                          ; 0x40e7
    mov ax, 0x2c                     ; 0x40e8
    imul word [bp - 0x0006]          ; 0x40eb
    mov si, ax                       ; 0x40ee
    mov bx, word [data_8482]         ; 0x40f0
    pop ax                           ; 0x40f4
    mov byte [bx + si + 0x1e], al    ; 0x40f5
    mov ax, 0x2c                     ; 0x40f8
    imul word [bp - 0x0006]          ; 0x40fb
    mov si, ax                       ; 0x40fe
    mov bx, word [data_8482]         ; 0x4100
    mov al, byte [bx + si + 0x1f]    ; 0x4104
    sub ah, ah                       ; 0x4107
    mov word [bp - 0x009a], ax       ; 0x4109
    cmp ax, strict word 1            ; 0x410d
    jl short @..api_idx_00d4.l47     ; 0x4110
    cmp ax, strict word 5            ; 0x4112
    jg short @..api_idx_00d4.l47     ; 0x4115
    mov al, byte [bp - 0x009a]       ; 0x4117
    sub ah, ah                       ; 0x411b
    push ax                          ; 0x411d
    push word [bp - 0x0006]          ; 0x411e
    call api_idx_000c                ; 0x4121
    add sp, byte 4                   ; 0x4124
    push ax                          ; 0x4127
    mov ax, 0x2c                     ; 0x4128
    imul word [bp - 0x0006]          ; 0x412b
    mov si, ax                       ; 0x412e
    mov bx, word [data_8482]         ; 0x4130
    pop ax                           ; 0x4134
    mov byte [bx + si + 0x20], al    ; 0x4135
@..api_idx_00d4.l47:
    mov ax, 0x248                    ; 0x4138
    imul word [bp - 0x0006]          ; 0x413b
    mov bx, ax                       ; 0x413e
    mov al, byte [bx + 0x5d49]       ; 0x4140
    sub ah, ah                       ; 0x4144
    mov word [bp - 0x00ac], ax       ; 0x4146
    cmp word [bp - 0x0008], byte 0   ; 0x414a
    je short @..api_idx_00d4.l48     ; 0x414e
    jmp near @..api_idx_00d4.l59     ; 0x4150
@..api_idx_00d4.l48:
    cmp ax, 0xff                     ; 0x4153
    jne short @..api_idx_00d4.l50    ; 0x4156
    mov al, byte [bx + 0x5d48]       ; 0x4158
    sub ah, ah                       ; 0x415c
    cmp ax, 0xff                     ; 0x415e
    jne short @..api_idx_00d4.l50    ; 0x4161
    add bx, strict word 0x5d33       ; 0x4163
    mov ax, bx                       ; 0x4167
    push ax                          ; 0x4169
    call api_idx_0006_3              ; 0x416a
    pop cx                           ; 0x416d
    mov word [bp - 0x0002], ax       ; 0x416e
    cmp ax, strict word 0xffff       ; 0x4171
    je short @..api_idx_00d4.l49     ; 0x4174
    mov ax, word [bp - 0x0002]       ; 0x4176
    push ax                          ; 0x4179
    mov ax, 0x2c                     ; 0x417a
    imul word [bp - 0x0006]          ; 0x417d
    mov si, ax                       ; 0x4180
    mov bx, word [data_8482]         ; 0x4182
    pop ax                           ; 0x4186
    mov word [bx + si + 0xc], ax     ; 0x4187
@..api_idx_00d4.l49:
    jmp near @..api_idx_00d4.l59     ; 0x418a
@..api_idx_00d4.l50:
    cmp word [bp - 0x00ac], strict word 0xff ; 0x418d
    jne short @..api_idx_00d4.l51    ; 0x4193
    jmp near @..api_idx_00d4.l59     ; 0x4195
@..api_idx_00d4.l51:
    mov ax, 0x248                    ; 0x4198
    imul word [bp - 0x0006]          ; 0x419b
    push ax                          ; 0x419e
    mov ax, 0xc                      ; 0x419f
    imul word [bp - 0x00ac]          ; 0x41a2
    mov cx, ax                       ; 0x41a6
    pop ax                           ; 0x41a8
    add ax, cx                       ; 0x41a9
    mov bx, ax                       ; 0x41ab
    cmp byte [bx + 0x5c38], 3        ; 0x41ad
    jne short @..api_idx_00d4.l52    ; 0x41b2
    mov al, byte [bx + 0x5c3b]       ; 0x41b4
    sub ah, ah                       ; 0x41b8
    test ax, 0x20                    ; 0x41ba
    je short @..api_idx_00d4.l52     ; 0x41bd
    mov ax, 0x2c                     ; 0x41bf
    imul word [bp - 0x0006]          ; 0x41c2
    mov si, ax                       ; 0x41c5
    mov bx, word [data_8482]         ; 0x41c7
    mov word [bx + si + 0xc], 8      ; 0x41cb
    jmp near @..api_idx_00d4.l59     ; 0x41d0
@..api_idx_00d4.l52:
    mov ax, 0x248                    ; 0x41d3
    imul word [bp - 0x0006]          ; 0x41d6
    push ax                          ; 0x41d9
    mov ax, 0xc                      ; 0x41da
    imul word [bp - 0x00ac]          ; 0x41dd
    mov cx, ax                       ; 0x41e1
    pop ax                           ; 0x41e3
    add ax, cx                       ; 0x41e4
    mov bx, ax                       ; 0x41e6
    mov al, byte [bx + 0x5c38]       ; 0x41e8
    cmp al, data_0002                ; 0x41ec
    je short @..api_idx_00d4.l53     ; 0x41ee
    cmp al, 0xc                      ; 0x41f0
    je short @..api_idx_00d4.l53     ; 0x41f2
    cmp al, 0x10                     ; 0x41f4
    jne short @..api_idx_00d4.l54    ; 0x41f6
@..api_idx_00d4.l53:
    mov ax, 0x2c                     ; 0x41f8
    imul word [bp - 0x0006]          ; 0x41fb
    mov si, ax                       ; 0x41fe
    mov bx, word [data_8482]         ; 0x4200
    mov word [bx + si + 0xc], 4      ; 0x4204
    jmp near @..api_idx_00d4.l59     ; 0x4209
@..api_idx_00d4.l54:
    mov ax, 0x248                    ; 0x420c
    imul word [bp - 0x0006]          ; 0x420f
    push ax                          ; 0x4212
    mov ax, 0xc                      ; 0x4213
    imul word [bp - 0x00ac]          ; 0x4216
    mov cx, ax                       ; 0x421a
    pop ax                           ; 0x421c
    add ax, cx                       ; 0x421d
    mov bx, ax                       ; 0x421f
    cmp byte [bx + 0x5c38], data_0002 ; 0x4221
    jae short @..api_idx_00d4.l59    ; 0x4226
    mov ax, 0x248                    ; 0x4228
    imul word [bp - 0x0006]          ; 0x422b
    mov bx, ax                       ; 0x422e
    cmp byte [bx + 0x5d43], 1        ; 0x4230
    je short @..api_idx_00d4.l55     ; 0x4235
    cmp word [bp - 0x0006], byte 3   ; 0x4237
    jge short @..api_idx_00d4.l59    ; 0x423b
    cmp word [bp - 0x009a], byte 3   ; 0x423d
    jge short @..api_idx_00d4.l59    ; 0x4242
@..api_idx_00d4.l55:
    mov word [bp - 0x000a], 0        ; 0x4244
@..api_idx_00d4.l56:
    mov ax, 0x248                    ; 0x4249
    imul word [bp - 0x0006]          ; 0x424c
    add ax, 0x5d45                   ; 0x424f
    push ax                          ; 0x4252
    call api_idx_0006_3              ; 0x4253
    pop cx                           ; 0x4256
    mov word [bp - 0x0002], ax       ; 0x4257
    inc word [bp - 0x000a]           ; 0x425a
    cmp word [bp - 0x0002], byte 4   ; 0x425d
    jne short @..api_idx_00d4.l57    ; 0x4261
    cmp word [bp - 0x000a], byte 0x0a ; 0x4263
    jl short @..api_idx_00d4.l56     ; 0x4267
@..api_idx_00d4.l57:
    cmp word [bp - 0x0002], byte 4   ; 0x4269
    jne short @..api_idx_00d4.l58    ; 0x426d
    mov word [bp - 0x0002], 0xffff   ; 0x426f
@..api_idx_00d4.l58:
    cmp word [bp - 0x0002], byte 0xff ; 0x4274
    je short @..api_idx_00d4.l59     ; 0x4278
    mov ax, word [bp - 0x0002]       ; 0x427a
    push ax                          ; 0x427d
    mov ax, 0x2c                     ; 0x427e
    imul word [bp - 0x0006]          ; 0x4281
    mov si, ax                       ; 0x4284
    mov bx, word [data_8482]         ; 0x4286
    pop ax                           ; 0x428a
    mov word [bx + si + 0xc], ax     ; 0x428b
@..api_idx_00d4.l59:
    inc word [bp - 0x0006]           ; 0x428e
    mov ax, word [bp - 0x0006]       ; 0x4291
    cmp ax, word [data_69c8]         ; 0x4294
    je short @..api_idx_00d4.l60     ; 0x4298
    jmp near @..api_idx_00d4.l72     ; 0x429a
@..api_idx_00d4.l60:
    mov ax, 3                        ; 0x429d
    push ax                          ; 0x42a0
    call api_idx_0006                ; 0x42a1
    pop cx                           ; 0x42a4
    lea ax, word [bp - 0x0096]       ; 0x42a5
    push ax                          ; 0x42a9
    mov ax, 0xdb2                    ; 0x42aa
    push ax                          ; 0x42ad
    call ds_dispatch_b53b            ; 0x42ae
    add sp, byte 4                   ; 0x42b1
    mov ax, 1                        ; 0x42b4
    push ax                          ; 0x42b7
    mov ax, 0x99                     ; 0x42b8
    push ax                          ; 0x42bb
    mov ax, 0xa0                     ; 0x42bc
    push ax                          ; 0x42bf
    lea ax, word [bp - 0x0096]       ; 0x42c0
    push ax                          ; 0x42c4
    call math_loc_0149               ; 0x42c5
    add sp, byte 8                   ; 0x42c8
    mov ax, 3                        ; 0x42cb
    push ax                          ; 0x42ce
    call loc_02af                    ; 0x42cf
    pop cx                           ; 0x42d2
    mov word [bp - 0x0002], 0        ; 0x42d3
@..api_idx_00d4.l61:
    mov ax, word [bp - 0x0002]       ; 0x42d8
    shl ax, 1                        ; 0x42db
    mov bx, ax                       ; 0x42dd
    add bx, bp                       ; 0x42df
    mov word [bx - 0x0028], 1        ; 0x42e1
    inc word [bp - 0x0002]           ; 0x42e6
    mov ax, word [bp - 0x0002]       ; 0x42e9
    cmp ax, strict word 3            ; 0x42ec
    jl short @..api_idx_00d4.l61     ; 0x42ef
    cmp word [bp - 0x00b4], byte 0   ; 0x42f1
    jne short @..api_idx_00d4.l62    ; 0x42f6
    mov word [bp - 0x0026], 0        ; 0x42f8
@..api_idx_00d4.l62:
    mov word [bp - 0x0022], 0xffff   ; 0x42fd
    call ds_dispatch_ec17            ; 0x4302
    lea ax, word [bp - 0x0028]       ; 0x4305
    push ax                          ; 0x4308
    mov ax, 1                        ; 0x4309
    push ax                          ; 0x430c
    mov ax, 0                        ; 0x430d
    push ax                          ; 0x4310
    mov ax, 3                        ; 0x4311
    push ax                          ; 0x4314
    mov ax, 0xa                      ; 0x4315
    push ax                          ; 0x4318
    mov ax, 0x78                     ; 0x4319
    push ax                          ; 0x431c
    mov ax, 0x12                     ; 0x431d
    push ax                          ; 0x4320
    mov ax, 0xa6                     ; 0x4321
    push ax                          ; 0x4324
    mov ax, 0x69                     ; 0x4325
    push ax                          ; 0x4328
    push ax                          ; 0x4329
    mov ax, 1                        ; 0x432a
    push ax                          ; 0x432d
    mov ax, 0xdb3                    ; 0x432e
    push ax                          ; 0x4331
    call math_loc_111b               ; 0x4332
    add sp, byte 0x18                ; 0x4335
    mov word [bp - 0x0002], ax       ; 0x4338
    cmp ax, strict word 2            ; 0x433b
    je short @..api_idx_00d4.l63     ; 0x433e
    jmp near @..api_idx_00d4.l68     ; 0x4340
@..api_idx_00d4.l63:
    mov ax, 5                        ; 0x4343
    push ax                          ; 0x4346
    call ds_dispatch_b75e            ; 0x4347
    pop cx                           ; 0x434a
    mov word [bp - 0x0006], 0        ; 0x434b
    jmp near @..api_idx_00d4.l66     ; 0x4350
@..api_idx_00d4.l64:
    mov ax, 0x2c                     ; 0x4353
    imul word [bp - 0x0006]          ; 0x4356
    mov si, ax                       ; 0x4359
    mov bx, word [data_8482]         ; 0x435b
    cmp byte [bx + si + 0x22], 3     ; 0x435f
    je short @..api_idx_00d4.l65     ; 0x4363
    mov ax, 0x248                    ; 0x4365
    imul word [bp - 0x0006]          ; 0x4368
    mov bx, ax                       ; 0x436b
    mov word [bx + 0x5c0c], 0        ; 0x436d
    mov word [bx + 0x5c10], 0        ; 0x4373
    mov byte [bx + 0x5e2f], 3        ; 0x4379
    mov bx, word [data_8482]         ; 0x437e
    mov word [bx + si + 0x2], 0      ; 0x4382
    mov ax, 0x2c                     ; 0x4387
    imul word [bp - 0x0006]          ; 0x438a
    mov si, ax                       ; 0x438d
    mov bx, word [data_8482]         ; 0x438f
    mov word [bx + si + 0x6], 0      ; 0x4393
    mov ax, 0x2c                     ; 0x4398
    imul word [bp - 0x0006]          ; 0x439b
    mov si, ax                       ; 0x439e
    mov bx, word [data_8482]         ; 0x43a0
    mov byte [bx + si + 0x22], 3     ; 0x43a4
    mov ax, 0x248                    ; 0x43a8
    imul word [bp - 0x0006]          ; 0x43ab
    mov bx, ax                       ; 0x43ae
    mov al, byte [bx + 0x5e2c]       ; 0x43b0
    sub ah, ah                       ; 0x43b4
    add ax, strict word 8            ; 0x43b6
    push ax                          ; 0x43b9
    call ds_dispatch_b7e0            ; 0x43ba
    pop cx                           ; 0x43bd
    mov ax, 1                        ; 0x43be
    push ax                          ; 0x43c1
    push word [bp - 0x0006]          ; 0x43c2
    call ds_dispatch_cb3a            ; 0x43c5
    add sp, byte 4                   ; 0x43c8
    mov ax, 8                        ; 0x43cb
    push ax                          ; 0x43ce
    call ds_dispatch_b75e            ; 0x43cf
    pop cx                           ; 0x43d2
@..api_idx_00d4.l65:
    inc word [bp - 0x0006]           ; 0x43d3
@..api_idx_00d4.l66:
    mov ax, word [bp - 0x0006]       ; 0x43d6
    cmp ax, word [data_69c8]         ; 0x43d9
    jge short @..api_idx_00d4.l67    ; 0x43dd
    jmp near @..api_idx_00d4.l64     ; 0x43df
@..api_idx_00d4.l67:
    mov ax, 1                        ; 0x43e2
    ret                              ; 0x43e5
@..api_idx_00d4.l68:
    cmp word [bp - 0x0002], byte 1   ; 0x43e6
    jne short @..api_idx_00d4.l72    ; 0x43ea
    mov ax, 0                        ; 0x43ec
    push ax                          ; 0x43ef
    mov ax, 0x2d                     ; 0x43f0
    push ax                          ; 0x43f3
    mov ax, 0x90d8                   ; 0x43f4
    push ax                          ; 0x43f7
    call ds_dispatch_f306            ; 0x43f8
    add sp, byte 6                   ; 0x43fb
    mov word [bp - 0x009a], 0        ; 0x43fe
    jmp short @..api_idx_00d4.l71    ; 0x4404
@..api_idx_00d4.l69:
    mov ax, 0x2c                     ; 0x4406
    imul word [bp - 0x009a]          ; 0x4409
    mov si, ax                       ; 0x440d
    mov bx, word [data_8482]         ; 0x440f
    cmp byte [bx + si + 0x1f], 0     ; 0x4413
    jbe short @..api_idx_00d4.l70    ; 0x4417
    mov al, byte [bx + si + 0x1f]    ; 0x4419
    sub ah, ah                       ; 0x441c
    mov cx, 9                        ; 0x441e
    imul cx                          ; 0x4421
    push ax                          ; 0x4423
    mov al, byte [bx + si + 0x20]    ; 0x4424
    sub ah, ah                       ; 0x4427
    mov cx, ax                       ; 0x4429
    pop ax                           ; 0x442b
    add ax, cx                       ; 0x442c
    mov bx, ax                       ; 0x442e
    mov byte [bx - 0x6f28], 1        ; 0x4430
@..api_idx_00d4.l70:
    inc word [bp - 0x009a]           ; 0x4435
@..api_idx_00d4.l71:
    mov ax, word [data_69c8]         ; 0x4439
    dec ax                           ; 0x443c
    cmp ax, word [bp - 0x009a]       ; 0x443d
    jg short @..api_idx_00d4.l69     ; 0x4441
    mov ax, word [bp - 0x00b4]       ; 0x4443
    shl ax, 1                        ; 0x4447
    mov bx, ax                       ; 0x4449
    add bx, bp                       ; 0x444b
    mov ax, word [bx - 0x00c2]       ; 0x444d
    mov word [bp - 0x0006], ax       ; 0x4451
    dec word [bp - 0x00b4]           ; 0x4454
@..api_idx_00d4.l72:
    jmp near @..api_idx_00d4.l13     ; 0x4458
@..api_idx_00d4.l73:
    mov word [bp - 0x0006], 0        ; 0x445b
    jmp near @..api_idx_00d4.l82     ; 0x4460
@..api_idx_00d4.l74:
    mov ax, 0x2c                     ; 0x4463
    imul word [bp - 0x0006]          ; 0x4466
    mov si, ax                       ; 0x4469
    mov bx, word [data_8482]         ; 0x446b
    cmp byte [bx + si + 0xf], 0      ; 0x446f
    jbe short @..api_idx_00d4.l75    ; 0x4473
    mov ax, 0x64                     ; 0x4475
    push ax                          ; 0x4478
    call ds_dispatch_b7a9            ; 0x4479
    pop cx                           ; 0x447c
    push ax                          ; 0x447d
    mov ax, 0x248                    ; 0x447e
    imul word [bp - 0x0006]          ; 0x4481
    mov bx, ax                       ; 0x4484
    mov al, byte [bx + 0x5d6a]       ; 0x4486
    sub ah, ah                       ; 0x448a
    mov cx, ax                       ; 0x448c
    add ax, strict word 0x50         ; 0x448e
    mov cx, ax                       ; 0x4491
    pop ax                           ; 0x4493
    cmp ax, cx                       ; 0x4494
    jle short @..api_idx_00d4.l75    ; 0x4496
    mov ax, 0x2c                     ; 0x4498
    imul word [bp - 0x0006]          ; 0x449b
    mov si, ax                       ; 0x449e
    mov bx, word [data_8482]         ; 0x44a0
    mov byte [bx + si + 0x1e], 6     ; 0x44a4
@..api_idx_00d4.l75:
    mov ax, 0x2c                     ; 0x44a8
    imul word [bp - 0x0006]          ; 0x44ab
    mov si, ax                       ; 0x44ae
    mov bx, word [data_8482]         ; 0x44b0
    cmp byte [bx + si + 0x1e], 1     ; 0x44b4
    je short @..api_idx_00d4.l76     ; 0x44b8
    cmp byte [bx + si + 0x1e], 7     ; 0x44ba
    jne short @..api_idx_00d4.l77    ; 0x44be
@..api_idx_00d4.l76:
    mov byte [bx + si + 0x18], 1     ; 0x44c0
@..api_idx_00d4.l77:
    mov ax, 0x2c                     ; 0x44c4
    imul word [bp - 0x0006]          ; 0x44c7
    mov si, ax                       ; 0x44ca
    mov bx, word [data_8482]         ; 0x44cc
    cmp byte [bx + si + 0x1e], 0     ; 0x44d0
    jne short @..api_idx_00d4.l79    ; 0x44d4
    cmp word [bx + si + 0xc], byte 0xff ; 0x44d6
    jne short @..api_idx_00d4.l78    ; 0x44da
    mov byte [bx + si + 0x19], 0     ; 0x44dc
    mov ax, 0x2c                     ; 0x44e0
    imul word [bp - 0x0006]          ; 0x44e3
    mov si, ax                       ; 0x44e6
    mov bx, word [data_8482]         ; 0x44e8
    mov byte [bx + si + 0x1b], 0     ; 0x44ec
@..api_idx_00d4.l78:
    jmp short @..api_idx_00d4.l81    ; 0x44f0
@..api_idx_00d4.l79:
    mov word [bp - 0x0002], 1        ; 0x44f2
@..api_idx_00d4.l80:
    mov ax, 0x2c                     ; 0x44f7
    imul word [bp - 0x0006]          ; 0x44fa
    add ax, word [bp - 0x0002]       ; 0x44fd
    mov si, ax                       ; 0x4500
    mov bx, word [data_8482]         ; 0x4502
    mov byte [bx + si + 0x18], 0     ; 0x4506
    inc word [bp - 0x0002]           ; 0x450a
    mov ax, word [bp - 0x0002]       ; 0x450d
    cmp ax, strict word 4            ; 0x4510
    jl short @..api_idx_00d4.l80     ; 0x4513
@..api_idx_00d4.l81:
    inc word [bp - 0x0006]           ; 0x4515
@..api_idx_00d4.l82:
    mov ax, word [bp - 0x0006]       ; 0x4518
    cmp ax, word [data_69c8]         ; 0x451b
    jge short @..api_idx_00d4.l83    ; 0x451f
    jmp near @..api_idx_00d4.l74     ; 0x4521
@..api_idx_00d4.l83:
    mov ax, 0                        ; 0x4524
    ret                              ; 0x4527
%include "vpops/api_idx_0004_4.asm"

%include "vpops/api_idx_0002_2.asm"

%include "vpops/api_idx_0024.asm"

    mov word [bp - 0x000a], 1        ; 0x47f2
@..api_idx_0024.l15:
    cmp word [bp - 0x000a], byte 0x64 ; 0x47f7
    jle short @..api_idx_0024.l16    ; 0x47fb
    mov word [bp - 0x000a], 0x64     ; 0x47fd
@..api_idx_0024.l16:
    mov ax, word [bp - 0x000a]       ; 0x4802
    push ax                          ; 0x4805
    mov al, byte [bx + 0xdb]         ; 0x4806
    sub ah, ah                       ; 0x480a
    mov cx, ax                       ; 0x480c
    pop ax                           ; 0x480e
    cwd                              ; 0x480f
    idiv cx                          ; 0x4810
    mov word [bp - 0x000c], ax       ; 0x4812
    mov al, byte [bx + 0xe2]         ; 0x4815
    sub ah, ah                       ; 0x4819
    test ax, data_0002               ; 0x481b
    je short @..api_idx_0024.l17     ; 0x481e
    mov bx, word [bp - 0x0008]       ; 0x4820
    mov byte [bx + 0x24], 1          ; 0x4823
@..api_idx_0024.l17:
    mov bx, word [bp - 0x0008]       ; 0x4827
    cmp byte [bx + 0x24], 0          ; 0x482a
    jbe short @..api_idx_0024.l18    ; 0x482e
    mov ax, word [bp - 0x000a]       ; 0x4830
    mov cx, data_0002                ; 0x4833
    cwd                              ; 0x4836
    idiv cx                          ; 0x4837
    push ax                          ; 0x4839
    call ds_dispatch_b7a9            ; 0x483a
    pop cx                           ; 0x483d
    push ax                          ; 0x483e
    mov ax, 0x14                     ; 0x483f
    push ax                          ; 0x4842
    call ds_dispatch_b7a9            ; 0x4843
    pop cx                           ; 0x4846
    mov cx, ax                       ; 0x4847
    pop ax                           ; 0x4849
    add ax, cx                       ; 0x484a
    push ax                          ; 0x484c
    mov ax, word [bp - 0x000a]       ; 0x484d
    mov cx, data_0002                ; 0x4850
    cwd                              ; 0x4853
    idiv cx                          ; 0x4854
    mov cx, ax                       ; 0x4856
    pop ax                           ; 0x4858
    add ax, cx                       ; 0x4859
    mov bx, word [bp - 0x0008]       ; 0x485b
    mov byte [bx + 0x25], al         ; 0x485e
@..api_idx_0024.l18:
    mov bx, word [bp - 0x0008]       ; 0x4861
    mov byte [bx + 0x21], 0          ; 0x4864
    push word [bp + 0x4]             ; 0x4868
    call api_idx_0002_2              ; 0x486b
    pop cx                           ; 0x486e
    mov bx, word [bp - 0x0008]       ; 0x486f
    mov byte [bx + 0x1c], al         ; 0x4872
    mov word [bp - 0x0016], 0        ; 0x4875
@..api_idx_0024.l19:
    push word [bp + 0x4]             ; 0x487a
    call api_idx_0002_2              ; 0x487d
    pop cx                           ; 0x4880
    mov bx, word [bp - 0x0008]       ; 0x4881
    mov byte [bx + 0x1d], al         ; 0x4884
    inc word [bp - 0x0016]           ; 0x4887
    mov bx, word [bp - 0x0008]       ; 0x488a
    mov al, byte [bx + 0x1d]         ; 0x488d
    mov cl, byte [bx + 0x1c]         ; 0x4890
    cmp al, cl                       ; 0x4893
    jne short @..api_idx_0024.l20    ; 0x4895
    cmp word [bp - 0x0016], byte 3   ; 0x4897
    jl short @..api_idx_0024.l19     ; 0x489b
@..api_idx_0024.l20:
    mov word [bp - 0x000e], 0        ; 0x489d
@..api_idx_0024.l21:
    mov ax, word [bp + 0x4]          ; 0x48a2
    shl ax, 1                        ; 0x48a5
    mov bx, ax                       ; 0x48a7
    mov bx, word [bx - 0x7b70]       ; 0x48a9
    mov al, byte [bx + 0xdb]         ; 0x48ad
    sub ah, ah                       ; 0x48b1
    cmp ax, word [bp - 0x000e]       ; 0x48b3
    jle short @..api_idx_0024.l22    ; 0x48b6
    mov bx, word [bp - 0x0008]       ; 0x48b8
    cmp byte [bx + 0x22], data_0002  ; 0x48bb
    jae short @..api_idx_0024.l22    ; 0x48bf
    cmp byte [bx + 0x11], 0          ; 0x48c1
    ja short @..api_idx_0024.l22     ; 0x48c5
    cmp byte [bx + 0x10], 0          ; 0x48c7
    jbe short @..api_idx_0024.l23    ; 0x48cb
@..api_idx_0024.l22:
    mov bx, word [bp - 0x0008]       ; 0x48cd
    mov si, word [bp - 0x000e]       ; 0x48d0
    mov byte [bx + si + 0x18], 0     ; 0x48d3
    jmp short @..api_idx_0024.l24    ; 0x48d7
@..api_idx_0024.l23:
    mov al, byte [bp - 0x000a]       ; 0x48d9
    mov bx, word [bp - 0x0008]       ; 0x48dc
    mov si, word [bp - 0x000e]       ; 0x48df
    mov byte [bx + si + 0x18], al    ; 0x48e2
    mov ax, word [bp - 0x000c]       ; 0x48e5
    sub word [bp - 0x000a], ax       ; 0x48e8
@..api_idx_0024.l24:
    inc word [bp - 0x000e]           ; 0x48eb
    mov ax, word [bp - 0x000e]       ; 0x48ee
    cmp ax, strict word 4            ; 0x48f1
    jl short @..api_idx_0024.l21     ; 0x48f4
    mov word [bp - 0x0018], 0xffff   ; 0x48f6
    mov al, byte [bp + 0x6]          ; 0x48fb
    mov bx, word [bp - 0x0008]       ; 0x48fe
    mov byte [bx + 0x1f], al         ; 0x4901
@..api_idx_0024.l25:
    mov ax, word [bp + 0x6]          ; 0x4904
    shl ax, 1                        ; 0x4907
    mov bx, ax                       ; 0x4909
    mov bx, word [bx - 0x7b7e]       ; 0x490b
    mov al, byte [bx + 0x1a1]        ; 0x490f
    sub ah, ah                       ; 0x4913
    push ax                          ; 0x4915
    call ds_dispatch_b7a9            ; 0x4916
    pop cx                           ; 0x4919
    mov bx, word [bp - 0x0008]       ; 0x491a
    mov byte [bx + 0x20], al         ; 0x491d
    mov bx, word [bp - 0x0008]       ; 0x4920
    mov al, byte [bx + 0x20]         ; 0x4923
    sub ah, ah                       ; 0x4926
    mov cx, 0x2c                     ; 0x4928
    imul cx                          ; 0x492b
    mov si, ax                       ; 0x492d
    mov al, byte [bx + 0x1f]         ; 0x492f
    sub ah, ah                       ; 0x4932
    shl ax, 1                        ; 0x4934
    mov bx, ax                       ; 0x4936
    mov bx, word [bx - 0x7b7e]       ; 0x4938
    cmp byte [bx + si + 0x22], 3     ; 0x493c
    jae short @..api_idx_0024.l25    ; 0x4940
    mov ax, 0x64                     ; 0x4942
    push ax                          ; 0x4945
    call ds_dispatch_b7a9            ; 0x4946
    pop cx                           ; 0x4949
    push ax                          ; 0x494a
    mov ax, word [bp + 0x4]          ; 0x494b
    shl ax, 1                        ; 0x494e
    mov bx, ax                       ; 0x4950
    mov bx, word [bx - 0x7b70]       ; 0x4952
    mov al, byte [bx + 0xae]         ; 0x4956
    sub ah, ah                       ; 0x495a
    mov cx, ax                       ; 0x495c
    pop ax                           ; 0x495e
    cmp ax, cx                       ; 0x495f
    jl short @..api_idx_0024.l26     ; 0x4961
    jmp near @..api_idx_0024.l39     ; 0x4963
@..api_idx_0024.l26:
    mov word [bp - 0x0018], 3        ; 0x4966
    mov bx, word [bp - 0x0008]       ; 0x496b
    mov byte [bx + 0x1e], 3          ; 0x496e
    mov ax, 0x64                     ; 0x4972
    push ax                          ; 0x4975
    call ds_dispatch_b7a9            ; 0x4976
    pop cx                           ; 0x4979
    mov word [bp - 0x0012], ax       ; 0x497a
    mov word [bp - 0x0016], 5        ; 0x497d
    mov word [bp - 0x0010], 0        ; 0x4982
    mov word [bp - 0x001a], 0xffff   ; 0x4987
@..api_idx_0024.l27:
    mov ax, word [bp - 0x0012]       ; 0x498c
    cmp ax, word [bp - 0x0016]       ; 0x498f
    jge short @..api_idx_0024.l28    ; 0x4992
    mov ax, word [bp + 0x4]          ; 0x4994
    shl ax, 1                        ; 0x4997
    mov bx, ax                       ; 0x4999
    mov bx, word [bx - 0x7b70]       ; 0x499b
    mov si, word [bp - 0x0010]       ; 0x499f
    mov al, byte [bx + si + 0x90]    ; 0x49a2
    sub ah, ah                       ; 0x49a6
    mov word [bp - 0x001a], ax       ; 0x49a8
@..api_idx_0024.l28:
    inc word [bp - 0x0010]           ; 0x49ab
    cmp word [bp - 0x0016], byte 0x0f ; 0x49ae
    jge short @..api_idx_0024.l29    ; 0x49b2
    add word [bp - 0x0016], byte 5   ; 0x49b4
    jmp short @..api_idx_0024.l31    ; 0x49b8
@..api_idx_0024.l29:
    cmp word [bp - 0x0016], byte 0x37 ; 0x49ba
    jge short @..api_idx_0024.l30    ; 0x49be
    add word [bp - 0x0016], byte 0x0a ; 0x49c0
    jmp short @..api_idx_0024.l31    ; 0x49c4
@..api_idx_0024.l30:
    add word [bp - 0x0016], byte 0x0f ; 0x49c6
@..api_idx_0024.l31:
    cmp word [bp - 0x001a], byte 0xff ; 0x49ca
    je short @..api_idx_0024.l27     ; 0x49ce
    mov ax, 6                        ; 0x49d0
    imul word [bp - 0x001a]          ; 0x49d3
    mov bx, ax                       ; 0x49d6
    cmp byte [bx + 0x624], 1         ; 0x49d8
    je short @..api_idx_0024.l32     ; 0x49dd
    mov ax, word [bp - 0x001a]       ; 0x49df
    cmp ax, strict word 0x58         ; 0x49e2
    je short @..api_idx_0024.l32     ; 0x49e5
    cmp ax, strict word 0x13         ; 0x49e7
    je short @..api_idx_0024.l32     ; 0x49ea
    cmp ax, strict word 0x42         ; 0x49ec
    jne short @..api_idx_0024.l35    ; 0x49ef
@..api_idx_0024.l32:
    cmp word [bp + 0x4], byte 6      ; 0x49f1
    jne short @..api_idx_0024.l34    ; 0x49f5
    mov ax, 0                        ; 0x49f7
    push ax                          ; 0x49fa
    push word [bp - 0x0008]          ; 0x49fb
    call api_idx_0004_4              ; 0x49fe
    add sp, byte 4                   ; 0x4a01
    test ax, ax                      ; 0x4a04
    jne short @..api_idx_0024.l33    ; 0x4a06
    mov ax, 6                        ; 0x4a08
    push ax                          ; 0x4a0b
    push word [bp - 0x0008]          ; 0x4a0c
    call api_idx_0004_4              ; 0x4a0f
    add sp, byte 4                   ; 0x4a12
    test ax, ax                      ; 0x4a15
    jne short @..api_idx_0024.l33    ; 0x4a17
    mov word [bp - 0x0018], 0xffff   ; 0x4a19
@..api_idx_0024.l33:
    jmp short @..api_idx_0024.l35    ; 0x4a1e
@..api_idx_0024.l34:
    push word [bp + 0x4]             ; 0x4a20
    push word [bp - 0x0008]          ; 0x4a23
    call api_idx_0004_4              ; 0x4a26
    add sp, byte 4                   ; 0x4a29
    test ax, ax                      ; 0x4a2c
    jne short @..api_idx_0024.l35    ; 0x4a2e
    push word [data_8466]            ; 0x4a30
    call ds_dispatch_b7a9            ; 0x4a34
    pop cx                           ; 0x4a37
    inc ax                           ; 0x4a38
    push ax                          ; 0x4a39
    push word [bp - 0x0008]          ; 0x4a3a
    call api_idx_0004_4              ; 0x4a3d
    add sp, byte 4                   ; 0x4a40
    test ax, ax                      ; 0x4a43
    jne short @..api_idx_0024.l35    ; 0x4a45
    mov word [bp - 0x0018], 0xffff   ; 0x4a47
@..api_idx_0024.l35:
    mov ax, 6                        ; 0x4a4c
    imul word [bp - 0x001a]          ; 0x4a4f
    mov bx, ax                       ; 0x4a52
    mov al, byte [bx + 0x621]        ; 0x4a54
    sub ah, ah                       ; 0x4a58
    mov cx, ax                       ; 0x4a5a
    mov bx, word [bp - 0x0008]       ; 0x4a5c
    mov ax, word [bx]                ; 0x4a5f
    sub ax, cx                       ; 0x4a61
    inc ax                           ; 0x4a63
    mov word [bp - 0x0012], ax       ; 0x4a64
    mov ax, 1                        ; 0x4a67
    mov cx, word [bp - 0x0012]       ; 0x4a6a
    cmp cx, byte 1                   ; 0x4a6d
    jl short @..api_idx_0024.l36     ; 0x4a70
    mov ax, cx                       ; 0x4a72
    push ax                          ; 0x4a74
    cmp ax, strict word 6            ; 0x4a75
    pop ax                           ; 0x4a78
    jle short @..api_idx_0024.l36    ; 0x4a79
    mov ax, 6                        ; 0x4a7b
@..api_idx_0024.l36:
    mov word [bp - 0x0012], ax       ; 0x4a7e
@..api_idx_0024.l37:
    mov bx, word [bp - 0x0008]       ; 0x4a81
    push word [bx]                   ; 0x4a84
    call ds_dispatch_b7a9            ; 0x4a86
    pop cx                           ; 0x4a89
    inc ax                           ; 0x4a8a
    cmp ax, word [bp - 0x0012]       ; 0x4a8b
    jge short @..api_idx_0024.l38    ; 0x4a8e
    dec word [bp - 0x0012]           ; 0x4a90
    jmp short @..api_idx_0024.l37    ; 0x4a93
@..api_idx_0024.l38:
    mov ax, word [bp - 0x0012]       ; 0x4a95
    xchg al, ah                      ; 0x4a98
    sub al, al                       ; 0x4a9a
    add ax, word [bp - 0x001a]       ; 0x4a9c
    mov bx, word [bp - 0x0008]       ; 0x4a9f
    mov word [bx + 0xa], ax          ; 0x4aa2
@..api_idx_0024.l39:
    cmp word [bp - 0x0018], byte 0xff ; 0x4aa5
    jne short @..api_idx_0024.l40    ; 0x4aa9
    mov ax, 0x64                     ; 0x4aab
    push ax                          ; 0x4aae
    call ds_dispatch_b7a9            ; 0x4aaf
    pop cx                           ; 0x4ab2
    push ax                          ; 0x4ab3
    mov ax, word [bp + 0x4]          ; 0x4ab4
    shl ax, 1                        ; 0x4ab7
    mov bx, ax                       ; 0x4ab9
    mov bx, word [bx - 0x7b70]       ; 0x4abb
    mov al, byte [bx + 0xb0]         ; 0x4abf
    sub ah, ah                       ; 0x4ac3
    mov cx, ax                       ; 0x4ac5
    pop ax                           ; 0x4ac7
    cmp ax, cx                       ; 0x4ac8
    jge short @..api_idx_0024.l40    ; 0x4aca
    mov word [bp - 0x0018], 5        ; 0x4acc
    mov bx, word [bp - 0x0008]       ; 0x4ad1
    mov byte [bx + 0x1e], 5          ; 0x4ad4
    mov ax, word [bp + 0x4]          ; 0x4ad8
    shl ax, 1                        ; 0x4adb
    mov bx, ax                       ; 0x4add
    mov bx, word [bx - 0x7b70]       ; 0x4adf
    mov al, byte [bx + 0xde]         ; 0x4ae3
    sub ah, ah                       ; 0x4ae7
    mov bx, word [bp - 0x0008]       ; 0x4ae9
    mov word [bx + 0xa], ax          ; 0x4aec
@..api_idx_0024.l40:
    cmp word [bp - 0x0018], byte 0xff ; 0x4aef
    je short @..api_idx_0024.l41     ; 0x4af3
    jmp near @..api_idx_0024.l57     ; 0x4af5
@..api_idx_0024.l41:
    mov word [bp - 0x0012], 0        ; 0x4af8
    mov bx, word [bp - 0x0008]       ; 0x4afd
    cmp byte [bx + 0x22], data_0002  ; 0x4b00
    jb short @..api_idx_0024.l42     ; 0x4b04
    jmp near @..api_idx_0024.l47     ; 0x4b06
@..api_idx_0024.l42:
    cmp byte [bx + 0x11], 0          ; 0x4b09
    je short @..api_idx_0024.l43     ; 0x4b0d
    jmp near @..api_idx_0024.l47     ; 0x4b0f
@..api_idx_0024.l43:
    cmp byte [bx + 0x10], 0          ; 0x4b12
    jne short @..api_idx_0024.l47    ; 0x4b16
    mov al, byte [bx + 0x1c]         ; 0x4b18
    sub ah, ah                       ; 0x4b1b
    mov word [bp - 0x0014], ax       ; 0x4b1d
    cmp word [bp + 0x4], byte 6      ; 0x4b20
    jne short @..api_idx_0024.l44    ; 0x4b24
    mov word [bp - 0x0012], 9        ; 0x4b26
    jmp short @..api_idx_0024.l47    ; 0x4b2b
@..api_idx_0024.l44:
    cmp word [bp + 0x4], byte 3      ; 0x4b2d
    jl short @..api_idx_0024.l45     ; 0x4b31
    mov cx, 0x12                     ; 0x4b33
    imul cx                          ; 0x4b36
    mov si, ax                       ; 0x4b38
    mov ax, word [bp + 0x4]          ; 0x4b3a
    shl ax, 1                        ; 0x4b3d
    mov bx, ax                       ; 0x4b3f
    mov bx, word [bx - 0x7b70]       ; 0x4b41
    cmp byte [bx + si + 0x51], 1     ; 0x4b45
    jbe short @..api_idx_0024.l47    ; 0x4b49
@..api_idx_0024.l45:
    mov word [bp - 0x0012], 3        ; 0x4b4b
    mov ax, 0x12                     ; 0x4b50
    imul word [bp - 0x0014]          ; 0x4b53
    mov si, ax                       ; 0x4b56
    mov ax, word [bp + 0x4]          ; 0x4b58
    shl ax, 1                        ; 0x4b5b
    mov bx, ax                       ; 0x4b5d
    mov bx, word [bx - 0x7b70]       ; 0x4b5f
    mov al, byte [bx + si + 0x51]    ; 0x4b63
    sub ah, ah                       ; 0x4b66
    mov cx, data_0002                ; 0x4b68
    cmp word [bp + 0x4], byte 3      ; 0x4b6b
    jge short @..api_idx_0024.l46    ; 0x4b6f
    mov cx, 0                        ; 0x4b71
@..api_idx_0024.l46:
    cmp ax, cx                       ; 0x4b74
    jle short @..api_idx_0024.l47    ; 0x4b76
    mov word [bp - 0x0012], 6        ; 0x4b78
@..api_idx_0024.l47:
    mov ax, word [bp + 0x6]          ; 0x4b7d
    shl ax, 1                        ; 0x4b80
    mov bx, ax                       ; 0x4b82
    mov bx, word [bx - 0x7b7e]       ; 0x4b84
    mov al, byte [bx + 0x1a1]        ; 0x4b88
    sub ah, ah                       ; 0x4b8c
    cmp ax, word [bp - 0x0012]       ; 0x4b8e
    jge short @..api_idx_0024.l48    ; 0x4b91
    mov word [bp - 0x0012], ax       ; 0x4b93
@..api_idx_0024.l48:
    mov word [bp - 0x0010], 0        ; 0x4b96
    mov word [bp - 0x0016], 0        ; 0x4b9b
    jmp short @..api_idx_0024.l51    ; 0x4ba0
@..api_idx_0024.l49:
    mov ax, 0x2c                     ; 0x4ba2
    imul word [bp - 0x0016]          ; 0x4ba5
    mov si, ax                       ; 0x4ba8
    mov ax, word [bp + 0x6]          ; 0x4baa
    shl ax, 1                        ; 0x4bad
    mov bx, ax                       ; 0x4baf
    mov bx, word [bx - 0x7b7e]       ; 0x4bb1
    cmp byte [bx + si + 0x22], 3     ; 0x4bb5
    jae short @..api_idx_0024.l50    ; 0x4bb9
    inc word [bp - 0x0010]           ; 0x4bbb
@..api_idx_0024.l50:
    inc word [bp - 0x0016]           ; 0x4bbe
@..api_idx_0024.l51:
    mov ax, word [bp - 0x0016]       ; 0x4bc1
    cmp ax, word [bp - 0x0012]       ; 0x4bc4
    jl short @..api_idx_0024.l49     ; 0x4bc7
    cmp word [bp - 0x0010], byte 0   ; 0x4bc9
    jg short @..api_idx_0024.l52     ; 0x4bcd
    jmp near @..api_idx_0024.l56     ; 0x4bcf
@..api_idx_0024.l52:
    mov bx, word [bp - 0x0008]       ; 0x4bd2
    mov byte [bx + 0x1e], 0          ; 0x4bd5
    mov al, byte [bp + 0x6]          ; 0x4bd9
    mov bx, word [bp - 0x0008]       ; 0x4bdc
    mov byte [bx + 0x1f], al         ; 0x4bdf
    push word [bp - 0x0010]          ; 0x4be2
    call ds_dispatch_b7a9            ; 0x4be5
    pop cx                           ; 0x4be8
    mov bx, word [bp - 0x0008]       ; 0x4be9
    mov byte [bx + 0x20], al         ; 0x4bec
    mov bx, word [bp - 0x0008]       ; 0x4bef
    mov al, byte [bx + 0x1c]         ; 0x4bf2
    sub ah, ah                       ; 0x4bf5
    mov word [bp - 0x0014], ax       ; 0x4bf7
    mov ax, word [bp + 0x4]          ; 0x4bfa
    shl ax, 1                        ; 0x4bfd
    mov bx, ax                       ; 0x4bff
    mov bx, word [bx - 0x7b70]       ; 0x4c01
    mov si, word [bp - 0x0014]       ; 0x4c05
    cmp byte [bx + si + 0x86], data_0002 ; 0x4c08
    jne short @..api_idx_0024.l53    ; 0x4c0d
    mov bx, word [bp - 0x0008]       ; 0x4c0f
    mov word [bx + 0xa], 4           ; 0x4c12
    jmp short @..api_idx_0024.l55    ; 0x4c17
@..api_idx_0024.l53:
    mov ax, word [bp + 0x4]          ; 0x4c19
    shl ax, 1                        ; 0x4c1c
    mov bx, ax                       ; 0x4c1e
    mov bx, word [bx - 0x7b70]       ; 0x4c20
    mov si, word [bp - 0x0014]       ; 0x4c24
    cmp byte [bx + si + 0x86], 3     ; 0x4c27
    jne short @..api_idx_0024.l54    ; 0x4c2c
    mov bx, word [bp - 0x0008]       ; 0x4c2e
    mov word [bx + 0xa], 8           ; 0x4c31
    jmp short @..api_idx_0024.l55    ; 0x4c36
@..api_idx_0024.l54:
    mov ax, 0x12                     ; 0x4c38
    imul word [bp - 0x0014]          ; 0x4c3b
    mov cx, ax                       ; 0x4c3e
    mov ax, word [bp + 0x4]          ; 0x4c40
    shl ax, 1                        ; 0x4c43
    mov bx, ax                       ; 0x4c45
    mov ax, word [bx - 0x7b70]       ; 0x4c47
    add ax, cx                       ; 0x4c4b
    add ax, strict word 0x53         ; 0x4c4d
    push ax                          ; 0x4c50
    call api_idx_0006_3              ; 0x4c51
    pop cx                           ; 0x4c54
    mov bx, word [bp - 0x0008]       ; 0x4c55
    mov word [bx + 0xa], ax          ; 0x4c58
@..api_idx_0024.l55:
    jmp short @..api_idx_0024.l57    ; 0x4c5b
@..api_idx_0024.l56:
    mov bx, word [bp - 0x0008]       ; 0x4c5d
    mov byte [bx + 0x18], 0          ; 0x4c60
@..api_idx_0024.l57:
    mov ax, 0x64                     ; 0x4c64
    push ax                          ; 0x4c67
    call ds_dispatch_b7a9            ; 0x4c68
    pop cx                           ; 0x4c6b
    mov word [bp - 0x0006], ax       ; 0x4c6c
    mov bx, word [bp - 0x0008]       ; 0x4c6f
    cmp byte [bx + 0xf], 0           ; 0x4c72
    jbe short @..api_idx_0024.l58    ; 0x4c76
    mov cx, word [bp - 0x001c]       ; 0x4c78
    add cx, byte 0x0a                ; 0x4c7b
    jmp short @..api_idx_0024.l59    ; 0x4c7e
@..api_idx_0024.l58:
    mov cx, word [bp - 0x001c]       ; 0x4c80
@..api_idx_0024.l59:
    cmp cx, ax                       ; 0x4c83
    jle short @..api_idx_0024.l60    ; 0x4c85
    mov ax, word [bp + 0x4]          ; 0x4c87
    shl ax, 1                        ; 0x4c8a
    mov bx, ax                       ; 0x4c8c
    mov bx, word [bx - 0x7b70]       ; 0x4c8e
    mov al, byte [bx + 0xb2]         ; 0x4c92
    sub ah, ah                       ; 0x4c96
    mov cx, ax                       ; 0x4c98
    mov ax, word [bp - 0x0006]       ; 0x4c9a
    cmp cx, ax                       ; 0x4c9d
    jle short @..api_idx_0024.l60    ; 0x4c9f
    mov word [bp - 0x0018], 6        ; 0x4ca1
    mov bx, word [bp - 0x0008]       ; 0x4ca6
    mov byte [bx + 0x1e], 6          ; 0x4ca9
@..api_idx_0024.l60:
    mov bx, word [bp - 0x0008]       ; 0x4cad
    mov word [bx + 0xc], 0xffff      ; 0x4cb0
    mov bx, word [bp - 0x0008]       ; 0x4cb5
    cmp byte [bx + 0x1e], 0          ; 0x4cb8
    je short @..api_idx_0024.l61     ; 0x4cbc
    jmp near @..api_idx_0024.l68     ; 0x4cbe
@..api_idx_0024.l61:
    mov al, byte [bx + 0x1d]         ; 0x4cc1
    sub ah, ah                       ; 0x4cc4
    mov word [bp - 0x0014], ax       ; 0x4cc6
    cmp word [bp + 0x4], byte 3      ; 0x4cc9
    jl short @..api_idx_0024.l62     ; 0x4ccd
    mov cx, 0x12                     ; 0x4ccf
    imul cx                          ; 0x4cd2
    mov si, ax                       ; 0x4cd4
    mov ax, word [bp + 0x4]          ; 0x4cd6
    shl ax, 1                        ; 0x4cd9
    mov bx, ax                       ; 0x4cdb
    mov bx, word [bx - 0x7b70]       ; 0x4cdd
    cmp byte [bx + si + 0x51], 1     ; 0x4ce1
    jbe short @..api_idx_0024.l66    ; 0x4ce5
@..api_idx_0024.l62:
    mov ax, word [bp + 0x4]          ; 0x4ce7
    shl ax, 1                        ; 0x4cea
    mov bx, ax                       ; 0x4cec
    mov bx, word [bx - 0x7b70]       ; 0x4cee
    mov si, word [bp - 0x0014]       ; 0x4cf2
    cmp byte [bx + si + 0x86], data_0002 ; 0x4cf5
    jne short @..api_idx_0024.l63    ; 0x4cfa
    mov bx, word [bp - 0x0008]       ; 0x4cfc
    mov word [bx + 0xc], 4           ; 0x4cff
    jmp short @..api_idx_0024.l65    ; 0x4d04
@..api_idx_0024.l63:
    mov ax, word [bp + 0x4]          ; 0x4d06
    shl ax, 1                        ; 0x4d09
    mov bx, ax                       ; 0x4d0b
    mov bx, word [bx - 0x7b70]       ; 0x4d0d
    mov si, word [bp - 0x0014]       ; 0x4d11
    cmp byte [bx + si + 0x86], 3     ; 0x4d14
    jne short @..api_idx_0024.l64    ; 0x4d19
    mov bx, word [bp - 0x0008]       ; 0x4d1b
    mov word [bx + 0xc], 8           ; 0x4d1e
    jmp short @..api_idx_0024.l65    ; 0x4d23
@..api_idx_0024.l64:
    mov ax, 0x12                     ; 0x4d25
    imul word [bp - 0x0014]          ; 0x4d28
    mov cx, ax                       ; 0x4d2b
    mov ax, word [bp + 0x4]          ; 0x4d2d
    shl ax, 1                        ; 0x4d30
    mov bx, ax                       ; 0x4d32
    mov ax, word [bx - 0x7b70]       ; 0x4d34
    add ax, cx                       ; 0x4d38
    add ax, strict word 0x53         ; 0x4d3a
    push ax                          ; 0x4d3d
    call api_idx_0006_3              ; 0x4d3e
    pop cx                           ; 0x4d41
    mov bx, word [bp - 0x0008]       ; 0x4d42
    mov word [bx + 0xc], ax          ; 0x4d45
@..api_idx_0024.l65:
    jmp short @..api_idx_0024.l67    ; 0x4d48
@..api_idx_0024.l66:
    mov bx, word [bp - 0x0008]       ; 0x4d4a
    mov byte [bx + 0x19], 0          ; 0x4d4d
    mov bx, word [bp - 0x0008]       ; 0x4d51
    mov byte [bx + 0x1b], 0          ; 0x4d54
@..api_idx_0024.l67:
    jmp short @..api_idx_0024.l70    ; 0x4d58
@..api_idx_0024.l68:
    mov word [bp - 0x0004], 1        ; 0x4d5a
@..api_idx_0024.l69:
    mov bx, word [bp - 0x0008]       ; 0x4d5f
    mov si, word [bp - 0x0004]       ; 0x4d62
    mov byte [bx + si + 0x18], 0     ; 0x4d65
    inc word [bp - 0x0004]           ; 0x4d69
    mov ax, word [bp - 0x0004]       ; 0x4d6c
    cmp ax, strict word 4            ; 0x4d6f
    jl short @..api_idx_0024.l69     ; 0x4d72
@..api_idx_0024.l70:
    inc word [bp - 0x0002]           ; 0x4d74
@..api_idx_0024.l71:
    mov ax, word [bp + 0x4]          ; 0x4d77
    shl ax, 1                        ; 0x4d7a
    mov bx, ax                       ; 0x4d7c
    mov bx, word [bx - 0x7b7e]       ; 0x4d7e
    mov al, byte [bx + 0x1a1]        ; 0x4d82
    sub ah, ah                       ; 0x4d86
    cmp ax, word [bp - 0x0002]       ; 0x4d88
    jle short @..api_idx_0024.l72    ; 0x4d8b
    jmp near @..api_idx_0024.l14     ; 0x4d8d
@..api_idx_0024.l72:
    ret                              ; 0x4d90
%include "vpops/api_idx_0002_3.asm"

%include "vpops/api_idx_0004_5.asm"

loc_4e9d:
    pop word [data_90d4]             ; 0x4e9d
    pop cx                           ; 0x4ea1
    mov word [data_90d0], sp         ; 0x4ea2
    mov word [data_90d2], bp         ; 0x4ea6
    mov word [data_90cc], si         ; 0x4eaa
    mov word [data_90ce], di         ; 0x4eae
    cld                              ; 0x4eb2
    mov di, data_90d6                ; 0x4eb3
    mov cx, 0x938e                   ; 0x4eb6
    sub cx, di                       ; 0x4eb9
    shr cx, 1                        ; 0x4ebb
    je short @..local.l21            ; 0x4ebd
    sub ax, ax                       ; 0x4ebf
    rep stosw                        ; 0x4ec1
@..local.l21:
    call loc_000e                    ; 0x4ec3
    mov bp, word [data_90d2]         ; 0x4ec6
    mov sp, word [data_90d0]         ; 0x4eca
    mov si, word [data_90cc]         ; 0x4ece
    mov di, word [data_90ce]         ; 0x4ed2
    push cx                          ; 0x4ed6
    jmp [data_90d4]                  ; 0x4ed7

    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    times 11 db 0

