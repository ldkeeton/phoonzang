%include "inc/structs/structs.inc"
%include "inc/structs/vmexe.inc"
bits 16
%ifndef VBASE
VBASE equ 0x5047
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e + VBASE
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
loc_735e equ 0x735e + VBASE
loc_81ba equ 0x81ba + VBASE
loc_81bc equ 0x81bc + VBASE
data_b0cb equ 0xb0cb

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

; Host symbols: the host is included in a section that occupies no
; space, so its labels carry the addresses this overlay calls.
%define HOST_SYMS_ONLY
%define VBASE (-0x0200)
%define IMAGE_BASE 0
%define __zimage_end ds___zimage_end
section .host nobits vstart=-0x0200
%include "ds.asm"
%undef __zimage_end
%undef IMAGE_BASE
%undef VBASE
