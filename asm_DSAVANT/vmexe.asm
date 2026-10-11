%include "inc/structs/structs.inc"
%include "inc/structs/loc_982e.inc"
org 0
bits 16
%include "inc/labels/vmexe_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0008
%endif

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x37, 0xa5, 0x98, 0x90

loc_3cc5 equ 0x3cc5
data_90de equ 0x90de
loc_943d equ 0x943d
loc_9440 equ 0x9440
loc_94b3 equ 0x94b3
loc_978c equ 0x978c
loc_978f equ 0x978f
loc_979a equ 0x979a
loc_97e9 equ 0x97e9
loc_97f2 equ 0x97f2
loc_9818 equ 0x9818
loc_982e equ 0x982e
data_b0cb equ 0xb0cb
dseg_0002 equ 0x0002
dseg_0e2a equ 0x0e2a
dseg_0e2c equ 0x0e2c
dseg_0e36 equ 0x0e36
dseg_0f00 equ 0x0f00
dseg_3300 equ 0x3300
dseg_3700 equ 0x3700
dseg_3ed1 equ 0x3ed1
dseg_46d1 equ 0x46d1
dseg_56d1 equ 0x56d1
dseg_5962 equ 0x5962
dseg_5963 equ 0x5963
dseg_5964 equ 0x5964
dseg_5988 equ 0x5988
dseg_598e equ 0x598e
dseg_69c8 equ 0x69c8
dseg_7abc equ 0x7abc
dseg_7b04 equ 0x7b04
dseg_82e8 equ 0x82e8
dseg_82ee equ 0x82ee
dseg_82f2 equ 0x82f2
dseg_82f4 equ 0x82f4
dseg_82f6 equ 0x82f6
dseg_82f8 equ 0x82f8
dseg_830a equ 0x830a
dseg_8320 equ 0x8320
dseg_8454 equ 0x8454
dseg_8458 equ 0x8458
dseg_845a equ 0x845a
dseg_845e equ 0x845e
dseg_8460 equ 0x8460
dseg_8462 equ 0x8462
dseg_8464 equ 0x8464
dseg_8466 equ 0x8466
dseg_8468 equ 0x8468
dseg_8482 equ 0x8482
dseg_8484 equ 0x8484
dseg_848e equ 0x848e
dseg_8490 equ 0x8490
dseg_8492 equ 0x8492
dseg_849e equ 0x849e
dseg_84a0 equ 0x84a0
dseg_84a2 equ 0x84a2
dseg_84a4 equ 0x84a4
dseg_8d0a equ 0x8d0a
dseg_8d0c equ 0x8d0c
dseg_8d0e equ 0x8d0e
dseg_8d10 equ 0x8d10
dseg_8f20 equ 0x8f20
dseg_9058 equ 0x9058
dseg_905c equ 0x905c
dseg_906c equ 0x906c
dseg_908a equ 0x908a
dseg_908c equ 0x908c
dseg_908e equ 0x908e
dseg_9090 equ 0x9090
dseg_9092 equ 0x9092
dseg_9094 equ 0x9094
dseg_90b2 equ 0x90b2
dseg_90b4 equ 0x90b4
dseg_90b6 equ 0x90b6
dseg_90b8 equ 0x90b8
dseg_90ba equ 0x90ba
dseg_90bc equ 0x90bc
dseg_90dc equ 0x90dc
dseg_90de equ 0x90de
dseg_90e0 equ 0x90e0
dseg_90e2 equ 0x90e2
dseg_90e4 equ 0x90e4
dseg_9136 equ 0x9136
dseg_9186 equ 0x9186
dseg_91d6 equ 0x91d6
dseg_91d8 equ 0x91d8
dseg_91da equ 0x91da

    db 0x24, 0x00, 0x20, 0x01, 0x11, 0xf5
%include "vmexe/api_idx_0002.asm"

%include "vmexe/api_idx_0004.asm"

%include "vmexe/api_idx_0012.asm"

%include "vmexe/api_idx_0008.asm"

%include "vmexe/api_idx_0004_2.asm"

%include "vmexe/api_idx_000a.asm"

%include "vmexe/api_idx_000e.asm"

%include "vmexe/api_idx_0004_3.asm"

%include "vmexe/api_idx_001c.asm"

%include "vmexe/api_idx_000e_2.asm"

%include "vmexe/api_idx_0016.asm"

%include "vmexe/api_idx_0002_2.asm"

%include "vmexe/api_idx_0050.asm"

%include "vmexe/api_idx_0004_4.asm"

%include "vmexe/api_idx_000e_3.asm"

%include "vmexe/api_idx_0006.asm"

%include "vmexe/api_idx_0004_5.asm"

%include "vmexe/api_idx_000a_2.asm"

%include "vmexe/api_idx_0004_6.asm"

%include "vmexe/api_idx_0004_7.asm"

%include "vmexe/api_idx_0002_3.asm"

%include "vmexe/api_idx_0002_4.asm"

%include "vmexe/api_idx_0006_2.asm"

%include "vmexe/api_idx_0022.asm"

%include "vmexe/api_idx_0004_8.asm"

%include "vmexe/api_idx_0006_3.asm"

%include "vmexe/api_idx_0010.asm"

%include "vmexe/api_idx_000a_3.asm"

%include "vmexe/api_idx_000a_4.asm"

%include "vmexe/api_idx_000e_4.asm"

%include "vmexe/api_idx_0002_5.asm"

%include "vmexe/api_idx_0006_4.asm"

%include "vmexe/api_idx_0002_6.asm"

%include "vmexe/api_idx_0010_2.asm"

%include "vmexe/api_idx_0006_5.asm"

%include "vmexe/api_idx_0004_9.asm"

%include "vmexe/api_idx_005e.asm"

%include "vmexe/api_idx_000e_5.asm"

%include "vmexe/api_idx_000e_6.asm"

%include "vmexe/api_idx_0004_10.asm"

%include "vmexe/api_idx_0008_2.asm"

%include "vmexe/api_idx_0014.asm"

%include "vmexe/api_idx_000c.asm"

%include "vmexe/api_idx_0004_11.asm"

%include "vmexe/api_idx_000a_5.asm"

%include "vmexe/api_idx_000c_2.asm"

%include "vmexe/api_idx_00ac.asm"

%include "vmexe/api_idx_0006_6.asm"

%include "vmexe/api_idx_000e_7.asm"

%include "vmexe/api_idx_0006_7.asm"

%include "vmexe/api_idx_0010_3.asm"

%include "vmexe/api_idx_0006_8.asm"

%include "vmexe/api_idx_005a.asm"

%include "vmexe/string_loc_a4ca.asm"

%include "vmexe/leaf_loc_a508.asm"

%include "vmexe/string_loc_a520.asm"


    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'MON00.PIC', 0
    times 12 db 0

