%include "inc/structs/structs.inc"
%include "inc/structs/loc_23fd.inc"
org 0
bits 16
%include "inc/labels/vpcvw_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2      ; o_magic: overlay signature (0x00f2)
    dw 0x5055      ; o_corg: code load origin (memory offset)
    dw 0x9836      ; o_csize: code size in bytes
    dw 0x9098      ; o_dorg: data load origin (memory offset)
    dw 0x0348      ; o_dsize: initialized data size
    dw 0x0310      ; o_bss: uninitialized data size
    dw 0xe835      ; o_entry: overlay entry offset (CS)

loc_23fd equ 0x23fd
dseg_0002 equ 0x0002
dseg_001e equ 0x001e
dseg_0022 equ 0x0022
dseg_0024 equ 0x0024
dseg_0038 equ 0x0038
dseg_003c equ 0x003c
dseg_0040 equ 0x0040
dseg_0042 equ 0x0042
dseg_0044 equ 0x0044
dseg_0110 equ 0x0110
bss_0e0e equ 0x0e0e
bss_0e1e equ 0x0e1e
bss_0e20 equ 0x0e20
bss_0e26 equ 0x0e26
bss_0e28 equ 0x0e28
bss_0e2e equ 0x0e2e
bss_0e30 equ 0x0e30
bss_0e32 equ 0x0e32
bss_0f00 equ 0x0f00
bss_3300 equ 0x3300
bss_3700 equ 0x3700
bss_5216 equ 0x5216
bss_5218 equ 0x5218
bss_5910 equ 0x5910
bss_5987 equ 0x5987
bss_59fa equ 0x59fa
bss_59fc equ 0x59fc
bss_5b3e equ 0x5b3e
bss_69c8 equ 0x69c8
bss_82ee equ 0x82ee
bss_82f2 equ 0x82f2
bss_82f4 equ 0x82f4
bss_82f6 equ 0x82f6
bss_82f8 equ 0x82f8
bss_82fa equ 0x82fa
bss_82fc equ 0x82fc
bss_82fe equ 0x82fe
bss_8300 equ 0x8300
bss_8302 equ 0x8302
bss_8306 equ 0x8306
bss_830a equ 0x830a
bss_830c equ 0x830c
bss_844c equ 0x844c
bss_844e equ 0x844e
bss_8450 equ 0x8450
bss_8aee equ 0x8aee
bss_8af0 equ 0x8af0
bss_8f20 equ 0x8f20
bss_8f3e equ 0x8f3e
bss_8f40 equ 0x8f40
bss_8f42 equ 0x8f42
bss_904e equ 0x904e
bss_9050 equ 0x9050
bss_9052 equ 0x9052
bss_905a equ 0x905a
bss_905e equ 0x905e
bss_908a equ 0x908a
bss_908c equ 0x908c
bss_908e equ 0x908e
bss_9090 equ 0x9090
bss_9092 equ 0x9092
bss_9094 equ 0x9094
dseg_93d6 equ 0x93d6
dseg_93d8 equ 0x93d8
dseg_93da equ 0x93da
dseg_93dc equ 0x93dc
dseg_93de equ 0x93de
bss_93e0 equ 0x93e0
bss_93ee equ 0x93ee
bss_93f0 equ 0x93f0
bss_93f2 equ 0x93f2
bss_93f4 equ 0x93f4
bss_93f6 equ 0x93f6
bss_93f8 equ 0x93f8
bss_93fa equ 0x93fa
bss_93fc equ 0x93fc
bss_93fe equ 0x93fe
bss_9400 equ 0x9400
bss_9402 equ 0x9402
bss_9404 equ 0x9404
bss_940a equ 0x940a
bss_940c equ 0x940c
bss_940e equ 0x940e
bss_9410 equ 0x9410
bss_9412 equ 0x9412
bss_942a equ 0x942a
bss_942c equ 0x942c
bss_942e equ 0x942e
bss_9430 equ 0x9430
bss_9432 equ 0x9432
bss_9434 equ 0x9434
bss_9562 equ 0x9562
bss_9564 equ 0x9564
bss_9566 equ 0x9566
bss_9568 equ 0x9568
bss_956a equ 0x956a
bss_95ea equ 0x95ea
bss_9614 equ 0x9614
bss_967a equ 0x967a
bss_96d0 equ 0x96d0

loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_aztec_csav               ; 0x0011
    cmp word [bss_830a], byte 0x11   ; 0x0014
    jne short @..local.l1            ; 0x0019
    push word [bss_8af0]             ; 0x001b
    call api_idx_0014                ; 0x001f
    pop cx                           ; 0x0022
@..local.l1:
    mov ax, 0                        ; 0x0023
    ret                              ; 0x0026
%include "vpcvw/api_idx_0002.asm"          ; 0x0027

%include "vpcvw/api_idx_000e.asm"          ; 0x008b

%include "vpcvw/api_idx_0012.asm"          ; 0x014b

%include "vpcvw/api_idx_0004.asm"          ; 0x02c7

%include "vpcvw/api_idx_000c.asm"          ; 0x037b

%include "vpcvw/api_idx_0012_2.asm"        ; 0x0521

%include "vpcvw/api_idx_0012_3.asm"        ; 0x0781

%include "vpcvw/api_idx_0004_2.asm"        ; 0x09a1

%include "vpcvw/api_idx_0012_4.asm"        ; 0x0a96

%include "vpcvw/api_idx_000c_2.asm"        ; 0x0cd6

%include "vpcvw/api_idx_0004_3.asm"        ; 0x0d55

%include "vpcvw/api_idx_0002_2.asm"        ; 0x0e05

%include "vpcvw/api_idx_0002_3.asm"        ; 0x0e60

%include "vpcvw/api_idx_0010.asm"          ; 0x0ea1

%include "vpcvw/api_idx_000a.asm"          ; 0x0f9e

%include "vpcvw/api_idx_007c.asm"          ; 0x1046

%include "vpcvw/api_idx_009e.asm"          ; 0x1894

%include "vpcvw/api_idx_0008.asm"          ; 0x1b17

%include "vpcvw/api_idx_0008_2.asm"        ; 0x21fd

%include "vpcvw/api_idx_0004_4.asm"        ; 0x297e

%include "vpcvw/api_idx_000a_2.asm"        ; 0x29ef

%include "vpcvw/api_idx_000c_3.asm"        ; 0x2b5a

%include "vpcvw/api_idx_0050.asm"          ; 0x2c84

%include "vpcvw/api_idx_0004_5.asm"        ; 0x3974

%include "vpcvw/api_idx_0004_6.asm"        ; 0x3aac

%include "vpcvw/api_idx_0084.asm"          ; 0x3b66

%include "vpcvw/api_idx_0004_7.asm"        ; 0x3c18

%include "vpcvw/api_idx_0056.asm"          ; 0x3c7b

%include "vpcvw/api_idx_009e_2.asm"        ; 0x3cfe

%include "vpcvw/api_idx_0084_2.asm"        ; 0x40ef

%include "vpcvw/api_idx_0048.asm"          ; 0x4253

%include "vpcvw/api_idx_004e.asm"          ; 0x42e3

%include "vpcvw/api_idx_0002_4.asm"        ; 0x435b

%include "vpcvw/api_idx_0002_5.asm"        ; 0x4421

%include "vpcvw/api_idx_000e_2.asm"        ; 0x4505

%include "vpcvw/api_idx_0002_6.asm"        ; 0x4573

%include "vpcvw/leaf_loc_4589.asm"         ; 0x4589

%include "vpcvw/leaf_loc_45a3.asm"         ; 0x45a3

%include "vpcvw/leaf_loc_45ab.asm"         ; 0x45ab

%include "vpcvw/leaf_loc_45b2.asm"         ; 0x45b2

%include "vpcvw/api_idx_0056_2.asm"        ; 0x468b

%include "vpcvw/api_idx_0004_8.asm"        ; 0x4793

%include "vpcvw/api_idx_0048_2.asm"        ; 0x4a1c

%include "vpcvw/api_idx_0072.asm"          ; 0x4a3f

%include "vpcvw/api_idx_0002_7.asm"        ; 0x5006

%include "vpcvw/api_idx_0010_2.asm"        ; 0x5050

%include "vpcvw/api_idx_0008_3.asm"        ; 0x539e

%include "vpcvw/api_idx_0004_9.asm"        ; 0x542a

%include "vpcvw/api_idx_00c2.asm"          ; 0x54fb

%include "vpcvw/api_idx_0014.asm"          ; 0x616c

%include "vpcvw/api_idx_002a.asm"          ; 0x6977

%include "vpcvw/api_idx_0080.asm"          ; 0x6a20

%include "vpcvw/api_idx_0004_10.asm"       ; 0x6c47

%include "vpcvw/api_idx_004c.asm"          ; 0x6d13

%include "vpcvw/api_idx_009a.asm"          ; 0x6f62

%include "vpcvw/api_idx_001a.asm"          ; 0x706c

%include "vpcvw/leaf_loc_7349.asm"         ; 0x7349

%include "vpcvw/leaf_loc_7375.asm"         ; 0x7375

%include "vpcvw/leaf_loc_738d.asm"         ; 0x738d

%include "vpcvw/leaf_loc_73a8.asm"         ; 0x73a8

%include "vpcvw/io_loc_73c5.asm"           ; 0x73c5

%include "vpcvw/io_loc_73dd.asm"           ; 0x73dd

%include "vpcvw/io_loc_73f9.asm"           ; 0x73f9

%include "vpcvw/io_loc_7410.asm"           ; 0x7410

%include "vpcvw/io_loc_7415.asm"           ; 0x7415

%include "vpcvw/api_idx_0004_11.asm"       ; 0x82da

%include "vpcvw/api_idx_0004_12.asm"       ; 0x8421

%include "vpcvw/api_idx_0002_8.asm"        ; 0x8676

%include "vpcvw/api_idx_0058.asm"          ; 0x8730

%include "vpcvw/api_idx_0008_4.asm"        ; 0x88b6

%include "vpcvw/api_idx_0026.asm"          ; 0x8a6e

%include "vpcvw/api_idx_0002_9.asm"        ; 0x8f64

%include "vpcvw/api_idx_0002_10.asm"       ; 0x8fb8

%include "vpcvw/api_idx_0002_11.asm"       ; 0x91b2

%include "vpcvw/api_idx_0030.asm"          ; 0x92b3

%include "vpcvw/api_idx_0016.asm"          ; 0x9434

%include "vpcvw/api_idx_0022.asm"          ; 0x9491

%include "vpcvw/api_idx_000e_3.asm"        ; 0x96d5

%include "vpcvw/api_idx_0018.asm"          ; 0x9740

%include "vpcvw/leaf_loc_982c.asm"         ; 0x982c


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

