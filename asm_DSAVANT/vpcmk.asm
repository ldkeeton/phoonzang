%include "inc/structs/structs.inc"
%include "inc/structs/loc_4d4a.inc"
org 0
bits 16
%include "inc/labels/vpcmk_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2      ; o_magic: overlay signature (0x00f2)
    dw 0x5055      ; o_corg: code load origin (memory offset)
    dw 0x7023      ; o_csize: code size in bytes
    dw 0x9098      ; o_dorg: data load origin (memory offset)
    dw 0x048c      ; o_dsize: initialized data size
    dw 0x0268      ; o_bss: uninitialized data size
    dw 0xbfd3      ; o_entry: overlay entry offset (CS)

loc_4d4a equ 0x4d4a
data_a0f9 equ 0xa0f9
data_a10d equ 0xa10d
data_a16f equ 0xa16f
data_a195 equ 0xa195
dseg_0002 equ 0x0002
dseg_0038 equ 0x0038
dseg_003c equ 0x003c
dseg_0040 equ 0x0040
dseg_0042 equ 0x0042
dseg_0044 equ 0x0044
dseg_010e equ 0x010e
bss_0e32 equ 0x0e32
bss_59fc equ 0x59fc
bss_5b3e equ 0x5b3e
bss_5e2a equ 0x5e2a
bss_830a equ 0x830a
bss_844c equ 0x844c
bss_844e equ 0x844e
bss_8450 equ 0x8450
bss_904e equ 0x904e
bss_9050 equ 0x9050
bss_9052 equ 0x9052
bss_905a equ 0x905a
bss_906e equ 0x906e
bss_9070 equ 0x9070
bss_9072 equ 0x9072
bss_9074 equ 0x9074
bss_908a equ 0x908a
bss_908c equ 0x908c
bss_908e equ 0x908e
bss_9090 equ 0x9090
bss_9092 equ 0x9092
bss_9094 equ 0x9094
dseg_951a equ 0x951a
dseg_951c equ 0x951c
dseg_951e equ 0x951e
dseg_9520 equ 0x9520
dseg_9522 equ 0x9522
bss_9524 equ 0x9524
bss_9526 equ 0x9526
bss_9528 equ 0x9528
bss_952a equ 0x952a
bss_952c equ 0x952c
bss_952e equ 0x952e
bss_9530 equ 0x9530
bss_9532 equ 0x9532
bss_9534 equ 0x9534
bss_9536 equ 0x9536
bss_9538 equ 0x9538
bss_953a equ 0x953a
bss_953c equ 0x953c
bss_953e equ 0x953e
bss_9540 equ 0x9540
bss_9542 equ 0x9542
bss_9594 equ 0x9594
bss_95aa equ 0x95aa
bss_95ac equ 0x95ac
bss_95ae equ 0x95ae
bss_95e8 equ 0x95e8
bss_960c equ 0x960c
bss_976c equ 0x976c
bss_978a equ 0x978a

loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    call api_idx_002c_2              ; 0x0014
    mov word [bss_830a], 4           ; 0x0017
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
    db 'MLAJMOI'

jumptable_240e_case_0:

    db 0x41, 0x00
    db 'NINAKNIA', 0
    db 'MKKMMMAA', 0
    db 'JIIJJIIA'

jumptable_240e_case_1:

    db 0x00
    db 'HKKHJJIA', 0
    db 'LGKMHHHA', 0
    db 'KHNKIGGA', 0

jumptable_240e_case_2:

    db 'IHGJKHNA', 0
    db 'FLGGKOMA', 0
    db 'MFFOIKDA', 0
    db 0x4b

jumptable_240e_case_3:

    db 'HGMKIGA', 0
    db 'HKHHKMKA', 0
    db 'IGMKIIKA', 0
    db 0x4b, 0x4b

jumptable_240e_case_4:

    db 'GKHHJA', 0
    db 'ACBCBCCCCHCHBA', 0
    db '022222'

jumptable_240e_case_5:

    db '32112230', 0
    db 'ACCCCDCCCHHKDA', 0
    db 0x30, 0x32, 0x32, 0x32

jumptable_240e_case_6:

    db '2232123230', 0
    db 'ACCCCDCCCIFKEA', 0
    db 0x30, 0x32

jumptable_240e_case_7:

    db '222232121230', 0
    db 'ACHCHDCCCHFIDA', 0

jumptable_240e_case_8:

    db '02323232111230', 0
    db 'ACKCHHGCCIECB'

jumptable_240e_case_9:

    db 0x41, 0x00
    db '02322322121220', 0
    db 'ACBCCDECCEE'

jumptable_240e_case_10:

    db 0x45, 0x47, 0x41, 0x00
    db '02121212111330', 0
    db 'ACICIBHC'

jumptable_240e_case_11:

    db 'CFKFFA', 0
    db '02323112113330', 0
    db 'ACECC'

jumptable_240e_case_12:

    db 'EGCCIFKFA', 0
    db '02222222122220', 0
    db 0x41, 0x43

jumptable_240e_case_13:

    db 'KCGDHCCFKIDA', 0
    db '02322212112320', 0
    db 'ACHCHHGCCCECHA', 0
    db '02322322112230', 0
    db 'PORTDATA.VGA', 0
    db 'PCFILE.DBS', 0
    db 'PCFILE.DBS', 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0

