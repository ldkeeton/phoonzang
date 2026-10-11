%include "inc/structs/structs.inc"
%include "inc/structs/loc_7732.inc"
org 0
bits 16
%include "inc/labels/vmexe_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2      ; o_magic: overlay signature (0x00f2)
    dw 0x5055      ; o_corg: code load origin (memory offset)
    dw 0xa537      ; o_csize: code size in bytes
    dw 0x9098      ; o_dorg: data load origin (memory offset)
    dw 0x0024      ; o_dsize: initialized data size
    dw 0x0120      ; o_bss: uninitialized data size
    dw 0xf511      ; o_entry: overlay entry offset (CS)

loc_7722 equ 0x7722
loc_7732 equ 0x7732
data_8464 equ 0x8464
data_90de equ 0x90de
data_b0cb equ 0xb0cb
dseg_0002 equ 0x0002
bss_0e2a equ 0x0e2a
bss_0e2c equ 0x0e2c
bss_0e36 equ 0x0e36
bss_0f00 equ 0x0f00
bss_3300 equ 0x3300
bss_3700 equ 0x3700
bss_3ed1 equ 0x3ed1
bss_46d1 equ 0x46d1
bss_56d1 equ 0x56d1
bss_5962 equ 0x5962
bss_5963 equ 0x5963
bss_5964 equ 0x5964
bss_5988 equ 0x5988
bss_598e equ 0x598e
bss_69c8 equ 0x69c8
bss_7abc equ 0x7abc
bss_7b04 equ 0x7b04
bss_82e8 equ 0x82e8
bss_82ee equ 0x82ee
bss_82f2 equ 0x82f2
bss_82f4 equ 0x82f4
bss_82f6 equ 0x82f6
bss_82f8 equ 0x82f8
bss_830a equ 0x830a
bss_8320 equ 0x8320
bss_8454 equ 0x8454
bss_8458 equ 0x8458
bss_845a equ 0x845a
bss_845e equ 0x845e
bss_8460 equ 0x8460
bss_8462 equ 0x8462
bss_8464 equ 0x8464
bss_8466 equ 0x8466
bss_8468 equ 0x8468
bss_8482 equ 0x8482
bss_8484 equ 0x8484
bss_848e equ 0x848e
bss_8490 equ 0x8490
bss_8492 equ 0x8492
bss_849e equ 0x849e
bss_84a0 equ 0x84a0
bss_84a2 equ 0x84a2
bss_84a4 equ 0x84a4
bss_8d0a equ 0x8d0a
bss_8d0c equ 0x8d0c
bss_8d0e equ 0x8d0e
bss_8d10 equ 0x8d10
bss_8f20 equ 0x8f20
bss_9058 equ 0x9058
bss_905c equ 0x905c
bss_906c equ 0x906c
bss_908a equ 0x908a
bss_908c equ 0x908c
bss_908e equ 0x908e
bss_9090 equ 0x9090
bss_9092 equ 0x9092
bss_9094 equ 0x9094
dseg_90b2 equ 0x90b2
dseg_90b4 equ 0x90b4
dseg_90b6 equ 0x90b6
dseg_90b8 equ 0x90b8
dseg_90ba equ 0x90ba
bss_90bc equ 0x90bc
bss_90dc equ 0x90dc
bss_90de equ 0x90de
bss_90e0 equ 0x90e0
bss_90e2 equ 0x90e2
bss_90e4 equ 0x90e4
bss_9136 equ 0x9136
bss_9186 equ 0x9186
bss_91d6 equ 0x91d6
bss_91d8 equ 0x91d8
bss_91da equ 0x91da

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

