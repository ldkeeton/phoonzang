; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vmexe.inc"
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
    dw (__zdata_start - __zcode_start)           ; 0xa537 ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x0024 ; o_dsize: initialized data size
    dw 0x0120                                    ; o_bss: uninitialized data size
    dw string_loc_HOGS - IMAGE_BASE + __zres_end ; 0xf511 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_735e equ 0x735e + VBASE
loc_81ba equ 0x81ba + VBASE
loc_81bc equ 0x81bc + VBASE
data_b0cb equ 0xb0cb

%include "lib/api_idx_0002_MMNR.asm"     ; 0x000e

%include "vmexe/api_idx_0004_NQOV.asm"     ; 0x0034

%include "vmexe/asm_only/api_idx_0012_NOUI.asm"     ; 0x00db

%include "lib/api_idx_0008_IUTV.asm"     ; 0x0257

%include "vmexe/api_idx_0004_RIUU.asm"     ; 0x030b

%include "lib/api_idx_000a_JKVP.asm"     ; 0x0456

%include "lib/api_idx_000e_TGQN.asm"     ; 0x0656

%include "lib/api_idx_0004_HHQR.asm"     ; 0x0979

%include "lib/api_idx_001c_TROI.asm"     ; 0x0a83

%include "vmexe/api_idx_000e_SVUU.asm"     ; 0x0cc9

%include "vmexe/api_idx_0016_SVUH.asm"     ; 0x0e1a

%include "vmexe/api_idx_0002_GVSN.asm"     ; 0x1642

%include "vmexe/api_idx_0050_MLPI.asm"     ; 0x169d

%include "vmexe/api_idx_0004_MHSG.asm"     ; 0x16c1

%include "vmexe/asm_only/api_idx_000e_SLLL.asm"     ; 0x178e

%include "vmexe/api_idx_0006_RITV.asm"     ; 0x18a8

%include "vmexe/api_idx_0004_LIRS.asm"     ; 0x1a5f

%include "lib/api_idx_000a_TPMU.asm"     ; 0x1ac7

%include "vmexe/api_idx_0004_VVKL.asm"     ; 0x1b45

%include "vmexe/api_idx_0004_TKLP.asm"     ; 0x1c5e

%include "vmexe/api_idx_0002_TPHO.asm"     ; 0x1f00

%include "vmexe/api_idx_0002_RRLU.asm"     ; 0x1f98

%include "vmexe/asm_only/api_idx_0006_PJKL.asm"     ; 0x209c

%include "vmexe/api_idx_0022_MLKI.asm"     ; 0x2242

%include "vmexe/api_idx_0004_MIJI.asm"     ; 0x24f0

%include "vmexe/api_idx_0006_QJLT.asm"     ; 0x25d0

%include "vmexe/api_idx_0010_KILS.asm"     ; 0x265f

%include "vmexe/api_idx_000a_SUST.asm"     ; 0x28e1

%include "vmexe/api_idx_000a_TIQR.asm"     ; 0x2998

%include "vmexe/api_idx_000e_JGRL.asm"     ; 0x2a8b

%include "vmexe/api_idx_0002_IVLS.asm"     ; 0x2bf2

%include "vmexe/api_idx_0006_KIGR.asm"     ; 0x2c7b

%include "vmexe/api_idx_0002_MUNP.asm"     ; 0x2d6b

%include "vmexe/api_idx_0010_NSVR.asm"     ; 0x2e59

%include "vmexe/api_idx_0006_IPRL.asm"     ; 0x312e

%include "vmexe/api_idx_0004_MUPU.asm"     ; 0x33e2

%include "vmexe/api_idx_005e_TKSP.asm"     ; 0x34bc

%include "vmexe/asm_only/string_loc_NNVJ.asm"       ; 0x3620

%include "vmexe/asm_only/api_idx_000e_RHUK.asm"     ; 0x3b07

%include "vmexe/api_idx_000e_NIGL.asm"     ; 0x5fa1

%include "vmexe/api_idx_0004_VSGP.asm"     ; 0x6374

%include "vmexe/api_idx_0008_LGLV.asm"     ; 0x63cd

%include "vmexe/api_idx_0014_HVQT.asm"     ; 0x6476

%include "vmexe/api_idx_000c_RQPT.asm"     ; 0x6f33

%include "vmexe/api_idx_0004_LNPP.asm"     ; 0x73f6

%include "vmexe/asm_only/api_idx_000a_GGIV.asm"     ; 0x7434

%include "vmexe/asm_only/api_idx_000c_GQJI.asm"     ; 0x7911

%include "vmexe/asm_only/api_idx_00ac_TVQO.asm"     ; 0x7962

%include "vmexe/leaf_loc_QOMU.asm"         ; 0x87b7

%include "vmexe/leaf_loc_IIGQ.asm"         ; 0x87ba

%include "vmexe/leaf_loc_OIKI.asm"         ; 0x87c9

%include "vmexe/leaf_loc_RGRP.asm"         ; 0x87d5

%include "vmexe/leaf_loc_RSTO.asm"         ; 0x87e5

%include "vmexe/leaf_loc_NNRM.asm"         ; 0x87f8

%include "vmexe/leaf_loc_NPSR.asm"         ; 0x8800

%include "vmexe/leaf_loc_TKNT.asm"         ; 0x8813

%include "vmexe/leaf_loc_OSJO.asm"         ; 0x8827

%include "vmexe/api_idx_0006_NPVH.asm"     ; 0x908d

%include "vmexe/api_idx_000e_VJLR.asm"     ; 0x91b5

%include "vmexe/api_idx_0006_NIJH.asm"     ; 0x989b

%include "vmexe/api_idx_0010_HHTV.asm"     ; 0x9a2f

%include "vmexe/api_idx_0006_HKPI.asm"     ; 0x9e5d

%include "vmexe/api_idx_005a_PTHK.asm"     ; 0x9f4f

%include "vmexe/asm_only/string_loc_HOGS.asm"       ; 0xa4ca

%include "lib/leaf_loc_VKIM.asm"         ; 0xa508

%include "vmexe/asm_only/string_loc_SINO.asm"       ; 0xa520

__zdata_start:

    db 'V1.$$$', 0
    db 'V2.$$$', 0
    db 'MON00.PIC', 0
    times 12 db 0


__zimage_end:
