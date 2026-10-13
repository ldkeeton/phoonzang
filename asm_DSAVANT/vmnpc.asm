; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vmnpc.inc"
bits 16
%include "inc/host_symbols.inc"
%ifndef VBASE
VBASE equ __zres_end - 0x000e
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e + VBASE
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                                    ; o_magic: overlay signature (0x00f2)
    dw __zres_end                                ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)           ; 0xaecf ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x009c ; o_dsize: initialized data size
    dw 0x1f22                                    ; o_bss: uninitialized data size
    dw string_loc_ae10 - IMAGE_BASE + __zres_end ; 0xfe57 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_44d9 equ 0x44d9 + VBASE
io_loc_4fa9 equ 0x4fa9 + VBASE

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
