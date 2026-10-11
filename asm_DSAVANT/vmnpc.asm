%include "inc/structs/structs.inc"
%include "inc/structs/loc_8466.inc"
org 0
bits 16
%include "inc/labels/vmnpc_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2      ; o_magic: overlay signature (0x00f2)
    dw 0x5055      ; o_corg: code load origin (memory offset)
    dw 0xaecf      ; o_csize: code size in bytes
    dw 0x9098      ; o_dorg: data load origin (memory offset)
    dw 0x009c      ; o_dsize: initialized data size
    dw 0x1f22      ; o_bss: uninitialized data size
    dw 0xfe57      ; o_entry: overlay entry offset (CS)

loc_4f48 equ 0x4f48
loc_6569 equ 0x6569
data_69c8 equ 0x69c8
loc_8466 equ 0x8466
data_9050 equ 0x9050
data_9d62 equ 0x9d62
dseg_0002 equ 0x0002
bss_0e2a equ 0x0e2a
bss_0e2c equ 0x0e2c
bss_0e32 equ 0x0e32
bss_0e36 equ 0x0e36
bss_5216 equ 0x5216
bss_598a equ 0x598a
bss_598e equ 0x598e
bss_59fc equ 0x59fc
bss_5b3e equ 0x5b3e
bss_69c8 equ 0x69c8
bss_7abc equ 0x7abc
bss_7b04 equ 0x7b04
bss_82b6 equ 0x82b6
bss_82e8 equ 0x82e8
bss_82ee equ 0x82ee
bss_830a equ 0x830a
bss_830c equ 0x830c
bss_843a equ 0x843a
bss_8452 equ 0x8452
bss_845a equ 0x845a
bss_845e equ 0x845e
bss_8460 equ 0x8460
bss_8468 equ 0x8468
bss_8d0a equ 0x8d0a
bss_8d0c equ 0x8d0c
bss_8d0e equ 0x8d0e
bss_8d10 equ 0x8d10
bss_8f1c equ 0x8f1c
bss_8f1e equ 0x8f1e
bss_8f20 equ 0x8f20
bss_904e equ 0x904e
bss_9050 equ 0x9050
bss_9052 equ 0x9052
bss_905a equ 0x905a
bss_905e equ 0x905e
bss_9060 equ 0x9060
bss_9062 equ 0x9062
bss_9064 equ 0x9064
bss_9066 equ 0x9066
bss_9068 equ 0x9068
bss_906a equ 0x906a
bss_906c equ 0x906c
bss_908a equ 0x908a
bss_908c equ 0x908c
bss_908e equ 0x908e
bss_9090 equ 0x9090
bss_9092 equ 0x9092
bss_9094 equ 0x9094
dseg_912a equ 0x912a
dseg_912c equ 0x912c
dseg_912e equ 0x912e
dseg_9130 equ 0x9130
dseg_9132 equ 0x9132
bss_9134 equ 0x9134
bss_9136 equ 0x9136
bss_91a0 equ 0x91a0
bss_91a2 equ 0x91a2
bss_91a4 equ 0x91a4
bss_91a6 equ 0x91a6
bss_91a8 equ 0x91a8
bss_91aa equ 0x91aa
bss_91ac equ 0x91ac
bss_91ae equ 0x91ae
bss_91b6 equ 0x91b6
bss_91b8 equ 0x91b8
bss_91c2 equ 0x91c2
bss_91c3 equ 0x91c3
bss_91c5 equ 0x91c5
bss_91c6 equ 0x91c6
bss_91c7 equ 0x91c7
bss_91c9 equ 0x91c9
bss_91ca equ 0x91ca
bss_91cb equ 0x91cb
bss_934c equ 0x934c
bss_93d2 equ 0x93d2
bss_93d4 equ 0x93d4
bss_93d6 equ 0x93d6
bss_93d8 equ 0x93d8
bss_93da equ 0x93da
bss_93dc equ 0x93dc
bss_93ee equ 0x93ee
bss_93f0 equ 0x93f0
bss_95a6 equ 0x95a6
bss_95a8 equ 0x95a8
bss_95fa equ 0x95fa
bss_95fb equ 0x95fb
bss_964a equ 0x964a
bss_964c equ 0x964c
bss_964e equ 0x964e
bss_9650 equ 0x9650
bss_9ca6 equ 0x9ca6
bss_9ca8 equ 0x9ca8
bss_9cd2 equ 0x9cd2
bss_9d60 equ 0x9d60
bss_9d62 equ 0x9d62
bss_9d64 equ 0x9d64
bss_9d66 equ 0x9d66
bss_9d68 equ 0x9d68
bss_9d6a equ 0x9d6a
bss_9d6c equ 0x9d6c
bss_9e42 equ 0x9e42
bss_9e44 equ 0x9e44
bss_9e46 equ 0x9e46
bss_9e48 equ 0x9e48
bss_9e4a equ 0x9e4a
bss_9e4c equ 0x9e4c
bss_9e4e equ 0x9e4e
bss_9e50 equ 0x9e50
bss_9e52 equ 0x9e52
bss_9e54 equ 0x9e54
bss_9e56 equ 0x9e56
bss_9e58 equ 0x9e58
bss_9e5a equ 0x9e5a
bss_9e5c equ 0x9e5c
bss_9e5e equ 0x9e5e
bss_9e60 equ 0x9e60
bss_9e62 equ 0x9e62
bss_9e64 equ 0x9e64
bss_9e66 equ 0x9e66
bss_9e68 equ 0x9e68
bss_9e6a equ 0x9e6a
bss_9e6c equ 0x9e6c
bss_9e6e equ 0x9e6e
bss_9e70 equ 0x9e70
bss_9e72 equ 0x9e72
bss_9e74 equ 0x9e74
bss_9e76 equ 0x9e76
bss_9e78 equ 0x9e78
bss_9e7a equ 0x9e7a
bss_9e7c equ 0x9e7c
bss_9e7e equ 0x9e7e
bss_9e80 equ 0x9e80
bss_9e82 equ 0x9e82
bss_9e84 equ 0x9e84
bss_a656 equ 0xa656
bss_b030 equ 0xb030
bss_b046 equ 0xb046
bss_b048 equ 0xb048
bss_b04a equ 0xb04a
bss_b04c equ 0xb04c
bss_b04e equ 0xb04e
bss_b050 equ 0xb050
bss_b052 equ 0xb052
bss_b054 equ 0xb054

%include "vmnpc/api_idx_0008.asm"

%include "vmnpc/api_idx_000c.asm"

%include "vmnpc/api_idx_0004.asm"

%include "vmnpc/api_idx_0018.asm"

%include "vmnpc/api_idx_000e.asm"

%include "vmnpc/api_idx_000a.asm"

%include "vmnpc/api_idx_0006.asm"

%include "vmnpc/api_idx_0054.asm"

%include "vmnpc/api_idx_0002.asm"

%include "vmnpc/api_idx_0004_2.asm"

%include "vmnpc/api_idx_0006_2.asm"

%include "vmnpc/api_idx_0004_3.asm"

%include "vmnpc/api_idx_0004_4.asm"

%include "vmnpc/api_idx_0004_5.asm"

%include "vmnpc/api_idx_0004_6.asm"

%include "vmnpc/api_idx_0054_2.asm"

%include "vmnpc/api_idx_0050.asm"

%include "vmnpc/api_idx_005e.asm"

%include "vmnpc/api_idx_000c_2.asm"

%include "vmnpc/api_idx_004c.asm"

%include "vmnpc/api_idx_0004_7.asm"

%include "vmnpc/api_idx_0004_8.asm"

%include "vmnpc/api_idx_0038.asm"

%include "vmnpc/api_idx_0002_2.asm"

%include "vmnpc/api_idx_0004_9.asm"

%include "vmnpc/api_idx_0008_2.asm"

%include "vmnpc/api_idx_0040.asm"

%include "vmnpc/api_idx_0006_3.asm"

%include "vmnpc/api_idx_0002_3.asm"

%include "vmnpc/api_idx_0008_3.asm"

%include "vmnpc/api_idx_0004_10.asm"

%include "vmnpc/api_idx_0018_2.asm"

%include "vmnpc/api_idx_0004_11.asm"

%include "vmnpc/api_idx_0038_2.asm"

%include "vmnpc/api_idx_0054_3.asm"

%include "vmnpc/api_idx_0038_3.asm"

%include "vmnpc/io_loc_4fa9.asm"

%include "vmnpc/api_idx_004c_2.asm"

%include "vmnpc/api_idx_0002_4.asm"

%include "vmnpc/api_idx_0068.asm"

%include "vmnpc/api_idx_0004_12.asm"

%include "vmnpc/api_idx_0002_5.asm"

%include "vmnpc/api_idx_0008_4.asm"

%include "vmnpc/api_idx_0006_4.asm"

%include "vmnpc/api_idx_0002_6.asm"

%include "vmnpc/api_idx_005e_2.asm"

%include "vmnpc/api_idx_004e.asm"

%include "vmnpc/api_idx_0006_5.asm"

%include "vmnpc/api_idx_0054_4.asm"

%include "vmnpc/api_idx_0072.asm"

%include "vmnpc/api_idx_005e_3.asm"

%include "vmnpc/api_idx_00d2.asm"

%include "vmnpc/api_idx_009c.asm"

%include "vmnpc/api_idx_0086.asm"

%include "vmnpc/api_idx_001e.asm"

%include "vmnpc/api_idx_0006_6.asm"

%include "vmnpc/api_idx_000c_3.asm"

%include "vmnpc/api_idx_0002_7.asm"

%include "vmnpc/api_idx_0004_13.asm"

%include "vmnpc/api_idx_000a_2.asm"

%include "vmnpc/api_idx_000c_4.asm"

%include "vmnpc/api_idx_0044.asm"

%include "vmnpc/api_idx_0006_7.asm"

%include "vmnpc/api_idx_002a.asm"

%include "vmnpc/api_idx_0002_8.asm"

%include "vmnpc/api_idx_0004_14.asm"

%include "vmnpc/api_idx_0002_9.asm"

%include "vmnpc/api_idx_0006_8.asm"

%include "vmnpc/api_idx_0058.asm"

%include "vmnpc/api_idx_0054_5.asm"

%include "vmnpc/api_idx_0002_10.asm"

%include "vmnpc/api_idx_0002_11.asm"

%include "vmnpc/api_idx_0004_15.asm"

%include "vmnpc/api_idx_0084.asm"

%include "vmnpc/api_idx_0002_12.asm"

%include "vmnpc/api_idx_00a6.asm"

%include "vmnpc/api_idx_00a8.asm"

%include "vmnpc/api_idx_0004_16.asm"

%include "vmnpc/api_idx_000e_2.asm"

%include "vmnpc/api_idx_000a_3.asm"

%include "vmnpc/api_idx_0080.asm"

%include "vmnpc/api_idx_0100.asm"

%include "vmnpc/api_idx_00a2.asm"

%include "vmnpc/api_idx_0002_13.asm"

%include "vmnpc/api_idx_0054_6.asm"

%include "vmnpc/api_idx_0002_14.asm"

%include "vmnpc/api_idx_0002_15.asm"

%include "vmnpc/api_idx_0002_16.asm"

%include "vmnpc/api_idx_0002_17.asm"

%include "vmnpc/api_idx_0016.asm"

%include "vmnpc/api_idx_00b0.asm"

%include "vmnpc/api_idx_00ba.asm"

%include "vmnpc/api_idx_006a.asm"

%include "vmnpc/string_loc_ae10.asm"

%include "vmnpc/aztec_strncpy.asm"

%include "vmnpc/aztec_strcmp.asm"

%include "vmnpc/aztec_strncmp.asm"

loc_aec9:
    sub di, byte 2                   ; 0xaec9
    scasb                            ; 0xaecc
    jne short loc_aed6               ; 0xaecd
    test al, al                      ; 0xaecf
    je short loc_aec3                ; 0xaed1
    mov al, ah                       ; 0xaed3
    scasb                            ; 0xaed5
loc_aed6:
    sbb ax, ax                       ; 0xaed6
    js short loc_aec5                ; 0xaed8
    inc ax                           ; 0xaeda
    jmp short loc_aec5               ; 0xaedb

    db 'V1.$$$', 0
    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'V3.$$$', 0
    db 'V1.$$$', 0
    db 0x31, 0x20, 0x00, 0x28, 0x31, 0x29, 0x00, 0x50, 0x00
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'VM1.$$$', 0
    db 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 0x20, 0x00, 0x20, 0x00, 0x20
    times 45 db 0
    db 'PHOONZANG', 0
    times 10 db 0

