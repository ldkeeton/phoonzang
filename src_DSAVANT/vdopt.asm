; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vdopt.inc"
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
    dw 0x00f2                             ; o_magic: overlay signature (0x00f2)
    dw __zres_end                         ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)    ; 0x4721 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x001e ; o_dsize: initialized data size
    dw 0x0cde                             ; o_bss: uninitialized data size
    dw loc_QVSH - IMAGE_BASE + __zres_end ; 0x9720 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vdopt/loc_QIIH.asm"              ; 0x000e

%include "shared/loc_MPHO.asm"              ; 0x00a5

%include "shared/api_idx_0004_QVPP.asm"     ; 0x00df

%include "shared/api_idx_0002_KQPU.asm"     ; 0x019b

%include "shared/api_idx_002a_SRJL.asm"     ; 0x020b

%include "shared/loc_RULJ.asm"              ; 0x02b4

api_idx_0004_TTGQ.loc1 equ loc_RULJ
%include "shared/api_idx_0004_TTGQ.asm"     ; 0x02c3

%include "shared/api_idx_0006_POPS.asm"     ; 0x030c

%include "vdopt/api_idx_0004_PSJH.asm"     ; 0x0382

%include "vdopt/api_idx_0002_NNOS.asm"     ; 0x0473

%include "vdopt/loc_HHMH.asm"              ; 0x04b7

%include "vdopt/api_idx_0058_TVSV.asm"     ; 0x0565

%include "vdopt/api_idx_0002_TPQM.asm"     ; 0x065b

%include "vdopt/api_idx_000e_NMLJ.asm"     ; 0x06e8

loc_NJKS.loc1 equ loc_UOPP
loc_NJKS.loc2 equ loc_KHGO
%include "shared/loc_NJKS.asm"              ; 0x08b9

%include "vdopt/loc_MOTJ.asm"              ; 0x095a

%include "vdopt/api_idx_0014_KHON.asm"     ; 0x09c0

%include "vdopt/leaf_loc_JQTI_0d80.asm"    ; 0x0d80

%include "vdopt/leaf_loc_JQTI_0d88.asm"    ; 0x0d88

%include "vdopt/leaf_loc_JQTI_0d90.asm"    ; 0x0d90

%include "vdopt/leaf_loc_GJTT.asm"         ; 0x0d98

%include "vdopt/leaf_loc_JQTI_0e80.asm"    ; 0x0e80

%include "vdopt/leaf_loc_JQTI_0e88.asm"    ; 0x0e88

%include "vdopt/leaf_loc_JQTI_0e90.asm"    ; 0x0e90

%include "vdopt/leaf_loc_GQQU.asm"         ; 0x0e98

%include "vdopt/loc_GTJK.asm"              ; 0x0ede

%include "vdopt/loc_TIPV.asm"              ; 0x0f52

%include "vdopt/api_idx_000a_GMJG.asm"     ; 0x0f7f

%include "vdopt/api_idx_0012_VVJL.asm"     ; 0x0fd3

%include "vdopt/leaf_loc_STTR.asm"         ; 0x1499

%include "vdopt/api_idx_000a_KGLQ.asm"     ; 0x190b

%include "vdopt/api_idx_0002_OHVL.asm"     ; 0x195b

%include "vdopt/api_idx_00fa_RIMJ.asm"     ; 0x1a5d

%include "shared/loc_QQUT.asm"              ; 0x1c7f

%include "vdopt/asm_only/api_idx_0008_JRPS.asm"     ; 0x1ccf

%include "vdopt/api_idx_000c_RLKV.asm"     ; 0x238d

%include "shared/draw_party_slot_letters.asm" ; 0x25a8

%include "shared/api_idx_0002_TIUI.asm"     ; 0x2627

%include "vdopt/api_idx_0004_MNVO.asm"     ; 0x2682

%include "vdopt/api_idx_000a_PJMQ.asm"     ; 0x26f3

%include "shared/loc_PTRP.asm"              ; 0x2731

%include "vdopt/loc_TJJR.asm"              ; 0x27bd

%include "shared/api_idx_000c_JQMN.asm"     ; 0x285e

loc_SRQQ.bss1     equ bss_9b5e
loc_SRQQ.api_idx1 equ api_idx_000a_PJMQ
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x28f7

%include "vdopt/api_idx_0044_PIIP.asm"     ; 0x2988

%include "shared/api_idx_0008_RQRL.asm"     ; 0x362f

%include "shared/api_idx_0004_UJRL.asm"     ; 0x36bb

%include "shared/api_idx_0018_RGOS.asm"     ; 0x378c

%include "vdopt/api_idx_0004_PNVH.asm"     ; 0x3889

loc_HTKI.api_idx1 equ api_idx_0004_PNVH
%include "shared/loc_HTKI.asm"              ; 0x39eb

%include "vdopt/api_idx_0038_QQIU.asm"     ; 0x3a2c

%include "vdopt/api_idx_0094_LUVH.asm"     ; 0x417c

%include "vdopt/api_idx_0004_PMJJ.asm"     ; 0x45dd

%include "vdopt/asm_only/loc_QVSH.asm"              ; 0x46d9

%include "vdopt/asm_only/leaf_loc_MKTK.asm"         ; 0x4717


__zimage_end:
