%include "inc/structs/structs.inc"
%include "inc/structs/loc_773d.inc"
org 0
bits 16
%include "inc/labels/vbase_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0008
%endif

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xdf, 0x93, 0x98, 0x90

loc_1f66 equ 0x1f66
loc_4a8f equ 0x4a8f
loc_4aa2 equ 0x4aa2
data_5978 equ 0x5978
data_5979 equ 0x5979
data_597c equ 0x597c
data_597d equ 0x597d
data_597e equ 0x597e
data_597f equ 0x597f
data_5986 equ 0x5986
loc_69ab equ 0x69ab
loc_69ad equ 0x69ad
loc_69af equ 0x69af
loc_69c0 equ 0x69c0
loc_69d2 equ 0x69d2
loc_69d7 equ 0x69d7
loc_714a equ 0x714a
loc_7453 equ 0x7453
loc_752f equ 0x752f
loc_755c equ 0x755c
loc_757a equ 0x757a
loc_7584 equ 0x7584
loc_75aa equ 0x75aa
loc_75b6 equ 0x75b6
loc_75dd equ 0x75dd
loc_761a equ 0x761a
loc_7686 equ 0x7686
loc_7689 equ 0x7689
loc_768b equ 0x768b
loc_7697 equ 0x7697
loc_76a4 equ 0x76a4
loc_76db equ 0x76db
loc_773d equ 0x773d
data_830a equ 0x830a
data_8460 equ 0x8460
data_a5aa equ 0xa5aa
data_a5ac equ 0xa5ac
data_a5b0 equ 0xa5b0
data_a5b2 equ 0xa5b2
data_a5b4 equ 0xa5b4
data_a5b6 equ 0xa5b6
data_a5b8 equ 0xa5b8
data_a5ba equ 0xa5ba
data_a5bc equ 0xa5bc
data_a5ce equ 0xa5ce
data_c06d equ 0xc06d
data_c56e equ 0xc56e
dseg_0002 equ 0x0002
dseg_0114 equ 0x0114
dseg_0116 equ 0x0116
dseg_0e0e equ 0x0e0e
dseg_0e10 equ 0x0e10
dseg_0e16 equ 0x0e16
dseg_0e18 equ 0x0e18
dseg_0e1a equ 0x0e1a
dseg_0e1c equ 0x0e1c
dseg_0e32 equ 0x0e32
dseg_0e38 equ 0x0e38
dseg_5216 equ 0x5216
dseg_5218 equ 0x5218
dseg_5642 equ 0x5642
dseg_590e equ 0x590e
dseg_5910 equ 0x5910
dseg_5962 equ 0x5962
dseg_5963 equ 0x5963
dseg_5978 equ 0x5978
dseg_5979 equ 0x5979
dseg_597a equ 0x597a
dseg_5980 equ 0x5980
dseg_5982 equ 0x5982
dseg_5984 equ 0x5984
dseg_5985 equ 0x5985
dseg_5986 equ 0x5986
dseg_5987 equ 0x5987
dseg_5988 equ 0x5988
dseg_5989 equ 0x5989
dseg_598a equ 0x598a
dseg_598b equ 0x598b
dseg_598c equ 0x598c
dseg_59fc equ 0x59fc
dseg_5b3e equ 0x5b3e
dseg_5b40 equ 0x5b40
dseg_5b42 equ 0x5b42
dseg_5b44 equ 0x5b44
dseg_5b46 equ 0x5b46
dseg_5b6c equ 0x5b6c
dseg_5b6e equ 0x5b6e
dseg_5b70 equ 0x5b70
dseg_5c08 equ 0x5c08
dseg_5c0a equ 0x5c0a
dseg_69c8 equ 0x69c8
dseg_82e8 equ 0x82e8
dseg_82ea equ 0x82ea
dseg_82ec equ 0x82ec
dseg_82ee equ 0x82ee
dseg_82f0 equ 0x82f0
dseg_830a equ 0x830a
dseg_830c equ 0x830c
dseg_844c equ 0x844c
dseg_844e equ 0x844e
dseg_8450 equ 0x8450
dseg_8460 equ 0x8460
dseg_89df equ 0x89df
dseg_89e0 equ 0x89e0
dseg_89e1 equ 0x89e1
dseg_89e2 equ 0x89e2
dseg_89e3 equ 0x89e3
dseg_89e4 equ 0x89e4
dseg_89e5 equ 0x89e5
dseg_89e6 equ 0x89e6
dseg_89e7 equ 0x89e7
dseg_89e8 equ 0x89e8
dseg_89ea equ 0x89ea
dseg_89f6 equ 0x89f6
dseg_8a02 equ 0x8a02
dseg_8a0e equ 0x8a0e
dseg_8a1a equ 0x8a1a
dseg_8a26 equ 0x8a26
dseg_8a32 equ 0x8a32
dseg_8a3e equ 0x8a3e
dseg_8a4a equ 0x8a4a
dseg_8a56 equ 0x8a56
dseg_8af0 equ 0x8af0
dseg_8d06 equ 0x8d06
dseg_8d08 equ 0x8d08
dseg_8f14 equ 0x8f14
dseg_8f16 equ 0x8f16
dseg_8f18 equ 0x8f18
dseg_8f1a equ 0x8f1a
dseg_8f1c equ 0x8f1c
dseg_8f1e equ 0x8f1e
dseg_8f26 equ 0x8f26
dseg_8f28 equ 0x8f28
dseg_8f2a equ 0x8f2a
dseg_8f2c equ 0x8f2c
dseg_8f2e equ 0x8f2e
dseg_8f30 equ 0x8f30
dseg_8f32 equ 0x8f32
dseg_8f34 equ 0x8f34
dseg_8f36 equ 0x8f36
dseg_8f38 equ 0x8f38
dseg_8f3a equ 0x8f3a
dseg_8f3c equ 0x8f3c
dseg_8f3e equ 0x8f3e
dseg_8f40 equ 0x8f40
dseg_8f42 equ 0x8f42
dseg_8f44 equ 0x8f44
dseg_8f46 equ 0x8f46
dseg_904c equ 0x904c
dseg_904e equ 0x904e
dseg_9050 equ 0x9050
dseg_9052 equ 0x9052
dseg_9056 equ 0x9056
dseg_9058 equ 0x9058
dseg_905a equ 0x905a
dseg_9068 equ 0x9068
dseg_906a equ 0x906a
dseg_906e equ 0x906e
dseg_9070 equ 0x9070
dseg_9072 equ 0x9072
dseg_9074 equ 0x9074
dseg_9088 equ 0x9088
dseg_908a equ 0x908a
dseg_908c equ 0x908c
dseg_91bc equ 0x91bc
dseg_91be equ 0x91be
dseg_91c0 equ 0x91c0
dseg_91c2 equ 0x91c2
dseg_91c4 equ 0x91c4
dseg_91c6 equ 0x91c6
dseg_93be equ 0x93be
dseg_9400 equ 0x9400
dseg_940a equ 0x940a
dseg_940c equ 0x940c
dseg_941c equ 0x941c
dseg_9426 equ 0x9426
dseg_9428 equ 0x9428
dseg_959f equ 0x959f
dseg_95a0 equ 0x95a0
dseg_95a1 equ 0x95a1
dseg_95a2 equ 0x95a2
dseg_95ae equ 0x95ae
dseg_95af equ 0x95af
dseg_95b0 equ 0x95b0
dseg_95b2 equ 0x95b2
dseg_95b4 equ 0x95b4
dseg_98d4 equ 0x98d4
dseg_98d5 equ 0x98d5
dseg_98ea equ 0x98ea
dseg_98eb equ 0x98eb
dseg_98f2 equ 0x98f2
dseg_98f4 equ 0x98f4
dseg_98f6 equ 0x98f6
dseg_98f7 equ 0x98f7
dseg_98f8 equ 0x98f8
dseg_98f9 equ 0x98f9
dseg_98fa equ 0x98fa
dseg_98fb equ 0x98fb
dseg_98fc equ 0x98fc
dseg_98fd equ 0x98fd
dseg_98fe equ 0x98fe
dseg_9a00 equ 0x9a00
dseg_9a02 equ 0x9a02
dseg_9a04 equ 0x9a04
dseg_9a06 equ 0x9a06
dseg_9a08 equ 0x9a08
dseg_9a0a equ 0x9a0a
dseg_9a0c equ 0x9a0c
dseg_9a0e equ 0x9a0e
dseg_9a10 equ 0x9a10
dseg_9a12 equ 0x9a12
dseg_9a14 equ 0x9a14
dseg_9a16 equ 0x9a16
dseg_9a18 equ 0x9a18
dseg_9a1a equ 0x9a1a
dseg_9a1c equ 0x9a1c
dseg_9a1e equ 0x9a1e
dseg_9a20 equ 0x9a20
dseg_9a22 equ 0x9a22
dseg_9a24 equ 0x9a24
dseg_9a26 equ 0x9a26
dseg_9a28 equ 0x9a28
dseg_9a2a equ 0x9a2a
dseg_9a2c equ 0x9a2c
dseg_9a2e equ 0x9a2e
dseg_9a30 equ 0x9a30
dseg_9a4a equ 0x9a4a
dseg_9a4c equ 0x9a4c
dseg_a494 equ 0xa494
dseg_a4a4 equ 0xa4a4
dseg_a4a6 equ 0xa4a6
dseg_a4a8 equ 0xa4a8
dseg_a4aa equ 0xa4aa
dseg_a5aa equ 0xa5aa
dseg_a5ac equ 0xa5ac
dseg_a5ae equ 0xa5ae
dseg_a5b0 equ 0xa5b0
dseg_a5b2 equ 0xa5b2
dseg_a5b4 equ 0xa5b4
dseg_a5b6 equ 0xa5b6
dseg_a5b8 equ 0xa5b8
dseg_a5ba equ 0xa5ba
dseg_a5bc equ 0xa5bc
dseg_a5be equ 0xa5be
dseg_a5ce equ 0xa5ce
dseg_a5d0 equ 0xa5d0
dseg_a5d2 equ 0xa5d2
dseg_a5d4 equ 0xa5d4
dseg_a5d6 equ 0xa5d6
dseg_a5d8 equ 0xa5d8
dseg_a5e0 equ 0xa5e0
dseg_a5e2 equ 0xa5e2
dseg_a5e4 equ 0xa5e4
dseg_a5f0 equ 0xa5f0
dseg_a5f2 equ 0xa5f2
dseg_a5fa equ 0xa5fa
dseg_a5fc equ 0xa5fc
dseg_a5fe equ 0xa5fe
dseg_a600 equ 0xa600

    db 0x2e, 0x01, 0x3c
jumptable_7b44_case_12:
    db 0x14, 0x77, 0xe3
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [dseg_830a], byte 7     ; 0x0014
    jne short @..local.l1            ; 0x0019
    call api_idx_0002_3              ; 0x001b
@..local.l1:
    cmp word [dseg_830a], byte 4     ; 0x001e
    jne short @..local.l2            ; 0x0023
    call api_idx_004a_2              ; 0x0025
@..local.l2:
    cmp word [dseg_830a], byte 0x18  ; 0x0028
    jne short @..local.l3            ; 0x002d
    call api_idx_004a                ; 0x002f
@..local.l3:
    mov ax, 0                        ; 0x0032
    ret                              ; 0x0035
%include "vbase/api_idx_0002.asm"

%include "vbase/api_idx_0004.asm"

%include "vbase/api_idx_0016.asm"

%include "vbase/api_idx_0006.asm"

%include "vbase/api_idx_0038.asm"

%include "vbase/api_idx_0008.asm"

%include "vbase/api_idx_0028.asm"

%include "vbase/api_idx_004c.asm"

%include "vbase/api_idx_0004_2.asm"

%include "vbase/api_idx_0040.asm"

%include "vbase/api_idx_0072.asm"

%include "vbase/api_idx_0038_2.asm"

%include "vbase/api_idx_004e.asm"

%include "vbase/api_idx_0002_2.asm"

%include "vbase/api_idx_000c.asm"

%include "vbase/api_idx_0050.asm"

%include "vbase/api_idx_0052.asm"

%include "vbase/api_idx_0052_2.asm"

%include "vbase/api_idx_0062.asm"

%include "vbase/api_idx_0006_2.asm"

%include "vbase/api_idx_00aa.asm"

%include "vbase/api_idx_0004_3.asm"

%include "vbase/api_idx_0002_3.asm"

%include "vbase/api_idx_0002_4.asm"

%include "vbase/api_idx_004a.asm"

%include "vbase/api_idx_004a_2.asm"

%include "vbase/api_idx_0004_4.asm"

%include "vbase/api_idx_0004_5.asm"

%include "vbase/api_idx_0004_6.asm"

%include "vbase/api_idx_0004_7.asm"

%include "vbase/api_idx_0002_5.asm"

%include "vbase/api_idx_0002_6.asm"

%include "vbase/api_idx_0016_2.asm"

%include "vbase/api_idx_000a.asm"

%include "vbase/api_idx_000a_2.asm"

%include "vbase/api_idx_000a_3.asm"

%include "vbase/api_idx_0002_7.asm"

%include "vbase/api_idx_0002_8.asm"

%include "vbase/api_idx_0002_9.asm"

%include "vbase/api_idx_0002_10.asm"

%include "vbase/api_idx_0002_11.asm"

%include "vbase/api_idx_0002_12.asm"

%include "vbase/api_idx_0002_13.asm"

%include "vbase/string_loc_9330.asm"

%include "vbase/leaf_loc_936e.asm"

%include "vbase/aztec_strcmp.asm"

%include "vbase/aztec_strncmp.asm"

loc_93d9:
    sub di, byte 2                   ; 0x93d9
    scasb                            ; 0x93dc
    jne short loc_93e6               ; 0x93dd
    test al, al                      ; 0x93df
    je short loc_93d3                ; 0x93e1
    mov al, ah                       ; 0x93e3
    scasb                            ; 0x93e5
loc_93e6:
    sbb ax, ax                       ; 0x93e6
    js short loc_93d5                ; 0x93e8
    inc ax                           ; 0x93ea
    jmp short loc_93d5               ; 0x93eb

    db 'PCFILE.DBS', 0
    db 'V.$$$', 0
    db 'PORTDATA.VGA', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'SAVEGAME.BCF', 0
    db 'NEWGAME.DBS', 0
    db 'CRUSADER.END', 0
    db 'SCENARIO.HDR', 0
    db 'V.$$$', 0
    db 'PALETTE.DEF', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x00
    db '!%&]@#|', 0
    db 0x20, 0x00
    db 'STARSCRN.VGA', 0
    db 'MAINSCRN.VGA', 0
    db 'VIDEO00.PIC', 0
    db 'VIDSCN01.VGA', 0
    db '123432', 0
    db 'STARSCRN.VGA', 0
    db 'VIDSCN02.VGA', 0
    db 'VIDSCN03.VGA', 0
    db '123432', 0
    db 'VIDSCN04.VGA', 0
    db '123432', 0
    db 'VIDSCN05.VGA', 0
    db '123432', 0
    db 'MAINSCRN.VGA', 0
    times 11 db 0

