%include "inc/structs/structs.inc"
%include "inc/structs/loc_8592.inc"
org 0
bits 16
%include "inc/labels/vpcvw_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0008
%endif

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x36, 0x98, 0x98, 0x90

loc_22d0 equ 0x22d0
loc_22e0 equ 0x22e0
loc_22ee equ 0x22ee
loc_22fd equ 0x22fd
loc_2302 equ 0x2302
loc_2369 equ 0x2369
loc_236c equ 0x236c
loc_239e equ 0x239e
loc_23d2 equ 0x23d2
loc_23fd equ 0x23fd
loc_2420 equ 0x2420
loc_248e equ 0x248e
loc_2493 equ 0x2493
loc_249a equ 0x249a
loc_24c4 equ 0x24c4
loc_24fb equ 0x24fb
loc_250c equ 0x250c
loc_2537 equ 0x2537
loc_2548 equ 0x2548
loc_2559 equ 0x2559
loc_2575 equ 0x2575
loc_25a7 equ 0x25a7
loc_25ae equ 0x25ae
loc_25cf equ 0x25cf
loc_25df equ 0x25df
loc_25ee equ 0x25ee
loc_25fd equ 0x25fd
loc_2602 equ 0x2602
loc_2672 equ 0x2672
loc_2675 equ 0x2675
loc_2692 equ 0x2692
loc_2714 equ 0x2714
loc_2761 equ 0x2761
loc_27ac equ 0x27ac
loc_27b4 equ 0x27b4
loc_280a equ 0x280a
loc_286a equ 0x286a
loc_2872 equ 0x2872
loc_2877 equ 0x2877
loc_28ba equ 0x28ba
loc_3d69 equ 0x3d69
loc_3d96 equ 0x3d96
loc_3de3 equ 0x3de3
loc_3e1f equ 0x3e1f
loc_3e21 equ 0x3e21
loc_3e3f equ 0x3e3f
loc_3ec1 equ 0x3ec1
loc_3ed8 equ 0x3ed8
loc_3f49 equ 0x3f49
loc_3f6f equ 0x3f6f
loc_45a0 equ 0x45a0
loc_45ee equ 0x45ee
loc_50ef equ 0x50ef
loc_5106 equ 0x5106
loc_511b equ 0x511b
loc_5179 equ 0x5179
loc_517b equ 0x517b
loc_518e equ 0x518e
loc_51a1 equ 0x51a1
loc_51cb equ 0x51cb
loc_5206 equ 0x5206
loc_5212 equ 0x5212
loc_522f equ 0x522f
loc_5255 equ 0x5255
loc_52d9 equ 0x52d9
data_69c8 equ 0x69c8
data_82f2 equ 0x82f2
data_82f4 equ 0x82f4
data_82f6 equ 0x82f6
data_82f8 equ 0x82f8
data_82fa equ 0x82fa
data_82fc equ 0x82fc
data_82fe equ 0x82fe
data_8300 equ 0x8300
data_8302 equ 0x8302
data_8306 equ 0x8306
data_830c equ 0x830c
loc_8592 equ 0x8592
data_8aee equ 0x8aee
data_a195 equ 0xa195
data_a271 equ 0xa271
data_a2b7 equ 0xa2b7
data_a2e7 equ 0xa2e7
data_a347 equ 0xa347
data_a3d5 equ 0xa3d5
dseg_0002 equ 0x0002
dseg_0024 equ 0x0024
dseg_0038 equ 0x0038
dseg_003c equ 0x003c
dseg_0040 equ 0x0040
dseg_0042 equ 0x0042
dseg_0044 equ 0x0044
dseg_0110 equ 0x0110
dseg_0e0e equ 0x0e0e
dseg_0e1e equ 0x0e1e
dseg_0e20 equ 0x0e20
dseg_0e26 equ 0x0e26
dseg_0e28 equ 0x0e28
dseg_0e2e equ 0x0e2e
dseg_0e30 equ 0x0e30
dseg_0e32 equ 0x0e32
dseg_0f00 equ 0x0f00
dseg_3300 equ 0x3300
dseg_3700 equ 0x3700
dseg_5216 equ 0x5216
dseg_5218 equ 0x5218
dseg_5910 equ 0x5910
dseg_5987 equ 0x5987
dseg_59fa equ 0x59fa
dseg_59fc equ 0x59fc
dseg_5b3e equ 0x5b3e
dseg_69c8 equ 0x69c8
dseg_82ee equ 0x82ee
dseg_830a equ 0x830a
dseg_830c equ 0x830c
dseg_844c equ 0x844c
dseg_844e equ 0x844e
dseg_8450 equ 0x8450
dseg_8af0 equ 0x8af0
dseg_8f20 equ 0x8f20
dseg_8f3e equ 0x8f3e
dseg_8f40 equ 0x8f40
dseg_8f42 equ 0x8f42
dseg_904e equ 0x904e
dseg_9050 equ 0x9050
dseg_9052 equ 0x9052
dseg_905a equ 0x905a
dseg_905e equ 0x905e
dseg_908a equ 0x908a
dseg_908c equ 0x908c
dseg_908e equ 0x908e
dseg_9090 equ 0x9090
dseg_9092 equ 0x9092
dseg_9094 equ 0x9094
dseg_93d6 equ 0x93d6
dseg_93d8 equ 0x93d8
dseg_93da equ 0x93da
dseg_93dc equ 0x93dc
dseg_93de equ 0x93de
dseg_93e0 equ 0x93e0
dseg_93ee equ 0x93ee
dseg_93f0 equ 0x93f0
dseg_93f2 equ 0x93f2
dseg_93f4 equ 0x93f4
dseg_93f6 equ 0x93f6
dseg_93f8 equ 0x93f8
dseg_93fa equ 0x93fa
dseg_93fc equ 0x93fc
dseg_93fe equ 0x93fe
dseg_9400 equ 0x9400
dseg_9402 equ 0x9402
dseg_9404 equ 0x9404
dseg_940a equ 0x940a
dseg_940c equ 0x940c
dseg_940e equ 0x940e
dseg_9410 equ 0x9410
dseg_9412 equ 0x9412
dseg_942a equ 0x942a
dseg_942c equ 0x942c
dseg_942e equ 0x942e
dseg_9430 equ 0x9430
dseg_9432 equ 0x9432
dseg_9434 equ 0x9434
dseg_9562 equ 0x9562
dseg_9564 equ 0x9564
dseg_9566 equ 0x9566
dseg_9568 equ 0x9568
dseg_956a equ 0x956a
dseg_95ea equ 0x95ea
dseg_9614 equ 0x9614
dseg_967a equ 0x967a
dseg_96d0 equ 0x96d0

    db 0x48, 0x03, 0x10, 0x03, 0x35, 0xe8
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [dseg_830a], byte 0x11  ; 0x0014
    jne short @..local.l1            ; 0x0019
    push word [dseg_8af0]            ; 0x001b
    call api_idx_0014                ; 0x001f
    pop cx                           ; 0x0022
@..local.l1:
    mov ax, 0                        ; 0x0023
    ret                              ; 0x0026
%include "vpcvw/api_idx_0002.asm"

%include "vpcvw/api_idx_000e.asm"

%include "vpcvw/api_idx_0012.asm"

%include "vpcvw/api_idx_0004.asm"

%include "vpcvw/api_idx_000c.asm"

%include "vpcvw/api_idx_0012_2.asm"

%include "vpcvw/api_idx_0012_3.asm"

%include "vpcvw/api_idx_0004_2.asm"

%include "vpcvw/api_idx_0012_4.asm"

%include "vpcvw/api_idx_000c_2.asm"

%include "vpcvw/api_idx_0004_3.asm"

%include "vpcvw/api_idx_0002_2.asm"

%include "vpcvw/api_idx_0002_3.asm"

%include "vpcvw/api_idx_0010.asm"

%include "vpcvw/api_idx_000a.asm"

%include "vpcvw/api_idx_007c.asm"

%include "vpcvw/api_idx_009e.asm"

%include "vpcvw/api_idx_0008.asm"

%include "vpcvw/api_idx_0008_2.asm"

%include "vpcvw/api_idx_0004_4.asm"

%include "vpcvw/api_idx_000a_2.asm"

%include "vpcvw/api_idx_000c_3.asm"

%include "vpcvw/api_idx_0050.asm"

%include "vpcvw/api_idx_0004_5.asm"

%include "vpcvw/api_idx_0004_6.asm"

%include "vpcvw/api_idx_0084.asm"

%include "vpcvw/api_idx_0004_7.asm"

%include "vpcvw/api_idx_0056.asm"

%include "vpcvw/api_idx_009e_2.asm"

%include "vpcvw/api_idx_0084_2.asm"

%include "vpcvw/api_idx_0048.asm"

%include "vpcvw/api_idx_004e.asm"

%include "vpcvw/api_idx_0002_4.asm"

%include "vpcvw/api_idx_0002_5.asm"

%include "vpcvw/api_idx_000e_2.asm"

%include "vpcvw/api_idx_0002_6.asm"

%include "vpcvw/api_idx_0056_2.asm"

%include "vpcvw/api_idx_0004_8.asm"

%include "vpcvw/api_idx_0048_2.asm"

%include "vpcvw/api_idx_0072.asm"

%include "vpcvw/api_idx_0002_7.asm"

%include "vpcvw/api_idx_0010_2.asm"

%include "vpcvw/api_idx_0008_3.asm"

%include "vpcvw/api_idx_0004_9.asm"

%include "vpcvw/api_idx_00c2.asm"

%include "vpcvw/api_idx_0014.asm"

%include "vpcvw/api_idx_002a.asm"

%include "vpcvw/api_idx_0080.asm"

%include "vpcvw/api_idx_0004_10.asm"

%include "vpcvw/api_idx_004c.asm"

%include "vpcvw/api_idx_009a.asm"

%include "vpcvw/api_idx_001a.asm"

%include "vpcvw/api_idx_0004_11.asm"

%include "vpcvw/api_idx_0004_12.asm"

%include "vpcvw/api_idx_0002_8.asm"

%include "vpcvw/api_idx_0058.asm"

%include "vpcvw/api_idx_0008_4.asm"

%include "vpcvw/api_idx_0026.asm"

%include "vpcvw/api_idx_0002_9.asm"

%include "vpcvw/api_idx_0002_10.asm"

%include "vpcvw/api_idx_0002_11.asm"

%include "vpcvw/api_idx_0030.asm"

%include "vpcvw/api_idx_0016.asm"

%include "vpcvw/api_idx_0022.asm"

%include "vpcvw/api_idx_000e_3.asm"

%include "vpcvw/api_idx_0018.asm"

%include "vpcvw/leaf_loc_982c.asm"


    db 0x31, 0x30, 0x30, 0x30, 0x00
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
    db 'PORTDATA.VGA', 0
    times 10 db 0

