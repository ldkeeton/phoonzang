%include "inc/structs/structs.inc"
%include "inc/structs/vmexe.inc"
org 0
bits 16
%include "labels/host_calls.inc"

%include "labels/host_values.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                                ; o_magic: overlay signature (0x00f2)
    dw 0x5055                                ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)       ; 0xa537 ; o_csize: code size in bytes
    dw __zdataseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0024 ; o_dsize: initialized data size
    dw 0x0120                                ; o_bss: uninitialized data size
    dw string_loc_a4ca - IMAGE_BASE + 0x5055 ; 0xf511 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_735e equ 0x735e
loc_81ba equ 0x81ba
loc_81bc equ 0x81bc
data_b0cb equ 0xb0cb
dseg_0002 equ 0x0002
bss_0e2a equ 0x0e2a
bss_0e2c equ 0x0e2c
bss_0e36 equ 0x0e36
bss_3ed1 equ 0x3ed1
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
bss_82fa equ 0x82fa
bss_82fc equ 0x82fc
bss_82fe equ 0x82fe
bss_8300 equ 0x8300
bss_8302 equ 0x8302
bss_8306 equ 0x8306
bss_830a equ 0x830a
bss_830c equ 0x830c
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
bss_8af0 equ 0x8af0
bss_8d0a equ 0x8d0a
bss_8d0c equ 0x8d0c
bss_8d0e equ 0x8d0e
bss_8d10 equ 0x8d10
bss_8f20 equ 0x8f20
bss_9058 equ 0x9058
bss_905c equ 0x905c
bss_905e equ 0x905e
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

%include "vmexe/api_idx_0002.asm"          ; 0x000e

%include "vmexe/api_idx_0004.asm"          ; 0x0034

%include "vmexe/api_idx_0012.asm"          ; 0x00db

%include "vmexe/api_idx_0008.asm"          ; 0x0257

%include "vmexe/api_idx_0004_2.asm"        ; 0x030b

%include "vmexe/api_idx_000a.asm"          ; 0x0456

%include "vmexe/api_idx_000e.asm"          ; 0x0656

%include "vmexe/api_idx_0004_3.asm"        ; 0x0979

%include "vmexe/api_idx_001c.asm"          ; 0x0a83

%include "vmexe/api_idx_000e_2.asm"        ; 0x0cc9

%include "vmexe/api_idx_0016.asm"          ; 0x0e1a

%include "vmexe/api_idx_0002_2.asm"        ; 0x1642

%include "vmexe/api_idx_0050.asm"          ; 0x169d

%include "vmexe/api_idx_0004_4.asm"        ; 0x16c1

%include "vmexe/api_idx_000e_3.asm"        ; 0x178e

%include "vmexe/api_idx_0006.asm"          ; 0x18a8

%include "vmexe/api_idx_0004_5.asm"        ; 0x1a5f

%include "vmexe/api_idx_000a_2.asm"        ; 0x1ac7

%include "vmexe/api_idx_0004_6.asm"        ; 0x1b45

%include "vmexe/api_idx_0004_7.asm"        ; 0x1c5e

%include "vmexe/api_idx_0002_3.asm"        ; 0x1f00

%include "vmexe/api_idx_0002_4.asm"        ; 0x1f98

%include "vmexe/api_idx_0006_2.asm"        ; 0x209c

%include "vmexe/api_idx_0022.asm"          ; 0x2242

%include "vmexe/api_idx_0004_8.asm"        ; 0x24f0

%include "vmexe/api_idx_0006_3.asm"        ; 0x25d0

%include "vmexe/api_idx_0010.asm"          ; 0x265f

%include "vmexe/api_idx_000a_3.asm"        ; 0x28e1

%include "vmexe/api_idx_000a_4.asm"        ; 0x2998

%include "vmexe/api_idx_000e_4.asm"        ; 0x2a8b

%include "vmexe/api_idx_0002_5.asm"        ; 0x2bf2

%include "vmexe/api_idx_0006_4.asm"        ; 0x2c7b

%include "vmexe/api_idx_0002_6.asm"        ; 0x2d6b

%include "vmexe/api_idx_0010_2.asm"        ; 0x2e59

%include "vmexe/api_idx_0006_5.asm"        ; 0x312e

%include "vmexe/api_idx_0004_9.asm"        ; 0x33e2

%include "vmexe/api_idx_005e.asm"          ; 0x34bc

%include "vmexe/string_loc_3620.asm"       ; 0x3620

%include "vmexe/api_idx_000e_5.asm"        ; 0x3b07

%include "vmexe/api_idx_000e_6.asm"        ; 0x5fa1

%include "vmexe/api_idx_0004_10.asm"       ; 0x6374

%include "vmexe/api_idx_0008_2.asm"        ; 0x63cd

%include "vmexe/api_idx_0014.asm"          ; 0x6476

%include "vmexe/api_idx_000c.asm"          ; 0x6f33

%include "vmexe/api_idx_0004_11.asm"       ; 0x73f6

%include "vmexe/api_idx_000a_5.asm"        ; 0x7434

%include "vmexe/api_idx_000c_2.asm"        ; 0x7911

%include "vmexe/api_idx_00ac.asm"          ; 0x7962

%include "vmexe/leaf_loc_87b7.asm"         ; 0x87b7

%include "vmexe/leaf_loc_87ba.asm"         ; 0x87ba

%include "vmexe/leaf_loc_87c9.asm"         ; 0x87c9

%include "vmexe/leaf_loc_87d5.asm"         ; 0x87d5

%include "vmexe/leaf_loc_87e5.asm"         ; 0x87e5

%include "vmexe/leaf_loc_87f8.asm"         ; 0x87f8

%include "vmexe/leaf_loc_8800.asm"         ; 0x8800

%include "vmexe/leaf_loc_8813.asm"         ; 0x8813

%include "vmexe/leaf_loc_8827.asm"         ; 0x8827

%include "vmexe/api_idx_0006_6.asm"        ; 0x908d

%include "vmexe/api_idx_000e_7.asm"        ; 0x91b5

%include "vmexe/api_idx_0006_7.asm"        ; 0x989b

%include "vmexe/api_idx_0010_3.asm"        ; 0x9a2f

%include "vmexe/api_idx_0006_8.asm"        ; 0x9e5d

%include "vmexe/api_idx_005a.asm"          ; 0x9f4f

%include "vmexe/string_loc_a4ca.asm"       ; 0xa4ca

%include "vmexe/leaf_loc_a508.asm"         ; 0xa508

%include "vmexe/string_loc_a520.asm"       ; 0xa520

__zdata_start:

    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'MON00.PIC', 0
    times 12 db 0


__zimage_end:
