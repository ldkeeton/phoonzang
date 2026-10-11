%include "inc/structs/structs.inc"
%include "inc/structs/loc_73bc.inc"
org 0
bits 16
%include "inc/labels/vbase_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2      ; o_magic: overlay signature (0x00f2)
    dw 0x5055      ; o_corg: code load origin (memory offset)
    dw 0x93df      ; o_csize: code size in bytes
    dw 0x9098      ; o_dorg: data load origin (memory offset)
    dw 0x012e      ; o_dsize: initialized data size
    dw 0x143c      ; o_bss: uninitialized data size
    dw 0xe377      ; o_entry: overlay entry offset (CS)

loc_0d04 equ 0x0d04
loc_14d6 equ 0x14d6
leaf_loc_185e equ 0x185e
loc_18c8 equ 0x18c8
loc_18ca equ 0x18ca
leaf_loc_1949 equ 0x1949
loc_6e77 equ 0x6e77
io_loc_7185 equ 0x7185
dseg_0002 equ 0x0002
dseg_0114 equ 0x0114
dseg_0116 equ 0x0116
bss_0e0e equ 0x0e0e
bss_0e10 equ 0x0e10
bss_0e16 equ 0x0e16
bss_0e18 equ 0x0e18
bss_0e1a equ 0x0e1a
bss_0e1c equ 0x0e1c
bss_0e32 equ 0x0e32
bss_0e38 equ 0x0e38
bss_5216 equ 0x5216
bss_5218 equ 0x5218
bss_5642 equ 0x5642
bss_590e equ 0x590e
bss_5910 equ 0x5910
bss_5962 equ 0x5962
bss_5963 equ 0x5963
bss_5978 equ 0x5978
bss_5979 equ 0x5979
bss_597a equ 0x597a
bss_597c equ 0x597c
bss_597d equ 0x597d
bss_597e equ 0x597e
bss_597f equ 0x597f
bss_5980 equ 0x5980
bss_5982 equ 0x5982
bss_5984 equ 0x5984
bss_5985 equ 0x5985
bss_5986 equ 0x5986
bss_5987 equ 0x5987
bss_5988 equ 0x5988
bss_5989 equ 0x5989
bss_598a equ 0x598a
bss_598b equ 0x598b
bss_598c equ 0x598c
bss_59fc equ 0x59fc
bss_5b3e equ 0x5b3e
bss_5b40 equ 0x5b40
bss_5b42 equ 0x5b42
bss_5b44 equ 0x5b44
bss_5b46 equ 0x5b46
bss_5b6c equ 0x5b6c
bss_5b6e equ 0x5b6e
bss_5b70 equ 0x5b70
bss_5c08 equ 0x5c08
bss_5c0a equ 0x5c0a
bss_69c8 equ 0x69c8
bss_82e8 equ 0x82e8
bss_82ea equ 0x82ea
bss_82ec equ 0x82ec
bss_82ee equ 0x82ee
bss_82f0 equ 0x82f0
bss_830a equ 0x830a
bss_830c equ 0x830c
bss_844c equ 0x844c
bss_844e equ 0x844e
bss_8450 equ 0x8450
bss_8460 equ 0x8460
bss_89df equ 0x89df
bss_89e0 equ 0x89e0
bss_89e1 equ 0x89e1
bss_89e2 equ 0x89e2
bss_89e3 equ 0x89e3
bss_89e4 equ 0x89e4
bss_89e5 equ 0x89e5
bss_89e6 equ 0x89e6
bss_89e7 equ 0x89e7
bss_89e8 equ 0x89e8
bss_89ea equ 0x89ea
bss_89f6 equ 0x89f6
bss_8a02 equ 0x8a02
bss_8a0e equ 0x8a0e
bss_8a1a equ 0x8a1a
bss_8a26 equ 0x8a26
bss_8a32 equ 0x8a32
bss_8a3e equ 0x8a3e
bss_8a4a equ 0x8a4a
bss_8a56 equ 0x8a56
bss_8af0 equ 0x8af0
bss_8d06 equ 0x8d06
bss_8d08 equ 0x8d08
bss_8f14 equ 0x8f14
bss_8f16 equ 0x8f16
bss_8f18 equ 0x8f18
bss_8f1a equ 0x8f1a
bss_8f1c equ 0x8f1c
bss_8f1e equ 0x8f1e
bss_8f26 equ 0x8f26
bss_8f28 equ 0x8f28
bss_8f2a equ 0x8f2a
bss_8f2c equ 0x8f2c
bss_8f2e equ 0x8f2e
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
bss_904c equ 0x904c
bss_904e equ 0x904e
bss_9050 equ 0x9050
bss_9052 equ 0x9052
bss_9056 equ 0x9056
bss_9058 equ 0x9058
bss_905a equ 0x905a
bss_905e equ 0x905e
bss_9068 equ 0x9068
bss_906a equ 0x906a
bss_906e equ 0x906e
bss_9070 equ 0x9070
bss_9072 equ 0x9072
bss_9074 equ 0x9074
bss_9088 equ 0x9088
bss_908a equ 0x908a
bss_908c equ 0x908c
dseg_91bc equ 0x91bc
dseg_91be equ 0x91be
dseg_91c0 equ 0x91c0
dseg_91c2 equ 0x91c2
dseg_91c4 equ 0x91c4
bss_91c6 equ 0x91c6
bss_93be equ 0x93be
bss_9400 equ 0x9400
bss_940a equ 0x940a
bss_940c equ 0x940c
bss_941c equ 0x941c
bss_9426 equ 0x9426
bss_9428 equ 0x9428
bss_959f equ 0x959f
bss_95a0 equ 0x95a0
bss_95a1 equ 0x95a1
bss_95a2 equ 0x95a2
bss_95ae equ 0x95ae
bss_95af equ 0x95af
bss_95b0 equ 0x95b0
bss_95b2 equ 0x95b2
bss_95b4 equ 0x95b4
bss_98d4 equ 0x98d4
bss_98d5 equ 0x98d5
bss_98ea equ 0x98ea
bss_98eb equ 0x98eb
bss_98f2 equ 0x98f2
bss_98f4 equ 0x98f4
bss_98f6 equ 0x98f6
bss_98f7 equ 0x98f7
bss_98f8 equ 0x98f8
bss_98f9 equ 0x98f9
bss_98fa equ 0x98fa
bss_98fb equ 0x98fb
bss_98fc equ 0x98fc
bss_98fd equ 0x98fd
bss_98fe equ 0x98fe
bss_9a00 equ 0x9a00
bss_9a02 equ 0x9a02
bss_9a04 equ 0x9a04
bss_9a06 equ 0x9a06
bss_9a08 equ 0x9a08
bss_9a0a equ 0x9a0a
bss_9a0c equ 0x9a0c
bss_9a0e equ 0x9a0e
bss_9a10 equ 0x9a10
bss_9a12 equ 0x9a12
bss_9a14 equ 0x9a14
bss_9a16 equ 0x9a16
bss_9a18 equ 0x9a18
bss_9a1a equ 0x9a1a
bss_9a1c equ 0x9a1c
bss_9a1e equ 0x9a1e
bss_9a20 equ 0x9a20
bss_9a22 equ 0x9a22
bss_9a24 equ 0x9a24
bss_9a26 equ 0x9a26
bss_9a28 equ 0x9a28
bss_9a2a equ 0x9a2a
bss_9a2c equ 0x9a2c
bss_9a2e equ 0x9a2e
bss_9a30 equ 0x9a30
bss_9a4a equ 0x9a4a
bss_9a4c equ 0x9a4c
bss_a494 equ 0xa494
bss_a4a4 equ 0xa4a4
bss_a4a6 equ 0xa4a6
bss_a4a8 equ 0xa4a8
bss_a4aa equ 0xa4aa
bss_a5aa equ 0xa5aa
bss_a5ac equ 0xa5ac
bss_a5ae equ 0xa5ae
bss_a5b0 equ 0xa5b0
bss_a5b2 equ 0xa5b2
bss_a5b4 equ 0xa5b4
bss_a5b6 equ 0xa5b6
bss_a5b8 equ 0xa5b8
bss_a5ba equ 0xa5ba
bss_a5bc equ 0xa5bc
bss_a5be equ 0xa5be
bss_a5ce equ 0xa5ce
bss_a5d0 equ 0xa5d0
bss_a5d2 equ 0xa5d2
bss_a5d4 equ 0xa5d4
bss_a5d6 equ 0xa5d6
bss_a5d8 equ 0xa5d8
bss_a5da equ 0xa5da
bss_a5e0 equ 0xa5e0
bss_a5e2 equ 0xa5e2
bss_a5e4 equ 0xa5e4
bss_a5f0 equ 0xa5f0
bss_a5f2 equ 0xa5f2
bss_a5fa equ 0xa5fa
bss_a5fc equ 0xa5fc
bss_a5fe equ 0xa5fe
bss_a600 equ 0xa600

loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [bss_830a], byte 7      ; 0x0014
    jne short @..local.l1            ; 0x0019
    call api_idx_0002_3              ; 0x001b
@..local.l1:
    cmp word [bss_830a], byte 4      ; 0x001e
    jne short @..local.l2            ; 0x0023
    call api_idx_004a_2              ; 0x0025
@..local.l2:
    cmp word [bss_830a], byte 0x18   ; 0x0028
    jne short @..local.l3            ; 0x002d
    call api_idx_004a                ; 0x002f
@..local.l3:
    mov ax, 0                        ; 0x0032
    ret                              ; 0x0035
%include "vbase/api_idx_0002.asm"          ; 0x0036

%include "vbase/api_idx_0004.asm"          ; 0x00b5

%include "vbase/api_idx_0016.asm"          ; 0x0559

%include "vbase/api_idx_0006.asm"          ; 0x05b6

%include "vbase/api_idx_0038.asm"          ; 0x0606

%include "vbase/api_idx_0008.asm"          ; 0x0d3f

%include "vbase/api_idx_0028.asm"          ; 0x0ef7

%include "vbase/api_idx_004c.asm"          ; 0x156e

%include "vbase/leaf_loc_182b.asm"         ; 0x182b

%include "vbase/leaf_loc_1838.asm"         ; 0x1838

%include "vbase/leaf_loc_183c.asm"         ; 0x183c

%include "vbase/leaf_loc_1840.asm"         ; 0x1840

%include "vbase/leaf_loc_184d.asm"         ; 0x184d

%include "vbase/leaf_loc_185a.asm"         ; 0x185a

%include "vbase/leaf_loc_188f.asm"         ; 0x188f

%include "vbase/leaf_loc_189c.asm"         ; 0x189c

%include "vbase/leaf_loc_18a9.asm"         ; 0x18a9

%include "vbase/leaf_loc_18ad.asm"         ; 0x18ad

%include "vbase/leaf_loc_18ba.asm"         ; 0x18ba

%include "vbase/leaf_loc_1a1e.asm"         ; 0x1a1e

%include "vbase/leaf_loc_1a22.asm"         ; 0x1a22

%include "vbase/leaf_loc_1a26.asm"         ; 0x1a26

%include "vbase/leaf_loc_1a2a.asm"         ; 0x1a2a

%include "vbase/leaf_loc_1a2e.asm"         ; 0x1a2e

%include "vbase/leaf_loc_1a32.asm"         ; 0x1a32

%include "vbase/leaf_loc_1a36.asm"         ; 0x1a36

%include "vbase/leaf_loc_1a3a.asm"         ; 0x1a3a

%include "vbase/leaf_loc_1a3e.asm"         ; 0x1a3e

%include "vbase/leaf_loc_1a42.asm"         ; 0x1a42

%include "vbase/leaf_loc_1a46.asm"         ; 0x1a46

%include "vbase/leaf_loc_1a4a.asm"         ; 0x1a4a

%include "vbase/leaf_loc_1a4e.asm"         ; 0x1a4e

%include "vbase/leaf_loc_1a52.asm"         ; 0x1a52

%include "vbase/leaf_loc_1a56.asm"         ; 0x1a56

%include "vbase/leaf_loc_1a5a.asm"         ; 0x1a5a

%include "vbase/leaf_loc_1a5e.asm"         ; 0x1a5e

%include "vbase/leaf_loc_1a62.asm"         ; 0x1a62

%include "vbase/leaf_loc_1a66.asm"         ; 0x1a66

%include "vbase/leaf_loc_1a6a.asm"         ; 0x1a6a

%include "vbase/leaf_loc_1a6e.asm"         ; 0x1a6e

%include "vbase/leaf_loc_1a72.asm"         ; 0x1a72

%include "vbase/leaf_loc_1a76.asm"         ; 0x1a76

%include "vbase/leaf_loc_1a7a.asm"         ; 0x1a7a

%include "vbase/leaf_loc_1a7e.asm"         ; 0x1a7e

%include "vbase/leaf_loc_1a82.asm"         ; 0x1a82

%include "vbase/leaf_loc_1a86.asm"         ; 0x1a86

%include "vbase/leaf_loc_1a8a.asm"         ; 0x1a8a

%include "vbase/leaf_loc_1a8e.asm"         ; 0x1a8e

%include "vbase/leaf_loc_1a92.asm"         ; 0x1a92

%include "vbase/leaf_loc_1a96.asm"         ; 0x1a96

%include "vbase/leaf_loc_1a9a.asm"         ; 0x1a9a

%include "vbase/leaf_loc_1a9e.asm"         ; 0x1a9e

%include "vbase/leaf_loc_1aa2.asm"         ; 0x1aa2

%include "vbase/leaf_loc_1aa6.asm"         ; 0x1aa6

%include "vbase/leaf_loc_1aaa.asm"         ; 0x1aaa

%include "vbase/leaf_loc_1aae.asm"         ; 0x1aae

%include "vbase/leaf_loc_1ab2.asm"         ; 0x1ab2

%include "vbase/leaf_loc_1ab6.asm"         ; 0x1ab6

%include "vbase/leaf_loc_1aba.asm"         ; 0x1aba

%include "vbase/leaf_loc_1abe.asm"         ; 0x1abe

%include "vbase/leaf_loc_1ac2.asm"         ; 0x1ac2

%include "vbase/leaf_loc_1ac6.asm"         ; 0x1ac6

%include "vbase/leaf_loc_1aca.asm"         ; 0x1aca

%include "vbase/leaf_loc_1ace.asm"         ; 0x1ace

%include "vbase/leaf_loc_1ad2.asm"         ; 0x1ad2

%include "vbase/leaf_loc_1ad6.asm"         ; 0x1ad6

%include "vbase/leaf_loc_1ada.asm"         ; 0x1ada

%include "vbase/leaf_loc_1ade.asm"         ; 0x1ade

%include "vbase/leaf_loc_1ae2.asm"         ; 0x1ae2

%include "vbase/leaf_loc_1ae6.asm"         ; 0x1ae6

%include "vbase/leaf_loc_1aea.asm"         ; 0x1aea

%include "vbase/leaf_loc_1aee.asm"         ; 0x1aee

%include "vbase/leaf_loc_1af2.asm"         ; 0x1af2

%include "vbase/leaf_loc_1af6.asm"         ; 0x1af6

%include "vbase/leaf_loc_1afa.asm"         ; 0x1afa

%include "vbase/leaf_loc_1afe.asm"         ; 0x1afe

%include "vbase/leaf_loc_1b02.asm"         ; 0x1b02

%include "vbase/leaf_loc_1b06.asm"         ; 0x1b06

%include "vbase/leaf_loc_1b0a.asm"         ; 0x1b0a

%include "vbase/leaf_loc_1b0e.asm"         ; 0x1b0e

%include "vbase/leaf_loc_1b12.asm"         ; 0x1b12

%include "vbase/leaf_loc_1b16.asm"         ; 0x1b16

%include "vbase/leaf_loc_1b1a.asm"         ; 0x1b1a

%include "vbase/leaf_loc_1b1e.asm"         ; 0x1b1e

%include "vbase/leaf_loc_1b22.asm"         ; 0x1b22

%include "vbase/leaf_loc_1b26.asm"         ; 0x1b26

%include "vbase/leaf_loc_1b2a.asm"         ; 0x1b2a

%include "vbase/leaf_loc_1b2e.asm"         ; 0x1b2e

%include "vbase/leaf_loc_1b32.asm"         ; 0x1b32

%include "vbase/leaf_loc_1b36.asm"         ; 0x1b36

%include "vbase/leaf_loc_1b3a.asm"         ; 0x1b3a

%include "vbase/leaf_loc_1b3e.asm"         ; 0x1b3e

%include "vbase/leaf_loc_1b42.asm"         ; 0x1b42

%include "vbase/leaf_loc_1b46.asm"         ; 0x1b46

%include "vbase/leaf_loc_1b4a.asm"         ; 0x1b4a

%include "vbase/leaf_loc_1b4e.asm"         ; 0x1b4e

%include "vbase/leaf_loc_1b52.asm"         ; 0x1b52

%include "vbase/leaf_loc_1b56.asm"         ; 0x1b56

%include "vbase/api_idx_0004_2.asm"        ; 0x1c80

%include "vbase/api_idx_0040.asm"          ; 0x1f6f

%include "vbase/api_idx_0072.asm"          ; 0x1faf

%include "vbase/leaf_loc_25da.asm"         ; 0x25da

%include "vbase/leaf_loc_25e2.asm"         ; 0x25e2

%include "vbase/leaf_loc_25ea.asm"         ; 0x25ea

%include "vbase/leaf_loc_25f2.asm"         ; 0x25f2

%include "vbase/leaf_loc_25fa.asm"         ; 0x25fa

%include "vbase/leaf_loc_2602.asm"         ; 0x2602

%include "vbase/leaf_loc_260a.asm"         ; 0x260a

%include "vbase/leaf_loc_2612.asm"         ; 0x2612

%include "vbase/leaf_loc_261a.asm"         ; 0x261a

%include "vbase/leaf_loc_2622.asm"         ; 0x2622

%include "vbase/leaf_loc_2629.asm"         ; 0x2629

%include "vbase/leaf_loc_2630.asm"         ; 0x2630

%include "vbase/leaf_loc_2637.asm"         ; 0x2637

%include "vbase/leaf_loc_263e.asm"         ; 0x263e

%include "vbase/leaf_loc_2645.asm"         ; 0x2645

%include "vbase/leaf_loc_264c.asm"         ; 0x264c

%include "vbase/leaf_loc_2653.asm"         ; 0x2653

%include "vbase/leaf_loc_265a.asm"         ; 0x265a

%include "vbase/leaf_loc_2a85.asm"         ; 0x2a85

%include "vbase/leaf_loc_2a8d.asm"         ; 0x2a8d

%include "vbase/leaf_loc_2a95.asm"         ; 0x2a95

%include "vbase/leaf_loc_2a9d.asm"         ; 0x2a9d

%include "vbase/leaf_loc_2aa5.asm"         ; 0x2aa5

%include "vbase/leaf_loc_2ab1.asm"         ; 0x2ab1

%include "vbase/leaf_loc_2ab8.asm"         ; 0x2ab8

%include "vbase/leaf_loc_2ac4.asm"         ; 0x2ac4

%include "vbase/leaf_loc_2acb.asm"         ; 0x2acb

%include "vbase/leaf_loc_2ad2.asm"         ; 0x2ad2

%include "vbase/leaf_loc_2ad9.asm"         ; 0x2ad9

%include "vbase/api_idx_0038_2.asm"        ; 0x2fef

%include "vbase/api_idx_004e.asm"          ; 0x388c

%include "vbase/api_idx_0002_2.asm"        ; 0x3fac

%include "vbase/api_idx_000c.asm"          ; 0x4060

%include "vbase/api_idx_0050.asm"          ; 0x41e7

%include "vbase/api_idx_0052.asm"          ; 0x4335

%include "vbase/api_idx_0052_2.asm"        ; 0x4826

%include "vbase/api_idx_0062.asm"          ; 0x4b95

%include "vbase/string_loc_5703.asm"       ; 0x5703

%include "vbase/string_loc_570b.asm"       ; 0x570b

%include "vbase/string_loc_5712.asm"       ; 0x5712

%include "vbase/string_loc_5719.asm"       ; 0x5719

%include "vbase/string_loc_5720.asm"       ; 0x5720

%include "vbase/string_loc_5727.asm"       ; 0x5727

%include "vbase/string_loc_572e.asm"       ; 0x572e

%include "vbase/string_loc_5735.asm"       ; 0x5735

%include "vbase/string_loc_573c.asm"       ; 0x573c

%include "vbase/string_loc_5743.asm"       ; 0x5743

%include "vbase/string_loc_574a.asm"       ; 0x574a

%include "vbase/string_loc_5784.asm"       ; 0x5784

%include "vbase/string_loc_579d.asm"       ; 0x579d

%include "vbase/string_loc_57a4.asm"       ; 0x57a4

%include "vbase/string_loc_57ab.asm"       ; 0x57ab

%include "vbase/string_loc_57b2.asm"       ; 0x57b2

%include "vbase/string_loc_57b9.asm"       ; 0x57b9

%include "vbase/string_loc_57c0.asm"       ; 0x57c0

%include "vbase/string_loc_57c7.asm"       ; 0x57c7

%include "vbase/leaf_loc_57fd.asm"         ; 0x57fd

%include "vbase/leaf_loc_5816.asm"         ; 0x5816

%include "vbase/leaf_loc_581d.asm"         ; 0x581d

%include "vbase/leaf_loc_5824.asm"         ; 0x5824

%include "vbase/leaf_loc_582b.asm"         ; 0x582b

%include "vbase/leaf_loc_5832.asm"         ; 0x5832

%include "vbase/leaf_loc_5839.asm"         ; 0x5839

%include "vbase/leaf_loc_5840.asm"         ; 0x5840

%include "vbase/leaf_loc_5876.asm"         ; 0x5876

%include "vbase/api_idx_0006_2.asm"        ; 0x61db

%include "vbase/api_idx_00aa.asm"          ; 0x62e5

%include "vbase/api_idx_0004_3.asm"        ; 0x6665

%include "vbase/api_idx_0002_3.asm"        ; 0x6756

%include "vbase/api_idx_0002_4.asm"        ; 0x6800

%include "vbase/api_idx_004a.asm"          ; 0x68bd

%include "vbase/api_idx_004a_2.asm"        ; 0x6a0f

%include "vbase/api_idx_0004_4.asm"        ; 0x6c87

%include "vbase/api_idx_0004_5.asm"        ; 0x6cd0

%include "vbase/api_idx_0004_6.asm"        ; 0x6d1f

%include "vbase/api_idx_0004_7.asm"        ; 0x6f16

%include "vbase/api_idx_0002_5.asm"        ; 0x6fda

%include "vbase/api_idx_0002_6.asm"        ; 0x706d

%include "vbase/api_idx_0016_2.asm"        ; 0x72d0

%include "vbase/api_idx_000a.asm"          ; 0x7340

%include "vbase/api_idx_000a_2.asm"        ; 0x737d

%include "vbase/api_idx_000a_3.asm"        ; 0x7415

%include "vbase/api_idx_0002_7.asm"        ; 0x8756

%include "vbase/api_idx_0002_8.asm"        ; 0x8881

%include "vbase/api_idx_0002_9.asm"        ; 0x8b69

%include "vbase/api_idx_0002_10.asm"       ; 0x8ca3

%include "vbase/api_idx_0002_11.asm"       ; 0x8d84

%include "vbase/api_idx_0002_12.asm"       ; 0x8e6b

%include "vbase/api_idx_0002_13.asm"       ; 0x8f74

%include "vbase/string_loc_9330.asm"       ; 0x9330

%include "vbase/leaf_loc_936e.asm"         ; 0x936e

%include "vbase/aztec_strcmp.asm"          ; 0x9386

%include "vbase/aztec_strncmp.asm"         ; 0x93a4

%include "vbase/string_loc_93e3.asm"       ; 0x93e3

