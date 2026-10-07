%include "structs/structs.inc"
%include "structs/loc_4aa9.inc"
org 0
bits 16
%include "labels/vpclv_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xa2, 0x54, 0x98, 0x90

data_0002 equ 0x0002
data_0038 equ 0x0038
data_003c equ 0x003c
data_0040 equ 0x0040
data_0042 equ 0x0042
data_0044 equ 0x0044
data_010c equ 0x010c
data_0e32 equ 0x0e32
loc_2c8d equ 0x2c8d
loc_2ca3 equ 0x2ca3
loc_2cbb equ 0x2cbb
loc_2cbf equ 0x2cbf
loc_2cd6 equ 0x2cd6
loc_2cdf equ 0x2cdf
loc_2ced equ 0x2ced
loc_2d06 equ 0x2d06
loc_2d07 equ 0x2d07
loc_2d0d equ 0x2d0d
loc_2d6d equ 0x2d6d
loc_2d75 equ 0x2d75
loc_2e67 equ 0x2e67
loc_2e6c equ 0x2e6c
loc_2e93 equ 0x2e93
loc_2eac equ 0x2eac
loc_2eb3 equ 0x2eb3
loc_2f21 equ 0x2f21
loc_2f23 equ 0x2f23
loc_2f42 equ 0x2f42
loc_2f46 equ 0x2f46
loc_3734 equ 0x3734
data_3a87 equ 0x3a87
loc_3d08 equ 0x3d08
loc_4615 equ 0x4615
loc_4aa9 equ 0x4aa9
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_69c8 equ 0x69c8
data_7096 equ 0x7096
data_82ee equ 0x82ee
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8f20 equ 0x8f20
data_904e equ 0x904e
data_9050 equ 0x9050
data_905a equ 0x905a
data_905e equ 0x905e
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_9096 equ 0x9096
data_9416 equ 0x9416
data_9418 equ 0x9418
data_941a equ 0x941a
data_941c equ 0x941c
data_941e equ 0x941e
data_9420 equ 0x9420
data_9422 equ 0x9422
data_9424 equ 0x9424
data_9426 equ 0x9426
data_9428 equ 0x9428
data_942a equ 0x942a
data_942c equ 0x942c
data_9432 equ 0x9432
data_9434 equ 0x9434
data_9436 equ 0x9436
data_9438 equ 0x9438
data_943a equ 0x943a
data_948c equ 0x948c
data_948e equ 0x948e
data_9490 equ 0x9490
data_9492 equ 0x9492
data_95d0 equ 0x95d0
data_95f4 equ 0x95f4
data_9704 equ 0x9704

    db 0x70, 0x03, 0xa4, 0x03, 0xb9, 0xa4
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [data_830a], byte 0x16  ; 0x0014
    jne short @..local.l1            ; 0x0019
    call api_idx_000c_3              ; 0x001b
@..local.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
%include "vpclv/api_idx_0002.asm"

%include "vpclv/api_idx_0012.asm"

%include "vpclv/api_idx_000c.asm"

%include "vpclv/api_idx_0004.asm"

%include "vpclv/api_idx_0002_2.asm"

%include "vpclv/api_idx_0002_3.asm"

%include "vpclv/api_idx_0010.asm"

%include "vpclv/api_idx_000a.asm"

%include "vpclv/api_idx_007c.asm"

    pop ax                           ; 0x0772
    push ax                          ; 0x0773
    push dx                          ; 0x0774
    mul bx                           ; 0x0775
    mov bx, ax                       ; 0x0777
    pop ax                           ; 0x0779
    mul cx                           ; 0x077a
    add bx, ax                       ; 0x077c
    pop ax                           ; 0x077e
    mul cx                           ; 0x077f
    add dx, bx                       ; 0x0781
    mov cx, 0x12                     ; 0x0783
    mov bx, 0                        ; 0x0786
    call ds_dispatch_f99f            ; 0x0789
    mov word [data_9436], ax         ; 0x078c
    mov ax, 0x14                     ; 0x078f
    push ax                          ; 0x0792
    mov ax, 0                        ; 0x0793
    push ax                          ; 0x0796
    push word [data_9436]            ; 0x0797
    call ds_dispatch_b7c2            ; 0x079b
    add sp, byte 6                   ; 0x079e
    mov word [data_9436], ax         ; 0x07a1
    mov ax, 0x248                    ; 0x07a4
    imul word [bp + 0x4]             ; 0x07a7
    mov bx, ax                       ; 0x07aa
    cmp byte [bx + 0x5e2f], 3        ; 0x07ac
    jae short @..api_idx_007c.l1     ; 0x07b1
    mov ax, 0                        ; 0x07b3
    jmp short @..api_idx_007c.l2     ; 0x07b6
@..api_idx_007c.l1:
    mov ax, 1                        ; 0x07b8
@..api_idx_007c.l2:
    mov word [data_9438], ax         ; 0x07bb
    mov word [data_943a], 0          ; 0x07be
    push word [data_943a]            ; 0x07c4
    call api_idx_000a                ; 0x07c8
    pop cx                           ; 0x07cb
    mov ax, 0                        ; 0x07cc
    push ax                          ; 0x07cf
    mov ax, 0x55                     ; 0x07d0
    push ax                          ; 0x07d3
    call ds_dispatch_e823            ; 0x07d4
    add sp, byte 4                   ; 0x07d7
    mov word [bp - 0x0002], 0        ; 0x07da
@..api_idx_007c.l3:
    mov ax, 6                        ; 0x07df
    imul word [bp - 0x0002]          ; 0x07e2
    add ax, strict word 0x23         ; 0x07e5
    push ax                          ; 0x07e8
    mov ax, 0x73                     ; 0x07e9
    push ax                          ; 0x07ec
    call ds_dispatch_e809            ; 0x07ed
    add sp, byte 4                   ; 0x07f0
    lea ax, word [bp - 0x0058]       ; 0x07f3
    push ax                          ; 0x07f6
    mov ax, word [bp - 0x0002]       ; 0x07f7
    add ax, 0xcc                     ; 0x07fa
    push ax                          ; 0x07fd
    call ds_dispatch_b53b            ; 0x07fe
    add sp, byte 4                   ; 0x0801
    mov ax, 0                        ; 0x0804
    push ax                          ; 0x0807
    lea ax, word [bp - 0x0058]       ; 0x0808
    push ax                          ; 0x080b
    call ds_dispatch_e84e            ; 0x080c
    add sp, byte 4                   ; 0x080f
    mov ax, 0                        ; 0x0812
    push ax                          ; 0x0815
    mov ax, 3                        ; 0x0816
    push ax                          ; 0x0819
    mov ax, 0x248                    ; 0x081a
    imul word [bp + 0x4]             ; 0x081d
    add ax, word [bp - 0x0002]       ; 0x0820
    mov bx, ax                       ; 0x0823
    mov al, byte [bx + 0x5d64]       ; 0x0825
    sub ah, ah                       ; 0x0829
    push ax                          ; 0x082b
    call ds_dispatch_b2e7            ; 0x082c
    add sp, byte 6                   ; 0x082f
    inc word [bp - 0x0002]           ; 0x0832
    mov ax, word [bp - 0x0002]       ; 0x0835
    cmp ax, strict word 8            ; 0x0838
    jl short @..api_idx_007c.l3      ; 0x083b
    mov ax, 0                        ; 0x083d
    push ax                          ; 0x0840
    mov ax, 0xfd                     ; 0x0841
    push ax                          ; 0x0844
    call ds_dispatch_e823            ; 0x0845
    add sp, byte 4                   ; 0x0848
    lea ax, word [bp - 0x0058]       ; 0x084b
    push ax                          ; 0x084e
    mov ax, 0xc9                     ; 0x084f
    push ax                          ; 0x0852
    call ds_dispatch_b53b            ; 0x0853
    add sp, byte 4                   ; 0x0856
    mov ax, 6                        ; 0x0859
    push ax                          ; 0x085c
    mov ax, 0xe4                     ; 0x085d
    push ax                          ; 0x0860
    call ds_dispatch_e809            ; 0x0861
    add sp, byte 4                   ; 0x0864
    mov ax, 0                        ; 0x0867
    push ax                          ; 0x086a
    lea ax, word [bp - 0x0058]       ; 0x086b
    push ax                          ; 0x086e
    call ds_dispatch_e84e            ; 0x086f
    add sp, byte 4                   ; 0x0872
    lea ax, word [bp - 0x0058]       ; 0x0875
    push ax                          ; 0x0878
    mov ax, 0x248                    ; 0x0879
    imul word [bp + 0x4]             ; 0x087c
    mov bx, ax                       ; 0x087f
    mov al, byte [bx + 0x5e2d]       ; 0x0881
    sub ah, ah                       ; 0x0885
    mov cx, 0xa                      ; 0x0887
    imul cx                          ; 0x088a
    push ax                          ; 0x088c
    mov al, byte [bx + 0x5e2e]       ; 0x088d
    sub ah, ah                       ; 0x0891
    mov cx, ax                       ; 0x0893
    pop ax                           ; 0x0895
    add ax, cx                       ; 0x0896
    add ax, 0x320                    ; 0x0898
    push ax                          ; 0x089b
    call ds_dispatch_b53b            ; 0x089c
    add sp, byte 4                   ; 0x089f
    mov ax, 6                        ; 0x08a2
    push ax                          ; 0x08a5
    lea ax, word [bp - 0x0058]       ; 0x08a6
    push ax                          ; 0x08a9
    call ds_dispatch_fa90            ; 0x08aa
    pop cx                           ; 0x08ad
    mov cx, 0x34                     ; 0x08ae
    sub cx, ax                       ; 0x08b1
    mov ax, 6                        ; 0x08b3
    imul cx                          ; 0x08b6
    push ax                          ; 0x08b8
    call ds_dispatch_e809            ; 0x08b9
    add sp, byte 4                   ; 0x08bc
    mov ax, 0                        ; 0x08bf
    push ax                          ; 0x08c2
    lea ax, word [bp - 0x0058]       ; 0x08c3
    push ax                          ; 0x08c6
    call ds_dispatch_e84e            ; 0x08c7
    add sp, byte 4                   ; 0x08ca
    mov ax, 0                        ; 0x08cd
    push ax                          ; 0x08d0
    mov ax, 0x47                     ; 0x08d1
    push ax                          ; 0x08d4
    call ds_dispatch_e823            ; 0x08d5
    add sp, byte 4                   ; 0x08d8
    lea ax, word [bp - 0x0058]       ; 0x08db
    push ax                          ; 0x08de
    mov ax, 0xca                     ; 0x08df
    push ax                          ; 0x08e2
    call ds_dispatch_b53b            ; 0x08e3
    add sp, byte 4                   ; 0x08e6
    mov ax, 0xc                      ; 0x08e9
    push ax                          ; 0x08ec
    mov ax, 0xe4                     ; 0x08ed
    push ax                          ; 0x08f0
    call ds_dispatch_e809            ; 0x08f1
    add sp, byte 4                   ; 0x08f4
    mov ax, 0                        ; 0x08f7
    push ax                          ; 0x08fa
    lea ax, word [bp - 0x0058]       ; 0x08fb
    push ax                          ; 0x08fe
    call ds_dispatch_e84e            ; 0x08ff
    add sp, byte 4                   ; 0x0902
    mov ax, 0                        ; 0x0905
    push ax                          ; 0x0908
    mov ax, 0x20                     ; 0x0909
    push ax                          ; 0x090c
    call ds_dispatch_e830            ; 0x090d
    add sp, byte 4                   ; 0x0910
    mov ax, 0                        ; 0x0913
    push ax                          ; 0x0916
    mov ax, 0xa                      ; 0x0917
    push ax                          ; 0x091a
    mov ax, 0x248                    ; 0x091b
    imul word [bp + 0x4]             ; 0x091e
    mov bx, ax                       ; 0x0921
    push word [bx + 0x5c02]          ; 0x0923
    push word [bx + 0x5c00]          ; 0x0927
    call ds_dispatch_b293            ; 0x092b
    add sp, byte 8                   ; 0x092e
    lea ax, word [bp - 0x0058]       ; 0x0931
    push ax                          ; 0x0934
    mov ax, 0xcb                     ; 0x0935
    push ax                          ; 0x0938
    call ds_dispatch_b53b            ; 0x0939
    add sp, byte 4                   ; 0x093c
    mov ax, 0x12                     ; 0x093f
    push ax                          ; 0x0942
    mov ax, 0xe4                     ; 0x0943
    push ax                          ; 0x0946
    call ds_dispatch_e809            ; 0x0947
    add sp, byte 4                   ; 0x094a
    mov ax, 0                        ; 0x094d
    push ax                          ; 0x0950
    lea ax, word [bp - 0x0058]       ; 0x0951
    push ax                          ; 0x0954
    call ds_dispatch_e84e            ; 0x0955
    add sp, byte 4                   ; 0x0958
    mov ax, 0                        ; 0x095b
    push ax                          ; 0x095e
    mov ax, 0x20                     ; 0x095f
    push ax                          ; 0x0962
    call ds_dispatch_e830            ; 0x0963
    add sp, byte 4                   ; 0x0966
    mov ax, 0                        ; 0x0969
    push ax                          ; 0x096c
    mov ax, 0xa                      ; 0x096d
    push ax                          ; 0x0970
    mov ax, 0x248                    ; 0x0971
    imul word [bp + 0x4]             ; 0x0974
    mov bx, ax                       ; 0x0977
    push word [bx + 0x5c06]          ; 0x0979
    push word [bx + 0x5c04]          ; 0x097d
    call ds_dispatch_b293            ; 0x0981
    add sp, byte 8                   ; 0x0984
    mov ax, 0                        ; 0x0987
    push ax                          ; 0x098a
    mov ax, 0x1d                     ; 0x098b
    push ax                          ; 0x098e
    call ds_dispatch_e823            ; 0x098f
    add sp, byte 4                   ; 0x0992
    lea ax, word [bp - 0x0058]       ; 0x0995
    push ax                          ; 0x0998
    mov ax, 0xd4                     ; 0x0999
    push ax                          ; 0x099c
    call ds_dispatch_b53b            ; 0x099d
    add sp, byte 4                   ; 0x09a0
    mov ax, 0x5d                     ; 0x09a3
    push ax                          ; 0x09a6
    mov ax, 6                        ; 0x09a7
    push ax                          ; 0x09aa
    call ds_dispatch_e809            ; 0x09ab
    add sp, byte 4                   ; 0x09ae
    mov ax, 0                        ; 0x09b1
    push ax                          ; 0x09b4
    lea ax, word [bp - 0x0058]       ; 0x09b5
    push ax                          ; 0x09b8
    call ds_dispatch_e84e            ; 0x09b9
    add sp, byte 4                   ; 0x09bc
    mov ax, 0                        ; 0x09bf
    push ax                          ; 0x09c2
    mov ax, 0x20                     ; 0x09c3
    push ax                          ; 0x09c6
    call ds_dispatch_e830            ; 0x09c7
    add sp, byte 4                   ; 0x09ca
    mov ax, 0                        ; 0x09cd
    push ax                          ; 0x09d0
    mov ax, 0x1b                     ; 0x09d1
    push ax                          ; 0x09d4
    call ds_dispatch_e823            ; 0x09d5
    add sp, byte 4                   ; 0x09d8
    lea ax, word [bp - 0x0058]       ; 0x09db
    push ax                          ; 0x09de
    mov ax, 0x248                    ; 0x09df
    imul word [bp + 0x4]             ; 0x09e2
    mov bx, ax                       ; 0x09e5
    push word [bx + 0x5c0c]          ; 0x09e7
    call ds_dispatch_b27d            ; 0x09eb
    add sp, byte 4                   ; 0x09ee
    mov ax, 0                        ; 0x09f1
    push ax                          ; 0x09f4
    lea ax, word [bp - 0x0058]       ; 0x09f5
    push ax                          ; 0x09f8
    call ds_dispatch_e84e            ; 0x09f9
    add sp, byte 4                   ; 0x09fc
    mov ax, 0                        ; 0x09ff
    push ax                          ; 0x0a02
    mov ax, 0x2f                     ; 0x0a03
    push ax                          ; 0x0a06
    call ds_dispatch_e830            ; 0x0a07
    add sp, byte 4                   ; 0x0a0a
    lea ax, word [bp - 0x0058]       ; 0x0a0d
    push ax                          ; 0x0a10
    mov ax, 0x248                    ; 0x0a11
    imul word [bp + 0x4]             ; 0x0a14
    mov bx, ax                       ; 0x0a17
    push word [bx + 0x5c0e]          ; 0x0a19
    call ds_dispatch_b27d            ; 0x0a1d
    add sp, byte 4                   ; 0x0a20
    mov ax, 0                        ; 0x0a23
    push ax                          ; 0x0a26
    lea ax, word [bp - 0x0058]       ; 0x0a27
    push ax                          ; 0x0a2a
    call ds_dispatch_e84e            ; 0x0a2b
    add sp, byte 4                   ; 0x0a2e
    mov ax, 0                        ; 0x0a31
    push ax                          ; 0x0a34
    mov ax, 0x1d                     ; 0x0a35
    push ax                          ; 0x0a38
    call ds_dispatch_e823            ; 0x0a39
    add sp, byte 4                   ; 0x0a3c
    lea ax, word [bp - 0x0058]       ; 0x0a3f
    push ax                          ; 0x0a42
    mov ax, 0xd5                     ; 0x0a43
    push ax                          ; 0x0a46
    call ds_dispatch_b53b            ; 0x0a47
    add sp, byte 4                   ; 0x0a4a
    mov ax, 0x63                     ; 0x0a4d
    push ax                          ; 0x0a50
    mov ax, 6                        ; 0x0a51
    push ax                          ; 0x0a54
    call ds_dispatch_e809            ; 0x0a55
    add sp, byte 4                   ; 0x0a58
    mov ax, 0                        ; 0x0a5b
    push ax                          ; 0x0a5e
    lea ax, word [bp - 0x0058]       ; 0x0a5f
    push ax                          ; 0x0a62
    call ds_dispatch_e84e            ; 0x0a63
    add sp, byte 4                   ; 0x0a66
    mov ax, 0                        ; 0x0a69
    push ax                          ; 0x0a6c
    mov ax, 0x20                     ; 0x0a6d
    push ax                          ; 0x0a70
    call ds_dispatch_e830            ; 0x0a71
    add sp, byte 4                   ; 0x0a74
    mov ax, 0                        ; 0x0a77
    push ax                          ; 0x0a7a
    mov ax, 0x1b                     ; 0x0a7b
    push ax                          ; 0x0a7e
    call ds_dispatch_e823            ; 0x0a7f
    add sp, byte 4                   ; 0x0a82
    mov ax, 0x248                    ; 0x0a85
    imul word [bp + 0x4]             ; 0x0a88
    mov bx, ax                       ; 0x0a8b
    mov ax, word [bx + 0x5c10]       ; 0x0a8d
    mov cx, 0x64                     ; 0x0a91
    imul cx                          ; 0x0a94
    mov cx, word [bx + 0x5c12]       ; 0x0a96
    cwd                              ; 0x0a9a
    idiv cx                          ; 0x0a9b
    mov word [bp - 0x0008], ax       ; 0x0a9d
    cmp ax, strict word 1            ; 0x0aa0
    jge short @..api_idx_007c.l4     ; 0x0aa3
    cmp word [bx + 0x5c10], byte 0   ; 0x0aa5
    jle short @..api_idx_007c.l4     ; 0x0aaa
    mov ax, 1                        ; 0x0aac
    jmp short @..api_idx_007c.l5     ; 0x0aaf
@..api_idx_007c.l4:
    mov ax, word [bp - 0x0008]       ; 0x0ab1
@..api_idx_007c.l5:
    mov word [bp - 0x0008], ax       ; 0x0ab4
    lea ax, word [bp - 0x0058]       ; 0x0ab7
    push ax                          ; 0x0aba
    push word [bp - 0x0008]          ; 0x0abb
    call ds_dispatch_b27d            ; 0x0abe
    add sp, byte 4                   ; 0x0ac1
    mov ax, 0                        ; 0x0ac4
    push ax                          ; 0x0ac7
    lea ax, word [bp - 0x0058]       ; 0x0ac8
    push ax                          ; 0x0acb
    call ds_dispatch_e84e            ; 0x0acc
    add sp, byte 4                   ; 0x0acf
    mov ax, 0                        ; 0x0ad2
    push ax                          ; 0x0ad5
    mov ax, 0x9098                   ; 0x0ad6
    push ax                          ; 0x0ad9
    call ds_dispatch_e84e            ; 0x0ada
    add sp, byte 4                   ; 0x0add
    mov ax, 0                        ; 0x0ae0
    push ax                          ; 0x0ae3
    mov ax, 0x1d                     ; 0x0ae4
    push ax                          ; 0x0ae7
    call ds_dispatch_e823            ; 0x0ae8
    add sp, byte 4                   ; 0x0aeb
    mov ax, 0                        ; 0x0aee
    push ax                          ; 0x0af1
    mov ax, 0x28                     ; 0x0af2
    push ax                          ; 0x0af5
    call ds_dispatch_e830            ; 0x0af6
    add sp, byte 4                   ; 0x0af9
    lea ax, word [bp - 0x0058]       ; 0x0afc
    push ax                          ; 0x0aff
    mov ax, 0x248                    ; 0x0b00
    imul word [bp + 0x4]             ; 0x0b03
    mov bx, ax                       ; 0x0b06
    push word [bx + 0x5c12]          ; 0x0b08
    call ds_dispatch_b27d            ; 0x0b0c
    add sp, byte 4                   ; 0x0b0f
    mov ax, 0                        ; 0x0b12
    push ax                          ; 0x0b15
    lea ax, word [bp - 0x0058]       ; 0x0b16
    push ax                          ; 0x0b19
    call ds_dispatch_e84e            ; 0x0b1a
    add sp, byte 4                   ; 0x0b1d
    mov ax, 0                        ; 0x0b20
    push ax                          ; 0x0b23
    mov ax, 0x29                     ; 0x0b24
    push ax                          ; 0x0b27
    call ds_dispatch_e830            ; 0x0b28
    add sp, byte 4                   ; 0x0b2b
    mov ax, 0                        ; 0x0b2e
    push ax                          ; 0x0b31
    mov ax, 0xc4                     ; 0x0b32
    push ax                          ; 0x0b35
    call ds_dispatch_e823            ; 0x0b36
    add sp, byte 4                   ; 0x0b39
    lea ax, word [bp - 0x0058]       ; 0x0b3c
    push ax                          ; 0x0b3f
    mov ax, 0xd6                     ; 0x0b40
    push ax                          ; 0x0b43
    call ds_dispatch_b53b            ; 0x0b44
    add sp, byte 4                   ; 0x0b47
    mov ax, 0x5d                     ; 0x0b4a
    push ax                          ; 0x0b4d
    mov ax, 0x5b                     ; 0x0b4e
    push ax                          ; 0x0b51
    call ds_dispatch_e809            ; 0x0b52
    add sp, byte 4                   ; 0x0b55
    mov ax, 0                        ; 0x0b58
    push ax                          ; 0x0b5b
    lea ax, word [bp - 0x0058]       ; 0x0b5c
    push ax                          ; 0x0b5f
    call ds_dispatch_e84e            ; 0x0b60
    add sp, byte 4                   ; 0x0b63
    mov ax, 0                        ; 0x0b66
    push ax                          ; 0x0b69
    mov ax, 0x20                     ; 0x0b6a
    push ax                          ; 0x0b6d
    call ds_dispatch_e830            ; 0x0b6e
    add sp, byte 4                   ; 0x0b71
    lea ax, word [bp - 0x0058]       ; 0x0b74
    push ax                          ; 0x0b77
    mov ax, 0x248                    ; 0x0b78
    imul word [bp + 0x4]             ; 0x0b7b
    mov bx, ax                       ; 0x0b7e
    push word [bx + 0x5c0a]          ; 0x0b80
    push word [bx + 0x5c08]          ; 0x0b84
    call ds_dispatch_b1db            ; 0x0b88
    add sp, byte 6                   ; 0x0b8b
    mov ax, 0                        ; 0x0b8e
    push ax                          ; 0x0b91
    lea ax, word [bp - 0x0058]       ; 0x0b92
    push ax                          ; 0x0b95
    call ds_dispatch_e84e            ; 0x0b96
    add sp, byte 4                   ; 0x0b99
    push word [bp + 0x4]             ; 0x0b9c
    call ds_dispatch_c58f            ; 0x0b9f
    pop cx                           ; 0x0ba2
    push word [bp + 0x4]             ; 0x0ba3
    call api_idx_0012                ; 0x0ba6
    pop cx                           ; 0x0ba9
    mov si, ax                       ; 0x0baa
    lea di, word [bp - 0x007c]       ; 0x0bac
    mov cx, ds                       ; 0x0baf
    mov es, cx                       ; 0x0bb1
    mov cx, 7                        ; 0x0bb3
    rep movsw                        ; 0x0bb6
    mov al, byte [bp - 0x0072]       ; 0x0bb8
    push ax                          ; 0x0bbb
    mov ax, 0x248                    ; 0x0bbc
    imul word [bp + 0x4]             ; 0x0bbf
    mov bx, ax                       ; 0x0bc2
    pop ax                           ; 0x0bc4
    mov byte [bx + 0x5e33], al       ; 0x0bc5
    mov ax, 0                        ; 0x0bc9
    push ax                          ; 0x0bcc
    push word [bp - 0x0070]          ; 0x0bcd
    call ds_dispatch_e823            ; 0x0bd0
    add sp, byte 4                   ; 0x0bd3
    lea ax, word [bp - 0x0058]       ; 0x0bd6
    push ax                          ; 0x0bd9
    mov ax, 0xd7                     ; 0x0bda
    push ax                          ; 0x0bdd
    call ds_dispatch_b53b            ; 0x0bde
    add sp, byte 4                   ; 0x0be1
    mov ax, 0x63                     ; 0x0be4
    push ax                          ; 0x0be7
    mov ax, 0x5b                     ; 0x0be8
    push ax                          ; 0x0beb
    call ds_dispatch_e809            ; 0x0bec
    add sp, byte 4                   ; 0x0bef
    mov ax, 0                        ; 0x0bf2
    push ax                          ; 0x0bf5
    lea ax, word [bp - 0x0058]       ; 0x0bf6
    push ax                          ; 0x0bf9
    call ds_dispatch_e84e            ; 0x0bfa
    add sp, byte 4                   ; 0x0bfd
    mov ax, 0                        ; 0x0c00
    push ax                          ; 0x0c03
    mov ax, 0x20                     ; 0x0c04
    push ax                          ; 0x0c07
    call ds_dispatch_e830            ; 0x0c08
    add sp, byte 4                   ; 0x0c0b
    lea ax, word [bp - 0x0058]       ; 0x0c0e
    push ax                          ; 0x0c11
    mov ax, 0x248                    ; 0x0c12
    imul word [bp + 0x4]             ; 0x0c15
    mov bx, ax                       ; 0x0c18
    mov ax, word [bx + 0x5c14]       ; 0x0c1a
    mov cx, 0xa                      ; 0x0c1e
    cwd                              ; 0x0c21
    idiv cx                          ; 0x0c22
    push ax                          ; 0x0c24
    call ds_dispatch_b27d            ; 0x0c25
    add sp, byte 4                   ; 0x0c28
    mov ax, 0                        ; 0x0c2b
    push ax                          ; 0x0c2e
    lea ax, word [bp - 0x0058]       ; 0x0c2f
    push ax                          ; 0x0c32
    call ds_dispatch_e84e            ; 0x0c33
    add sp, byte 4                   ; 0x0c36
    mov ax, 0                        ; 0x0c39
    push ax                          ; 0x0c3c
    mov ax, 0x2f                     ; 0x0c3d
    push ax                          ; 0x0c40
    call ds_dispatch_e830            ; 0x0c41
    add sp, byte 4                   ; 0x0c44
    lea ax, word [bp - 0x0058]       ; 0x0c47
    push ax                          ; 0x0c4a
    mov ax, 0x248                    ; 0x0c4b
    imul word [bp + 0x4]             ; 0x0c4e
    mov bx, ax                       ; 0x0c51
    mov ax, word [bx + 0x5c16]       ; 0x0c53
    mov cx, 0xa                      ; 0x0c57
    cwd                              ; 0x0c5a
    idiv cx                          ; 0x0c5b
    push ax                          ; 0x0c5d
    call ds_dispatch_b27d            ; 0x0c5e
    add sp, byte 4                   ; 0x0c61
    mov ax, 0                        ; 0x0c64
    push ax                          ; 0x0c67
    lea ax, word [bp - 0x0058]       ; 0x0c68
    push ax                          ; 0x0c6b
    call ds_dispatch_e84e            ; 0x0c6c
    add sp, byte 4                   ; 0x0c6f
    push word [bp + 0x4]             ; 0x0c72
    call api_idx_0004                ; 0x0c75
    pop cx                           ; 0x0c78
    mov word [bp - 0x0004], 0        ; 0x0c79
    mov ax, 0x248                    ; 0x0c7e
    imul word [bp + 0x4]             ; 0x0c81
    mov bx, ax                       ; 0x0c84
    mov al, byte [bx + 0x5e2f]       ; 0x0c86
    sub ah, ah                       ; 0x0c8a
    shl ax, 1                        ; 0x0c8c
    mov bx, ax                       ; 0x0c8e
    mov ax, word [bx + 0x920]        ; 0x0c90
    mov word [bp - 0x0006], ax       ; 0x0c94
    cmp ax, strict word 0xffff       ; 0x0c97
    jne short @..api_idx_007c.l6     ; 0x0c9a
    mov ax, 0x248                    ; 0x0c9c
    imul word [bp + 0x4]             ; 0x0c9f
    mov bx, ax                       ; 0x0ca2
    cmp byte [bx + 0x5d5c], 0        ; 0x0ca4
    jbe short @..api_idx_007c.l6     ; 0x0ca9
    mov ax, 0                        ; 0x0cab
    jmp short @..api_idx_007c.l7     ; 0x0cae
@..api_idx_007c.l6:
    mov ax, word [bp - 0x0006]       ; 0x0cb0
@..api_idx_007c.l7:
    mov word [bp - 0x0006], ax       ; 0x0cb3
    cmp ax, strict word 0            ; 0x0cb6
    jg short @..api_idx_007c.l8      ; 0x0cb9
    mov ax, 0x248                    ; 0x0cbb
    imul word [bp + 0x4]             ; 0x0cbe
    mov bx, ax                       ; 0x0cc1
    cmp byte [bx + 0x5d5d], 0        ; 0x0cc3
    jbe short @..api_idx_007c.l8     ; 0x0cc8
    mov ax, 1                        ; 0x0cca
    jmp short @..api_idx_007c.l9     ; 0x0ccd
@..api_idx_007c.l8:
    mov ax, word [bp - 0x0006]       ; 0x0ccf
@..api_idx_007c.l9:
    mov word [bp - 0x0006], ax       ; 0x0cd2
    cmp ax, strict word 0xffff       ; 0x0cd5
    je short @..api_idx_007c.l10     ; 0x0cd8
    mov ax, 0x2d                     ; 0x0cda
    push ax                          ; 0x0cdd
    mov ax, 0x51                     ; 0x0cde
    push ax                          ; 0x0ce1
    call ds_dispatch_e809            ; 0x0ce2
    add sp, byte 4                   ; 0x0ce5
    mov ax, 6                        ; 0x0ce8
    push ax                          ; 0x0ceb
    mov al, byte [bp - 0x0006]       ; 0x0cec
    sub ah, ah                       ; 0x0cef
    push ax                          ; 0x0cf1
    call ds_dispatch_e830            ; 0x0cf2
    add sp, byte 4                   ; 0x0cf5
    inc word [bp - 0x0004]           ; 0x0cf8
@..api_idx_007c.l10:
    mov word [bp - 0x006e], 6        ; 0x0cfb
    mov word [bp - 0x006c], 7        ; 0x0d00
    mov word [bp - 0x006a], 5        ; 0x0d05
    mov word [bp - 0x0068], 4        ; 0x0d0a
    mov word [bp - 0x0066], 8        ; 0x0d0f
    mov word [bp - 0x0064], 9        ; 0x0d14
    mov word [bp - 0x0062], 1        ; 0x0d19
    mov word [bp - 0x0006], 0xffff   ; 0x0d1e
    mov word [bp - 0x0002], 0        ; 0x0d23
@..api_idx_007c.l11:
    mov ax, word [bp - 0x0002]       ; 0x0d28
    shl ax, 1                        ; 0x0d2b
    mov bx, ax                       ; 0x0d2d
    add bx, bp                       ; 0x0d2f
    mov ax, word [bx - 0x006e]       ; 0x0d31
    mov word [bp - 0x0008], ax       ; 0x0d34
    cmp word [bp - 0x0004], byte 6   ; 0x0d37
    jge short @..api_idx_007c.l12    ; 0x0d3b
    shl ax, 1                        ; 0x0d3d
    mov bx, ax                       ; 0x0d3f
    mov ax, word [bx + 0x92c]        ; 0x0d41
    cmp ax, word [bp - 0x0006]       ; 0x0d45
    je short @..api_idx_007c.l12     ; 0x0d48
    mov ax, 0x248                    ; 0x0d4a
    imul word [bp + 0x4]             ; 0x0d4d
    add ax, word [bp - 0x0008]       ; 0x0d50
    mov bx, ax                       ; 0x0d53
    cmp byte [bx + 0x5d5a], 0        ; 0x0d55
    jbe short @..api_idx_007c.l12    ; 0x0d5a
    mov ax, word [bp - 0x0004]       ; 0x0d5c
    mov cx, 3                        ; 0x0d5f
    cwd                              ; 0x0d62
    idiv cx                          ; 0x0d63
    mov ax, dx                       ; 0x0d65
    mov cx, 0xb                      ; 0x0d67
    imul cx                          ; 0x0d6a
    add ax, strict word 0x2d         ; 0x0d6c
    push ax                          ; 0x0d6f
    mov ax, word [bp - 0x0004]       ; 0x0d70
    mov cx, 3                        ; 0x0d73
    cwd                              ; 0x0d76
    idiv cx                          ; 0x0d77
    mov cx, 0x17                     ; 0x0d79
    imul cx                          ; 0x0d7c
    add ax, strict word 0x51         ; 0x0d7e
    push ax                          ; 0x0d81
    call ds_dispatch_e809            ; 0x0d82
    add sp, byte 4                   ; 0x0d85
    mov ax, 6                        ; 0x0d88
    push ax                          ; 0x0d8b
    mov ax, word [bp - 0x0008]       ; 0x0d8c
    shl ax, 1                        ; 0x0d8f
    mov bx, ax                       ; 0x0d91
    mov al, byte [bx + 0x92c]        ; 0x0d93
    sub ah, ah                       ; 0x0d97
    push ax                          ; 0x0d99
    call ds_dispatch_e830            ; 0x0d9a
    add sp, byte 4                   ; 0x0d9d
    mov ax, word [bp - 0x0008]       ; 0x0da0
    shl ax, 1                        ; 0x0da3
    mov bx, ax                       ; 0x0da5
    mov ax, word [bx + 0x92c]        ; 0x0da7
    mov word [bp - 0x0006], ax       ; 0x0dab
    inc word [bp - 0x0004]           ; 0x0dae
@..api_idx_007c.l12:
    inc word [bp - 0x0002]           ; 0x0db1
    mov ax, word [bp - 0x0002]       ; 0x0db4
    cmp ax, strict word 7            ; 0x0db7
    jge short @..api_idx_007c.l13    ; 0x0dba
    jmp near @..api_idx_007c.l11     ; 0x0dbc
@..api_idx_007c.l13:
    ret                              ; 0x0dbf
loc_0dc0:
    mov ax, 0                        ; 0x0dc0
    call ds_dispatch_f40b            ; 0x0dc3
    push word [bp + 0xc]             ; 0x0dc6
    mov ax, word [bp + 0x6]          ; 0x0dc9
    dec ax                           ; 0x0dcc
    push ax                          ; 0x0dcd
    mov ax, word [bp + 0x8]          ; 0x0dce
    inc ax                           ; 0x0dd1
    push ax                          ; 0x0dd2
    mov ax, word [bp + 0x6]          ; 0x0dd3
    dec ax                           ; 0x0dd6
    push ax                          ; 0x0dd7
    mov ax, word [bp + 0x4]          ; 0x0dd8
    dec ax                           ; 0x0ddb
    push ax                          ; 0x0ddc
    call ds_dispatch_e901            ; 0x0ddd
    add sp, byte 0x0a                ; 0x0de0
    push word [bp + 0xc]             ; 0x0de3
    mov ax, word [bp + 0xa]          ; 0x0de6
    inc ax                           ; 0x0de9
    push ax                          ; 0x0dea
    mov ax, word [bp + 0x8]          ; 0x0deb
    inc ax                           ; 0x0dee
    push ax                          ; 0x0def
    mov ax, word [bp + 0x6]          ; 0x0df0
    dec ax                           ; 0x0df3
    push ax                          ; 0x0df4
    mov ax, word [bp + 0x8]          ; 0x0df5
    inc ax                           ; 0x0df8
    push ax                          ; 0x0df9
    call ds_dispatch_e901            ; 0x0dfa
    add sp, byte 0x0a                ; 0x0dfd
    push word [bp + 0xc]             ; 0x0e00
    mov ax, word [bp + 0xa]          ; 0x0e03
    inc ax                           ; 0x0e06
    push ax                          ; 0x0e07
    mov ax, word [bp + 0x8]          ; 0x0e08
    inc ax                           ; 0x0e0b
    push ax                          ; 0x0e0c
    mov ax, word [bp + 0xa]          ; 0x0e0d
    inc ax                           ; 0x0e10
    push ax                          ; 0x0e11
    mov ax, word [bp + 0x4]          ; 0x0e12
    dec ax                           ; 0x0e15
    push ax                          ; 0x0e16
    call ds_dispatch_e901            ; 0x0e17
    add sp, byte 0x0a                ; 0x0e1a
    push word [bp + 0xc]             ; 0x0e1d
    mov ax, word [bp + 0xa]          ; 0x0e20
    inc ax                           ; 0x0e23
    push ax                          ; 0x0e24
    mov ax, word [bp + 0x4]          ; 0x0e25
    dec ax                           ; 0x0e28
    push ax                          ; 0x0e29
    mov ax, word [bp + 0x6]          ; 0x0e2a
    dec ax                           ; 0x0e2d
    push ax                          ; 0x0e2e
    mov ax, word [bp + 0x4]          ; 0x0e2f
    dec ax                           ; 0x0e32
    push ax                          ; 0x0e33
    call ds_dispatch_e901            ; 0x0e34
    add sp, byte 0x0a                ; 0x0e37
    ret                              ; 0x0e3a
%include "vpclv/api_idx_0004_2.asm"

%include "vpclv/api_idx_000a_2.asm"

%include "vpclv/math_loc_0eea.asm"

loc_0f76:
    mov ax, 0                        ; 0x0f76
    call ds_dispatch_f40b            ; 0x0f79
    mov ax, word [bp + 0x6]          ; 0x0f7c
    add ax, strict word 6            ; 0x0f7f
    push ax                          ; 0x0f82
    mov ax, word [bp + 0x4]          ; 0x0f83
    add ax, strict word 0x14         ; 0x0f86
    push ax                          ; 0x0f89
    push word [bp + 0x6]             ; 0x0f8a
    push word [bp + 0x4]             ; 0x0f8d
    call ds_dispatch_bd98            ; 0x0f90
    add sp, byte 8                   ; 0x0f93
    mov ax, word [bp + 0x8]          ; 0x0f96
    shl ax, 1                        ; 0x0f99
    shl ax, 1                        ; 0x0f9b
    mov bx, ax                       ; 0x0f9d
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x0fa3
    add ax, strict word 6            ; 0x0fa6
    push ax                          ; 0x0fa9
    mov ax, word [bp + 0x4]          ; 0x0faa
    add ax, strict word 0x14         ; 0x0fad
    push ax                          ; 0x0fb0
    push word [bp + 0x6]             ; 0x0fb1
    push word [bp + 0x4]             ; 0x0fb4
    call ds_dispatch_e901            ; 0x0fb7
    add sp, byte 0x0a                ; 0x0fba
    mov ax, word [bp + 0x6]          ; 0x0fbd
    inc ax                           ; 0x0fc0
    push ax                          ; 0x0fc1
    mov ax, word [bp + 0x4]          ; 0x0fc2
    inc ax                           ; 0x0fc5
    inc ax                           ; 0x0fc6
    push ax                          ; 0x0fc7
    call ds_dispatch_e809            ; 0x0fc8
    add sp, byte 4                   ; 0x0fcb
    cmp word [bp + 0xa], byte 0      ; 0x0fce
    jle short @..local.l2            ; 0x0fd2
    mov ax, word [bp + 0xa]          ; 0x0fd4
    cmp ax, word [bp + 0xc]          ; 0x0fd7
    jg short @..local.l2             ; 0x0fda
    mov ax, 0                        ; 0x0fdc
    push ax                          ; 0x0fdf
    mov ax, 1                        ; 0x0fe0
    push ax                          ; 0x0fe3
    call ds_dispatch_e823            ; 0x0fe4
    add sp, byte 4                   ; 0x0fe7
    mov ax, 0                        ; 0x0fea
    push ax                          ; 0x0fed
    mov ax, 3                        ; 0x0fee
    push ax                          ; 0x0ff1
    push word [bp + 0xa]             ; 0x0ff2
    call ds_dispatch_b2e7            ; 0x0ff5
    add sp, byte 6                   ; 0x0ff8
    jmp short @..local.l3            ; 0x0ffb
@..local.l2:
    mov ax, 0                        ; 0x0ffd
    push ax                          ; 0x1000
    push ax                          ; 0x1001
    call ds_dispatch_e823            ; 0x1002
    add sp, byte 4                   ; 0x1005
    mov ax, 0                        ; 0x1008
    push ax                          ; 0x100b
    mov ax, 0x909b                   ; 0x100c
    push ax                          ; 0x100f
    call ds_dispatch_e84e            ; 0x1010
    add sp, byte 4                   ; 0x1013
@..local.l3:
    ret                              ; 0x1016
%include "vpclv/api_idx_000c_2.asm"

loc_10b0:
    mov ax, 0                        ; 0x10b0
    call ds_dispatch_f40b            ; 0x10b3
    les bx, word [data_0002]         ; 0x10b6
    mov ax, word [es:bx]             ; 0x10ba
    mov dx, word [es:bx + 0x2]       ; 0x10bd
    mov word [data_9090], dx         ; 0x10c1
    mov word [data_908e], ax         ; 0x10c5
    mov ax, word [data_908e]         ; 0x10c8
    mov dx, word [data_9090]         ; 0x10cb
    sub ax, word [data_908a]         ; 0x10cf
    sbb dx, word [data_908c]         ; 0x10d3
    mov word [data_9094], dx         ; 0x10d7
    mov word [data_9092], ax         ; 0x10db
    mov ax, word [data_948c]         ; 0x10de
    cwd                              ; 0x10e1
    mov cx, ax                       ; 0x10e2
    mov bx, dx                       ; 0x10e4
    mov ax, word [data_9092]         ; 0x10e6
    mov dx, word [data_9094]         ; 0x10e9
    cmp bx, dx                       ; 0x10ed
    jg short @..local.l4             ; 0x10ef
    jne short @..local.l5            ; 0x10f1
    cmp cx, ax                       ; 0x10f3
    jbe short @..local.l5            ; 0x10f5
@..local.l4:
    jmp short @..local.l6            ; 0x10f7
@..local.l5:
    mov ax, word [data_908e]         ; 0x10f9
    mov dx, word [data_9090]         ; 0x10fc
    mov word [data_908c], dx         ; 0x1100
    mov word [data_908a], ax         ; 0x1104
    call api_idx_000a_2              ; 0x1107
    push word [bp + 0x4]             ; 0x110a
    call api_idx_000c_2              ; 0x110d
    pop cx                           ; 0x1110
    push word [bp + 0x6]             ; 0x1111
    call api_idx_0002_2              ; 0x1114
    pop cx                           ; 0x1117
    mov ax, 1                        ; 0x1118
    push ax                          ; 0x111b
    mov ax, 0x73                     ; 0x111c
    push ax                          ; 0x111f
    mov ax, 0x32                     ; 0x1120
    push ax                          ; 0x1123
    call api_idx_000c                ; 0x1124
    add sp, byte 6                   ; 0x1127
    mov ax, 0xc5                     ; 0x112a
    push ax                          ; 0x112d
    mov ax, 0x93                     ; 0x112e
    push ax                          ; 0x1131
    mov ax, 0x73                     ; 0x1132
    push ax                          ; 0x1135
    mov ax, 0x32                     ; 0x1136
    push ax                          ; 0x1139
    call ds_dispatch_e8da            ; 0x113a
    add sp, byte 8                   ; 0x113d
@..local.l6:
    ret                              ; 0x1140
%include "vpclv/api_idx_0050.asm"

    mov ax, 7                        ; 0x1341
    push ax                          ; 0x1344
    mov ax, 8                        ; 0x1345
    push ax                          ; 0x1348
    mov ax, word [bp - 0x0006]       ; 0x1349
    add ax, strict word 0x22         ; 0x134c
    push ax                          ; 0x134f
    mov ax, word [bp - 0x000c]       ; 0x1350
    add ax, strict word 0x6a         ; 0x1353
    push ax                          ; 0x1356
    call ds_dispatch_bfd8            ; 0x1357
    add sp, byte 0x0a                ; 0x135a
    mov ax, 0                        ; 0x135d
    push ax                          ; 0x1360
    push ax                          ; 0x1361
    mov ax, word [bp - 0x0006]       ; 0x1362
    add ax, word [bp - 0x0012]       ; 0x1365
    add ax, strict word 0x2e         ; 0x1368
    push ax                          ; 0x136b
    mov ax, word [bp - 0x000c]       ; 0x136c
    add ax, strict word 0x72         ; 0x136f
    push ax                          ; 0x1372
    mov ax, word [bp - 0x0006]       ; 0x1373
    add ax, word [bp - 0x0012]       ; 0x1376
    add ax, strict word 0x2a         ; 0x1379
    push ax                          ; 0x137c
    mov ax, word [bp - 0x000c]       ; 0x137d
    add ax, strict word 0x6a         ; 0x1380
    push ax                          ; 0x1383
    mov ax, 0                        ; 0x1384
    push ax                          ; 0x1387
    call ds_dispatch_baa6            ; 0x1388
    add sp, byte 0x0e                ; 0x138b
    mov ax, 0                        ; 0x138e
    push ax                          ; 0x1391
    mov ax, 9                        ; 0x1392
    push ax                          ; 0x1395
    mov ax, word [bp - 0x0006]       ; 0x1396
    add ax, strict word 0x28         ; 0x1399
    push ax                          ; 0x139c
    mov ax, word [bp - 0x000c]       ; 0x139d
    add ax, strict word 0x72         ; 0x13a0
    push ax                          ; 0x13a3
    mov ax, word [bp - 0x0006]       ; 0x13a4
    add ax, strict word 0x22         ; 0x13a7
    push ax                          ; 0x13aa
    mov ax, word [bp - 0x000c]       ; 0x13ab
    add ax, strict word 0x6a         ; 0x13ae
    push ax                          ; 0x13b1
    mov ax, 1                        ; 0x13b2
    push ax                          ; 0x13b5
    call ds_dispatch_baa6            ; 0x13b6
    add sp, byte 0x0e                ; 0x13b9
    mov ax, 0                        ; 0x13bc
    push ax                          ; 0x13bf
    mov ax, 0xb                      ; 0x13c0
    push ax                          ; 0x13c3
    mov ax, word [bp - 0x0006]       ; 0x13c4
    add ax, strict word 0x4c         ; 0x13c7
    push ax                          ; 0x13ca
    mov ax, word [bp - 0x000c]       ; 0x13cb
    add ax, strict word 0x72         ; 0x13ce
    push ax                          ; 0x13d1
    mov ax, word [bp - 0x0006]       ; 0x13d2
    add ax, strict word 0x46         ; 0x13d5
    push ax                          ; 0x13d8
    mov ax, word [bp - 0x000c]       ; 0x13d9
    add ax, strict word 0x6a         ; 0x13dc
    push ax                          ; 0x13df
    mov ax, data_0002                ; 0x13e0
    push ax                          ; 0x13e3
    call ds_dispatch_baa6            ; 0x13e4
    add sp, byte 0x0e                ; 0x13e7
    mov ax, 0                        ; 0x13ea
    push ax                          ; 0x13ed
    mov ax, 0xd                      ; 0x13ee
    push ax                          ; 0x13f1
    mov ax, word [bp - 0x0006]       ; 0x13f2
    add ax, strict word 0xe          ; 0x13f5
    push ax                          ; 0x13f8
    mov ax, word [bp - 0x000c]       ; 0x13f9
    add ax, strict word 0x36         ; 0x13fc
    push ax                          ; 0x13ff
    mov ax, word [bp - 0x0006]       ; 0x1400
    add ax, strict word 6            ; 0x1403
    push ax                          ; 0x1406
    mov ax, word [bp - 0x000c]       ; 0x1407
    add ax, strict word 6            ; 0x140a
    push ax                          ; 0x140d
    mov ax, 3                        ; 0x140e
    push ax                          ; 0x1411
    call ds_dispatch_baa6            ; 0x1412
    add sp, byte 0x0e                ; 0x1415
    mov ax, 0                        ; 0x1418
    push ax                          ; 0x141b
    mov ax, 0x1b                     ; 0x141c
    push ax                          ; 0x141f
    mov ax, word [bp - 0x0006]       ; 0x1420
    add ax, strict word 0xe          ; 0x1423
    push ax                          ; 0x1426
    mov ax, word [bp - 0x000c]       ; 0x1427
    add ax, strict word 0x72         ; 0x142a
    push ax                          ; 0x142d
    mov ax, word [bp - 0x0006]       ; 0x142e
    add ax, strict word 6            ; 0x1431
    push ax                          ; 0x1434
    mov ax, word [bp - 0x000c]       ; 0x1435
    add ax, strict word 0x42         ; 0x1438
    push ax                          ; 0x143b
    mov ax, 4                        ; 0x143c
    push ax                          ; 0x143f
    call ds_dispatch_baa6            ; 0x1440
    add sp, byte 0x0e                ; 0x1443
    mov word [bp - 0x0002], 0        ; 0x1446
@..api_idx_0050.l5:
    mov ax, 0                        ; 0x144b
    push ax                          ; 0x144e
    mov ax, word [bp - 0x0002]       ; 0x144f
    add ax, strict word 0x31         ; 0x1452
    cbw                              ; 0x1455
    push ax                          ; 0x1456
    mov ax, word [bp - 0x0006]       ; 0x1457
    add ax, strict word 0x1b         ; 0x145a
    push ax                          ; 0x145d
    mov ax, 0xa                      ; 0x145e
    imul word [bp - 0x0002]          ; 0x1461
    add ax, word [bp - 0x000c]       ; 0x1464
    add ax, strict word 0x13         ; 0x1467
    push ax                          ; 0x146a
    mov ax, word [bp - 0x0006]       ; 0x146b
    add ax, strict word 0x14         ; 0x146e
    push ax                          ; 0x1471
    mov ax, 0xa                      ; 0x1472
    imul word [bp - 0x0002]          ; 0x1475
    add ax, word [bp - 0x000c]       ; 0x1478
    add ax, strict word 0xc          ; 0x147b
    push ax                          ; 0x147e
    mov ax, word [bp - 0x0002]       ; 0x147f
    add ax, strict word 5            ; 0x1482
    push ax                          ; 0x1485
    call ds_dispatch_baa6            ; 0x1486
    add sp, byte 0x0e                ; 0x1489
    inc word [bp - 0x0002]           ; 0x148c
    mov ax, word [bp - 0x0002]       ; 0x148f
    cmp ax, strict word 7            ; 0x1492
    jl short @..api_idx_0050.l5      ; 0x1495
    mov ax, 0                        ; 0x1497
    push ax                          ; 0x149a
    mov ax, 0x46                     ; 0x149b
    push ax                          ; 0x149e
    mov ax, 0x87                     ; 0x149f
    push ax                          ; 0x14a2
    mov ax, 0x52                     ; 0x14a3
    push ax                          ; 0x14a6
    mov ax, 0x74                     ; 0x14a7
    push ax                          ; 0x14aa
    mov ax, 0x46                     ; 0x14ab
    push ax                          ; 0x14ae
    mov ax, 0xc                      ; 0x14af
    push ax                          ; 0x14b2
    call ds_dispatch_baa6            ; 0x14b3
    add sp, byte 0x0e                ; 0x14b6
    mov ax, 0                        ; 0x14b9
    push ax                          ; 0x14bc
    mov ax, 0x57                     ; 0x14bd
    push ax                          ; 0x14c0
    mov ax, 0x9d                     ; 0x14c1
    push ax                          ; 0x14c4
    mov ax, 0x4b                     ; 0x14c5
    push ax                          ; 0x14c8
    mov ax, 0x90                     ; 0x14c9
    push ax                          ; 0x14cc
    mov ax, 0x32                     ; 0x14cd
    push ax                          ; 0x14d0
    mov ax, 0xd                      ; 0x14d1
    push ax                          ; 0x14d4
    call ds_dispatch_baa6            ; 0x14d5
    add sp, byte 0x0e                ; 0x14d8
    mov ax, 0                        ; 0x14db
    push ax                          ; 0x14de
    mov ax, 0x41                     ; 0x14df
    push ax                          ; 0x14e2
    mov ax, 0xbb                     ; 0x14e3
    push ax                          ; 0x14e6
    mov ax, 0x5f                     ; 0x14e7
    push ax                          ; 0x14ea
    mov ax, 0xa5                     ; 0x14eb
    push ax                          ; 0x14ee
    mov ax, 0x43                     ; 0x14ef
    push ax                          ; 0x14f2
    mov ax, 0xe                      ; 0x14f3
    push ax                          ; 0x14f6
    call ds_dispatch_baa6            ; 0x14f7
    add sp, byte 0x0e                ; 0x14fa
    mov ax, 0                        ; 0x14fd
    push ax                          ; 0x1500
    mov ax, 0x45                     ; 0x1501
    push ax                          ; 0x1504
    mov ax, 0x89                     ; 0x1505
    push ax                          ; 0x1508
    mov ax, 0x87                     ; 0x1509
    push ax                          ; 0x150c
    mov ax, 0x77                     ; 0x150d
    push ax                          ; 0x1510
    mov ax, 0x6c                     ; 0x1511
    push ax                          ; 0x1514
    mov ax, 0xf                      ; 0x1515
    push ax                          ; 0x1518
    call ds_dispatch_baa6            ; 0x1519
    add sp, byte 0x0e                ; 0x151c
    mov ax, 0                        ; 0x151f
    push ax                          ; 0x1522
    mov ax, 0x4d                     ; 0x1523
    push ax                          ; 0x1526
    mov ax, 0x9c                     ; 0x1527
    push ax                          ; 0x152a
    mov ax, 0x8e                     ; 0x152b
    push ax                          ; 0x152e
    mov ax, 0x91                     ; 0x152f
    push ax                          ; 0x1532
    mov ax, 0x7f                     ; 0x1533
    push ax                          ; 0x1536
    mov ax, 0x10                     ; 0x1537
    push ax                          ; 0x153a
    call ds_dispatch_baa6            ; 0x153b
    add sp, byte 0x0e                ; 0x153e
    mov ax, 0                        ; 0x1541
    push ax                          ; 0x1544
    mov ax, data_0044                ; 0x1545
    push ax                          ; 0x1548
    mov ax, 0xb9                     ; 0x1549
    push ax                          ; 0x154c
    mov ax, 0x81                     ; 0x154d
    push ax                          ; 0x1550
    mov ax, 0xa6                     ; 0x1551
    push ax                          ; 0x1554
    mov ax, 0x71                     ; 0x1555
    push ax                          ; 0x1558
    mov ax, 0x11                     ; 0x1559
    push ax                          ; 0x155c
    call ds_dispatch_baa6            ; 0x155d
    add sp, byte 0x0e                ; 0x1560
    mov ax, 7                        ; 0x1563
    cmp word [bp - 0x0044], byte 7   ; 0x1566
    jge short @..api_idx_0050.l6     ; 0x156a
    mov ax, word [bp - 0x0044]       ; 0x156c
@..api_idx_0050.l6:
    mov word [bp - 0x0020], ax       ; 0x156f
    mov word [bp - 0x0002], 0        ; 0x1572
@..api_idx_0050.l7:
    mov ax, 0                        ; 0x1577
    push ax                          ; 0x157a
    push ax                          ; 0x157b
    mov ax, 6                        ; 0x157c
    imul word [bp - 0x0002]          ; 0x157f
    add ax, word [bp - 0x0006]       ; 0x1582
    add ax, strict word 0x28         ; 0x1585
    push ax                          ; 0x1588
    mov ax, word [bp - 0x000c]       ; 0x1589
    add ax, strict word 0x62         ; 0x158c
    push ax                          ; 0x158f
    mov ax, 6                        ; 0x1590
    imul word [bp - 0x0002]          ; 0x1593
    add ax, word [bp - 0x0006]       ; 0x1596
    add ax, strict word 0x22         ; 0x1599
    push ax                          ; 0x159c
    mov ax, word [bp - 0x000c]       ; 0x159d
    add ax, strict word 6            ; 0x15a0
    push ax                          ; 0x15a3
    mov ax, word [bp - 0x0002]       ; 0x15a4
    add ax, strict word 0x12         ; 0x15a7
    push ax                          ; 0x15aa
    call ds_dispatch_baa6            ; 0x15ab
    add sp, byte 0x0e                ; 0x15ae
    inc word [bp - 0x0002]           ; 0x15b1
    mov ax, word [bp - 0x0002]       ; 0x15b4
    cmp ax, strict word 7            ; 0x15b7
    jl short @..api_idx_0050.l7      ; 0x15ba
    mov ax, 0                        ; 0x15bc
    push ax                          ; 0x15bf
    push ax                          ; 0x15c0
    push ax                          ; 0x15c1
    push ax                          ; 0x15c2
    push ax                          ; 0x15c3
    mov ax, 0xffff                   ; 0x15c4
    push ax                          ; 0x15c7
    mov ax, 0x19                     ; 0x15c8
    push ax                          ; 0x15cb
    call ds_dispatch_baa6            ; 0x15cc
    add sp, byte 0x0e                ; 0x15cf
    mov ax, word [bp - 0x000a]       ; 0x15d2
    inc ax                           ; 0x15d5
    push ax                          ; 0x15d6
    mov ax, word [bp - 0x0008]       ; 0x15d7
    inc ax                           ; 0x15da
    push ax                          ; 0x15db
    mov ax, word [bp - 0x0006]       ; 0x15dc
    dec ax                           ; 0x15df
    push ax                          ; 0x15e0
    mov ax, word [bp - 0x0004]       ; 0x15e1
    dec ax                           ; 0x15e4
    push ax                          ; 0x15e5
    call ds_dispatch_e8da            ; 0x15e6
    add sp, byte 8                   ; 0x15e9
    mov word [data_948c], 7          ; 0x15ec
    les bx, word [data_0002]         ; 0x15f2
    mov ax, word [es:bx]             ; 0x15f6
    mov dx, word [es:bx + 0x2]       ; 0x15f9
    mov word [data_908c], dx         ; 0x15fd
    mov word [data_908a], ax         ; 0x1601
    mov word [bp - 0x001c], 1        ; 0x1604
@..api_idx_0050.l8:
    push word [bp - 0x0042]          ; 0x1609
    push word [bp + 0x4]             ; 0x160c
    call loc_10b0                    ; 0x160f
    add sp, byte 4                   ; 0x1612
    mov ax, 0x59fe                   ; 0x1615
    push ax                          ; 0x1618
    call ds_dispatch_b90d            ; 0x1619
    pop cx                           ; 0x161c
    dec ax                           ; 0x161d
    mov word [bp - 0x001a], ax       ; 0x161e
    cmp word [data_59fc], byte 0     ; 0x1621
    je short @..api_idx_0050.l12     ; 0x1626
    mov ax, word [bp - 0x0022]       ; 0x1628
    cmp ax, word [bp - 0x0018]       ; 0x162b
    jl short @..api_idx_0050.l9      ; 0x162e
    inc word [bp - 0x0022]           ; 0x1630
@..api_idx_0050.l9:
    mov ax, word [bp - 0x0022]       ; 0x1633
    cmp ax, strict word 0xffff       ; 0x1636
    je short @..api_idx_0050.l10     ; 0x1639
    cmp ax, word [bp - 0x0018]       ; 0x163b
    jl short @..api_idx_0050.l10     ; 0x163e
    mov ax, word [bp - 0x0018]       ; 0x1640
    add ax, word [bp - 0x0020]       ; 0x1643
    mov cx, ax                       ; 0x1646
    dec ax                           ; 0x1648
    mov cx, ax                       ; 0x1649
    mov ax, word [bp - 0x0022]       ; 0x164b
    cmp cx, ax                       ; 0x164e
    jge short @..api_idx_0050.l11    ; 0x1650
@..api_idx_0050.l10:
    mov ax, word [bp - 0x0018]       ; 0x1652
    mov word [bp - 0x0022], ax       ; 0x1655
@..api_idx_0050.l11:
    mov word [data_5b3e], 1          ; 0x1658
    mov ax, word [bp - 0x0022]       ; 0x165e
    sub ax, word [bp - 0x0018]       ; 0x1661
    add ax, strict word 0x12         ; 0x1664
    mov word [bp - 0x001a], ax       ; 0x1667
@..api_idx_0050.l12:
    cmp word [data_5b3e], byte 1     ; 0x166a
    je short @..api_idx_0050.l13     ; 0x166f
    jmp near @..api_idx_0050.l37     ; 0x1671
@..api_idx_0050.l13:
    mov ax, word [bp - 0x001a]       ; 0x1674
    jmp near @..api_idx_0050.l35     ; 0x1677

    db 0x8d, 0x46, 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xce, 0xd9, 0x83, 0xc4, 0x04, 0xb8, 0x04
    db 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x03, 0x4e, 0xee, 0x83
    db 0xc1, 0x2a, 0x2b, 0xc1, 0x50, 0xe8, 0x20, 0xa1, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xea, 0x8d, 0x46
    db 0xf0, 0x50, 0x8d, 0x46, 0xf2, 0x50, 0xe8, 0xa0, 0xd9, 0x83, 0xc4, 0x04, 0x89, 0x46, 0xe2, 0xff
    db 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0x8b, 0x46, 0xf0, 0x8b, 0x4e, 0xfa, 0x83, 0xc1, 0x2a, 0x2b
    db 0xc1, 0x2b, 0x46, 0xea, 0x50, 0xe8, 0xf0, 0xa0, 0x83, 0xc4, 0x06, 0x89, 0x46, 0xee, 0x83, 0x7e
    db 0xbc, 0x07, 0x7e, 0x20, 0xb9, 0x64, 0x00, 0xf7, 0xe9, 0x50, 0x8b, 0x46, 0xec, 0xf7, 0xe9, 0x05
    db 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xfa, 0x99, 0xf7, 0xf9, 0x8b, 0xc8, 0x58, 0x99, 0xf7
    db 0xf9, 0x89, 0x46, 0xe8, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x77, 0xa8, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x99, 0xa8, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0x36, 0xa3, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x48, 0xd1, 0x83, 0xc4, 0x08, 0x83, 0x7e, 0xe2, 0x00, 0x74
    db 0x03, 0xe9, 0x0a, 0xff, 0xe9, 0x13, 0x06, 0x83, 0x7e, 0xe6, 0x01, 0x75, 0x31, 0xb8, 0x01, 0x00
    db 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x28, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b
    db 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xee, 0xa6
    db 0x83, 0xc4, 0x0a, 0x83, 0x7e, 0xe8, 0x00, 0x7e, 0x03, 0xff, 0x4e, 0xe8, 0xeb, 0x34, 0xb8, 0x01
    db 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50
    db 0x8b, 0x46, 0xfa, 0x05, 0x46, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xe8, 0xbd
    db 0xa6, 0x83, 0xc4, 0x0a, 0x8b, 0x46, 0xbc, 0x05, 0xf9, 0xff, 0x3b, 0x46, 0xe8, 0x7e, 0x03, 0xff
    db 0x46, 0xe8, 0x83, 0x7e, 0xbc, 0x07, 0x7e, 0x2c, 0xff, 0x76, 0xec, 0xb8, 0x00, 0x00, 0x50, 0xb8
    db 0x64, 0x00, 0xf7, 0x6e, 0xec, 0x05, 0x64, 0x00, 0x8b, 0x4e, 0xbc, 0x83, 0xc1, 0xf9, 0x99, 0xf7
    db 0xf9, 0xf7, 0x6e, 0xe8, 0xb9, 0x64, 0x00, 0x99, 0xf7, 0xf9, 0x50, 0xe8, 0x8a, 0x9f, 0x83, 0xc4
    db 0x06, 0x89, 0x46, 0xee, 0xff, 0x76, 0xdc, 0xff, 0x76, 0xde, 0xff, 0x76, 0xe8, 0xb8, 0x07, 0x00
    db 0x50, 0xb8, 0x0f, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05
    db 0x06, 0x00, 0x50, 0xe8, 0x37, 0xa7, 0x83, 0xc4, 0x0e, 0xff, 0x76, 0xee, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a
    db 0x00, 0x50, 0xe8, 0x59, 0xa7, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0x50, 0x8b, 0x46, 0xfa
    db 0x03, 0x46, 0xee, 0x05, 0x2e, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46
    db 0xfa, 0x03, 0x46, 0xee, 0x05, 0x2a, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x6a, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xe8, 0xf6, 0xa1, 0x83, 0xc4, 0x0e, 0x8b, 0x46, 0xfa, 0x05, 0x4c, 0x00, 0x50
    db 0x8b, 0x46, 0xf4, 0x05, 0x72, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x22, 0x00, 0x50, 0x8b, 0x46
    db 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x08, 0xd0, 0x83, 0xc4, 0x08, 0xe9, 0xdc, 0x04, 0x83, 0x7e
    db 0x08, 0x00, 0x75, 0x03, 0xe9, 0xa1, 0x00, 0x83, 0x7e, 0xc4, 0x00, 0x7d, 0x03, 0xe9, 0x8a, 0x00
    db 0x83, 0x7e, 0x0a, 0x00, 0x74, 0x3c, 0x8b, 0x46, 0xc2, 0x3b, 0x46, 0xc0, 0x7e, 0x03, 0xe9, 0x79
    db 0x00, 0xb8, 0x06, 0x00, 0xf7, 0x6e, 0xc4, 0x8b, 0xd8, 0x8a, 0x87, 0x22, 0x06, 0x2a, 0xe4, 0x8b
    db 0x4e, 0xc2, 0x41, 0xf7, 0xe9, 0x50, 0xb8, 0x48, 0x02, 0xf7, 0x6e, 0x04, 0x8b, 0xc8, 0x8b, 0x56
    db 0xbe, 0xd1, 0xe2, 0xd1, 0xe2, 0x03, 0xc2, 0x8b, 0xd8, 0x8b, 0x8f, 0x1c, 0x5c, 0x58, 0x3b, 0xc1
    db 0x7f, 0x48, 0xb8, 0x01, 0x00, 0x50, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0x19, 0xa5, 0x83, 0xc4, 0x0a, 0xb8
    db 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06
    db 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x06, 0x00, 0x50, 0xe8, 0xf9, 0xa4, 0x83, 0xc4, 0x0a, 0xc7
    db 0x06, 0x50, 0x90, 0x00, 0x00, 0xc7, 0x46, 0xe4, 0x00, 0x00, 0x83, 0x7e, 0xe4, 0x00, 0x74, 0x08
    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0x5f, 0x9e, 0x59, 0xe9, 0x2f, 0x04, 0xb8, 0x01, 0x00, 0x50, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xc0, 0xa4, 0x83, 0xc4, 0x0a, 0xb8, 0x00, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0x8b, 0x46, 0xfa, 0x05, 0x06, 0x00, 0x50, 0x8b, 0x46, 0xf4, 0x05, 0x42
    db 0x00, 0x50, 0xe8, 0xa0, 0xa4, 0x83, 0xc4, 0x0a, 0xc7, 0x06, 0x50, 0x90, 0x01, 0x00, 0xc7, 0x46
    db 0xe4, 0x00, 0x00, 0xe9, 0xe4, 0x03

@..api_idx_0050.l14:
    cmp word [bp - 0x001a], byte 5   ; 0x19d0
    jge short @..api_idx_0050.l15    ; 0x19d4
    jmp near @..api_idx_0050.l23     ; 0x19d6
@..api_idx_0050.l15:
    cmp word [bp - 0x001a], byte 0x0b ; 0x19d9
    jle short @..api_idx_0050.l16    ; 0x19dd
    jmp near @..api_idx_0050.l23     ; 0x19df
@..api_idx_0050.l16:
    mov ax, 0                        ; 0x19e2
    push ax                          ; 0x19e5
    push word [bp - 0x003e]          ; 0x19e6
    mov ax, word [bp - 0x0006]       ; 0x19e9
    add ax, strict word 0x14         ; 0x19ec
    push ax                          ; 0x19ef
    mov ax, word [bp - 0x000c]       ; 0x19f0
    add ax, strict word 0xc          ; 0x19f3
    push ax                          ; 0x19f6
    call math_loc_0eea               ; 0x19f7
    add sp, byte 8                   ; 0x19fa
    mov ax, word [bp - 0x001a]       ; 0x19fd
    add ax, strict word 0xfffb       ; 0x1a00
    mov word [bp - 0x003e], ax       ; 0x1a03
    mov ax, 1                        ; 0x1a06
    push ax                          ; 0x1a09
    push word [bp - 0x003e]          ; 0x1a0a
    mov ax, word [bp - 0x0006]       ; 0x1a0d
    add ax, strict word 0x14         ; 0x1a10
    push ax                          ; 0x1a13
    mov ax, word [bp - 0x000c]       ; 0x1a14
    add ax, strict word 0xc          ; 0x1a17
    push ax                          ; 0x1a1a
    call math_loc_0eea               ; 0x1a1b
    add sp, byte 8                   ; 0x1a1e
    cmp word [bp - 0x003c], byte 0   ; 0x1a21
    jge short @..api_idx_0050.l17    ; 0x1a25
    jmp near @..api_idx_0050.l21     ; 0x1a27
@..api_idx_0050.l17:
    mov ax, 6                        ; 0x1a2a
    push ax                          ; 0x1a2d
    mov ax, 0                        ; 0x1a2e
    push ax                          ; 0x1a31
    mov ax, 0x248                    ; 0x1a32
    imul word [bp + 0x4]             ; 0x1a35
    mov bx, ax                       ; 0x1a38
    mov ax, word [bx + 0x5c18]       ; 0x1a3a
    push ax                          ; 0x1a3e
    mov ax, 6                        ; 0x1a3f
    imul word [bp - 0x003c]          ; 0x1a42
    mov bx, ax                       ; 0x1a45
    mov al, byte [bx + 0x621]        ; 0x1a47
    sub ah, ah                       ; 0x1a4b
    mov cx, ax                       ; 0x1a4d
    pop ax                           ; 0x1a4f
    sub ax, cx                       ; 0x1a50
    push ax                          ; 0x1a52
    call ds_dispatch_b7c2            ; 0x1a53
    add sp, byte 6                   ; 0x1a56
    mov word [bp - 0x0040], ax       ; 0x1a59
    mov ax, 6                        ; 0x1a5c
    imul word [bp - 0x003c]          ; 0x1a5f
    mov bx, ax                       ; 0x1a62
    mov al, byte [bx + 0x622]        ; 0x1a64
    sub ah, ah                       ; 0x1a68
    mov cx, word [bp - 0x0040]       ; 0x1a6a
    inc cx                           ; 0x1a6d
    imul cx                          ; 0x1a6e
    mov word [bp - 0x0002], ax       ; 0x1a70
    cmp word [bp + 0xa], byte 0      ; 0x1a73
    jne short @..api_idx_0050.l18    ; 0x1a77
    mov ax, 0x3e7                    ; 0x1a79
    jmp short @..api_idx_0050.l20    ; 0x1a7c
@..api_idx_0050.l18:
    mov ax, 0x248                    ; 0x1a7e
    imul word [bp + 0x4]             ; 0x1a81
    mov cx, word [bp - 0x0042]       ; 0x1a84
    shl cx, 1                        ; 0x1a87
    shl cx, 1                        ; 0x1a89
    add ax, cx                       ; 0x1a8b
    mov bx, ax                       ; 0x1a8d
    mov ax, word [bx + 0x5c1c]       ; 0x1a8f
    cmp ax, word [bp - 0x0002]       ; 0x1a93
    jge short @..api_idx_0050.l19    ; 0x1a96
    jmp short @..api_idx_0050.l20    ; 0x1a98
@..api_idx_0050.l19:
    mov ax, word [bp - 0x0002]       ; 0x1a9a
@..api_idx_0050.l20:
    push ax                          ; 0x1a9d
    mov ax, 6                        ; 0x1a9e
    imul word [bp - 0x003c]          ; 0x1aa1
    mov bx, ax                       ; 0x1aa4
    mov al, byte [bx + 0x622]        ; 0x1aa6
    sub ah, ah                       ; 0x1aaa
    mov cx, word [bp - 0x003e]       ; 0x1aac
    inc cx                           ; 0x1aaf
    imul cx                          ; 0x1ab0
    push ax                          ; 0x1ab2
    push word [bp - 0x0042]          ; 0x1ab3
    mov ax, word [bp - 0x0006]       ; 0x1ab6
    add ax, strict word 0x15         ; 0x1ab9
    push ax                          ; 0x1abc
    mov ax, word [bp - 0x000c]       ; 0x1abd
    add ax, strict word 0x5e         ; 0x1ac0
    push ax                          ; 0x1ac3
    call loc_0f76                    ; 0x1ac4
    add sp, byte 0x0a                ; 0x1ac7
    jmp short @..api_idx_0050.l22    ; 0x1aca
@..api_idx_0050.l21:
    mov ax, 0                        ; 0x1acc
    push ax                          ; 0x1acf
    push ax                          ; 0x1ad0
    push word [bp - 0x0042]          ; 0x1ad1
    mov ax, word [bp - 0x0006]       ; 0x1ad4
    add ax, strict word 0x15         ; 0x1ad7
    push ax                          ; 0x1ada
    mov ax, word [bp - 0x000c]       ; 0x1adb
    add ax, strict word 0x5e         ; 0x1ade
    push ax                          ; 0x1ae1
    call loc_0f76                    ; 0x1ae2
    add sp, byte 0x0a                ; 0x1ae5
@..api_idx_0050.l22:
    mov ax, word [bp - 0x0006]       ; 0x1ae8
    add ax, strict word 0x1c         ; 0x1aeb
    push ax                          ; 0x1aee
    mov ax, word [bp - 0x000c]       ; 0x1aef
    add ax, strict word 0x56         ; 0x1af2
    push ax                          ; 0x1af5
    mov ax, word [bp - 0x0006]       ; 0x1af6
    add ax, strict word 0x14         ; 0x1af9
    push ax                          ; 0x1afc
    mov ax, word [bp - 0x000c]       ; 0x1afd
    add ax, strict word 0xb          ; 0x1b00
    push ax                          ; 0x1b03
    call ds_dispatch_e8da            ; 0x1b04
    add sp, byte 8                   ; 0x1b07
    mov ax, word [bp - 0x0006]       ; 0x1b0a
    add ax, strict word 0x1b         ; 0x1b0d
    push ax                          ; 0x1b10
    mov ax, word [bp - 0x000c]       ; 0x1b11
    add ax, strict word 0x72         ; 0x1b14
    push ax                          ; 0x1b17
    mov ax, word [bp - 0x0006]       ; 0x1b18
    add ax, strict word 0x15         ; 0x1b1b
    push ax                          ; 0x1b1e
    mov ax, word [bp - 0x000c]       ; 0x1b1f
    add ax, strict word 0x5e         ; 0x1b22
    push ax                          ; 0x1b25
    call ds_dispatch_e8da            ; 0x1b26
    add sp, byte 8                   ; 0x1b29
    jmp near @..api_idx_0050.l34     ; 0x1b2c
@..api_idx_0050.l23:
    cmp word [bp - 0x001a], byte 0x0c ; 0x1b2f
    jge short @..api_idx_0050.l24    ; 0x1b33
    jmp near @..api_idx_0050.l28     ; 0x1b35
@..api_idx_0050.l24:
    cmp word [bp - 0x001a], byte 0x11 ; 0x1b38
    jle short @..api_idx_0050.l25    ; 0x1b3c
    jmp near @..api_idx_0050.l28     ; 0x1b3e
@..api_idx_0050.l25:
    mov ax, word [bp - 0x001a]       ; 0x1b41
    add ax, strict word 0xfff4       ; 0x1b44
    mov word [bp - 0x0042], ax       ; 0x1b47
    mov word [bp - 0x003c], 0xffff   ; 0x1b4a
    push ax                          ; 0x1b4f
    push word [bp + 0x4]             ; 0x1b50
    call api_idx_0004_2              ; 0x1b53
    add sp, byte 4                   ; 0x1b56
    mov word [bp - 0x0044], ax       ; 0x1b59
    mov ax, 7                        ; 0x1b5c
    cmp word [bp - 0x0044], byte 7   ; 0x1b5f
    jge short @..api_idx_0050.l26    ; 0x1b63
    mov ax, word [bp - 0x0044]       ; 0x1b65
@..api_idx_0050.l26:
    mov word [bp - 0x0024], ax       ; 0x1b68
    mov ax, 7                        ; 0x1b6b
    cmp word [bp - 0x0044], byte 7   ; 0x1b6e
    jge short @..api_idx_0050.l27    ; 0x1b72
    mov ax, word [bp - 0x0044]       ; 0x1b74
@..api_idx_0050.l27:
    mov word [bp - 0x0020], ax       ; 0x1b77
    mov word [bp - 0x0018], 0        ; 0x1b7a
    mov word [bp - 0x0022], 0xffff   ; 0x1b7f
    push word [bp - 0x0024]          ; 0x1b84
    push word [bp - 0x0022]          ; 0x1b87
    push word [bp - 0x0018]          ; 0x1b8a
    mov ax, 7                        ; 0x1b8d
    push ax                          ; 0x1b90
    mov ax, 0xf                      ; 0x1b91
    push ax                          ; 0x1b94
    mov ax, word [bp - 0x0006]       ; 0x1b95
    add ax, strict word 0x22         ; 0x1b98
    push ax                          ; 0x1b9b
    mov ax, word [bp - 0x000c]       ; 0x1b9c
    add ax, strict word 6            ; 0x1b9f
    push ax                          ; 0x1ba2
    call ds_dispatch_bf97            ; 0x1ba3
    add sp, byte 0x0e                ; 0x1ba6
    mov word [bp - 0x0012], 0        ; 0x1ba9
    push word [bp - 0x0012]          ; 0x1bae
    mov ax, 7                        ; 0x1bb1
    push ax                          ; 0x1bb4
    mov ax, 8                        ; 0x1bb5
    push ax                          ; 0x1bb8
    mov ax, word [bp - 0x0006]       ; 0x1bb9
    add ax, strict word 0x22         ; 0x1bbc
    push ax                          ; 0x1bbf
    mov ax, word [bp - 0x000c]       ; 0x1bc0
    add ax, strict word 0x6a         ; 0x1bc3
    push ax                          ; 0x1bc6
    call ds_dispatch_bfd8            ; 0x1bc7
    add sp, byte 0x0a                ; 0x1bca
    mov ax, 0                        ; 0x1bcd
    push ax                          ; 0x1bd0
    push ax                          ; 0x1bd1
    mov ax, word [bp - 0x0006]       ; 0x1bd2
    add ax, word [bp - 0x0012]       ; 0x1bd5
    add ax, strict word 0x2e         ; 0x1bd8
    push ax                          ; 0x1bdb
    mov ax, word [bp - 0x000c]       ; 0x1bdc
    add ax, strict word 0x72         ; 0x1bdf
    push ax                          ; 0x1be2
    mov ax, word [bp - 0x0006]       ; 0x1be3
    add ax, word [bp - 0x0012]       ; 0x1be6
    add ax, strict word 0x2a         ; 0x1be9
    push ax                          ; 0x1bec
    mov ax, word [bp - 0x000c]       ; 0x1bed
    add ax, strict word 0x6a         ; 0x1bf0
    push ax                          ; 0x1bf3
    mov ax, 0                        ; 0x1bf4
    push ax                          ; 0x1bf7
    call ds_dispatch_baa6            ; 0x1bf8
    add sp, byte 0x0e                ; 0x1bfb
    mov ax, 0                        ; 0x1bfe
    push ax                          ; 0x1c01
    push ax                          ; 0x1c02
    push word [bp - 0x0042]          ; 0x1c03
    mov ax, word [bp - 0x0006]       ; 0x1c06
    add ax, strict word 0x15         ; 0x1c09
    push ax                          ; 0x1c0c
    mov ax, word [bp - 0x000c]       ; 0x1c0d
    add ax, strict word 0x5e         ; 0x1c10
    push ax                          ; 0x1c13
    call loc_0f76                    ; 0x1c14
    add sp, byte 0x0a                ; 0x1c17
    mov ax, word [bp - 0x0006]       ; 0x1c1a
    add ax, strict word 0x4c         ; 0x1c1d
    push ax                          ; 0x1c20
    mov ax, word [bp - 0x000c]       ; 0x1c21
    add ax, strict word 0x72         ; 0x1c24
    push ax                          ; 0x1c27
    mov ax, word [bp - 0x0006]       ; 0x1c28
    add ax, strict word 0x22         ; 0x1c2b
    push ax                          ; 0x1c2e
    mov ax, word [bp - 0x000c]       ; 0x1c2f
    add ax, strict word 6            ; 0x1c32
    push ax                          ; 0x1c35
    call ds_dispatch_e8da            ; 0x1c36
    add sp, byte 8                   ; 0x1c39
    mov ax, word [bp - 0x0006]       ; 0x1c3c
    add ax, strict word 0x1b         ; 0x1c3f
    push ax                          ; 0x1c42
    mov ax, word [bp - 0x000c]       ; 0x1c43
    add ax, strict word 0x72         ; 0x1c46
    push ax                          ; 0x1c49
    mov ax, word [bp - 0x0006]       ; 0x1c4a
    add ax, strict word 0x15         ; 0x1c4d
    push ax                          ; 0x1c50
    mov ax, word [bp - 0x000c]       ; 0x1c51
    add ax, strict word 0x5e         ; 0x1c54
    push ax                          ; 0x1c57
    call ds_dispatch_e8da            ; 0x1c58
    add sp, byte 8                   ; 0x1c5b
    jmp near @..api_idx_0050.l34     ; 0x1c5e
@..api_idx_0050.l28:
    cmp word [bp - 0x001a], byte 0x12 ; 0x1c61
    jge short @..api_idx_0050.l29    ; 0x1c65
    jmp near @..api_idx_0050.l34     ; 0x1c67
@..api_idx_0050.l29:
    mov ax, word [bp - 0x0020]       ; 0x1c6a
    add ax, strict word 0x12         ; 0x1c6d
    cmp ax, word [bp - 0x001a]       ; 0x1c70
    jg short @..api_idx_0050.l30     ; 0x1c73
    jmp near @..api_idx_0050.l34     ; 0x1c75
@..api_idx_0050.l30:
    mov ax, word [bp - 0x0018]       ; 0x1c78
    add ax, word [bp - 0x001a]       ; 0x1c7b
    add ax, strict word 0xffee       ; 0x1c7e
    mov word [bp - 0x0022], ax       ; 0x1c81
    shl ax, 1                        ; 0x1c84
    mov bx, ax                       ; 0x1c86
    mov ax, word [bx - 0x6bc4]       ; 0x1c88
    mov word [bp - 0x003c], ax       ; 0x1c8c
    push word [bp - 0x0024]          ; 0x1c8f
    push word [bp - 0x0022]          ; 0x1c92
    push word [bp - 0x0018]          ; 0x1c95
    mov ax, 7                        ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0xf                      ; 0x1c9c
    push ax                          ; 0x1c9f
    mov ax, word [bp - 0x0006]       ; 0x1ca0
    add ax, strict word 0x22         ; 0x1ca3
    push ax                          ; 0x1ca6
    mov ax, word [bp - 0x000c]       ; 0x1ca7
    add ax, strict word 6            ; 0x1caa
    push ax                          ; 0x1cad
    call ds_dispatch_bf97            ; 0x1cae
    add sp, byte 0x0e                ; 0x1cb1
    mov ax, 6                        ; 0x1cb4
    push ax                          ; 0x1cb7
    mov ax, 0                        ; 0x1cb8
    push ax                          ; 0x1cbb
    mov ax, 0x248                    ; 0x1cbc
    imul word [bp + 0x4]             ; 0x1cbf
    mov bx, ax                       ; 0x1cc2
    mov ax, word [bx + 0x5c18]       ; 0x1cc4
    push ax                          ; 0x1cc8
    mov ax, 6                        ; 0x1cc9
    imul word [bp - 0x003c]          ; 0x1ccc
    mov bx, ax                       ; 0x1ccf
    mov al, byte [bx + 0x621]        ; 0x1cd1
    sub ah, ah                       ; 0x1cd5
    mov cx, ax                       ; 0x1cd7
    pop ax                           ; 0x1cd9
    sub ax, cx                       ; 0x1cda
    push ax                          ; 0x1cdc
    call ds_dispatch_b7c2            ; 0x1cdd
    add sp, byte 6                   ; 0x1ce0
    mov word [bp - 0x0040], ax       ; 0x1ce3
    mov ax, 6                        ; 0x1ce6
    imul word [bp - 0x003c]          ; 0x1ce9
    mov bx, ax                       ; 0x1cec
    mov al, byte [bx + 0x622]        ; 0x1cee
    sub ah, ah                       ; 0x1cf2
    mov cx, word [bp - 0x0040]       ; 0x1cf4
    inc cx                           ; 0x1cf7
    imul cx                          ; 0x1cf8
    mov word [bp - 0x0002], ax       ; 0x1cfa
    cmp word [bp + 0xa], byte 0      ; 0x1cfd
    jne short @..api_idx_0050.l31    ; 0x1d01
    mov ax, 0x3e7                    ; 0x1d03
    jmp short @..api_idx_0050.l33    ; 0x1d06
@..api_idx_0050.l31:
    mov ax, 0x248                    ; 0x1d08
    imul word [bp + 0x4]             ; 0x1d0b
    mov cx, word [bp - 0x0042]       ; 0x1d0e
    shl cx, 1                        ; 0x1d11
    shl cx, 1                        ; 0x1d13
    add ax, cx                       ; 0x1d15
    mov bx, ax                       ; 0x1d17
    mov ax, word [bx + 0x5c1c]       ; 0x1d19
    cmp ax, word [bp - 0x0002]       ; 0x1d1d
    jge short @..api_idx_0050.l32    ; 0x1d20
    jmp short @..api_idx_0050.l33    ; 0x1d22
@..api_idx_0050.l32:
    mov ax, word [bp - 0x0002]       ; 0x1d24
@..api_idx_0050.l33:
    push ax                          ; 0x1d27
    mov ax, 6                        ; 0x1d28
    imul word [bp - 0x003c]          ; 0x1d2b
    mov bx, ax                       ; 0x1d2e
    mov al, byte [bx + 0x622]        ; 0x1d30
    sub ah, ah                       ; 0x1d34
    mov cx, word [bp - 0x003e]       ; 0x1d36
    inc cx                           ; 0x1d39
    imul cx                          ; 0x1d3a
    push ax                          ; 0x1d3c
    push word [bp - 0x0042]          ; 0x1d3d
    mov ax, word [bp - 0x0006]       ; 0x1d40
    add ax, strict word 0x15         ; 0x1d43
    push ax                          ; 0x1d46
    mov ax, word [bp - 0x000c]       ; 0x1d47
    add ax, strict word 0x5e         ; 0x1d4a
    push ax                          ; 0x1d4d
    call loc_0f76                    ; 0x1d4e
    add sp, byte 0x0a                ; 0x1d51
    mov ax, word [bp - 0x0006]       ; 0x1d54
    add ax, strict word 0x4c         ; 0x1d57
    push ax                          ; 0x1d5a
    mov ax, word [bp - 0x000c]       ; 0x1d5b
    add ax, strict word 0x72         ; 0x1d5e
    push ax                          ; 0x1d61
    mov ax, word [bp - 0x0006]       ; 0x1d62
    add ax, strict word 0x22         ; 0x1d65
    push ax                          ; 0x1d68
    mov ax, word [bp - 0x000c]       ; 0x1d69
    add ax, strict word 6            ; 0x1d6c
    push ax                          ; 0x1d6f
    call ds_dispatch_e8da            ; 0x1d70
    add sp, byte 8                   ; 0x1d73
    mov ax, word [bp - 0x0006]       ; 0x1d76
    add ax, strict word 0x1b         ; 0x1d79
    push ax                          ; 0x1d7c
    mov ax, word [bp - 0x000c]       ; 0x1d7d
    add ax, strict word 0x72         ; 0x1d80
    push ax                          ; 0x1d83
    mov ax, word [bp - 0x0006]       ; 0x1d84
    add ax, strict word 0x15         ; 0x1d87
    push ax                          ; 0x1d8a
    mov ax, word [bp - 0x000c]       ; 0x1d8b
    add ax, strict word 0x5e         ; 0x1d8e
    push ax                          ; 0x1d91
    call ds_dispatch_e8da            ; 0x1d92
    add sp, byte 8                   ; 0x1d95
@..api_idx_0050.l34:
    jmp short @..api_idx_0050.l37    ; 0x1d98
    shl word [bp - 0x0018], 0x67     ; 0x1d9a
    call loc_3d08                    ; 0x1d9e
    db 0x69, 0xcc, 0x69
@..api_idx_0050.l35:
    cmp ax, strict word 5            ; 0x1da4
    jae short @..api_idx_0050.l36    ; 0x1da7
    xchg bx, ax                      ; 0x1da9
    shl bx, 1                        ; 0x1daa
    jmp [cs:bx + 0x6de1]             ; 0x1dac
@..api_idx_0050.l36:
    jmp near @..api_idx_0050.l14     ; 0x1db1
@..api_idx_0050.l37:
    cmp word [bp - 0x001c], byte 0   ; 0x1db4
    je short @..api_idx_0050.l38     ; 0x1db8
    jmp near @..api_idx_0050.l8      ; 0x1dba
@..api_idx_0050.l38:
    mov ax, 1                        ; 0x1dbd
    push ax                          ; 0x1dc0
    push word [bp - 0x003a]          ; 0x1dc1
    call ds_dispatch_c459            ; 0x1dc4
    add sp, byte 4                   ; 0x1dc7
    mov ax, word [bp - 0x000a]       ; 0x1dca
    inc ax                           ; 0x1dcd
    push ax                          ; 0x1dce
    mov ax, word [bp - 0x0008]       ; 0x1dcf
    inc ax                           ; 0x1dd2
    push ax                          ; 0x1dd3
    mov ax, word [bp - 0x0006]       ; 0x1dd4
    dec ax                           ; 0x1dd7
    push ax                          ; 0x1dd8
    mov ax, word [bp - 0x0004]       ; 0x1dd9
    dec ax                           ; 0x1ddc
    push ax                          ; 0x1ddd
    call ds_dispatch_e8da            ; 0x1dde
    add sp, byte 8                   ; 0x1de1
    mov word [bp - 0x0002], 0        ; 0x1de4
@..api_idx_0050.l39:
    mov ax, word [bp - 0x0002]       ; 0x1de9
    shl ax, 1                        ; 0x1dec
    mov bx, ax                       ; 0x1dee
    add bx, bp                       ; 0x1df0
    mov ax, word [bx - 0x0050]       ; 0x1df2
    mov cx, word [bp - 0x0002]       ; 0x1df5
    shl cx, 1                        ; 0x1df8
    mov bx, cx                       ; 0x1dfa
    mov word [bx - 0x7cf2], ax       ; 0x1dfc
    inc word [bp - 0x0002]           ; 0x1e00
    mov ax, word [bp - 0x0002]       ; 0x1e03
    cmp ax, strict word 6            ; 0x1e06
    jl short @..api_idx_0050.l39     ; 0x1e09
    les bx, word [data_0002]         ; 0x1e0b
    mov ax, word [es:bx]             ; 0x1e0f
    mov dx, word [es:bx + 0x2]       ; 0x1e12
    mov word [data_908c], dx         ; 0x1e16
    mov word [data_908a], ax         ; 0x1e1a
    mov ax, word [bp - 0x003e]       ; 0x1e1d
    xchg al, ah                      ; 0x1e20
    sub al, al                       ; 0x1e22
    add ax, word [bp - 0x003c]       ; 0x1e24
    add ax, 0x100                    ; 0x1e27
    mov word [data_904e], ax         ; 0x1e2a
    mov ax, word [data_9050]         ; 0x1e2d
    ret                              ; 0x1e30
%include "vpclv/api_idx_00ca.asm"

@..api_idx_00ca.l10:
    lea ax, word [bp - 0x007a]       ; 0x1f64
    push ax                          ; 0x1f67
    mov ax, 0x2be                    ; 0x1f68
    push ax                          ; 0x1f6b
    call ds_dispatch_b53b            ; 0x1f6c
    add sp, byte 4                   ; 0x1f6f
    lea ax, word [bp - 0x00ca]       ; 0x1f72
    push ax                          ; 0x1f76
    mov ax, 0x248                    ; 0x1f77
    imul word [bp + 0x4]             ; 0x1f7a
    mov bx, ax                       ; 0x1f7d
    mov al, byte [bx + 0x5e2d]       ; 0x1f7f
    sub ah, ah                       ; 0x1f83
    add ax, strict word 0x78         ; 0x1f85
    push ax                          ; 0x1f88
    call ds_dispatch_b53b            ; 0x1f89
    add sp, byte 4                   ; 0x1f8c
    mov ax, 0x24                     ; 0x1f8f
    push ax                          ; 0x1f92
    lea ax, word [bp - 0x00ca]       ; 0x1f93
    push ax                          ; 0x1f97
    lea ax, word [bp - 0x007a]       ; 0x1f98
    push ax                          ; 0x1f9b
    call ds_dispatch_b300            ; 0x1f9c
    add sp, byte 6                   ; 0x1f9f
    mov ax, 1                        ; 0x1fa2
    push ax                          ; 0x1fa5
    lea ax, word [bp - 0x007a]       ; 0x1fa6
    push ax                          ; 0x1fa9
    call api_idx_0004_5              ; 0x1faa
    add sp, byte 4                   ; 0x1fad
    mov ax, 0                        ; 0x1fb0
    push ax                          ; 0x1fb3
    mov ax, 1                        ; 0x1fb4
    push ax                          ; 0x1fb7
    mov ax, 0x7ec                    ; 0x1fb8
    push ax                          ; 0x1fbb
    push word [bp + 0x4]             ; 0x1fbc
    call api_idx_0050                ; 0x1fbf
    add sp, byte 8                   ; 0x1fc2
    mov word [bp - 0x0004], ax       ; 0x1fc5
    mov ax, 0x10                     ; 0x1fc8
    push ax                          ; 0x1fcb
    mov ax, 0x248                    ; 0x1fcc
    imul word [bp + 0x4]             ; 0x1fcf
    add ax, 0x5e12                   ; 0x1fd2
    push ax                          ; 0x1fd5
    lea ax, word [bp - 0x001e]       ; 0x1fd6
    push ax                          ; 0x1fd9
    call ds_dispatch_fedc            ; 0x1fda
    add sp, byte 6                   ; 0x1fdd
    cmp word [bp - 0x0004], byte 0   ; 0x1fe0
    je short @..api_idx_00ca.l11     ; 0x1fe4
    jmp near @..api_idx_00ca.l13     ; 0x1fe6
@..api_idx_00ca.l11:
    mov ax, word [data_904e]         ; 0x1fe9
    mov cx, 0x100                    ; 0x1fec
    cwd                              ; 0x1fef
    idiv cx                          ; 0x1ff0
    mov word [bp - 0x0008], ax       ; 0x1ff2
    mov word [bp - 0x0006], dx       ; 0x1ff5
    mov ax, 1                        ; 0x1ff8
    push ax                          ; 0x1ffb
    push dx                          ; 0x1ffc
    mov ax, 0x248                    ; 0x1ffd
    imul word [bp + 0x4]             ; 0x2000
    add ax, 0x5e12                   ; 0x2003
    push ax                          ; 0x2006
    call ds_dispatch_ec41            ; 0x2007
    add sp, byte 6                   ; 0x200a
    mov ax, 0x248                    ; 0x200d
    imul word [bp + 0x4]             ; 0x2010
    add ax, word [bp - 0x000e]       ; 0x2013
    mov bx, ax                       ; 0x2016
    mov al, byte [bx + 0x5d6c]       ; 0x2018
    sub ah, ah                       ; 0x201c
    mov cx, 0x14                     ; 0x201e
    cwd                              ; 0x2021
    idiv cx                          ; 0x2022
    push ax                          ; 0x2024
    call ds_dispatch_b7a9            ; 0x2025
    pop cx                           ; 0x2028
    push ax                          ; 0x2029
    mov ax, 6                        ; 0x202a
    imul word [bp - 0x0006]          ; 0x202d
    mov bx, ax                       ; 0x2030
    mov al, byte [bx + 0x621]        ; 0x2032
    sub ah, ah                       ; 0x2036
    push ax                          ; 0x2038
    mov ax, 0x248                    ; 0x2039
    imul word [bp + 0x4]             ; 0x203c
    mov bx, ax                       ; 0x203f
    mov al, byte [bx + 0x5d66]       ; 0x2041
    sub ah, ah                       ; 0x2045
    mov cx, 6                        ; 0x2047
    cwd                              ; 0x204a
    idiv cx                          ; 0x204b
    mov cx, ax                       ; 0x204d
    pop ax                           ; 0x204f
    imul cx                          ; 0x2050
    mov cx, ax                       ; 0x2052
    pop ax                           ; 0x2054
    add ax, cx                       ; 0x2055
    inc ax                           ; 0x2057
    mov word [bp - 0x0002], ax       ; 0x2058
    mov ax, 6                        ; 0x205b
    imul word [bp - 0x0006]          ; 0x205e
    mov bx, ax                       ; 0x2061
    mov al, byte [bx + 0x620]        ; 0x2063
    sub ah, ah                       ; 0x2067
    mov word [bp - 0x0004], ax       ; 0x2069
    mov ax, 0x248                    ; 0x206c
    imul word [bp + 0x4]             ; 0x206f
    mov cx, word [bp - 0x0004]       ; 0x2072
    shl cx, 1                        ; 0x2075
    shl cx, 1                        ; 0x2077
    add ax, cx                       ; 0x2079
    mov bx, ax                       ; 0x207b
    mov ax, word [bx + 0x5c1e]       ; 0x207d
    add ax, word [bp - 0x0002]       ; 0x2081
    push ax                          ; 0x2084
    mov ax, 6                        ; 0x2085
    imul word [bp - 0x0006]          ; 0x2088
    mov bx, ax                       ; 0x208b
    mov al, byte [bx + 0x622]        ; 0x208d
    sub ah, ah                       ; 0x2091
    mov cx, ax                       ; 0x2093
    pop ax                           ; 0x2095
    cmp ax, cx                       ; 0x2096
    jge short @..api_idx_00ca.l12    ; 0x2098
    mov ax, 0x248                    ; 0x209a
    imul word [bp + 0x4]             ; 0x209d
    mov dx, word [bp - 0x0004]       ; 0x20a0
    shl dx, 1                        ; 0x20a3
    shl dx, 1                        ; 0x20a5
    add ax, dx                       ; 0x20a7
    mov bx, ax                       ; 0x20a9
    sub cx, word [bx + 0x5c1e]       ; 0x20ab
    mov word [bp - 0x0002], cx       ; 0x20af
@..api_idx_00ca.l12:
    mov ax, word [bp - 0x0002]       ; 0x20b2
    push ax                          ; 0x20b5
    mov ax, 0x248                    ; 0x20b6
    imul word [bp + 0x4]             ; 0x20b9
    mov cx, ax                       ; 0x20bc
    mov dx, word [bp - 0x0004]       ; 0x20be
    shl dx, 1                        ; 0x20c1
    shl dx, 1                        ; 0x20c3
    add ax, dx                       ; 0x20c5
    mov bx, ax                       ; 0x20c7
    pop ax                           ; 0x20c9
    add word [bx + 0x5c1e], ax       ; 0x20ca
    add word [bx + 0x5c1c], ax       ; 0x20ce
    add cx, word [bp + 0x6]          ; 0x20d2
    mov bx, cx                       ; 0x20d5
    dec byte [bx + 0x5d50]           ; 0x20d7
    push word [bp + 0x4]             ; 0x20db
    call api_idx_0004                ; 0x20de
    pop cx                           ; 0x20e1
@..api_idx_00ca.l13:
    ret                              ; 0x20e2
loc_20e3:
    mov ax, 0                        ; 0x20e3
    call ds_dispatch_f40b            ; 0x20e6
    les bx, word [data_0002]         ; 0x20e9
    mov ax, word [es:bx]             ; 0x20ed
    mov dx, word [es:bx + 0x2]       ; 0x20f0
    mov word [data_9090], dx         ; 0x20f4
    mov word [data_908e], ax         ; 0x20f8
    mov ax, word [data_908e]         ; 0x20fb
    mov dx, word [data_9090]         ; 0x20fe
    sub ax, word [data_908a]         ; 0x2102
    sbb dx, word [data_908c]         ; 0x2106
    mov word [data_9094], dx         ; 0x210a
    mov word [data_9092], ax         ; 0x210e
    mov ax, word [data_948c]         ; 0x2111
    cwd                              ; 0x2114
    mov cx, ax                       ; 0x2115
    mov bx, dx                       ; 0x2117
    mov ax, word [data_9092]         ; 0x2119
    mov dx, word [data_9094]         ; 0x211c
    cmp bx, dx                       ; 0x2120
    jg short @..local.l7             ; 0x2122
    jne short @..local.l8            ; 0x2124
    cmp cx, ax                       ; 0x2126
    jbe short @..local.l8            ; 0x2128
@..local.l7:
    jmp short @..local.l9            ; 0x212a
@..local.l8:
    mov ax, word [data_908e]         ; 0x212c
    mov dx, word [data_9090]         ; 0x212f
    mov word [data_908c], dx         ; 0x2133
    mov word [data_908a], ax         ; 0x2137
    mov ax, word [data_943a]         ; 0x213a
    inc ax                           ; 0x213d
    mov cx, 3                        ; 0x213e
    cwd                              ; 0x2141
    idiv cx                          ; 0x2142
    mov word [data_943a], dx         ; 0x2144
    push dx                          ; 0x2148
    call api_idx_000a                ; 0x2149
    pop cx                           ; 0x214c
    mov ax, 0x41                     ; 0x214d
    push ax                          ; 0x2150
    mov ax, 0x65                     ; 0x2151
    push ax                          ; 0x2154
    mov ax, 0x19                     ; 0x2155
    push ax                          ; 0x2158
    mov ax, 0x5a                     ; 0x2159
    push ax                          ; 0x215c
    call ds_dispatch_e8da            ; 0x215d
    add sp, byte 8                   ; 0x2160
    mov ax, 0xffff                   ; 0x2163
    push ax                          ; 0x2166
    call api_idx_0002_2              ; 0x2167
    pop cx                           ; 0x216a
    push word [bp + 0x4]             ; 0x216b
    call api_idx_0004                ; 0x216e
    pop cx                           ; 0x2171
    mov ax, 0xbf                     ; 0x2172
    push ax                          ; 0x2175
    mov ax, 0x13f                    ; 0x2176
    push ax                          ; 0x2179
    mov ax, 0x7e                     ; 0x217a
    push ax                          ; 0x217d
    mov ax, 0xb8                     ; 0x217e
    push ax                          ; 0x2181
    call ds_dispatch_e8da            ; 0x2182
    add sp, byte 8                   ; 0x2185
@..local.l9:
    ret                              ; 0x2188
loc_2189:
    mov ax, 0                        ; 0x2189
    call ds_dispatch_f40b            ; 0x218c
    push word [bp + 0x4]             ; 0x218f
    call api_idx_007c                ; 0x2192
    pop cx                           ; 0x2195
    push word [bp + 0x4]             ; 0x2196
    call api_idx_0080                ; 0x2199
    pop cx                           ; 0x219c
    cmp word [bp + 0x6], byte 0      ; 0x219d
    jne short @..local.l10           ; 0x21a1
    push word [bp + 0x4]             ; 0x21a3
    call api_idx_004c                ; 0x21a6
    pop cx                           ; 0x21a9
    mov ax, 0xc7                     ; 0x21aa
    push ax                          ; 0x21ad
    mov ax, 0x13f                    ; 0x21ae
    push ax                          ; 0x21b1
    mov ax, 0                        ; 0x21b2
    push ax                          ; 0x21b5
    push ax                          ; 0x21b6
    call ds_dispatch_e8da            ; 0x21b7
    add sp, byte 8                   ; 0x21ba
@..local.l10:
    ret                              ; 0x21bd
%include "vpclv/api_idx_0004_3.asm"

    mov ax, 0x248                    ; 0x23bd
    imul word [bp + 0x4]             ; 0x23c0
    push ax                          ; 0x23c3
    mov ax, 0x12                     ; 0x23c4
    imul word [bp + 0x6]             ; 0x23c7
    mov cx, ax                       ; 0x23ca
    pop ax                           ; 0x23cc
    add ax, cx                       ; 0x23cd
    mov di, ax                       ; 0x23cf
    add ax, 0x5d24                   ; 0x23d1
    mov di, ax                       ; 0x23d4
    mov cx, ds                       ; 0x23d6
    mov es, cx                       ; 0x23d8
    movsw                            ; 0x23da
    movsw                            ; 0x23db
    cmp word [bp + 0x6], byte 0      ; 0x23dc
    jne short @..api_idx_0004_3.l16  ; 0x23e0
    mov ax, 0x248                    ; 0x23e2
    imul word [bp + 0x4]             ; 0x23e5
    mov bx, ax                       ; 0x23e8
    cmp byte [bx + 0x5d64], 0xf      ; 0x23ea
    jbe short @..api_idx_0004_3.l13  ; 0x23ef
    mov ax, 1                        ; 0x23f1
    jmp short @..api_idx_0004_3.l14  ; 0x23f4
@..api_idx_0004_3.l13:
    mov ax, 0                        ; 0x23f6
@..api_idx_0004_3.l14:
    add word [bx + 0x5d24], ax       ; 0x23f9
    mov ax, 0                        ; 0x23fd
    cmp byte [bx + 0x5d64], 0x11     ; 0x2400
    jbe short @..api_idx_0004_3.l15  ; 0x2405
    mov ax, 1                        ; 0x2407
@..api_idx_0004_3.l15:
    add word [bx + 0x5d24], ax       ; 0x240a
@..api_idx_0004_3.l16:
    mov bx, word [bp + 0x8]          ; 0x240e
    mov al, byte [bx + 0x46]         ; 0x2411
    push ax                          ; 0x2414
    mov ax, 0x248                    ; 0x2415
    imul word [bp + 0x4]             ; 0x2418
    mov cx, ax                       ; 0x241b
    mov ax, 0x12                     ; 0x241d
    imul word [bp + 0x6]             ; 0x2420
    mov dx, ax                       ; 0x2423
    add cx, ax                       ; 0x2425
    mov bx, cx                       ; 0x2427
    pop ax                           ; 0x2429
    mov byte [bx + 0x5d33], al       ; 0x242a
    mov bx, word [bp + 0x8]          ; 0x242e
    mov al, byte [bx + 0x42]         ; 0x2431
    mov bx, cx                       ; 0x2434
    mov byte [bx + 0x5d34], al       ; 0x2436
    mov bx, word [bp + 0x8]          ; 0x243a
    mov al, byte [bx + 0x43]         ; 0x243d
    mov bx, cx                       ; 0x2440
    mov byte [bx + 0x5d35], al       ; 0x2442
    ret                              ; 0x2446
%include "vpclv/api_idx_002a.asm"

%include "vpclv/api_idx_0080.asm"

    push ax                          ; 0x26f0
    push word [bp - 0x0006]          ; 0x26f1
    call ds_dispatch_b27d            ; 0x26f4
    add sp, byte 4                   ; 0x26f7
    mov ax, 0                        ; 0x26fa
    push ax                          ; 0x26fd
    lea ax, word [bp - 0x0068]       ; 0x26fe
    push ax                          ; 0x2701
    call ds_dispatch_e84e            ; 0x2702
    add sp, byte 4                   ; 0x2705
    inc word [bp - 0x0002]           ; 0x2708
    mov ax, word [bp - 0x0002]       ; 0x270b
    cmp ax, strict word 5            ; 0x270e
    jge short @..api_idx_0080.l7     ; 0x2711
    jmp near @..api_idx_0080.l3      ; 0x2713
@..api_idx_0080.l7:
    ret                              ; 0x2716
%include "vpclv/api_idx_0004_4.asm"

%include "vpclv/api_idx_004c.asm"

    push word [bx - 0x6a7c]          ; 0x29e0
    mov ax, 0x16                     ; 0x29e4
    imul word [bp - 0x0002]          ; 0x29e7
    add ax, 0x9494                   ; 0x29ea
    push ax                          ; 0x29ed
    mov ax, 0x248                    ; 0x29ee
    imul word [bp + 0x4]             ; 0x29f1
    push ax                          ; 0x29f4
    mov ax, 0x78                     ; 0x29f5
    imul word [data_948e]            ; 0x29f8
    mov cx, ax                       ; 0x29fc
    pop ax                           ; 0x29fe
    add ax, cx                       ; 0x29ff
    push ax                          ; 0x2a01
    mov ax, 0xc                      ; 0x2a02
    imul word [bp - 0x0002]          ; 0x2a05
    mov cx, ax                       ; 0x2a08
    pop ax                           ; 0x2a0a
    add ax, cx                       ; 0x2a0b
    add ax, 0x5c34                   ; 0x2a0d
    push ax                          ; 0x2a10
    push word [bp - 0x0002]          ; 0x2a11
    push word [bp + 0x4]             ; 0x2a14
    call api_idx_0004_4              ; 0x2a17
    add sp, byte 0x0a                ; 0x2a1a
@..api_idx_004c.l16:
    inc word [bp - 0x0002]           ; 0x2a1d
    mov ax, word [bp - 0x0002]       ; 0x2a20
    cmp ax, strict word 0xa          ; 0x2a23
    jge short @..api_idx_004c.l17    ; 0x2a26
    jmp near @..api_idx_004c.l6      ; 0x2a28
@..api_idx_004c.l17:
    mov word [data_9492], 1          ; 0x2a2b
    ret                              ; 0x2a31
%include "vpclv/math_loc_2a32.asm"

%include "vpclv/api_idx_0006.asm"

%include "vpclv/api_idx_0002_4.asm"

%include "vpclv/api_idx_0052.asm"

    jmp near @..api_idx_0052.l4      ; 0x2e0c
    mov ax, 0x19                     ; 0x2e0f
    push ax                          ; 0x2e12
    mov ax, 0xa                      ; 0x2e13
    push ax                          ; 0x2e16
    mov ax, 0                        ; 0x2e17
    push ax                          ; 0x2e1a
    push word [bp + 0x4]             ; 0x2e1b
    call math_loc_2a32               ; 0x2e1e
    add sp, byte 8                   ; 0x2e21
    mov ax, 0xa                      ; 0x2e24
    push ax                          ; 0x2e27
    mov ax, 8                        ; 0x2e28
    push ax                          ; 0x2e2b
    mov ax, 0                        ; 0x2e2c
    push ax                          ; 0x2e2f
    push word [bp + 0x4]             ; 0x2e30
    call math_loc_2a32               ; 0x2e33
    add sp, byte 8                   ; 0x2e36
    mov ax, 0xffec                   ; 0x2e39
    push ax                          ; 0x2e3c
    mov ax, 3                        ; 0x2e3d
    push ax                          ; 0x2e40
    mov ax, 0                        ; 0x2e41
    push ax                          ; 0x2e44
    push word [bp + 0x4]             ; 0x2e45
    call math_loc_2a32               ; 0x2e48
    add sp, byte 8                   ; 0x2e4b
    jmp near @..api_idx_0052.l4      ; 0x2e4e
    mov ax, 0xf                      ; 0x2e51
    push ax                          ; 0x2e54
    mov ax, 7                        ; 0x2e55
    push ax                          ; 0x2e58
    mov ax, 0                        ; 0x2e59
    push ax                          ; 0x2e5c
    push word [bp + 0x4]             ; 0x2e5d
    call math_loc_2a32               ; 0x2e60
    add sp, byte 8                   ; 0x2e63
    mov ax, 0x14                     ; 0x2e66
    push ax                          ; 0x2e69
    mov ax, 4                        ; 0x2e6a
    push ax                          ; 0x2e6d
    mov ax, 0                        ; 0x2e6e
    push ax                          ; 0x2e71
    push word [bp + 0x4]             ; 0x2e72
    call math_loc_2a32               ; 0x2e75
    add sp, byte 8                   ; 0x2e78
    mov ax, 0x14                     ; 0x2e7b
    push ax                          ; 0x2e7e
    mov ax, 3                        ; 0x2e7f
    push ax                          ; 0x2e82
    mov ax, 0                        ; 0x2e83
    push ax                          ; 0x2e86
    push word [bp + 0x4]             ; 0x2e87
    call math_loc_2a32               ; 0x2e8a
    add sp, byte 8                   ; 0x2e8d
    jmp short @..api_idx_0052.l4     ; 0x2e90
    mov ax, 0x19                     ; 0x2e92
    push ax                          ; 0x2e95
    mov ax, 0xc                      ; 0x2e96
    push ax                          ; 0x2e99
    mov ax, 0                        ; 0x2e9a
    push ax                          ; 0x2e9d
    push word [bp + 0x4]             ; 0x2e9e
    call math_loc_2a32               ; 0x2ea1
    add sp, byte 8                   ; 0x2ea4
    mov ax, 0xf                      ; 0x2ea7
    push ax                          ; 0x2eaa
    mov ax, 3                        ; 0x2eab
    push ax                          ; 0x2eae
    mov ax, 0                        ; 0x2eaf
    push ax                          ; 0x2eb2
    push word [bp + 0x4]             ; 0x2eb3
    call math_loc_2a32               ; 0x2eb6
    add sp, byte 8                   ; 0x2eb9
    jmp short @..api_idx_0052.l4     ; 0x2ebc
    db 0x67, 0x7d, 0xd2 ; jge loc_2e93
    jge short loc_2f42               ; 0x2ec1
    jge short loc_2e6c               ; 0x2ec3
    jge short loc_2f46               ; 0x2ec5
    jge short loc_2eb3               ; 0x2ec7
    jge short loc_2f21               ; 0x2ec9
    jle short loc_2f23               ; 0x2ecb
    jle short loc_2e67               ; 0x2ecd
    jle short loc_2e93               ; 0x2ecf
    jle short loc_2eac               ; 0x2ed1
    db 0x7e
@..api_idx_0052.l3:
    cmp ax, strict word 0xb          ; 0x2ed4
    jae short @..api_idx_0052.l4     ; 0x2ed7
    xchg bx, ax                      ; 0x2ed9
    shl bx, 1                        ; 0x2eda
    jmp [cs:bx + 0x7f05]             ; 0x2edc
@..api_idx_0052.l4:
    mov ax, 0x248                    ; 0x2ee1
    imul word [bp + 0x4]             ; 0x2ee4
    mov bx, ax                       ; 0x2ee7
    cmp byte [bx + 0x5d67], 0xf      ; 0x2ee9
    jbe short @..api_idx_0052.l5     ; 0x2eee
    mov ax, 5                        ; 0x2ef0
    push ax                          ; 0x2ef3
    mov ax, 6                        ; 0x2ef4
    push ax                          ; 0x2ef7
    mov ax, 0                        ; 0x2ef8
    push ax                          ; 0x2efb
    push word [bp + 0x4]             ; 0x2efc
    call math_loc_2a32               ; 0x2eff
    add sp, byte 8                   ; 0x2f02
    mov ax, 5                        ; 0x2f05
    push ax                          ; 0x2f08
    mov ax, 0xb                      ; 0x2f09
    push ax                          ; 0x2f0c
    mov ax, 0                        ; 0x2f0d
    push ax                          ; 0x2f10
    push word [bp + 0x4]             ; 0x2f11
    call math_loc_2a32               ; 0x2f14
    add sp, byte 8                   ; 0x2f17
@..api_idx_0052.l5:
    mov ax, 0x248                    ; 0x2f1a
    imul word [bp + 0x4]             ; 0x2f1d
    mov bx, ax                       ; 0x2f20
    cmp byte [bx + 0x5d65], 0xf      ; 0x2f22
    jbe short @..api_idx_0052.l6     ; 0x2f27
    mov ax, 5                        ; 0x2f29
    push ax                          ; 0x2f2c
    mov ax, 9                        ; 0x2f2d
    push ax                          ; 0x2f30
    mov ax, 0                        ; 0x2f31
    push ax                          ; 0x2f34
    push word [bp + 0x4]             ; 0x2f35
    call math_loc_2a32               ; 0x2f38
    add sp, byte 8                   ; 0x2f3b
@..api_idx_0052.l6:
    mov ax, 0x248                    ; 0x2f3e
    imul word [bp + 0x4]             ; 0x2f41
    mov bx, ax                       ; 0x2f44
    cmp byte [bx + 0x5d69], 0xf      ; 0x2f46
    jbe short @..api_idx_0052.l7     ; 0x2f4b
    mov ax, 5                        ; 0x2f4d
    push ax                          ; 0x2f50
    mov ax, 7                        ; 0x2f51
    push ax                          ; 0x2f54
    mov ax, 0                        ; 0x2f55
    push ax                          ; 0x2f58
    push word [bp + 0x4]             ; 0x2f59
    call math_loc_2a32               ; 0x2f5c
    add sp, byte 8                   ; 0x2f5f
    mov ax, 5                        ; 0x2f62
    push ax                          ; 0x2f65
    mov ax, 4                        ; 0x2f66
    push ax                          ; 0x2f69
    mov ax, 0                        ; 0x2f6a
    push ax                          ; 0x2f6d
    push word [bp + 0x4]             ; 0x2f6e
    call math_loc_2a32               ; 0x2f71
    add sp, byte 8                   ; 0x2f74
@..api_idx_0052.l7:
    mov ax, 0x248                    ; 0x2f77
    imul word [bp + 0x4]             ; 0x2f7a
    mov bx, ax                       ; 0x2f7d
    cmp byte [bx + 0x5d83], 0        ; 0x2f7f
    jbe short @..api_idx_0052.l8     ; 0x2f84
    mov al, byte [bx + 0x5d83]       ; 0x2f86
    sub ah, ah                       ; 0x2f8a
    mov cx, data_0002                ; 0x2f8c
    cwd                              ; 0x2f8f
    idiv cx                          ; 0x2f90
    push ax                          ; 0x2f92
    mov ax, 9                        ; 0x2f93
    push ax                          ; 0x2f96
    mov ax, 0                        ; 0x2f97
    push ax                          ; 0x2f9a
    push word [bp + 0x4]             ; 0x2f9b
    call math_loc_2a32               ; 0x2f9e
    add sp, byte 8                   ; 0x2fa1
    mov ax, 0x248                    ; 0x2fa4
    imul word [bp + 0x4]             ; 0x2fa7
    mov bx, ax                       ; 0x2faa
    mov al, byte [bx + 0x5d83]       ; 0x2fac
    sub ah, ah                       ; 0x2fb0
    mov cx, 3                        ; 0x2fb2
    cwd                              ; 0x2fb5
    idiv cx                          ; 0x2fb6
    push ax                          ; 0x2fb8
    mov ax, 0xa                      ; 0x2fb9
    push ax                          ; 0x2fbc
    mov ax, 0                        ; 0x2fbd
    push ax                          ; 0x2fc0
    push word [bp + 0x4]             ; 0x2fc1
    call math_loc_2a32               ; 0x2fc4
    add sp, byte 8                   ; 0x2fc7
@..api_idx_0052.l8:
    mov word [bp - 0x0004], 0        ; 0x2fca
@..api_idx_0052.l9:
    mov ax, 0x248                    ; 0x2fcf
    imul word [bp + 0x4]             ; 0x2fd2
    add ax, word [bp - 0x0004]       ; 0x2fd5
    mov bx, ax                       ; 0x2fd8
    mov al, byte [bx + 0x5d8e]       ; 0x2fda
    mov byte [bx + 0x5d9c], al       ; 0x2fde
    inc word [bp - 0x0004]           ; 0x2fe2
    mov ax, word [bp - 0x0004]       ; 0x2fe5
    cmp ax, strict word 0xe          ; 0x2fe8
    jl short @..api_idx_0052.l9      ; 0x2feb
    mov word [bp - 0x0004], 0        ; 0x2fed
@..api_idx_0052.l10:
    mov ax, 0x248                    ; 0x2ff2
    imul word [bp + 0x4]             ; 0x2ff5
    add ax, word [bp - 0x0004]       ; 0x2ff8
    mov bx, ax                       ; 0x2ffb
    mov al, byte [bx + 0x5d48]       ; 0x2ffd
    sub ah, ah                       ; 0x3001
    cmp ax, 0xff                     ; 0x3003
    jne short @..api_idx_0052.l11    ; 0x3006
    jmp near @..api_idx_0052.l13     ; 0x3008
@..api_idx_0052.l11:
    mov word [bp - 0x000a], 0        ; 0x300b
@..api_idx_0052.l12:
    mov ax, 0x248                    ; 0x3010
    imul word [bp + 0x4]             ; 0x3013
    push ax                          ; 0x3016
    add ax, word [bp - 0x0004]       ; 0x3017
    mov bx, ax                       ; 0x301a
    mov al, byte [bx + 0x5d48]       ; 0x301c
    sub ah, ah                       ; 0x3020
    mov cx, 0xc                      ; 0x3022
    imul cx                          ; 0x3025
    mov cx, ax                       ; 0x3027
    pop ax                           ; 0x3029
    add ax, cx                       ; 0x302a
    add ax, word [bp - 0x000a]       ; 0x302c
    mov bx, ax                       ; 0x302f
    mov al, byte [bx + 0x5c3c]       ; 0x3031
    sub ah, ah                       ; 0x3035
    mov cx, 0x10                     ; 0x3037
    cwd                              ; 0x303a
    idiv cx                          ; 0x303b
    mov word [bp - 0x0006], ax       ; 0x303d
    mov ax, 0xa                      ; 0x3040
    imul dx                          ; 0x3043
    mov word [bp - 0x0008], ax       ; 0x3045
    mov ax, 0x7d                     ; 0x3048
    push ax                          ; 0x304b
    mov ax, 0                        ; 0x304c
    push ax                          ; 0x304f
    mov ax, 0x248                    ; 0x3050
    imul word [bp + 0x4]             ; 0x3053
    add ax, word [bp - 0x0006]       ; 0x3056
    mov bx, ax                       ; 0x3059
    mov al, byte [bx + 0x5d9c]       ; 0x305b
    sub ah, ah                       ; 0x305f
    add ax, word [bp - 0x0008]       ; 0x3061
    push ax                          ; 0x3064
    call ds_dispatch_b7c2            ; 0x3065
    add sp, byte 6                   ; 0x3068
    push ax                          ; 0x306b
    mov ax, 0x248                    ; 0x306c
    imul word [bp + 0x4]             ; 0x306f
    mov cx, ax                       ; 0x3072
    add ax, word [bp - 0x0006]       ; 0x3074
    mov bx, ax                       ; 0x3077
    pop ax                           ; 0x3079
    mov byte [bx + 0x5d9c], al       ; 0x307a
    inc word [bp - 0x000a]           ; 0x307e
    mov ax, word [bp - 0x000a]       ; 0x3081
    cmp ax, strict word 2            ; 0x3084
    jl short @..api_idx_0052.l12     ; 0x3087
@..api_idx_0052.l13:
    inc word [bp - 0x0004]           ; 0x3089
    mov ax, word [bp - 0x0004]       ; 0x308c
    cmp ax, strict word 8            ; 0x308f
    jge short @..api_idx_0052.l14    ; 0x3092
    jmp near @..api_idx_0052.l10     ; 0x3094
@..api_idx_0052.l14:
    mov ax, 0x248                    ; 0x3097
    imul word [bp + 0x4]             ; 0x309a
    mov bx, ax                       ; 0x309d
    mov al, byte [bx + 0x5e2d]       ; 0x309f
    sub ah, ah                       ; 0x30a3
    jmp short @..api_idx_0052.l15    ; 0x30a5

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x59, 0xfa, 0x83, 0xc4, 0x0c, 0xeb, 0x61, 0xb8
    db 0x07, 0x00, 0x50, 0x50, 0xb8, 0x0c, 0x00, 0x50, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x40, 0xfa, 0x83, 0xc4, 0x0c, 0xeb, 0x48, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50
    db 0xb8, 0x08, 0x00, 0x50, 0xb8, 0x0a, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x21, 0xfa, 0x83, 0xc4, 0x0c, 0xeb, 0x29, 0xee, 0x80, 0x0d, 0x81, 0x26, 0x81, 0x26, 0x81, 0xee
    db 0x80, 0x0d, 0x81, 0x26, 0x81, 0x0d, 0x81, 0xee, 0x80, 0x0d, 0x81, 0xee, 0x80, 0xee, 0x80, 0xee
    db 0x80, 0xee, 0x80

@..api_idx_0052.l15:
    cmp ax, strict word 0xe          ; 0x311a
    jae short @..api_idx_0052.l16    ; 0x311d
    xchg bx, ax                      ; 0x311f
    shl bx, 1                        ; 0x3120
    jmp [cs:bx - 0x7ebb]             ; 0x3122
@..api_idx_0052.l16:
    mov word [bp - 0x0002], 0        ; 0x3127
@..api_idx_0052.l17:
    push word [bp - 0x0002]          ; 0x312c
    push word [bp + 0x4]             ; 0x312f
    call ds_dispatch_c608            ; 0x3132
    add sp, byte 4                   ; 0x3135
    mov ax, 0x248                    ; 0x3138
    imul word [bp + 0x4]             ; 0x313b
    add ax, word [bp - 0x0002]       ; 0x313e
    mov bx, ax                       ; 0x3141
    mov al, byte [bx + 0x5d48]       ; 0x3143
    sub ah, ah                       ; 0x3147
    cmp ax, 0xff                     ; 0x3149
    je short @..api_idx_0052.l18     ; 0x314c
    mov ax, 0                        ; 0x314e
    push ax                          ; 0x3151
    mov ax, 0x248                    ; 0x3152
    imul word [bp + 0x4]             ; 0x3155
    push ax                          ; 0x3158
    mov al, byte [bx + 0x5d48]       ; 0x3159
    sub ah, ah                       ; 0x315d
    mov cx, 0xc                      ; 0x315f
    imul cx                          ; 0x3162
    mov cx, ax                       ; 0x3164
    pop ax                           ; 0x3166
    add ax, cx                       ; 0x3167
    mov bx, ax                       ; 0x3169
    push word [bx + 0x5c34]          ; 0x316b
    lea ax, word [bp - 0x0052]       ; 0x316f
    push ax                          ; 0x3172
    mov ax, 1                        ; 0x3173
    push ax                          ; 0x3176
    call ds_dispatch_b63c            ; 0x3177
    add sp, byte 8                   ; 0x317a
    lea ax, word [bp - 0x0052]       ; 0x317d
    push ax                          ; 0x3180
    push word [bp - 0x0002]          ; 0x3181
    push word [bp + 0x4]             ; 0x3184
    call api_idx_0004_3              ; 0x3187
    add sp, byte 6                   ; 0x318a
@..api_idx_0052.l18:
    inc word [bp - 0x0002]           ; 0x318d
    mov ax, word [bp - 0x0002]       ; 0x3190
    cmp ax, strict word 2            ; 0x3193
    jl short @..api_idx_0052.l17     ; 0x3196
    mov ax, 0x248                    ; 0x3198
    imul word [bp + 0x4]             ; 0x319b
    mov bx, ax                       ; 0x319e
    mov byte [bx + 0x5daa], 0xa      ; 0x31a0
    mov al, byte [bx + 0x5daa]       ; 0x31a5
    cbw                              ; 0x31a9
    mov cx, 0                        ; 0x31aa
    cmp byte [bx + 0x5d69], 0xf      ; 0x31ad
    jbe short @..api_idx_0052.l19    ; 0x31b2
    mov cx, 1                        ; 0x31b4
@..api_idx_0052.l19:
    sub ax, cx                       ; 0x31b7
    mov byte [bx + 0x5daa], al       ; 0x31b9
    cbw                              ; 0x31bd
    mov cx, 0                        ; 0x31be
    cmp byte [bx + 0x5d69], 0x11     ; 0x31c1
    jbe short @..api_idx_0052.l20    ; 0x31c6
    mov cx, 1                        ; 0x31c8
@..api_idx_0052.l20:
    sub ax, cx                       ; 0x31cb
    mov byte [bx + 0x5daa], al       ; 0x31cd
    mov al, byte [bx + 0x5daa]       ; 0x31d1
    cbw                              ; 0x31d5
    mov cx, 0                        ; 0x31d6
    cmp byte [bx + 0x5e2b], 5        ; 0x31d9
    jne short @..api_idx_0052.l21    ; 0x31de
    mov cx, data_0002                ; 0x31e0
@..api_idx_0052.l21:
    sub ax, cx                       ; 0x31e3
    mov byte [bx + 0x5daa], al       ; 0x31e5
    cmp byte [bx + 0x5e2d], 0xd      ; 0x31e9
    je short @..api_idx_0052.l22     ; 0x31ee
    cmp byte [bx + 0x5e2d], 0xc      ; 0x31f0
    jne short @..api_idx_0052.l24    ; 0x31f5
@..api_idx_0052.l22:
    mov ax, 0xa                      ; 0x31f7
    cmp word [bx + 0x5c18], byte 0x14 ; 0x31fa
    jg short @..api_idx_0052.l23     ; 0x31ff
    mov ax, word [bx + 0x5c18]       ; 0x3201
    mov cx, data_0002                ; 0x3205
    cwd                              ; 0x3208
    idiv cx                          ; 0x3209
@..api_idx_0052.l23:
    mov word [bp - 0x0002], ax       ; 0x320b
    mov al, byte [bx + 0x5d7d]       ; 0x320e
    sub ah, ah                       ; 0x3212
    mov cx, 0xa                      ; 0x3214
    cwd                              ; 0x3217
    idiv cx                          ; 0x3218
    add word [bp - 0x0002], ax       ; 0x321a
    mov al, byte [bx + 0x5daa]       ; 0x321d
    cbw                              ; 0x3221
    sub ax, word [bp - 0x0002]       ; 0x3222
    mov byte [bx + 0x5daa], al       ; 0x3225
@..api_idx_0052.l24:
    mov word [bp - 0x0002], 3        ; 0x3229
@..api_idx_0052.l25:
    mov ax, 0x248                    ; 0x322e
    imul word [bp + 0x4]             ; 0x3231
    mov bx, ax                       ; 0x3234
    mov al, byte [bx + 0x5daa]       ; 0x3236
    add bx, word [bp - 0x0002]       ; 0x323a
    mov byte [bx + 0x5daa], al       ; 0x323d
    mov al, byte [bx + 0x5d48]       ; 0x3241
    sub ah, ah                       ; 0x3245
    cmp ax, 0xff                     ; 0x3247
    je short @..api_idx_0052.l26     ; 0x324a
    mov ax, 0x248                    ; 0x324c
    imul word [bp + 0x4]             ; 0x324f
    push ax                          ; 0x3252
    mov al, byte [bx + 0x5d48]       ; 0x3253
    sub ah, ah                       ; 0x3257
    mov cx, 0xc                      ; 0x3259
    imul cx                          ; 0x325c
    mov cx, ax                       ; 0x325e
    pop ax                           ; 0x3260
    add ax, cx                       ; 0x3261
    mov bx, ax                       ; 0x3263
    mov al, byte [bx + 0x5c3f]       ; 0x3265
    push ax                          ; 0x3269
    mov ax, 0x248                    ; 0x326a
    imul word [bp + 0x4]             ; 0x326d
    mov cx, ax                       ; 0x3270
    add ax, word [bp - 0x0002]       ; 0x3272
    mov bx, ax                       ; 0x3275
    pop ax                           ; 0x3277
    sub byte [bx + 0x5daa], al       ; 0x3278
@..api_idx_0052.l26:
    inc word [bp - 0x0002]           ; 0x327c
    mov ax, word [bp - 0x0002]       ; 0x327f
    cmp ax, strict word 8            ; 0x3282
    jl short @..api_idx_0052.l25     ; 0x3285
    ret                              ; 0x3287
%include "vpclv/api_idx_0004_5.asm"

%include "vpclv/api_idx_0020.asm"

%include "vpclv/api_idx_0004_6.asm"

%include "vpclv/api_idx_0004_7.asm"

    db 0x87
@..api_idx_0004_7.l1:
    cmp ax, strict word 0xe          ; 0x37b3
    jae short @..api_idx_0004_7.l2   ; 0x37b6
    xchg bx, ax                      ; 0x37b8
    shl bx, 1                        ; 0x37b9
    jmp [cs:bx - 0x7822]             ; 0x37bb
@..api_idx_0004_7.l2:
    mov ax, 0x248                    ; 0x37c0
    imul word [bp + 0x4]             ; 0x37c3
    mov bx, ax                       ; 0x37c6
    cmp byte [bx + 0x5d65], 0xd      ; 0x37c8
    jbe short @..api_idx_0004_7.l3   ; 0x37cd
    cmp byte [bx + 0x5d6a], 0xd      ; 0x37cf
    jbe short @..api_idx_0004_7.l3   ; 0x37d4
    mov word [data_95d0], 1          ; 0x37d6
@..api_idx_0004_7.l3:
    mov word [bp - 0x0004], 0        ; 0x37dc
    mov ax, word [bp + 0x6]          ; 0x37e1
    shl ax, 1                        ; 0x37e4
    shl ax, 1                        ; 0x37e6
    mov bx, ax                       ; 0x37e8
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax       ; 0x37ee
    jmp short @..api_idx_0004_7.l6   ; 0x37f1
@..api_idx_0004_7.l4:
    mov ax, word [bp - 0x0002]       ; 0x37f3
    shl ax, 1                        ; 0x37f6
    mov bx, ax                       ; 0x37f8
    cmp word [bx - 0x6a68], byte 1   ; 0x37fa
    jne short @..api_idx_0004_7.l5   ; 0x37ff
    mov ax, 0x14                     ; 0x3801
    imul word [bp - 0x0004]          ; 0x3804
    add ax, 0xe38                    ; 0x3807
    push ax                          ; 0x380a
    mov ax, word [bp - 0x0002]       ; 0x380b
    add ax, 0x157c                   ; 0x380e
    push ax                          ; 0x3811
    call ds_dispatch_b53b            ; 0x3812
    add sp, byte 4                   ; 0x3815
    mov ax, word [bp - 0x0002]       ; 0x3818
    mov cx, word [bp - 0x0004]       ; 0x381b
    shl cx, 1                        ; 0x381e
    mov si, cx                       ; 0x3820
    mov bx, word [bp + 0x8]          ; 0x3822
    mov word [bx + si], ax           ; 0x3825
    inc word [bp - 0x0004]           ; 0x3827
@..api_idx_0004_7.l5:
    inc word [bp - 0x0002]           ; 0x382a
@..api_idx_0004_7.l6:
    mov ax, word [bp + 0x6]          ; 0x382d
    shl ax, 1                        ; 0x3830
    shl ax, 1                        ; 0x3832
    mov bx, ax                       ; 0x3834
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]       ; 0x383a
    jge short @..api_idx_0004_7.l4   ; 0x383d
    mov ax, 0x95dc                   ; 0x383f
    push ax                          ; 0x3842
    mov ax, 0x159e                   ; 0x3843
    push ax                          ; 0x3846
    call ds_dispatch_b53b            ; 0x3847
    add sp, byte 4                   ; 0x384a
    mov ax, word [bp - 0x0004]       ; 0x384d
    ret                              ; 0x3850
%include "vpclv/api_idx_0002_5.asm"

%include "vpclv/api_idx_002e.asm"

%include "vpclv/api_idx_0032.asm"

    jne short @..api_idx_0032.l14    ; 0x3c7a
    mov ax, 0x1a                     ; 0x3c7c
@..api_idx_0032.l14:
    push ax                          ; 0x3c7f
    call ds_dispatch_e823            ; 0x3c80
    add sp, byte 4                   ; 0x3c83
    mov ax, 0xbe                     ; 0x3c86
    push ax                          ; 0x3c89
    mov ax, 0x14                     ; 0x3c8a
    imul word [bp - 0x0002]          ; 0x3c8d
    add ax, 0x95f8                   ; 0x3c90
    push ax                          ; 0x3c93
    call ds_dispatch_fa90            ; 0x3c94
    pop cx                           ; 0x3c97
    mov cx, ax                       ; 0x3c98
    mov ax, 9                        ; 0x3c9a
    sub ax, cx                       ; 0x3c9d
    mov cx, 6                        ; 0x3c9f
    imul cx                          ; 0x3ca2
    mov cx, data_0002                ; 0x3ca4
    cwd                              ; 0x3ca7
    idiv cx                          ; 0x3ca8
    add ax, word [bp - 0x0006]       ; 0x3caa
    inc ax                           ; 0x3cad
    push ax                          ; 0x3cae
    call ds_dispatch_e809            ; 0x3caf
    add sp, byte 4                   ; 0x3cb2
    mov ax, 0                        ; 0x3cb5
    push ax                          ; 0x3cb8
    mov ax, 0x14                     ; 0x3cb9
    imul word [bp - 0x0002]          ; 0x3cbc
    add ax, 0x95f8                   ; 0x3cbf
    push ax                          ; 0x3cc2
    call ds_dispatch_e84e            ; 0x3cc3
    add sp, byte 4                   ; 0x3cc6
    mov ax, 0                        ; 0x3cc9
    push ax                          ; 0x3ccc
    push ax                          ; 0x3ccd
    mov ax, 0xc4                     ; 0x3cce
    push ax                          ; 0x3cd1
    mov ax, word [bp - 0x0006]       ; 0x3cd2
    add ax, strict word 0x36         ; 0x3cd5
    push ax                          ; 0x3cd8
    mov ax, 0xbc                     ; 0x3cd9
    push ax                          ; 0x3cdc
    push word [bp - 0x0006]          ; 0x3cdd
    mov ax, word [bp + 0x8]          ; 0x3ce0
    add ax, word [bp - 0x000e]       ; 0x3ce3
    inc ax                           ; 0x3ce6
    push ax                          ; 0x3ce7
    call ds_dispatch_baa6            ; 0x3ce8
    add sp, byte 0x0e                ; 0x3ceb
    mov ax, word [bp - 0x0002]       ; 0x3cee
    mov cx, word [bp - 0x000e]       ; 0x3cf1
    shl cx, 1                        ; 0x3cf4
    mov bx, cx                       ; 0x3cf6
    add bx, bp                       ; 0x3cf8
    mov word [bx - 0x0026], ax       ; 0x3cfa
    cmp ax, word [bp + 0x6]          ; 0x3cfd
    jne short @..api_idx_0032.l15    ; 0x3d00
    mov ax, word [bp - 0x000e]       ; 0x3d02
    mov word [bp - 0x0032], ax       ; 0x3d05
    cmp word [data_0e32], byte 0     ; 0x3d08
    jne short @..api_idx_0032.l15    ; 0x3d0d
    mov ax, 0x16                     ; 0x3d0f
    push ax                          ; 0x3d12
    mov ax, 0xc4                     ; 0x3d13
    push ax                          ; 0x3d16
    mov ax, word [bp - 0x0006]       ; 0x3d17
    add ax, strict word 0x36         ; 0x3d1a
    push ax                          ; 0x3d1d
    mov ax, 0xbc                     ; 0x3d1e
    push ax                          ; 0x3d21
    push word [bp - 0x0006]          ; 0x3d22
    call loc_0dc0                    ; 0x3d25
    add sp, byte 0x0a                ; 0x3d28
@..api_idx_0032.l15:
    inc word [bp - 0x000e]           ; 0x3d2b
@..api_idx_0032.l16:
    inc word [bp - 0x0002]           ; 0x3d2e
    mov ax, word [bp - 0x0002]       ; 0x3d31
    cmp ax, strict word 4            ; 0x3d34
    jg short @..api_idx_0032.l17     ; 0x3d37
    jmp near @..api_idx_0032.l12     ; 0x3d39
@..api_idx_0032.l17:
    mov ax, 0                        ; 0x3d3c
    push ax                          ; 0x3d3f
    push ax                          ; 0x3d40
    push ax                          ; 0x3d41
    push ax                          ; 0x3d42
    push ax                          ; 0x3d43
    mov ax, 0xffff                   ; 0x3d44
    push ax                          ; 0x3d47
    mov ax, word [bp + 0x8]          ; 0x3d48
    add ax, word [bp - 0x000e]       ; 0x3d4b
    inc ax                           ; 0x3d4e
    push ax                          ; 0x3d4f
    call ds_dispatch_baa6            ; 0x3d50
    add sp, byte 0x0e                ; 0x3d53
    mov ax, 0xc6                     ; 0x3d56
    push ax                          ; 0x3d59
    mov ax, 0x13c                    ; 0x3d5a
    push ax                          ; 0x3d5d
    mov ax, 0x70                     ; 0x3d5e
    push ax                          ; 0x3d61
    mov ax, 1                        ; 0x3d62
    push ax                          ; 0x3d65
    call ds_dispatch_e8da            ; 0x3d66
    add sp, byte 8                   ; 0x3d69
    cmp word [data_0e32], byte 0     ; 0x3d6c
    je short @..api_idx_0032.l19     ; 0x3d71
@..api_idx_0032.l18:
    mov ax, 0x59fe                   ; 0x3d73
    push ax                          ; 0x3d76
    call ds_dispatch_b90d            ; 0x3d77
    pop cx                           ; 0x3d7a
    dec ax                           ; 0x3d7b
    mov word [bp - 0x0008], ax       ; 0x3d7c
    cmp word [data_5b3e], byte 0     ; 0x3d7f
    je short @..api_idx_0032.l18     ; 0x3d84
    jmp near @..api_idx_0032.l31     ; 0x3d86
@..api_idx_0032.l19:
    mov word [bp - 0x0008], 0xffff   ; 0x3d89
    mov ax, word [bp - 0x0032]       ; 0x3d8e
    mov word [bp - 0x0002], ax       ; 0x3d91
@..api_idx_0032.l20:
    mov ax, 0x3a                     ; 0x3d94
    imul word [bp - 0x0002]          ; 0x3d97
    add ax, strict word 4            ; 0x3d9a
    mov word [bp - 0x0006], ax       ; 0x3d9d
    mov ax, 0x16                     ; 0x3da0
    push ax                          ; 0x3da3
    mov ax, 0xc4                     ; 0x3da4
    push ax                          ; 0x3da7
    mov ax, word [bp - 0x0006]       ; 0x3da8
    add ax, strict word 0x36         ; 0x3dab
    push ax                          ; 0x3dae
    mov ax, 0xbc                     ; 0x3daf
    push ax                          ; 0x3db2
    push word [bp - 0x0006]          ; 0x3db3
    call loc_0dc0                    ; 0x3db6
    add sp, byte 0x0a                ; 0x3db9
    mov ax, 0xc7                     ; 0x3dbc
    push ax                          ; 0x3dbf
    mov ax, 0x13d                    ; 0x3dc0
    push ax                          ; 0x3dc3
    mov ax, 0xbb                     ; 0x3dc4
    push ax                          ; 0x3dc7
    mov ax, 3                        ; 0x3dc8
    push ax                          ; 0x3dcb
    call ds_dispatch_e8da            ; 0x3dcc
    add sp, byte 8                   ; 0x3dcf
    mov ax, 0                        ; 0x3dd2
    push ax                          ; 0x3dd5
    mov ax, 0xc4                     ; 0x3dd6
    push ax                          ; 0x3dd9
    mov ax, word [bp - 0x0006]       ; 0x3dda
    add ax, strict word 0x36         ; 0x3ddd
    push ax                          ; 0x3de0
    mov ax, 0xbc                     ; 0x3de1
    push ax                          ; 0x3de4
    push word [bp - 0x0006]          ; 0x3de5
    call loc_0dc0                    ; 0x3de8
    add sp, byte 0x0a                ; 0x3deb
@..api_idx_0032.l21:
    mov ax, 1                        ; 0x3dee
    push ax                          ; 0x3df1
    call ds_dispatch_ea50            ; 0x3df2
    pop cx                           ; 0x3df5
    test ax, ax                      ; 0x3df6
    jne short @..api_idx_0032.l22    ; 0x3df8
    jmp short @..api_idx_0032.l21    ; 0x3dfa
@..api_idx_0032.l22:
    mov ax, 1                        ; 0x3dfc
    push ax                          ; 0x3dff
    call ds_dispatch_eb32            ; 0x3e00
    pop cx                           ; 0x3e03
    sub ah, ah                       ; 0x3e04
    mov word [bp - 0x0030], ax       ; 0x3e06
    jmp short @..api_idx_0032.l29    ; 0x3e09
@..api_idx_0032.l23:
    mov ax, word [bp - 0x0002]       ; 0x3e0b
    add ax, word [bp - 0x000e]       ; 0x3e0e
    dec ax                           ; 0x3e11
    cwd                              ; 0x3e12
    idiv word [bp - 0x000e]          ; 0x3e13
    mov word [bp - 0x0002], dx       ; 0x3e16
    jmp short @..api_idx_0032.l30    ; 0x3e19
@..api_idx_0032.l24:
    mov ax, word [bp - 0x0002]       ; 0x3e1b
    inc ax                           ; 0x3e1e
    cwd                              ; 0x3e1f
    idiv word [bp - 0x000e]          ; 0x3e20
    mov word [bp - 0x0002], dx       ; 0x3e23
    jmp short @..api_idx_0032.l30    ; 0x3e26
@..api_idx_0032.l25:
    mov ax, word [bp + 0x8]          ; 0x3e28
    add ax, word [bp - 0x0002]       ; 0x3e2b
    inc ax                           ; 0x3e2e
    mov word [bp - 0x0008], ax       ; 0x3e2f
    jmp short @..api_idx_0032.l30    ; 0x3e32
@..api_idx_0032.l26:
    mov ax, word [bp - 0x000a]       ; 0x3e34
    mov word [bp - 0x0008], ax       ; 0x3e37
    jmp short @..api_idx_0032.l30    ; 0x3e3a
@..api_idx_0032.l27:
    mov ax, word [bp + 0x8]          ; 0x3e3c
    mov word [bp - 0x0008], ax       ; 0x3e3f
    jmp short @..api_idx_0032.l30    ; 0x3e42
@..api_idx_0032.l28:
    mov ax, word [bp - 0x000a]       ; 0x3e44
    inc ax                           ; 0x3e47
    cwd                              ; 0x3e48
    idiv word [bp + 0x8]             ; 0x3e49
    mov word [bp - 0x0008], dx       ; 0x3e4c
    jmp short @..api_idx_0032.l30    ; 0x3e4f
@..api_idx_0032.l29:
    cmp ax, strict word 8            ; 0x3e51
    je short @..api_idx_0032.l23     ; 0x3e54
    cmp ax, strict word 0xa          ; 0x3e56
    je short @..api_idx_0032.l24     ; 0x3e59
    cmp ax, strict word 0xd          ; 0x3e5b
    je short @..api_idx_0032.l25     ; 0x3e5e
    cmp ax, strict word 0x20         ; 0x3e60
    je short @..api_idx_0032.l28     ; 0x3e63
    cmp ax, strict word 0x2b         ; 0x3e65
    je short @..api_idx_0032.l27     ; 0x3e68
    cmp ax, strict word 0x2d         ; 0x3e6a
    je short @..api_idx_0032.l26     ; 0x3e6d
    cmp ax, strict word 0x3d         ; 0x3e6f
    je short @..api_idx_0032.l27     ; 0x3e72
@..api_idx_0032.l30:
    cmp word [bp - 0x0008], byte 0xff ; 0x3e74
    jne short @..api_idx_0032.l31    ; 0x3e78
    jmp near @..api_idx_0032.l20     ; 0x3e7a
@..api_idx_0032.l31:
    mov ax, word [bp - 0x0008]       ; 0x3e7d
    cmp ax, word [bp + 0x8]          ; 0x3e80
    jge short @..api_idx_0032.l32    ; 0x3e83
    cmp ax, word [bp - 0x000a]       ; 0x3e85
    je short @..api_idx_0032.l32     ; 0x3e88
    mov word [bp - 0x000a], ax       ; 0x3e8a
    jmp near @..api_idx_0032.l39     ; 0x3e8d
@..api_idx_0032.l32:
    mov ax, word [bp - 0x0008]       ; 0x3e90
    cmp ax, word [bp - 0x000a]       ; 0x3e93
    jne short @..api_idx_0032.l35    ; 0x3e96
    mov ax, 0x248                    ; 0x3e98
    imul word [bp + 0x4]             ; 0x3e9b
    mov cx, word [bp - 0x000a]       ; 0x3e9e
    shl cx, 1                        ; 0x3ea1
    mov si, cx                       ; 0x3ea3
    mov bx, word [bp + 0xa]          ; 0x3ea5
    mov cx, word [bx + si]           ; 0x3ea8
    add ax, cx                       ; 0x3eaa
    mov bx, ax                       ; 0x3eac
    mov al, byte [bx + 0x5d6c]       ; 0x3eae
    sub ah, ah                       ; 0x3eb2
    shl cx, 1                        ; 0x3eb4
    mov bx, cx                       ; 0x3eb6
    mov cx, word [bx - 0x6940]       ; 0x3eb8
    cmp ax, cx                       ; 0x3ebc
    jle short @..api_idx_0032.l33    ; 0x3ebe
    mov ax, 0x248                    ; 0x3ec0
    imul word [bp + 0x4]             ; 0x3ec3
    mov bx, word [bp + 0xa]          ; 0x3ec6
    mov cx, word [bx + si]           ; 0x3ec9
    add ax, cx                       ; 0x3ecb
    mov bx, ax                       ; 0x3ecd
    dec byte [bx + 0x5d6c]           ; 0x3ecf
    inc word [bp - 0x000c]           ; 0x3ed3
    jmp short @..api_idx_0032.l34    ; 0x3ed6
@..api_idx_0032.l33:
    mov ax, 0                        ; 0x3ed8
    push ax                          ; 0x3edb
    call ds_dispatch_b7e0            ; 0x3edc
    pop cx                           ; 0x3edf
@..api_idx_0032.l34:
    jmp short @..api_idx_0032.l39    ; 0x3ee0
@..api_idx_0032.l35:
    mov ax, word [bp - 0x0008]       ; 0x3ee2
    cmp ax, word [bp + 0x8]          ; 0x3ee5
    jne short @..api_idx_0032.l38    ; 0x3ee8
    mov ax, 0x248                    ; 0x3eea
    imul word [bp + 0x4]             ; 0x3eed
    mov cx, word [bp - 0x000a]       ; 0x3ef0
    shl cx, 1                        ; 0x3ef3
    mov si, cx                       ; 0x3ef5
    mov bx, word [bp + 0xa]          ; 0x3ef7
    mov cx, word [bx + si]           ; 0x3efa
    add ax, cx                       ; 0x3efc
    mov bx, ax                       ; 0x3efe
    cmp byte [bx + 0x5d6c], 0x64     ; 0x3f00
    jae short @..api_idx_0032.l36    ; 0x3f05
    cmp word [bp - 0x000c], byte 0   ; 0x3f07
    jle short @..api_idx_0032.l36    ; 0x3f0b
    inc byte [bx + 0x5d6c]           ; 0x3f0d
    dec word [bp - 0x000c]           ; 0x3f11
    jmp short @..api_idx_0032.l37    ; 0x3f14
@..api_idx_0032.l36:
    mov ax, 0                        ; 0x3f16
    push ax                          ; 0x3f19
    call ds_dispatch_b7e0            ; 0x3f1a
    pop cx                           ; 0x3f1d
@..api_idx_0032.l37:
    jmp short @..api_idx_0032.l39    ; 0x3f1e
@..api_idx_0032.l38:
    mov ax, word [bp - 0x0008]       ; 0x3f20
    sub ax, word [bp + 0x8]          ; 0x3f23
    dec ax                           ; 0x3f26
    mov word [bp - 0x0028], ax       ; 0x3f27
    shl ax, 1                        ; 0x3f2a
    mov bx, ax                       ; 0x3f2c
    add bx, bp                       ; 0x3f2e
    mov ax, word [bx - 0x0026]       ; 0x3f30
    mov word [bp - 0x002a], ax       ; 0x3f33
@..api_idx_0032.l39:
    cmp word [bp - 0x0028], byte 0xff ; 0x3f36
    jne short @..api_idx_0032.l40    ; 0x3f3a
    jmp near @..api_idx_0032.l1      ; 0x3f3c
@..api_idx_0032.l40:
    mov ax, word [bp - 0x000c]       ; 0x3f3f
    mov cx, word [bp + 0x6]          ; 0x3f42
    shl cx, 1                        ; 0x3f45
    mov bx, cx                       ; 0x3f47
    mov word [bx - 0x6a10], ax       ; 0x3f49
    mov ax, 1                        ; 0x3f4d
    push ax                          ; 0x3f50
    push ax                          ; 0x3f51
    mov ax, 9                        ; 0x3f52
    push ax                          ; 0x3f55
    mov ax, 0xbc                     ; 0x3f56
    push ax                          ; 0x3f59
    mov ax, 0x3a                     ; 0x3f5a
    imul word [bp - 0x0028]          ; 0x3f5d
    add ax, strict word 4            ; 0x3f60
    push ax                          ; 0x3f63
    call ds_dispatch_be5f            ; 0x3f64
    add sp, byte 0x0a                ; 0x3f67
    mov ax, 0                        ; 0x3f6a
    push ax                          ; 0x3f6d
    mov ax, 1                        ; 0x3f6e
    push ax                          ; 0x3f71
    mov ax, 9                        ; 0x3f72
    push ax                          ; 0x3f75
    mov ax, 0xbc                     ; 0x3f76
    push ax                          ; 0x3f79
    mov ax, 0x3a                     ; 0x3f7a
    imul word [bp - 0x0028]          ; 0x3f7d
    add ax, strict word 4            ; 0x3f80
    push ax                          ; 0x3f83
    call ds_dispatch_be5f            ; 0x3f84
    add sp, byte 0x0a                ; 0x3f87
    mov ax, 1                        ; 0x3f8a
    push ax                          ; 0x3f8d
    push word [bp - 0x002c]          ; 0x3f8e
    push word [bp - 0x002e]          ; 0x3f91
    call ds_dispatch_e94f            ; 0x3f94
    add sp, byte 6                   ; 0x3f97
    mov ax, word [bp - 0x002a]       ; 0x3f9a
    ret                              ; 0x3f9d
%include "vpclv/api_idx_0088.asm"

%include "vpclv/api_idx_001c.asm"

%include "vpclv/api_idx_0002_6.asm"

loc_4310:
    mov ax, 0                        ; 0x4310
    call ds_dispatch_f40b            ; 0x4313
    mov ax, 0x248                    ; 0x4316
    imul word [bp + 0x4]             ; 0x4319
    mov bx, ax                       ; 0x431c
    mov al, byte [bx + 0x5e2d]       ; 0x431e
    sub ah, ah                       ; 0x4322
    jmp near @..local.l11            ; 0x4324

    db 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x08, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x07, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xa0, 0x02, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0x50, 0xff, 0x76, 0x04, 0xe8, 0xf2, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x20, 0x00, 0x50, 0xb8, 0x02
    db 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0d, 0xff, 0x83, 0xc4, 0x08, 0xe9
    db 0x76, 0x02, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xc8
    db 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1e, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xff, 0x76, 0x04, 0xe8, 0xe3, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x4c, 0x02, 0xb8, 0x04, 0x00, 0x50
    db 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x9b, 0xfd, 0x83, 0xc4
    db 0x08, 0xb8, 0x10, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0xb6, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x1f, 0x02, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x06
    db 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x71, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x07, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x8c, 0xfe, 0x83, 0xc4, 0x08
    db 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x77, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0xe0, 0x01, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50
    db 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2f, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x0d, 0x00
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x4a, 0xfe, 0x83
    db 0xc4, 0x08, 0xe9, 0xb3, 0x01, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x05, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1d, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x20, 0xfe, 0x83, 0xc4, 0x08, 0xe9, 0x89, 0x01, 0xb8
    db 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xdb, 0xfc, 0x83, 0xc4
    db 0x08, 0xb8, 0x1f, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0xf6, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0x5f, 0x01, 0xb8, 0x0c, 0x00, 0x50, 0xb8, 0x02, 0x00
    db 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb1, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x20, 0x00, 0x50, 0xb8
    db 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xcf, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1e, 0x00
    db 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xba, 0xfd, 0x83
    db 0xc4, 0x08, 0xe9, 0x23, 0x01, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xb8, 0x06, 0x00, 0x50, 0xff, 0x76
    db 0x04, 0xe8, 0x75, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0xb8
    db 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x90, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xf9, 0x00, 0xb8
    db 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x07, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x48
    db 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x1c, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04
    db 0xe8, 0x66, 0xfd, 0x83, 0xc4, 0x08, 0xe9, 0xcf, 0x00, 0xb8, 0x05, 0x00, 0x50, 0xb8, 0x04, 0x00
    db 0x50, 0xb8, 0x07, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x1e, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x01
    db 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x39, 0xfd
    db 0x83, 0xc4, 0x08, 0xe9, 0xa2, 0x00, 0xb8, 0x06, 0x00, 0x50, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0xf4, 0xfb, 0x83, 0xc4, 0x08, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x03, 0x00, 0x50
    db 0xb8, 0x00, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x0f, 0xfd, 0x83, 0xc4, 0x08, 0xb8, 0x1f, 0x00
    db 0x50, 0xb8, 0x03, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xfd, 0xfc, 0x83, 0xc4, 0x08, 0xeb
    db 0x67, 0xb8, 0x04, 0x00, 0x50, 0xb8, 0x06, 0x00, 0x50, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb9, 0xfb
    db 0x83, 0xc4, 0x08, 0xb8, 0x09, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50, 0xb8, 0x00, 0x00, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0xd4, 0xfc, 0x83, 0xc4, 0x08, 0xb8, 0x11, 0x00, 0x50, 0xb8, 0x02, 0x00, 0x50
    db 0xb8, 0x01, 0x00, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xbf, 0xfc, 0x83, 0xc4, 0x08, 0xeb, 0x29, 0x6e
    db 0x93, 0x86, 0x93, 0xb0, 0x93, 0xda, 0x93, 0x07, 0x94, 0x73, 0x94, 0x46, 0x94, 0x9d, 0x94, 0x03
    db 0x95, 0xc7, 0x94, 0x2d, 0x95, 0x57, 0x95, 0x84, 0x95, 0xbf, 0x95

@..local.l11:
    cmp ax, strict word 0xe          ; 0x45d2
    jae short @..local.l12           ; 0x45d5
    xchg bx, ax                      ; 0x45d7
    shl bx, 1                        ; 0x45d8
    jmp [cs:bx - 0x6a03]             ; 0x45da
@..local.l12:
    ret                              ; 0x45df
%include "vpclv/api_idx_00ac.asm"

    mov ax, 0xa2                     ; 0x47de
    push ax                          ; 0x47e1
    mov ax, 6                        ; 0x47e2
    push ax                          ; 0x47e5
    push ax                          ; 0x47e6
    call ds_dispatch_e8da            ; 0x47e7
    add sp, byte 8                   ; 0x47ea
    mov ax, 1                        ; 0x47ed
    push ax                          ; 0x47f0
    mov ax, 0x18                     ; 0x47f1
    push ax                          ; 0x47f4
    mov ax, 0x93ed                   ; 0x47f5
    push ax                          ; 0x47f8
    mov ax, 0x93eb                   ; 0x47f9
    push ax                          ; 0x47fc
    mov ax, 0xd4                     ; 0x47fd
    push ax                          ; 0x4800
    mov ax, 0x248                    ; 0x4801
    imul word [bp + 0x4]             ; 0x4804
    mov bx, ax                       ; 0x4807
    push word [bx + 0x5c0e]          ; 0x4809
    push word [bx + 0x5c0c]          ; 0x480d
    mov ax, 0x5d                     ; 0x4811
    push ax                          ; 0x4814
    mov ax, 6                        ; 0x4815
    push ax                          ; 0x4818
    mov ax, 0                        ; 0x4819
    push ax                          ; 0x481c
    call api_idx_0020                ; 0x481d
    add sp, byte 0x14                ; 0x4820
    lea ax, word [bp - 0x005c]       ; 0x4823
    push ax                          ; 0x4826
    mov ax, 0x1394                   ; 0x4827
    cmp word [bp - 0x0002], byte 1   ; 0x482a
    jne short @..api_idx_00ac.l13    ; 0x482e
    mov ax, 0x1393                   ; 0x4830
@..api_idx_00ac.l13:
    push ax                          ; 0x4833
    call ds_dispatch_b53b            ; 0x4834
    add sp, byte 4                   ; 0x4837
    lea ax, word [bp - 0x00ac]       ; 0x483a
    push ax                          ; 0x483e
    push word [bp - 0x0002]          ; 0x483f
    call ds_dispatch_b27d            ; 0x4842
    add sp, byte 4                   ; 0x4845
    mov ax, 0x24                     ; 0x4848
    push ax                          ; 0x484b
    lea ax, word [bp - 0x00ac]       ; 0x484c
    push ax                          ; 0x4850
    lea ax, word [bp - 0x005c]       ; 0x4851
    push ax                          ; 0x4854
    call ds_dispatch_b300            ; 0x4855
    add sp, byte 6                   ; 0x4858
    mov ax, 1                        ; 0x485b
    push ax                          ; 0x485e
    lea ax, word [bp - 0x005c]       ; 0x485f
    push ax                          ; 0x4862
    call api_idx_0004_5              ; 0x4863
    add sp, byte 4                   ; 0x4866
    push word [bp + 0x4]             ; 0x4869
    call api_idx_007c                ; 0x486c
    pop cx                           ; 0x486f
    mov ax, 0x67                     ; 0x4870
    push ax                          ; 0x4873
    mov ax, 0xa2                     ; 0x4874
    push ax                          ; 0x4877
    mov ax, 6                        ; 0x4878
    push ax                          ; 0x487b
    push ax                          ; 0x487c
    call ds_dispatch_e8da            ; 0x487d
    add sp, byte 8                   ; 0x4880
    ret                              ; 0x4883
%include "vpclv/api_idx_0004_8.asm"

@..api_idx_0004_8.l1:
    mov al, byte [bx + 0x5d68]       ; 0x489a
    sub ah, ah                       ; 0x489e
    mov word [bp - 0x0004], ax       ; 0x48a0
    mov word [bp - 0x0002], 0        ; 0x48a3
    mov al, byte [bx + 0x5e2d]       ; 0x48a8
    sub ah, ah                       ; 0x48ac
    jmp short @..api_idx_0004_8.l2   ; 0x48ae

    db 0xb8, 0x04, 0x00, 0x50, 0xe8, 0xf2, 0x6e, 0x59, 0x40, 0x40, 0x89, 0x46, 0xfe, 0xeb, 0x55, 0xb8
    db 0x03, 0x00, 0x50, 0xe8, 0xe3, 0x6e, 0x59, 0x40, 0x89, 0x46, 0xfe, 0xeb, 0x47, 0xb8, 0x04, 0x00
    db 0x50, 0xe8, 0xd5, 0x6e, 0x59, 0x40, 0x89, 0x46, 0xfe, 0xeb, 0x39, 0xb8, 0x04, 0x00, 0x50, 0xe8
    db 0xc7
    db 'nY@@@'
    db 0x89, 0x46, 0xfe, 0xeb, 0x29, 0xf7, 0x98, 0x06, 0x99, 0x14, 0x99, 0x14, 0x99, 0xf7, 0x98, 0x06
    db 0x99, 0x14, 0x99, 0x06, 0x99, 0xf7, 0x98, 0x06, 0x99, 0xf7, 0x98, 0x22, 0x99, 0xf7, 0x98, 0x22
    db 0x99

@..api_idx_0004_8.l2:
    cmp ax, strict word 0xe          ; 0x4907
    jae short @..api_idx_0004_8.l3   ; 0x490a
    xchg bx, ax                      ; 0x490c
    shl bx, 1                        ; 0x490d
    jmp [cs:bx - 0x66ce]             ; 0x490f
@..api_idx_0004_8.l3:
    cmp word [bp - 0x0004], byte 8   ; 0x4914
    jge short @..api_idx_0004_8.l4   ; 0x4918
    dec word [bp - 0x0002]           ; 0x491a
@..api_idx_0004_8.l4:
    mov ax, 0x248                    ; 0x491d
    imul word [bp + 0x4]             ; 0x4920
    mov bx, ax                       ; 0x4923
    mov ax, word [bx + 0x5c18]       ; 0x4925
    push ax                          ; 0x4929
    mov al, byte [bx + 0x5e3b]       ; 0x492a
    sub ah, ah                       ; 0x492e
    mov cx, ax                       ; 0x4930
    pop ax                           ; 0x4932
    cmp ax, cx                       ; 0x4933
    jge short @..api_idx_0004_8.l5   ; 0x4935
    mov word [bp - 0x0002], 0        ; 0x4937
@..api_idx_0004_8.l5:
    mov al, byte [bx + 0x5e3a]       ; 0x493c
    cbw                              ; 0x4940
    sub ax, word [bp - 0x0002]       ; 0x4941
    mov byte [bx + 0x5e3a], al       ; 0x4944
    cmp byte [bx + 0x5e3a], 0        ; 0x4948
    jge short @..api_idx_0004_8.l6   ; 0x494d
    mov byte [bx + 0x5e3a], 0        ; 0x494f
@..api_idx_0004_8.l6:
    ret                              ; 0x4954
%include "vpclv/api_idx_0018.asm"

%include "vpclv/math_loc_4b3c.asm"

loc_4b6e:
    mov ax, 0x248                    ; 0x4b6e
    imul word [bp + 0x4]             ; 0x4b71
    mov bx, ax                       ; 0x4b74
    mov ax, word [bx + 0x5c18]       ; 0x4b76
    cmp ax, word [bp - 0x0018]       ; 0x4b7a
    jge short loc_4b82               ; 0x4b7d
    jmp near loc_4cc4                ; 0x4b7f
loc_4b82:
    add bx, word [bp - 0x0014]       ; 0x4b82
    inc byte [bx + 0x5d50]           ; 0x4b85
    mov word [bp - 0x0002], 0        ; 0x4b89
loc_4b8e:
    mov word [bp - 0x0012], 0        ; 0x4b8e
    mov ax, 0x248                    ; 0x4b93
    imul word [bp + 0x4]             ; 0x4b96
    mov cx, word [bp - 0x0002]       ; 0x4b99
    shl cx, 1                        ; 0x4b9c
    shl cx, 1                        ; 0x4b9e
    add ax, cx                       ; 0x4ba0
    mov bx, ax                       ; 0x4ba2
    cmp word [bx + 0x5c1e], byte 0   ; 0x4ba4
    jle short loc_4be9               ; 0x4ba9
    mov word [bp - 0x0004], 0        ; 0x4bab
loc_4bb0:
    mov ax, 6                        ; 0x4bb0
    imul word [bp - 0x0004]          ; 0x4bb3
    mov bx, ax                       ; 0x4bb6
    mov al, byte [bx + 0x620]        ; 0x4bb8
    sub ah, ah                       ; 0x4bbc
    cmp ax, word [bp - 0x0002]       ; 0x4bbe
    jne short loc_4bde               ; 0x4bc1
    push word [bp - 0x0004]          ; 0x4bc3
    mov ax, 0x248                    ; 0x4bc6
    imul word [bp + 0x4]             ; 0x4bc9
    add ax, 0x5e12                   ; 0x4bcc
    push ax                          ; 0x4bcf
    call ds_dispatch_ec74            ; 0x4bd0
    add sp, byte 4                   ; 0x4bd3
    cmp ax, strict word 1            ; 0x4bd6
    jne short loc_4bde               ; 0x4bd9
    inc word [bp - 0x0012]           ; 0x4bdb
loc_4bde:
    inc word [bp - 0x0004]           ; 0x4bde
    mov ax, word [bp - 0x0004]       ; 0x4be1
    cmp ax, strict word 0x66         ; 0x4be4
    jl short loc_4bb0                ; 0x4be7
loc_4be9:
    cmp word [bp - 0x0012], byte 0   ; 0x4be9
    jg short loc_4bf2                ; 0x4bed
    jmp near loc_4cb6                ; 0x4bef
loc_4bf2:
    mov word [bp - 0x000e], 0        ; 0x4bf2
    cmp word [bp - 0x000c], byte 0x0d ; 0x4bf7
    jle short loc_4c00               ; 0x4bfb
    inc word [bp - 0x000e]           ; 0x4bfd
loc_4c00:
    cmp word [bp - 0x000c], byte 0x10 ; 0x4c00
    jle short loc_4c09               ; 0x4c04
    inc word [bp - 0x000e]           ; 0x4c06
loc_4c09:
    mov ax, 0x248                    ; 0x4c09
    imul word [bp + 0x4]             ; 0x4c0c
    mov bx, ax                       ; 0x4c0f
    mov ax, word [bx + 0x5c18]       ; 0x4c11
    push ax                          ; 0x4c15
    mov al, byte [bx + 0x5e3b]       ; 0x4c16
    sub ah, ah                       ; 0x4c1a
    mov cx, ax                       ; 0x4c1c
    pop ax                           ; 0x4c1e
    cmp ax, cx                       ; 0x4c1f
    jge short loc_4c33               ; 0x4c21
    mov ax, word [bp - 0x0002]       ; 0x4c23
    shl ax, 1                        ; 0x4c26
    shl ax, 1                        ; 0x4c28
    add bx, ax                       ; 0x4c2a
    inc word [bx + 0x5c1e]           ; 0x4c2c
    jmp near loc_4cb6                ; 0x4c30
loc_4c33:
    mov ax, 0x248                    ; 0x4c33
    imul word [bp + 0x4]             ; 0x4c36
    add ax, word [bp - 0x0002]       ; 0x4c39
    mov bx, ax                       ; 0x4c3c
    mov al, byte [bx + 0x5d54]       ; 0x4c3e
    sub ah, ah                       ; 0x4c42
    push ax                          ; 0x4c44
    call ds_dispatch_b7a9            ; 0x4c45
    pop cx                           ; 0x4c48
    push ax                          ; 0x4c49
    mov ax, 0x248                    ; 0x4c4a
    imul word [bp + 0x4]             ; 0x4c4d
    add ax, word [bp - 0x0016]       ; 0x4c50
    mov bx, ax                       ; 0x4c53
    mov al, byte [bx + 0x5d6c]       ; 0x4c55
    sub ah, ah                       ; 0x4c59
    mov cx, 0x14                     ; 0x4c5b
    cwd                              ; 0x4c5e
    idiv cx                          ; 0x4c5f
    push ax                          ; 0x4c61
    call ds_dispatch_b7a9            ; 0x4c62
    pop cx                           ; 0x4c65
    mov cx, ax                       ; 0x4c66
    pop ax                           ; 0x4c68
    add ax, cx                       ; 0x4c69
    push ax                          ; 0x4c6b
    mov ax, 0x248                    ; 0x4c6c
    imul word [bp + 0x4]             ; 0x4c6f
    mov bx, ax                       ; 0x4c72
    mov al, byte [bx + 0x5d66]       ; 0x4c74
    sub ah, ah                       ; 0x4c78
    mov cx, 6                        ; 0x4c7a
    cwd                              ; 0x4c7d
    idiv cx                          ; 0x4c7e
    imul word [bp - 0x0012]          ; 0x4c80
    mov cx, ax                       ; 0x4c83
    pop ax                           ; 0x4c85
    add ax, cx                       ; 0x4c86
    add ax, word [bp - 0x000e]       ; 0x4c88
    mov word [bp - 0x0010], ax       ; 0x4c8b
    cmp ax, strict word 0xf          ; 0x4c8e
    jle short loc_4c98               ; 0x4c91
    mov word [bp - 0x0010], 0xf      ; 0x4c93
loc_4c98:
    mov ax, word [bp - 0x0010]       ; 0x4c98
    mov cx, word [bp - 0x0002]       ; 0x4c9b
    shl cx, 1                        ; 0x4c9e
    shl cx, 1                        ; 0x4ca0
    add bx, cx                       ; 0x4ca2
    add word [bx + 0x5c1e], ax       ; 0x4ca4
    cmp word [bx + 0x5c1e], strict word 0x3e7 ; 0x4ca8
    jle short loc_4cb6               ; 0x4cae
    mov word [bx + 0x5c1e], 0x3e7    ; 0x4cb0
loc_4cb6:
    inc word [bp - 0x0002]           ; 0x4cb6
    mov ax, word [bp - 0x0002]       ; 0x4cb9
    cmp ax, strict word 6            ; 0x4cbc
    jge short loc_4cc4               ; 0x4cbf
    jmp near loc_4b8e                ; 0x4cc1
loc_4cc4:
    ret                              ; 0x4cc4
%include "vpclv/api_idx_00b4.asm"

%include "vpclv/api_idx_0006_2.asm"

%include "vpclv/api_idx_00a4.asm"

%include "vpclv/api_idx_0046.asm"

@..api_idx_0046.l7:
    jmp short @..api_idx_0046.l9     ; 0x5097
@..api_idx_0046.l8:
    mov ax, 0                        ; 0x5099
    ret                              ; 0x509c
@..api_idx_0046.l9:
    jmp near @..api_idx_0046.l1      ; 0x509d
    db 0xc3
%include "vpclv/api_idx_000e.asm"

%include "vpclv/api_idx_000c_3.asm"

@..api_idx_000c_3.l3:
    call ds_dispatch_c145            ; 0x51ba
    mov ax, 1                        ; 0x51bd
    push ax                          ; 0x51c0
    mov ax, data_0002                ; 0x51c1
    push ax                          ; 0x51c4
    call ds_dispatch_d61c            ; 0x51c5
    add sp, byte 4                   ; 0x51c8
    mov ax, data_0002                ; 0x51cb
    push ax                          ; 0x51ce
    mov ax, 3                        ; 0x51cf
    push ax                          ; 0x51d2
    call ds_dispatch_d61c            ; 0x51d3
    add sp, byte 4                   ; 0x51d6
    mov ax, 0                        ; 0x51d9
    push ax                          ; 0x51dc
    mov ax, data_0002                ; 0x51dd
    push ax                          ; 0x51e0
    mov ax, 0xc7                     ; 0x51e1
    push ax                          ; 0x51e4
    mov ax, 0x13f                    ; 0x51e5
    push ax                          ; 0x51e8
    mov ax, 0                        ; 0x51e9
    push ax                          ; 0x51ec
    push ax                          ; 0x51ed
    call ds_dispatch_e935            ; 0x51ee
    add sp, byte 0x0c                ; 0x51f1
    mov word [bp - 0x000a], dx       ; 0x51f4
    mov word [bp - 0x000c], ax       ; 0x51f7
    mov ax, 0                        ; 0x51fa
    push ax                          ; 0x51fd
    mov ax, 0x93f0                   ; 0x51fe
    push ax                          ; 0x5201
    call api_idx_0002                ; 0x5202
    add sp, byte 4                   ; 0x5205
    mov ax, 0                        ; 0x5208
    push ax                          ; 0x520b
    mov ax, data_0002                ; 0x520c
    push ax                          ; 0x520f
    mov ax, 0x67                     ; 0x5210
    push ax                          ; 0x5213
    mov ax, 0xa2                     ; 0x5214
    push ax                          ; 0x5217
    mov ax, 6                        ; 0x5218
    push ax                          ; 0x521b
    push ax                          ; 0x521c
    call ds_dispatch_e935            ; 0x521d
    add sp, byte 0x0c                ; 0x5220
    mov word [data_9418], dx         ; 0x5223
    mov word [data_9416], ax         ; 0x5227
    mov ax, 0                        ; 0x522a
    push ax                          ; 0x522d
    mov ax, data_0002                ; 0x522e
    push ax                          ; 0x5231
    mov ax, 0x16                     ; 0x5232
    push ax                          ; 0x5235
    mov ax, 0x136                    ; 0x5236
    push ax                          ; 0x5239
    mov ax, 6                        ; 0x523a
    push ax                          ; 0x523d
    mov ax, 0xe4                     ; 0x523e
    push ax                          ; 0x5241
    call ds_dispatch_e935            ; 0x5242
    add sp, byte 0x0c                ; 0x5245
    mov word [data_941c], dx         ; 0x5248
    mov word [data_941a], ax         ; 0x524c
    mov ax, 0                        ; 0x524f
    push ax                          ; 0x5252
    mov ax, data_0002                ; 0x5253
    push ax                          ; 0x5256
    mov ax, 0xbb                     ; 0x5257
    push ax                          ; 0x525a
    mov ax, 0xab                     ; 0x525b
    push ax                          ; 0x525e
    mov ax, 0x70                     ; 0x525f
    push ax                          ; 0x5262
    mov ax, 1                        ; 0x5263
    push ax                          ; 0x5266
    call ds_dispatch_e935            ; 0x5267
    add sp, byte 0x0c                ; 0x526a
    mov word [data_9420], dx         ; 0x526d
    mov word [data_941e], ax         ; 0x5271
    mov ax, 0                        ; 0x5274
    push ax                          ; 0x5277
    mov ax, data_0002                ; 0x5278
    push ax                          ; 0x527b
    mov ax, 0x23                     ; 0x527c
    push ax                          ; 0x527f
    mov ax, 0x13f                    ; 0x5280
    push ax                          ; 0x5283
    mov ax, 0x1e                     ; 0x5284
    push ax                          ; 0x5287
    mov ax, 0xdc                     ; 0x5288
    push ax                          ; 0x528b
    call ds_dispatch_e935            ; 0x528c
    add sp, byte 0x0c                ; 0x528f
    mov word [data_9424], dx         ; 0x5292
    mov word [data_9422], ax         ; 0x5296
    mov ax, 0                        ; 0x5299
    push ax                          ; 0x529c
    mov ax, data_0002                ; 0x529d
    push ax                          ; 0x52a0
    mov ax, 0x74                     ; 0x52a1
    push ax                          ; 0x52a4
    mov ax, 0x136                    ; 0x52a5
    push ax                          ; 0x52a8
    mov ax, 0x2e                     ; 0x52a9
    push ax                          ; 0x52ac
    mov ax, 0x114                    ; 0x52ad
    push ax                          ; 0x52b0
    call ds_dispatch_e935            ; 0x52b1
    add sp, byte 0x0c                ; 0x52b4
    mov word [data_9428], dx         ; 0x52b7
    mov word [data_9426], ax         ; 0x52bb
    mov ax, 0                        ; 0x52be
    push ax                          ; 0x52c1
    mov ax, data_0002                ; 0x52c2
    push ax                          ; 0x52c5
    mov ax, 0xbf                     ; 0x52c6
    push ax                          ; 0x52c9
    mov ax, 0x13f                    ; 0x52ca
    push ax                          ; 0x52cd
    mov ax, 0x7e                     ; 0x52ce
    push ax                          ; 0x52d1
    mov ax, 0xb8                     ; 0x52d2
    push ax                          ; 0x52d5
    call ds_dispatch_e935            ; 0x52d6
    add sp, byte 0x0c                ; 0x52d9
    mov word [data_942c], dx         ; 0x52dc
    mov word [data_942a], ax         ; 0x52e0
    mov ax, 0                        ; 0x52e3
    push ax                          ; 0x52e6
    mov ax, data_0002                ; 0x52e7
    push ax                          ; 0x52ea
    mov ax, 0x41                     ; 0x52eb
    push ax                          ; 0x52ee
    mov ax, 0x65                     ; 0x52ef
    push ax                          ; 0x52f2
    mov ax, 0x19                     ; 0x52f3
    push ax                          ; 0x52f6
    mov ax, 0x5a                     ; 0x52f7
    push ax                          ; 0x52fa
    call ds_dispatch_e935            ; 0x52fb
    add sp, byte 0x0c                ; 0x52fe
    mov word [data_9434], dx         ; 0x5301
    mov word [data_9432], ax         ; 0x5305
    mov ax, 0xf                      ; 0x5308
    push ax                          ; 0x530b
    mov ax, 0xb                      ; 0x530c
    push ax                          ; 0x530f
    call ds_dispatch_d61c            ; 0x5310
    add sp, byte 4                   ; 0x5313
    call ds_dispatch_d9a6            ; 0x5316
    mov word [data_8450], ax         ; 0x5319
    test ax, ax                      ; 0x531c
    je short @..api_idx_000c_3.l4    ; 0x531e
    mov ax, 0                        ; 0x5320
    push ax                          ; 0x5323
    push ax                          ; 0x5324
    call ds_dispatch_d7e7            ; 0x5325
    add sp, byte 4                   ; 0x5328
    mov ax, word [data_010c]         ; 0x532b
    mov word [data_844e], ax         ; 0x532e
    mov ax, 1                        ; 0x5331
    push ax                          ; 0x5334
    push word [data_844e]            ; 0x5335
    mov ax, 0                        ; 0x5339
    push ax                          ; 0x533c
    call ds_dispatch_d964            ; 0x533d
    add sp, byte 6                   ; 0x5340
    mov word [data_844c], ax         ; 0x5343
@..api_idx_000c_3.l4:
    mov word [data_9492], 0          ; 0x5346
    mov word [data_9490], 0          ; 0x534c
    mov word [data_948e], 0          ; 0x5352
    mov word [bp - 0x0002], 0        ; 0x5358
    jmp short @..api_idx_000c_3.l6   ; 0x535d
@..api_idx_000c_3.l5:
    mov ax, 1                        ; 0x535f
    push ax                          ; 0x5362
    push word [bp - 0x0002]          ; 0x5363
    call api_idx_0046                ; 0x5366
    add sp, byte 4                   ; 0x5369
    inc word [bp - 0x0002]           ; 0x536c
@..api_idx_000c_3.l6:
    mov ax, word [bp - 0x0002]       ; 0x536f
    cmp ax, word [data_69c8]         ; 0x5372
    jl short @..api_idx_000c_3.l5    ; 0x5376
    cmp word [data_8450], byte 0     ; 0x5378
    je short @..api_idx_000c_3.l7    ; 0x537d
    push word [data_844c]            ; 0x537f
    push word [data_844e]            ; 0x5383
    call ds_dispatch_d91b            ; 0x5387
    add sp, byte 4                   ; 0x538a
    mov ax, 0                        ; 0x538d
    push ax                          ; 0x5390
    call ds_dispatch_d907            ; 0x5391
    pop cx                           ; 0x5394
@..api_idx_000c_3.l7:
    mov ax, 0xf                      ; 0x5395
    push ax                          ; 0x5398
    call ds_dispatch_c12a            ; 0x5399
    pop cx                           ; 0x539c
    mov ax, 0                        ; 0x539d
    push ax                          ; 0x53a0
    mov ax, 1                        ; 0x53a1
    push ax                          ; 0x53a4
    push word [data_9434]            ; 0x53a5
    push word [data_9432]            ; 0x53a9
    call ds_dispatch_e942            ; 0x53ad
    add sp, byte 8                   ; 0x53b0
    mov ax, 0                        ; 0x53b3
    push ax                          ; 0x53b6
    mov ax, 1                        ; 0x53b7
    push ax                          ; 0x53ba
    push word [data_942c]            ; 0x53bb
    push word [data_942a]            ; 0x53bf
    call ds_dispatch_e942            ; 0x53c3
    add sp, byte 8                   ; 0x53c6
    mov ax, 0                        ; 0x53c9
    push ax                          ; 0x53cc
    mov ax, 1                        ; 0x53cd
    push ax                          ; 0x53d0
    push word [data_9428]            ; 0x53d1
    push word [data_9426]            ; 0x53d5
    call ds_dispatch_e942            ; 0x53d9
    add sp, byte 8                   ; 0x53dc
    mov ax, 0                        ; 0x53df
    push ax                          ; 0x53e2
    mov ax, 1                        ; 0x53e3
    push ax                          ; 0x53e6
    push word [data_9424]            ; 0x53e7
    push word [data_9422]            ; 0x53eb
    call ds_dispatch_e942            ; 0x53ef
    add sp, byte 8                   ; 0x53f2
    mov ax, 0                        ; 0x53f5
    push ax                          ; 0x53f8
    mov ax, 1                        ; 0x53f9
    push ax                          ; 0x53fc
    push word [data_9420]            ; 0x53fd
    push word [data_941e]            ; 0x5401
    call ds_dispatch_e942            ; 0x5405
    add sp, byte 8                   ; 0x5408
    mov ax, 0                        ; 0x540b
    push ax                          ; 0x540e
    mov ax, 1                        ; 0x540f
    push ax                          ; 0x5412
    push word [data_941c]            ; 0x5413
    push word [data_941a]            ; 0x5417
    call ds_dispatch_e942            ; 0x541b
    add sp, byte 8                   ; 0x541e
    mov ax, 0                        ; 0x5421
    push ax                          ; 0x5424
    mov ax, 1                        ; 0x5425
    push ax                          ; 0x5428
    push word [data_9418]            ; 0x5429
    push word [data_9416]            ; 0x542d
    call ds_dispatch_e942            ; 0x5431
    add sp, byte 8                   ; 0x5434
    mov ax, 0                        ; 0x5437
    push ax                          ; 0x543a
    mov ax, 1                        ; 0x543b
    push ax                          ; 0x543e
    push word [bp - 0x000a]          ; 0x543f
    push word [bp - 0x000c]          ; 0x5442
    call ds_dispatch_e942            ; 0x5445
    add sp, byte 8                   ; 0x5448
    mov ax, 1                        ; 0x544b
    push ax                          ; 0x544e
    call ds_dispatch_c12a            ; 0x544f
    pop cx                           ; 0x5452
    mov ax, data_0002                ; 0x5453
    push ax                          ; 0x5456
    call ds_dispatch_c12a            ; 0x5457
    pop cx                           ; 0x545a
    call api_idx_000e                ; 0x545b
    mov ax, 0xc7                     ; 0x545e
    push ax                          ; 0x5461
    mov ax, 0x13f                    ; 0x5462
    push ax                          ; 0x5465
    mov ax, 0                        ; 0x5466
    push ax                          ; 0x5469
    push ax                          ; 0x546a
    call ds_dispatch_e8da            ; 0x546b
    add sp, byte 8                   ; 0x546e
    ret                              ; 0x5471

    db 0x8f, 0x06, 0x06, 0x94, 0x59, 0x89, 0x26, 0x02, 0x94, 0x89, 0x2e, 0x04, 0x94, 0x89, 0x36, 0xfe
    db 0x93, 0x89, 0x3e, 0x00, 0x94, 0xfc, 0xbf, 0x08, 0x94, 0xb9, 0xac, 0x97, 0x2b, 0xcf, 0xd1, 0xe9
    db 0x74, 0x04, 0x2b, 0xc0, 0xf3, 0xab, 0xe8, 0x73, 0xab, 0x8b, 0x2e, 0x04, 0x94, 0x8b, 0x26, 0x02
    db 0x94, 0x8b, 0x36, 0xfe, 0x93, 0x8b, 0x3e, 0x00, 0x94, 0x51, 0xff, 0x26, 0x06, 0x94, 0x25, 0x20
    db 0x00, 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
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
    db 0x25, 0x20, 0x28, 0x00, 0x29, 0x00, 0x2f
    times 4 db 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0

