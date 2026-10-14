; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vbase.inc"
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
    dw (__zdata_start - __zcode_start)           ; 0x93df ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x012e ; o_dsize: initialized data size
    dw 0x143c                                    ; o_bss: uninitialized data size
    dw string_loc_9330 - IMAGE_BASE + __zres_end ; 0xe377 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_0d04 equ 0x0d04 + VBASE
loc_14d6 equ 0x14d6 + VBASE
loc_1795 equ 0x1795 + VBASE
leaf_loc_185e equ 0x185e + VBASE
loc_18c8 equ 0x18c8 + VBASE
loc_18ca equ 0x18ca + VBASE
leaf_loc_1949 equ 0x1949 + VBASE
loc_6e77 equ 0x6e77 + VBASE

loc_000e:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 7      ; 0x0014
    jne short @..loc_000e.l1         ; 0x0019
    call api_idx_0002_3              ; 0x001b
@..loc_000e.l1:
    cmp word [bss_830a], byte 4      ; 0x001e
    jne short @..loc_000e.l2         ; 0x0023
    call api_idx_004a_2              ; 0x0025
@..loc_000e.l2:
    cmp word [bss_830a], byte 0x18   ; 0x0028
    jne short @..loc_000e.l3         ; 0x002d
    call api_idx_004a                ; 0x002f
@..loc_000e.l3:
    mov ax, 0                        ; 0x0032
    ret                              ; 0x0035
%include "vbase/api_idx_0002.asm"          ; 0x0036

%include "vbase/api_idx_0004.asm"          ; 0x00b5

%include "vbase/api_idx_0016.asm"          ; 0x0559

%include "vbase/api_idx_0006.asm"          ; 0x05b6

%include "vbase/api_idx_0038.asm"          ; 0x0606

%include "lib/api_idx_0008_4b83.asm"          ; 0x0d3f

%include "vbase/api_idx_0028.asm"          ; 0x0ef7

%include "vbase/asm_only/api_idx_004c.asm"          ; 0x156e

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

%include "vbase/asm_only/api_idx_0038_2.asm"        ; 0x2fef

%include "vbase/asm_only/api_idx_004e.asm"          ; 0x388c

%include "vbase/api_idx_0002_2.asm"        ; 0x3fac

%include "vbase/api_idx_000c.asm"          ; 0x4060

%include "vbase/api_idx_0050.asm"          ; 0x41e7

%include "vbase/api_idx_0052.asm"          ; 0x4335

%include "vbase/api_idx_0052_2.asm"        ; 0x4826

%include "vbase/asm_only/api_idx_0062.asm"          ; 0x4b95

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

%include "vbase/asm_only/leaf_loc_5876.asm"         ; 0x5876

%include "vbase/asm_only/api_idx_0006_2.asm"        ; 0x61db

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

%include "lib/api_idx_0002_5.asm"        ; 0x6fda

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

%include "vbase/asm_only/string_loc_9330.asm"       ; 0x9330

%include "vbase/asm_only/leaf_loc_936e.asm"         ; 0x936e

%include "vbase/asm_only/aztec_strcmp.asm"          ; 0x9386

%include "vbase/asm_only/aztec_strncmp.asm"         ; 0x93a4

%include "vbase/asm_only/string_loc_93e3.asm"       ; 0x93e3


__zimage_end:
