%include "inc/structs/structs.inc"
%include "inc/structs/loc_600d.inc"
org 0
bits 16
%include "inc/labels/vpcmk_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0008
%endif

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x23, 0x70, 0x98, 0x90

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
loc_5c67 equ 0x5c67
loc_5c78 equ 0x5c78
loc_600d equ 0x600d
data_a0f9 equ 0xa0f9
data_a10d equ 0xa10d
data_a16f equ 0xa16f
data_a195 equ 0xa195
data_a1fa equ 0xa1fa
data_a2d1 equ 0xa2d1
dseg_0002 equ 0x0002
dseg_0038 equ 0x0038
dseg_003c equ 0x003c
dseg_0040 equ 0x0040
dseg_0042 equ 0x0042
dseg_0044 equ 0x0044
dseg_010e equ 0x010e
dseg_0e32 equ 0x0e32
dseg_59fc equ 0x59fc
dseg_5b3e equ 0x5b3e
dseg_5e2a equ 0x5e2a
dseg_830a equ 0x830a
dseg_844c equ 0x844c
dseg_844e equ 0x844e
dseg_8450 equ 0x8450
dseg_904e equ 0x904e
dseg_9050 equ 0x9050
dseg_9052 equ 0x9052
dseg_905a equ 0x905a
dseg_906e equ 0x906e
dseg_9070 equ 0x9070
dseg_9072 equ 0x9072
dseg_9074 equ 0x9074
dseg_908a equ 0x908a
dseg_908c equ 0x908c
dseg_908e equ 0x908e
dseg_9090 equ 0x9090
dseg_9092 equ 0x9092
dseg_9094 equ 0x9094
dseg_951a equ 0x951a
dseg_951c equ 0x951c
dseg_951e equ 0x951e
dseg_9520 equ 0x9520
dseg_9522 equ 0x9522
dseg_9524 equ 0x9524
dseg_9526 equ 0x9526
dseg_9528 equ 0x9528
dseg_952a equ 0x952a
dseg_952c equ 0x952c
dseg_952e equ 0x952e
dseg_9530 equ 0x9530
dseg_9532 equ 0x9532
dseg_9534 equ 0x9534
dseg_9536 equ 0x9536
dseg_9538 equ 0x9538
dseg_953a equ 0x953a
dseg_953c equ 0x953c
dseg_953e equ 0x953e
dseg_9540 equ 0x9540
dseg_9542 equ 0x9542
dseg_9594 equ 0x9594
dseg_95aa equ 0x95aa
dseg_95ac equ 0x95ac
dseg_95ae equ 0x95ae
dseg_95e8 equ 0x95e8
dseg_960c equ 0x960c
dseg_976c equ 0x976c
dseg_978a equ 0x978a

    db 0x8c, 0x04, 0x68, 0x02, 0xd3, 0xbf
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    call api_idx_002c_2              ; 0x0014
    mov word [dseg_830a], 4          ; 0x0017
    mov ax, 0                        ; 0x001d
    ret                              ; 0x0020
%include "vpcmk/api_idx_0002.asm"

%include "vpcmk/api_idx_0002_2.asm"

%include "vpcmk/api_idx_0008.asm"

%include "vpcmk/api_idx_0008_2.asm"

%include "vpcmk/api_idx_0058.asm"

%include "vpcmk/api_idx_0038.asm"

%include "vpcmk/api_idx_0026.asm"

%include "vpcmk/api_idx_000c.asm"

%include "vpcmk/api_idx_0004.asm"

%include "vpcmk/api_idx_0002_3.asm"

%include "vpcmk/api_idx_0002_4.asm"

%include "vpcmk/api_idx_0010.asm"

%include "vpcmk/api_idx_0002_5.asm"

%include "vpcmk/api_idx_000a.asm"

%include "vpcmk/api_idx_0054.asm"

%include "vpcmk/api_idx_0004_2.asm"

%include "vpcmk/api_idx_0004_3.asm"

%include "vpcmk/api_idx_0004_4.asm"

%include "vpcmk/api_idx_0002_6.asm"

%include "vpcmk/api_idx_002e.asm"

%include "vpcmk/api_idx_0032.asm"

%include "vpcmk/api_idx_0088.asm"

%include "vpcmk/api_idx_0004_5.asm"

%include "vpcmk/api_idx_000a_2.asm"

%include "vpcmk/api_idx_000c_2.asm"

%include "vpcmk/api_idx_0050.asm"

%include "vpcmk/api_idx_006e.asm"

%include "vpcmk/api_idx_0002_7.asm"

%include "vpcmk/api_idx_0006.asm"

%include "vpcmk/api_idx_0002_8.asm"

%include "vpcmk/api_idx_007a.asm"

%include "vpcmk/api_idx_007a_2.asm"

%include "vpcmk/api_idx_007c.asm"

%include "vpcmk/api_idx_006c.asm"

%include "vpcmk/api_idx_0008_3.asm"

%include "vpcmk/api_idx_0002_9.asm"

%include "vpcmk/api_idx_004e.asm"

%include "vpcmk/api_idx_0006_2.asm"

%include "vpcmk/api_idx_0002_10.asm"

%include "vpcmk/api_idx_0004_6.asm"

%include "vpcmk/api_idx_001c.asm"

%include "vpcmk/api_idx_0002_11.asm"

%include "vpcmk/api_idx_000a_3.asm"

%include "vpcmk/api_idx_0004_7.asm"

%include "vpcmk/api_idx_0016.asm"

%include "vpcmk/api_idx_0006_3.asm"

%include "vpcmk/api_idx_0002_12.asm"

%include "vpcmk/api_idx_0002_13.asm"

%include "vpcmk/api_idx_0014.asm"

%include "vpcmk/api_idx_002c.asm"

%include "vpcmk/api_idx_0018.asm"

%include "vpcmk/api_idx_0006_4.asm"

%include "vpcmk/api_idx_002c_2.asm"

%include "vpcmk/string_loc_6f8c.asm"

%include "vpcmk/aztec_strcmp.asm"

%include "vpcmk/aztec_strncmp.asm"

loc_701d:
    sub di, byte 2                   ; 0x701d
    scasb                            ; 0x7020
    jne short loc_702a               ; 0x7021
    test al, al                      ; 0x7023
    je short loc_7017                ; 0x7025
    mov al, ah                       ; 0x7027
    scasb                            ; 0x7029
loc_702a:
    sbb ax, ax                       ; 0x702a
    js short loc_7019                ; 0x702c
    inc ax                           ; 0x702e
    jmp short loc_7019               ; 0x702f

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
    db '02322212'

jumptable_745d:
    dw jumptable_745d_case_0 - IMAGE_BASE
    dw jumptable_745d_case_1 - IMAGE_BASE
    dw 0x3032
    dw 0x4100
    dw 0x4843
    dw 0x4843
    dw 0x4748
    dw jumptable_745d_case_7 - IMAGE_BASE
    dw jumptable_745d_case_8 - IMAGE_BASE
    dw 0x4843
    dw 0x0041
    dw 0x3230
    dw 0x3233
    dw jumptable_745d_case_1 - IMAGE_BASE

    db '22112230', 0
    db 'PORTDATA.VGA', 0
    db 'PCFILE.DBS', 0
    db 'PCFILE.DBS', 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0

