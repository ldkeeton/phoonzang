; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpcvw.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0x9836 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x0348 ; o_dsize: initialized data size
    dw 0x0310                             ; o_bss: uninitialized data size
    dw loc_ILSJ - IMAGE_BASE + __zres_end ; 0xe835 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vpcvw/loc_HLJG.asm"              ; 0x000e

%include "shared/api_idx_0002_OOKN.asm"     ; 0x0027

%include "shared/api_idx_000e_TIOP.asm"     ; 0x008b

%include "vpcvw/asm_only/api_idx_0012_PJTU.asm"     ; 0x014b

%include "shared/api_idx_0004_PMIU.asm"     ; 0x02c7

%include "vpcvw/api_idx_000c_JRTV.asm"     ; 0x037b

%include "vpcvw/api_idx_0012_GQSK.asm"     ; 0x0521

%include "vpcvw/api_idx_0012_SHRT.asm"     ; 0x0781

%include "vpcvw/api_idx_0004_KVIP.asm"     ; 0x09a1

%include "vpcvw/api_idx_0012_MVLS.asm"     ; 0x0a96

%include "shared/draw_party_slot_letters.asm" ; 0x0cd6

api_idx_0004_RMVO.bss1 equ bss_9404
api_idx_0004_RMVO.bss2 equ bss_9402
%include "shared/api_idx_0004_RMVO.asm"     ; 0x0d55

%include "shared/api_idx_0002_TIUI.asm"     ; 0x0e05

%include "shared/api_idx_0002_UIHS.asm"     ; 0x0e60

%include "shared/api_idx_0010_STNH.asm"     ; 0x0ea1

api_idx_000a_TITQ.bss1 equ bss_940c
api_idx_000a_TITQ.bss2 equ bss_940a
api_idx_000a_TITQ.bss3 equ bss_942e
api_idx_000a_TITQ.bss4 equ bss_9430
%include "shared/api_idx_000a_TITQ.asm"     ; 0x0f9e

%include "vpcvw/asm_only/api_idx_007c_OKMO.asm"     ; 0x1046

%include "vpcvw/api_idx_009e_KPST.asm"     ; 0x1894

%include "vpcvw/api_idx_0008_SKNL.asm"     ; 0x1b17

%include "vpcvw/loc_UGOG.asm"              ; 0x1ca0

%include "vpcvw/loc_IIRG.asm"              ; 0x2190

%include "shared/loc_QQUT.asm"              ; 0x21ad

%include "vpcvw/asm_only/api_idx_0008_NOPG.asm"     ; 0x21fd

%include "vpcvw/api_idx_0004_NONK.asm"     ; 0x297e

%include "vpcvw/api_idx_000a_GGLT.asm"     ; 0x29ef

%include "shared/loc_PTRP.asm"              ; 0x2a2d

%include "vpcvw/loc_GPGU.asm"              ; 0x2ab9

%include "shared/api_idx_000c_JQMN.asm"     ; 0x2b5a

loc_SRQQ.bss1     equ bss_9562
loc_SRQQ.api_idx1 equ api_idx_000a_GGLT
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x2bf3

%include "vpcvw/api_idx_0050_QTGU.asm"     ; 0x2c84

%include "vpcvw/api_idx_0004_UUMM.asm"     ; 0x3974

%include "vpcvw/loc_NRTK.asm"              ; 0x3a6a

%include "vpcvw/api_idx_0004_UQRV.asm"     ; 0x3aac

%include "vpcvw/api_idx_0084_ILTP.asm"     ; 0x3b66

%include "vpcvw/api_idx_0004_VRNJ.asm"     ; 0x3c18

%include "vpcvw/api_idx_0056_QRVG.asm"     ; 0x3c7b

%include "vpcvw/loc_NKUR.asm"              ; 0x3cde

%include "vpcvw/api_idx_009e_ITUJ.asm"     ; 0x3cfe

loc_TTSP.bss1 equ bss_9562
loc_TTSP.bss2 equ bss_9432
%include "shared/loc_TTSP.asm"              ; 0x4011

%include "vpcvw/loc_JTQP.asm"              ; 0x40b7

%include "vpcvw/api_idx_0084_LRRN.asm"     ; 0x40ef

%include "vpcvw/api_idx_0048_RGQH.asm"     ; 0x4253

%include "vpcvw/api_idx_004e_LTSQ.asm"     ; 0x42e3

%include "vpcvw/api_idx_0002_MMTM.asm"     ; 0x435b

%include "vpcvw/api_idx_0002_IUPU.asm"     ; 0x4421

%include "vpcvw/api_idx_000e_OJVI.asm"     ; 0x4505

%include "vpcvw/api_idx_0002_VMLV.asm"     ; 0x4573

%include "vpcvw/leaf_loc_KOJL.asm"         ; 0x4589

%include "vpcvw/leaf_loc_MKJK.asm"         ; 0x45a3

leaf_loc_LHLU.loc1 equ loc_SKRT
%include "shared/leaf_loc_LHLU.asm"         ; 0x45ab

%include "vpcvw/leaf_loc_VHMP.asm"         ; 0x45b2

%include "vpcvw/api_idx_0056_KPMS.asm"     ; 0x468b

%include "vpcvw/loc_IHRL.asm"              ; 0x474b

%include "shared/api_idx_0004_GUSS.asm"     ; 0x4793

%include "vpcvw/api_idx_0048_RUIH.asm"     ; 0x4a1c

%include "vpcvw/asm_only/api_idx_0072_IPMP.asm"     ; 0x4a3f

%include "vpcvw/api_idx_0002_TJIU.asm"     ; 0x5006

%include "vpcvw/api_idx_0010_GVMH.asm"     ; 0x5050

%include "shared/api_idx_0008_RQRL.asm"     ; 0x539e

%include "shared/api_idx_0004_UJRL.asm"     ; 0x542a

%include "vpcvw/asm_only/api_idx_00c2_OUOT.asm"     ; 0x54fb

%include "vpcvw/api_idx_0014_VORK.asm"     ; 0x616c

%include "shared/api_idx_002a_STSK.asm"     ; 0x6977

api_idx_0080_MHMQ.bss1     equ bss_93fc
api_idx_0080_MHMQ.bss2     equ bss_93fa
api_idx_0080_MHMQ.bss3     equ bss_9400
api_idx_0080_MHMQ.bss4     equ bss_93fe
api_idx_0080_MHMQ.api_idx1 equ api_idx_0012_PJTU
%include "shared/api_idx_0080_MHMQ.asm"     ; 0x6a20

%include "shared/api_idx_0004_MKGU.asm"     ; 0x6c47

%include "vpcvw/api_idx_004c_LTUL.asm"     ; 0x6d13

%include "vpcvw/api_idx_009a_KOSH.asm"     ; 0x6f62

%include "vpcvw/api_idx_001a_OMIV.asm"     ; 0x706c

%include "vpcvw/loc_UUJO.asm"              ; 0x70ca

%include "vpcvw/leaf_loc_TLQQ.asm"         ; 0x7349

%include "vpcvw/leaf_loc_NQTG.asm"         ; 0x7375

%include "vpcvw/leaf_loc_VIMM.asm"         ; 0x738d

%include "vpcvw/leaf_loc_PGKP.asm"         ; 0x73a8

%include "vpcvw/io_loc_KVNJ.asm"           ; 0x73c5

%include "vpcvw/io_loc_LNKI.asm"           ; 0x73dd

%include "vpcvw/io_loc_JHIK.asm"           ; 0x73f9

%include "vpcvw/io_loc_JRGQ.asm"           ; 0x7410

%include "vpcvw/io_loc_KPVS.asm"           ; 0x7415

%include "vpcvw/api_idx_0004_IKOQ.asm"     ; 0x82da

%include "vpcvw/api_idx_0004_PONI.asm"     ; 0x8421

api_idx_0002_OGRO.bss1 equ bss_93f8
api_idx_0002_OGRO.bss2 equ bss_93f6
%include "shared/api_idx_0002_OGRO.asm"     ; 0x8676

%include "shared/api_idx_0058_GKGM.asm"     ; 0x8730

%include "shared/api_idx_0008_LLVT.asm"     ; 0x88b6

%include "vpcvw/api_idx_0026_QIGS.asm"     ; 0x8a6e

%include "vpcvw/api_idx_0002_VLGM.asm"     ; 0x8f64

%include "vpcvw/api_idx_0002_LTGI.asm"     ; 0x8fb8

%include "vpcvw/loc_PGKG.asm"              ; 0x902e

%include "vpcvw/api_idx_0002_RQOS.asm"     ; 0x91b2

%include "vpcvw/loc_SRNN.asm"              ; 0x91d9

%include "vpcvw/api_idx_0030_TGOH.asm"     ; 0x92b3

%include "vpcvw/api_idx_0016_TVKP.asm"     ; 0x9434

%include "vpcvw/api_idx_0022_PNPP.asm"     ; 0x9491

%include "vpcvw/api_idx_000e_ORVT.asm"     ; 0x96d5

%include "vpcvw/api_idx_0018_IGHI.asm"     ; 0x9740

%include "vpcvw/asm_only/loc_ILSJ.asm"              ; 0x97ee

%include "vpcvw/asm_only/leaf_loc_PVVV.asm"         ; 0x982c


    db 0x31, 0x30, 0x30, 0x30, 0x00
    db '000000', 0
    db '1111000011', 0
    db '1001111101', 0
    db '11101001', 0
    db '000000', 0
    db '1111000101', 0
    db '1111111111', 0
    db '11100111', 0
    db '000000', 0
    db '1111010001', 0
    db 'V.$$$', 0
    db 'MAAAAAAA', 0
    db 'AMAAAAAA', 0
    db 'AAMAAAIA', 0
    db 'AAAAMIAA', 0
    db 'KIILKIIA', 0
    db 'ANAANAAA', 0
    db 'AKAAMIMA', 0
    db 'KOAOAAKA', 0
    db 'KALLKLIA', 0
    db 'APPAAAIA', 0
    db 'MJMMJJOA', 0
    db 'MLAJMOIA', 0
    db 'NINAKNIA', 0
    db 'MKKMMMAA', 0
    db 'JIIJJIIA', 0
    db 'HKKHJJIA', 0
    db 'LGKMHHHA', 0
    db 'KHNKIGGA', 0
    db 'IHGJKHNA', 0
    db 'FLGGKOMA', 0
    db 'MFFOIKDA', 0
    db 'KHGMKIGA', 0
    db 'HKHHKMKA', 0
    db 'IGMKIIKA', 0
    db 'KKGKHHJA', 0
    db 'PORTDATA.VGA', 0
    times 10 db 0


__zimage_end:
