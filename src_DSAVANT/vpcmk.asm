; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpcmk.inc"
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
    dw (__zdata_start - __zcode_start)           ; 0x7023 ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x048c ; o_dsize: initialized data size
    dw 0x0268                                    ; o_bss: uninitialized data size
    dw string_loc_SMLM - IMAGE_BASE + __zres_end ; 0xbfd3 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_NSMG equ 0x4267 + VBASE
string_loc_436e equ 0x436e + VBASE
string_loc_5a60 equ 0x5a60 + VBASE
string_loc_5cb4 equ 0x5cb4 + VBASE
loc_RGUR equ 0x6e5f + VBASE

%include "vpcmk/loc_QQGQ.asm"              ; 0x000e

%include "shared/api_idx_0002_OOKN.asm"     ; 0x0021

%include "shared/api_idx_0002_SJMT.asm"     ; 0x0085

%include "shared/api_idx_0008_LLVT.asm"     ; 0x0104

%include "vpcmk/api_idx_0008_VRRI.asm"     ; 0x02bc

%include "vpcmk/loc_TRPK.asm"              ; 0x0445

%include "shared/api_idx_0058_GKGM.asm"     ; 0x0935

%include "vpcmk/api_idx_0038_LTUV.asm"     ; 0x0abb

%include "vpcmk/api_idx_0026_NRVO.asm"     ; 0x11f4

%include "shared/draw_party_slot_letters.asm" ; 0x16ea

api_idx_0004_RMVO.bss1 equ bss_953a
api_idx_0004_RMVO.bss2 equ bss_9538
%include "shared/api_idx_0004_RMVO.asm"     ; 0x1769

%include "shared/api_idx_0002_TIUI.asm"     ; 0x1819

%include "shared/api_idx_0002_UIHS.asm"     ; 0x1874

%include "vpcmk/api_idx_0010_GGGV.asm"     ; 0x18b5

%include "vpcmk/api_idx_0002_SSJN.asm"     ; 0x19ab

api_idx_000a_TITQ.bss1 equ bss_9542
api_idx_000a_TITQ.bss2 equ bss_9540
api_idx_000a_TITQ.bss3 equ bss_95aa
api_idx_000a_TITQ.bss4 equ bss_95ac
%include "shared/api_idx_000a_TITQ.asm"     ; 0x1a98

%include "vpcmk/api_idx_0054_RLST.asm"     ; 0x1b40

%include "shared/api_idx_0004_PMIU.asm"     ; 0x2090

%include "vpcmk/api_idx_0004_GRKI.asm"     ; 0x2144

%include "vpcmk/api_idx_0004_PTIQ.asm"     ; 0x2273

api_idx_0002_OGRO.bss1 equ bss_952e
api_idx_0002_OGRO.bss2 equ bss_952c
%include "shared/api_idx_0002_OGRO.asm"     ; 0x24c8

%include "vpcmk/api_idx_002e_JGHT.asm"     ; 0x2582

%include "vpcmk/api_idx_0032_HGIM.asm"     ; 0x26f1

%include "vpcmk/api_idx_0088_QLNT.asm"     ; 0x2c15

%include "vpcmk/api_idx_0004_VQQR.asm"     ; 0x2d63

%include "vpcmk/api_idx_000a_PQSU.asm"     ; 0x2dd4

%include "shared/loc_PTRP.asm"              ; 0x2e12

%include "vpcmk/loc_HRLN.asm"              ; 0x2e9e

%include "shared/api_idx_000c_JQMN.asm"     ; 0x2f3f

loc_SRQQ.bss1     equ bss_976c
loc_SRQQ.api_idx1 equ api_idx_000a_PQSU
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x2fd8

%include "vpcmk/api_idx_0050_NHHL.asm"     ; 0x3069

%include "vpcmk/api_idx_006e_LVOK.asm"     ; 0x3d59

loc_TTSP.bss1 equ bss_976c
loc_TTSP.bss2 equ bss_95ae
%include "shared/loc_TTSP.asm"              ; 0x3f87

%include "vpcmk/api_idx_0002_IRKS.asm"     ; 0x402d

%include "vpcmk/api_idx_0006_MKGN.asm"     ; 0x4081

%include "vpcmk/loc_JKKS.asm"              ; 0x4107

%include "vpcmk/api_idx_0002_MPHM.asm"     ; 0x4291

%include "vpcmk/loc_MMIM.asm"              ; 0x42b8

%include "vpcmk/loc_UQRH.asm"              ; 0x4311

%include "vpcmk/loc_HGUJ.asm"              ; 0x4392

%include "vpcmk/api_idx_007a_GTOG.asm"     ; 0x43bb

%include "vpcmk/api_idx_007a_HMNU.asm"     ; 0x4498

%include "vpcmk/api_idx_007c_MIHQ.asm"     ; 0x4585

%include "vpcmk/api_idx_006c_JNMM.asm"     ; 0x4697

%include "vpcmk/api_idx_0008_VHMQ.asm"     ; 0x4934

%include "vpcmk/loc_RPNT.asm"              ; 0x4aa1

%include "vpcmk/api_idx_0002_SLKJ.asm"     ; 0x4ade

%include "vpcmk/api_idx_004e_ITVQ.asm"     ; 0x4b05

%include "vpcmk/loc_LTLR.asm"              ; 0x4c82

%include "shared/loc_NJOH.asm"              ; 0x4ead

%include "shared/api_idx_0006_VJKJ.asm"     ; 0x4f00

%include "shared/api_idx_0002_KQIK.asm"     ; 0x4f95

%include "vpcmk/api_idx_0004_GHPT.asm"     ; 0x5087

%include "vpcmk/api_idx_001c_ITKQ.asm"     ; 0x5580

%include "vpcmk/api_idx_0002_USJO.asm"     ; 0x56b0

%include "vpcmk/loc_RMSR.asm"              ; 0x5706

%include "vpcmk/string_loc_PPRO.asm"       ; 0x5a0b

%include "vpcmk/api_idx_000a_HMMT.asm"     ; 0x5a8a

%include "shared/loc_OIOJ.asm"              ; 0x5d7e

%include "vpcmk/api_idx_0004_QSJP.asm"     ; 0x5df5

%include "vpcmk/api_idx_0016_JNJG.asm"     ; 0x6083

%include "vpcmk/api_idx_0006_HMNQ.asm"     ; 0x60e0

%include "vpcmk/api_idx_0002_IVMI.asm"     ; 0x626e

%include "vpcmk/loc_MIPR.asm"              ; 0x62fb

%include "vpcmk/api_idx_0002_RUKQ.asm"     ; 0x65fc

%include "vpcmk/loc_TLLM.asm"              ; 0x6626

%include "vpcmk/api_idx_0014_LVIL.asm"     ; 0x6673

%include "vpcmk/loc_TUUJ.asm"              ; 0x66c3

%include "vpcmk/api_idx_002c_JIHO.asm"     ; 0x6738

%include "vpcmk/loc_RNSM.asm"              ; 0x67e2

%include "vpcmk/api_idx_0018_MVRH.asm"     ; 0x67ff

%include "vpcmk/api_idx_0006_JHIT.asm"     ; 0x6887

%include "vpcmk/loc_PVJJ.asm"              ; 0x68fa

%include "vpcmk/api_idx_002c_NHRR.asm"     ; 0x6a3f

%include "vpcmk/asm_only/string_loc_SMLM.asm"       ; 0x6f8c

aztec_strcmp.loc1 equ loc_OSRT
%include "shared/aztec_strcmp.asm"          ; 0x6fca

loc_OTSS equ aztec_strncmp.loc1
%include "shared/aztec_strncmp.asm"         ; 0x6fe8

__zdata_start:

    db 'PCFILE.DBS', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x25, 0x20, 0x00
    db '1111111110', 0
    db '11100000', 0
    db '000000', 0
    db '1111000000', 0
    db '1000111100', 0
    db '11101000', 0
    db '000000', 0
    db '1111000010', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101111', 0
    db '000000', 0
    db '1111000000', 0
    db '1111111110', 0
    db '11100111', 0
    db '000000', 0
    db '1111010000', 0
    db '1001110000', 0
    db '11100000', 0
    db '000000', 0
    db '1111010000', 0
    db '1111111110', 0
    db '11111111', 0
    db '000000', 0
    db '1111000010', 0
    db '1001111000', 0
    db '11101000', 0
    db '000000', 0
    db '1111000100', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111001000', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101010', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101000', 0
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
    db 0x2a, 0x2a, 0x2a, 0x00
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
    db 'ACBCBCCCCHCHBA', 0
    db '02222232112230', 0
    db 'ACCCCDCCCHHKDA', 0
    db '02222232123230', 0
    db 'ACCCCDCCCIFKEA', 0
    db '02222232121230', 0
    db 'ACHCHDCCCHFIDA', 0
    db '02323232111230', 0
    db 'ACKCHHGCCIECBA', 0
    db '02322322121220', 0
    db 'ACBCCDECCEEEGA', 0
    db '02121212111330', 0
    db 'ACICIBHCCFKFFA', 0
    db '02323112113330', 0
    db 'ACECCEGCCIFKFA', 0
    db '02222222122220', 0
    db 'ACKCGDHCCFKIDA', 0
    db '02322212112320', 0
    db 'ACHCHHGCCCECHA', 0
    db '02322322112230', 0
    db 'PORTDATA.VGA', 0
    db 'PCFILE.DBS', 0
    db 'PCFILE.DBS', 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0


__zimage_end:
