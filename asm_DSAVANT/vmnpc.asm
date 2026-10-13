%include "inc/structs/structs.inc"
%include "inc/structs/vmnpc.inc"
org 0
bits 16
%include "labels/vmnpc_foreign_labels.inc"

%include "labels/host_values.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                                ; o_magic: overlay signature (0x00f2)
    dw 0x5055                                ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)       ; 0xaecf ; o_csize: code size in bytes
    dw __zdataseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x009c ; o_dsize: initialized data size
    dw 0x1f22                                ; o_bss: uninitialized data size
    dw string_loc_ae10 - IMAGE_BASE + 0x5055 ; 0xfe57 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_44d9 equ 0x44d9
io_loc_4fa9 equ 0x4fa9
dseg_0002 equ 0x0002
bss_0e12 equ 0x0e12
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
bss_86c8 equ 0x86c8
bss_8d0a equ 0x8d0a
bss_8d0c equ 0x8d0c
bss_8d0e equ 0x8d0e
bss_8d10 equ 0x8d10
bss_8d12 equ 0x8d12
bss_8f1c equ 0x8f1c
bss_8f1e equ 0x8f1e
bss_8f20 equ 0x8f20
bss_8f30 equ 0x8f30
bss_8f32 equ 0x8f32
bss_8f34 equ 0x8f34
bss_8f36 equ 0x8f36
bss_8f38 equ 0x8f38
bss_8f3a equ 0x8f3a
bss_8f3c equ 0x8f3c
bss_8f3e equ 0x8f3e
bss_8f40 equ 0x8f40
bss_8f42 equ 0x8f42
bss_8f44 equ 0x8f44
bss_8f46 equ 0x8f46
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

%include "vmnpc/api_idx_0008.asm"          ; 0x000e

%include "vmnpc/api_idx_000c.asm"          ; 0x01d2

%include "vmnpc/api_idx_0004.asm"          ; 0x062d

%include "vmnpc/api_idx_0018.asm"          ; 0x0727

%include "vmnpc/api_idx_000e.asm"          ; 0x0961

%include "vmnpc/api_idx_000a.asm"          ; 0x0ab2

%include "vmnpc/api_idx_0006.asm"          ; 0x0b74

%include "vmnpc/api_idx_0054.asm"          ; 0x0d46

%include "vmnpc/api_idx_0002.asm"          ; 0x0dc3

%include "vmnpc/api_idx_0004_2.asm"        ; 0x0e15

%include "vmnpc/api_idx_0006_2.asm"        ; 0x0f50

%include "vmnpc/api_idx_0004_3.asm"        ; 0x10c9

%include "vmnpc/api_idx_0004_4.asm"        ; 0x114d

%include "vmnpc/api_idx_0004_5.asm"        ; 0x119e

%include "vmnpc/api_idx_0004_6.asm"        ; 0x11f8

%include "vmnpc/api_idx_0054_2.asm"        ; 0x128c

%include "vmnpc/api_idx_0050.asm"          ; 0x13b4

%include "vmnpc/api_idx_005e.asm"          ; 0x13ed

%include "vmnpc/api_idx_000c_2.asm"        ; 0x1676

%include "vmnpc/api_idx_004c.asm"          ; 0x21d2

%include "vmnpc/api_idx_0004_7.asm"        ; 0x22e7

%include "vmnpc/api_idx_0004_8.asm"        ; 0x2372

%include "vmnpc/api_idx_0038.asm"          ; 0x24ae

%include "vmnpc/api_idx_0002_2.asm"        ; 0x2768

%include "vmnpc/api_idx_0004_9.asm"        ; 0x28a1

%include "vmnpc/api_idx_0008_2.asm"        ; 0x29b1

%include "vmnpc/api_idx_0040.asm"          ; 0x2b8e

%include "vmnpc/leaf_loc_2ebe.asm"         ; 0x2ebe

%include "vmnpc/io_loc_36b4.asm"           ; 0x36b4

%include "vmnpc/io_loc_36cd.asm"           ; 0x36cd

%include "vmnpc/api_idx_0006_3.asm"        ; 0x3773

%include "vmnpc/api_idx_0002_3.asm"        ; 0x38c1

%include "vmnpc/api_idx_0008_3.asm"        ; 0x3900

%include "vmnpc/api_idx_0004_10.asm"       ; 0x3a96

%include "vmnpc/api_idx_0018_2.asm"        ; 0x3b9a

%include "vmnpc/api_idx_0004_11.asm"       ; 0x3c97

%include "vmnpc/api_idx_0038_2.asm"        ; 0x3e3a

%include "vmnpc/api_idx_0054_3.asm"        ; 0x4514

%include "vmnpc/api_idx_0038_3.asm"        ; 0x47d9

%include "vmnpc/api_idx_004c_2.asm"        ; 0x4fea

%include "vmnpc/api_idx_0002_4.asm"        ; 0x515b

%include "vmnpc/api_idx_0068.asm"          ; 0x51bb

%include "vmnpc/api_idx_0004_12.asm"       ; 0x5371

%include "vmnpc/api_idx_0002_5.asm"        ; 0x54b4

%include "vmnpc/api_idx_0008_4.asm"        ; 0x5571

%include "vmnpc/api_idx_0006_4.asm"        ; 0x573e

%include "vmnpc/api_idx_0002_6.asm"        ; 0x57bb

%include "vmnpc/api_idx_005e_2.asm"        ; 0x57e1

%include "vmnpc/api_idx_004e.asm"          ; 0x5b74

%include "vmnpc/api_idx_0006_5.asm"        ; 0x5d0e

%include "vmnpc/api_idx_0054_4.asm"        ; 0x5d93

%include "vmnpc/api_idx_0072.asm"          ; 0x5e96

%include "vmnpc/api_idx_005e_3.asm"        ; 0x5fd0

%include "vmnpc/api_idx_00d2.asm"          ; 0x631e

%include "vmnpc/leaf_loc_6592.asm"         ; 0x6592

%include "vmnpc/api_idx_009c.asm"          ; 0x677a

%include "vmnpc/string_loc_6c00.asm"       ; 0x6c00

%include "vmnpc/string_loc_6c08.asm"       ; 0x6c08

%include "vmnpc/api_idx_0086.asm"          ; 0x6e0f

%include "vmnpc/api_idx_001e.asm"          ; 0x70b7

%include "vmnpc/api_idx_0006_6.asm"        ; 0x72bf

%include "vmnpc/api_idx_000c_3.asm"        ; 0x7452

%include "vmnpc/api_idx_0002_7.asm"        ; 0x74d1

%include "vmnpc/api_idx_0004_13.asm"       ; 0x752c

%include "vmnpc/api_idx_000a_2.asm"        ; 0x759d

%include "vmnpc/api_idx_000c_4.asm"        ; 0x7708

%include "vmnpc/api_idx_0044.asm"          ; 0x786c

%include "vmnpc/api_idx_0006_7.asm"        ; 0x84f0

%include "vmnpc/api_idx_002a.asm"          ; 0x8550

%include "vmnpc/api_idx_0002_8.asm"        ; 0x86a4

%include "vmnpc/api_idx_0004_14.asm"       ; 0x8738

%include "vmnpc/api_idx_0002_9.asm"        ; 0x8793

%include "vmnpc/api_idx_0006_8.asm"        ; 0x8849

%include "vmnpc/api_idx_0058.asm"          ; 0x89a8

%include "vmnpc/api_idx_0054_5.asm"        ; 0x8a81

%include "vmnpc/api_idx_0002_10.asm"       ; 0x8bb0

%include "vmnpc/api_idx_0002_11.asm"       ; 0x8be8

%include "vmnpc/api_idx_0004_15.asm"       ; 0x8c2a

%include "vmnpc/api_idx_0084.asm"          ; 0x8c72

%include "vmnpc/api_idx_0002_12.asm"       ; 0x8d86

%include "vmnpc/api_idx_00a6.asm"          ; 0x8dbd

%include "vmnpc/api_idx_00a8.asm"          ; 0x8ead

%include "vmnpc/api_idx_0004_16.asm"       ; 0x8f85

%include "vmnpc/api_idx_000e_2.asm"        ; 0x927d

%include "vmnpc/api_idx_000a_3.asm"        ; 0x93e7

%include "vmnpc/api_idx_0080.asm"          ; 0x96c7

%include "vmnpc/api_idx_0100.asm"          ; 0x9748

%include "vmnpc/api_idx_00a2.asm"          ; 0x9844

%include "vmnpc/api_idx_0002_13.asm"       ; 0x9bcc

%include "vmnpc/api_idx_0054_6.asm"        ; 0x9d30

%include "vmnpc/api_idx_0002_14.asm"       ; 0xa2e7

%include "vmnpc/api_idx_0002_15.asm"       ; 0xa391

%include "vmnpc/api_idx_0002_16.asm"       ; 0xa3dd

%include "vmnpc/api_idx_0002_17.asm"       ; 0xa411

%include "vmnpc/api_idx_0016.asm"          ; 0xa546

%include "vmnpc/api_idx_00b0.asm"          ; 0xa837

%include "vmnpc/api_idx_00ba.asm"          ; 0xaa93

%include "vmnpc/api_idx_006a.asm"          ; 0xab8d

%include "vmnpc/string_loc_ae10.asm"       ; 0xae10

%include "vmnpc/aztec_strncpy.asm"         ; 0xae4e

%include "vmnpc/aztec_strcmp.asm"          ; 0xae76

%include "vmnpc/aztec_strncmp.asm"         ; 0xae94

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
__zdata_start:

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


__zimage_end:
