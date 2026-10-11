%include "inc/structs/structs.inc"
%include "inc/structs/loc_8466.inc"
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0008
%endif

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xcf, 0xae, 0x98, 0x90

data_0e12 equ 0x0e12
loc_263c equ 0x263c
loc_2642 equ 0x2642
loc_2650 equ 0x2650
loc_2656 equ 0x2656
loc_2664 equ 0x2664
loc_2666 equ 0x2666
loc_266a equ 0x266a
loc_2bf9 equ 0x2bf9
loc_2c0f equ 0x2c0f
loc_2c1e equ 0x2c1e
loc_2c46 equ 0x2c46
loc_2c8a equ 0x2c8a
loc_2ca7 equ 0x2ca7
loc_2d06 equ 0x2d06
loc_2d0b equ 0x2d0b
loc_2d34 equ 0x2d34
loc_2d4c equ 0x2d4c
loc_2d69 equ 0x2d69
loc_2d85 equ 0x2d85
loc_2da0 equ 0x2da0
loc_2da2 equ 0x2da2
loc_2dcc equ 0x2dcc
loc_2dcf equ 0x2dcf
loc_2ddb equ 0x2ddb
loc_2e2c equ 0x2e2c
loc_2e53 equ 0x2e53
loc_2e94 equ 0x2e94
loc_2ea3 equ 0x2ea3
loc_2ea6 equ 0x2ea6
loc_2eb5 equ 0x2eb5
loc_2f06 equ 0x2f06
loc_2f08 equ 0x2f08
loc_2f14 equ 0x2f14
loc_2f2f equ 0x2f2f
loc_2f38 equ 0x2f38
loc_2f7f equ 0x2f7f
loc_2f93 equ 0x2f93
loc_2f96 equ 0x2f96
loc_2f9f equ 0x2f9f
loc_2fbb equ 0x2fbb
loc_2fbd equ 0x2fbd
loc_2fe0 equ 0x2fe0
loc_2fe2 equ 0x2fe2
loc_2ffd equ 0x2ffd
loc_3001 equ 0x3001
loc_3031 equ 0x3031
loc_3084 equ 0x3084
loc_30b5 equ 0x30b5
loc_30f3 equ 0x30f3
loc_3111 equ 0x3111
loc_3144 equ 0x3144
loc_3165 equ 0x3165
loc_3185 equ 0x3185
loc_319e equ 0x319e
loc_31b6 equ 0x31b6
loc_31d0 equ 0x31d0
loc_31dc equ 0x31dc
loc_31ee equ 0x31ee
loc_31fd equ 0x31fd
loc_3214 equ 0x3214
loc_3220 equ 0x3220
loc_3224 equ 0x3224
loc_3238 equ 0x3238
loc_3269 equ 0x3269
loc_329b equ 0x329b
loc_32c4 equ 0x32c4
loc_32ee equ 0x32ee
loc_3313 equ 0x3313
loc_334d equ 0x334d
loc_335e equ 0x335e
loc_3368 equ 0x3368
loc_33a6 equ 0x33a6
loc_33bd equ 0x33bd
loc_342f equ 0x342f
loc_3432 equ 0x3432
loc_343e equ 0x343e
loc_34c7 equ 0x34c7
loc_34e0 equ 0x34e0
loc_350d equ 0x350d
loc_3518 equ 0x3518
loc_353b equ 0x353b
loc_35a2 equ 0x35a2
loc_35b2 equ 0x35b2
loc_3634 equ 0x3634
loc_3637 equ 0x3637
loc_3649 equ 0x3649
loc_3695 equ 0x3695
loc_3699 equ 0x3699
loc_36a9 equ 0x36a9
loc_36ab equ 0x36ab
loc_36e3 equ 0x36e3
loc_36f6 equ 0x36f6
loc_3714 equ 0x3714
loc_371d equ 0x371d
loc_372e equ 0x372e
loc_3756 equ 0x3756
loc_3770 equ 0x3770
loc_3781 equ 0x3781
loc_4f48 equ 0x4f48
data_69c8 equ 0x69c8
data_82ee equ 0x82ee
data_830a equ 0x830a
data_830c equ 0x830c
loc_8466 equ 0x8466
data_86c8 equ 0x86c8
data_8d12 equ 0x8d12
data_8f30 equ 0x8f30
data_8f32 equ 0x8f32
data_8f34 equ 0x8f34
data_8f36 equ 0x8f36
data_8f38 equ 0x8f38
data_8f3a equ 0x8f3a
data_8f3c equ 0x8f3c
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_8f44 equ 0x8f44
data_8f46 equ 0x8f46
data_9050 equ 0x9050
data_905e equ 0x905e
data_9134 equ 0x9134
data_9136 equ 0x9136
data_91b6 equ 0x91b6
data_91b8 equ 0x91b8
data_91c2 equ 0x91c2
data_91c6 equ 0x91c6
data_91c7 equ 0x91c7
data_93ee equ 0x93ee
data_95a6 equ 0x95a6
data_a376 equ 0xa376
dseg_0002 equ 0x0002
dseg_0e2a equ 0x0e2a
dseg_0e2c equ 0x0e2c
dseg_0e32 equ 0x0e32
dseg_0e36 equ 0x0e36
dseg_5216 equ 0x5216
dseg_598a equ 0x598a
dseg_598e equ 0x598e
dseg_59fc equ 0x59fc
dseg_5b3e equ 0x5b3e
dseg_69c8 equ 0x69c8
dseg_7abc equ 0x7abc
dseg_7b04 equ 0x7b04
dseg_82b6 equ 0x82b6
dseg_82e8 equ 0x82e8
dseg_82ee equ 0x82ee
dseg_830a equ 0x830a
dseg_830c equ 0x830c
dseg_843a equ 0x843a
dseg_8452 equ 0x8452
dseg_845a equ 0x845a
dseg_845e equ 0x845e
dseg_8460 equ 0x8460
dseg_8468 equ 0x8468
dseg_8d0a equ 0x8d0a
dseg_8d0c equ 0x8d0c
dseg_8d0e equ 0x8d0e
dseg_8d10 equ 0x8d10
dseg_8f1c equ 0x8f1c
dseg_8f1e equ 0x8f1e
dseg_8f20 equ 0x8f20
dseg_904e equ 0x904e
dseg_9050 equ 0x9050
dseg_9052 equ 0x9052
dseg_905a equ 0x905a
dseg_905e equ 0x905e
dseg_9060 equ 0x9060
dseg_9062 equ 0x9062
dseg_9064 equ 0x9064
dseg_9066 equ 0x9066
dseg_9068 equ 0x9068
dseg_906a equ 0x906a
dseg_906c equ 0x906c
dseg_908a equ 0x908a
dseg_908c equ 0x908c
dseg_908e equ 0x908e
dseg_9090 equ 0x9090
dseg_9092 equ 0x9092
dseg_9094 equ 0x9094
dseg_912a equ 0x912a
dseg_912c equ 0x912c
dseg_912e equ 0x912e
dseg_9130 equ 0x9130
dseg_9132 equ 0x9132
dseg_9134 equ 0x9134
dseg_9136 equ 0x9136
dseg_91a0 equ 0x91a0
dseg_91a2 equ 0x91a2
dseg_91a4 equ 0x91a4
dseg_91a6 equ 0x91a6
dseg_91a8 equ 0x91a8
dseg_91aa equ 0x91aa
dseg_91ac equ 0x91ac
dseg_91ae equ 0x91ae
dseg_91b6 equ 0x91b6
dseg_91b8 equ 0x91b8
dseg_91c2 equ 0x91c2
dseg_91c3 equ 0x91c3
dseg_91c5 equ 0x91c5
dseg_91c6 equ 0x91c6
dseg_91c7 equ 0x91c7
dseg_91c9 equ 0x91c9
dseg_91ca equ 0x91ca
dseg_91cb equ 0x91cb
dseg_934c equ 0x934c
dseg_93d2 equ 0x93d2
dseg_93d4 equ 0x93d4
dseg_93d6 equ 0x93d6
dseg_93d8 equ 0x93d8
dseg_93da equ 0x93da
dseg_93dc equ 0x93dc
dseg_93ee equ 0x93ee
dseg_93f0 equ 0x93f0
dseg_95a6 equ 0x95a6
dseg_95a8 equ 0x95a8
dseg_95fa equ 0x95fa
dseg_95fb equ 0x95fb
dseg_964a equ 0x964a
dseg_964c equ 0x964c
dseg_964e equ 0x964e
dseg_9650 equ 0x9650
dseg_9ca6 equ 0x9ca6
dseg_9ca8 equ 0x9ca8
dseg_9cd2 equ 0x9cd2
dseg_9d60 equ 0x9d60
dseg_9d62 equ 0x9d62
dseg_9d64 equ 0x9d64
dseg_9d66 equ 0x9d66
dseg_9d68 equ 0x9d68
dseg_9d6a equ 0x9d6a
dseg_9d6c equ 0x9d6c
dseg_9e42 equ 0x9e42
dseg_9e44 equ 0x9e44
dseg_9e46 equ 0x9e46
dseg_9e48 equ 0x9e48
dseg_9e4a equ 0x9e4a
dseg_9e4c equ 0x9e4c
dseg_9e4e equ 0x9e4e
dseg_9e50 equ 0x9e50
dseg_9e52 equ 0x9e52
dseg_9e54 equ 0x9e54
dseg_9e56 equ 0x9e56
dseg_9e58 equ 0x9e58
dseg_9e5a equ 0x9e5a
dseg_9e5c equ 0x9e5c
dseg_9e5e equ 0x9e5e
dseg_9e60 equ 0x9e60
dseg_9e62 equ 0x9e62
dseg_9e64 equ 0x9e64
dseg_9e66 equ 0x9e66
dseg_9e68 equ 0x9e68
dseg_9e6a equ 0x9e6a
dseg_9e6c equ 0x9e6c
dseg_9e6e equ 0x9e6e
dseg_9e70 equ 0x9e70
dseg_9e72 equ 0x9e72
dseg_9e74 equ 0x9e74
dseg_9e76 equ 0x9e76
dseg_9e78 equ 0x9e78
dseg_9e7a equ 0x9e7a
dseg_9e7c equ 0x9e7c
dseg_9e7e equ 0x9e7e
dseg_9e80 equ 0x9e80
dseg_9e82 equ 0x9e82
dseg_9e84 equ 0x9e84
dseg_a656 equ 0xa656
dseg_b030 equ 0xb030
dseg_b046 equ 0xb046
dseg_b048 equ 0xb048
dseg_b04a equ 0xb04a
dseg_b04c equ 0xb04c
dseg_b04e equ 0xb04e
dseg_b050 equ 0xb050
dseg_b052 equ 0xb052
dseg_b054 equ 0xb054

    db 0x9c, 0x00, 0x22, 0x1f, 0x57, 0xfe
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

