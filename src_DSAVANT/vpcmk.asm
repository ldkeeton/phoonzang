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
    dw __zobss_end - __zimage_end                ; 0x0268 ; o_bss: uninitialized data size
    dw string_loc_SMLM - IMAGE_BASE + __zres_end ; 0xbfd3 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vpcmk/loc_QQGQ.asm"              ; 0x000e

%include "shared/api_idx_0002_OOKN.asm"     ; 0x0021

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
%include "shared/api_idx_0002_SJMT.asm"     ; 0x0085

%include "shared/api_idx_0008_LLVT.asm"     ; 0x0104

%include "vpcmk/api_idx_0008_VRRI.asm"     ; 0x02bc

%include "vpcmk/loc_TRPK.asm"              ; 0x0445

%include "shared/api_idx_0058_GKGM.asm"     ; 0x0935

%include "vpcmk/api_idx_0038_LTUV.asm"     ; 0x0abb

%include "vpcmk/api_idx_0026_NRVO.asm"     ; 0x11f4

%include "shared/draw_party_slot_letters.asm" ; 0x16ea

bss_9538 equ __zdseg_end + (__zobss_9538 - __zdata_start)
bss_953a equ __zdseg_end + (__zobss_953a - __zdata_start)
api_idx_0004_RMVO.bss1 equ bss_953a
api_idx_0004_RMVO.bss2 equ bss_9538
%include "shared/api_idx_0004_RMVO.asm"     ; 0x1769

%include "shared/api_idx_0002_TIUI.asm"     ; 0x1819

%include "shared/api_idx_0002_UIHS.asm"     ; 0x1874

%include "vpcmk/api_idx_0010_GGGV.asm"     ; 0x18b5

bss_953c equ __zdseg_end + (__zobss_953c - __zdata_start)
bss_953e equ __zdseg_end + (__zobss_953e - __zdata_start)
bss_9594 equ __zdseg_end + (__zobss_9594 - __zdata_start)
%include "vpcmk/api_idx_0002_SSJN.asm"     ; 0x19ab

bss_9540 equ __zdseg_end + (__zobss_9540 - __zdata_start)
bss_9542 equ __zdseg_end + (__zobss_9542 - __zdata_start)
bss_95aa equ __zdseg_end + (__zobss_95aa - __zdata_start)
bss_95ac equ __zdseg_end + (__zobss_95ac - __zdata_start)
api_idx_000a_TITQ.bss1 equ bss_9542
api_idx_000a_TITQ.bss2 equ bss_9540
api_idx_000a_TITQ.bss3 equ bss_95aa
api_idx_000a_TITQ.bss4 equ bss_95ac
%include "shared/api_idx_000a_TITQ.asm"     ; 0x1a98

bss_9524 equ __zdseg_end + (__zobss_9524 - __zdata_start)
bss_9526 equ __zdseg_end + (__zobss_9526 - __zdata_start)
bss_9528 equ __zdseg_end + (__zobss_9528 - __zdata_start)
bss_952a equ __zdseg_end + (__zobss_952a - __zdata_start)
; bss_95aa equ __zdseg_end + (__zobss_95aa - __zdata_start)
; bss_95ac equ __zdseg_end + (__zobss_95ac - __zdata_start)
bss_95ae equ __zdseg_end + (__zobss_95ae - __zdata_start)
%include "vpcmk/api_idx_0054_RLST.asm"     ; 0x1b40

%include "shared/api_idx_0004_PMIU.asm"     ; 0x2090

%include "vpcmk/api_idx_0004_GRKI.asm"     ; 0x2144

bss_95e8 equ __zdseg_end + (__zobss_95e8 - __zdata_start)
bss_95f4 equ __zdseg_end + (__zobss_95f4 - __zdata_start)
%include "vpcmk/api_idx_0004_SNNO.asm"     ; 0x2273

bss_952c equ __zdseg_end + (__zobss_952c - __zdata_start)
bss_952e equ __zdseg_end + (__zobss_952e - __zdata_start)
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

bss_976c equ __zdseg_end + (__zobss_976c - __zdata_start)
loc_SRQQ.bss1     equ bss_976c
loc_SRQQ.api_idx1 equ api_idx_000a_PQSU
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x2fd8

; bss_976c equ __zdseg_end + (__zobss_976c - __zdata_start)
%include "vpcmk/api_idx_0050_NHHL.asm"     ; 0x3069

%include "vpcmk/api_idx_006e_LVOK.asm"     ; 0x3d59

; bss_95ae equ __zdseg_end + (__zobss_95ae - __zdata_start)
; bss_976c equ __zdseg_end + (__zobss_976c - __zdata_start)
loc_TTSP.bss1 equ bss_976c
loc_TTSP.bss2 equ bss_95ae
%include "shared/loc_TTSP.asm"              ; 0x3f87

%include "vpcmk/api_idx_0002_IRKS.asm"     ; 0x402d

; bss_9594 equ __zdseg_end + (__zobss_9594 - __zdata_start)
%include "vpcmk/api_idx_0006_SKNL.asm"     ; 0x4081

%include "vpcmk/loc_UMTI.asm"              ; 0x4107

%include "vpcmk/api_idx_0002_MPHM.asm"     ; 0x4291

%include "vpcmk/loc_VQPO.asm"              ; 0x42b8

%include "vpcmk/loc_HGUJ.asm"              ; 0x4392

%include "vpcmk/api_idx_007a_GTOG.asm"     ; 0x43bb

%include "vpcmk/api_idx_007a_HMNU.asm"     ; 0x4498

%include "vpcmk/api_idx_007c_MIHQ.asm"     ; 0x4585

; bss_9594 equ __zdseg_end + (__zobss_9594 - __zdata_start)
%include "vpcmk/api_idx_006c_JNMM.asm"     ; 0x4697

; bss_953c equ __zdseg_end + (__zobss_953c - __zdata_start)
; bss_953e equ __zdseg_end + (__zobss_953e - __zdata_start)
%include "vpcmk/api_idx_0008_VHMQ.asm"     ; 0x4934

%include "vpcmk/loc_RPNT.asm"              ; 0x4aa1

%include "vpcmk/api_idx_0002_SLKJ.asm"     ; 0x4ade

%include "vpcmk/api_idx_004e_ITVQ.asm"     ; 0x4b05

%include "vpcmk/loc_LTLR.asm"              ; 0x4c82

%include "shared/loc_NJOH.asm"              ; 0x4ead

%include "shared/api_idx_0006_VJKJ.asm"     ; 0x4f00

%include "shared/api_idx_0002_KQIK.asm"     ; 0x4f95

%include "vpcmk/api_idx_0004_GHPT.asm"     ; 0x5087

bss_960c equ __zdseg_end + (__zobss_960c - __zdata_start)
%include "vpcmk/api_idx_001c_ITKQ.asm"     ; 0x5580

%include "vpcmk/api_idx_0002_GVOH.asm"     ; 0x56b0

%include "vpcmk/loc_QVUI.asm"              ; 0x5706

%include "vpcmk/api_idx_000a_HMMT.asm"     ; 0x5a8a

%include "shared/loc_OIOJ.asm"              ; 0x5d7e

%include "vpcmk/api_idx_0004_QSJP.asm"     ; 0x5df5

dseg_94e9 equ __zdseg_end + (__zdseg_94e9 - __zdata_start)
%include "vpcmk/api_idx_0016_JNJG.asm"     ; 0x6083

%include "vpcmk/api_idx_0006_HMNQ.asm"     ; 0x60e0

%include "vpcmk/api_idx_0002_IVMI.asm"     ; 0x626e

dseg_94f6 equ __zdseg_end + (__zdseg_94f6 - __zdata_start)
; bss_952c  equ __zdseg_end + (__zobss_952c - __zdata_start)
; bss_952e  equ __zdseg_end + (__zobss_952e - __zdata_start)
; bss_9594  equ __zdseg_end + (__zobss_9594 - __zdata_start)
bss_978a  equ __zdseg_end + (__zobss_978a - __zdata_start)
%include "vpcmk/loc_MIPR.asm"              ; 0x62fb

%include "vpcmk/api_idx_0002_RUKQ.asm"     ; 0x65fc

%include "vpcmk/loc_TLLM.asm"              ; 0x6626

; bss_978a equ __zdseg_end + (__zobss_978a - __zdata_start)
%include "vpcmk/api_idx_0014_LVIL.asm"     ; 0x6673

; bss_9594 equ __zdseg_end + (__zobss_9594 - __zdata_start)
%include "vpcmk/loc_TUUJ.asm"              ; 0x66c3

dseg_9501 equ __zdseg_end + (__zdseg_9501 - __zdata_start)
%include "vpcmk/api_idx_002c_JIHO.asm"     ; 0x6738

%include "vpcmk/loc_RNSM.asm"              ; 0x67e2

%include "vpcmk/api_idx_0018_MVRH.asm"     ; 0x67ff

%include "vpcmk/api_idx_0006_JHIT.asm"     ; 0x6887

%include "vpcmk/loc_PVJJ.asm"              ; 0x68fa

dseg_950c equ __zdseg_end + (__zdseg_950c - __zdata_start)
; bss_9524  equ __zdseg_end + (__zobss_9524 - __zdata_start)
; bss_9526  equ __zdseg_end + (__zobss_9526 - __zdata_start)
; bss_9528  equ __zdseg_end + (__zobss_9528 - __zdata_start)
; bss_952a  equ __zdseg_end + (__zobss_952a - __zdata_start)
; bss_952c  equ __zdseg_end + (__zobss_952c - __zdata_start)
; bss_952e  equ __zdseg_end + (__zobss_952e - __zdata_start)
bss_9530  equ __zdseg_end + (__zobss_9530 - __zdata_start)
bss_9532  equ __zdseg_end + (__zobss_9532 - __zdata_start)
bss_9534  equ __zdseg_end + (__zobss_9534 - __zdata_start)
bss_9536  equ __zdseg_end + (__zobss_9536 - __zdata_start)
; bss_9538  equ __zdseg_end + (__zobss_9538 - __zdata_start)
; bss_953a  equ __zdseg_end + (__zobss_953a - __zdata_start)
; bss_953c  equ __zdseg_end + (__zobss_953c - __zdata_start)
; bss_953e  equ __zdseg_end + (__zobss_953e - __zdata_start)
; bss_9540  equ __zdseg_end + (__zobss_9540 - __zdata_start)
; bss_9542  equ __zdseg_end + (__zobss_9542 - __zdata_start)
bss_9596  equ __zdseg_end + (__zobss_9596 - __zdata_start)
; bss_95aa  equ __zdseg_end + (__zobss_95aa - __zdata_start)
; bss_95ac  equ __zdseg_end + (__zobss_95ac - __zdata_start)
; bss_95ae  equ __zdseg_end + (__zobss_95ae - __zdata_start)
; bss_976c  equ __zdseg_end + (__zobss_976c - __zdata_start)
%include "vpcmk/api_idx_002c_NHRR.asm"     ; 0x6a3f

dseg_951a equ __zdseg_end + (__zdseg_951a - __zdata_start)
dseg_951c equ __zdseg_end + (__zdseg_951c - __zdata_start)
dseg_951e equ __zdseg_end + (__zdseg_951e - __zdata_start)
dseg_9520 equ __zdseg_end + (__zdseg_9520 - __zdata_start)
dseg_9522 equ __zdseg_end + (__zdseg_9522 - __zdata_start)
; bss_9524  equ __zdseg_end + (__zobss_9524 - __zdata_start)
%include "vpcmk/asm_only/string_loc_SMLM.asm"       ; 0x6f8c

%include "shared/aztec_strcmp.asm"          ; 0x6fca

loc_OTSS equ aztec_strncmp.loc1
%include "shared/aztec_strncmp.asm"         ; 0x6fe8

__zdseg_9098:
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

__zdseg_94e9:
    db 'PORTDATA.VGA', 0
__zdseg_94f6:
    db 'PCFILE.DBS', 0
__zdseg_9501:
    db 'PCFILE.DBS', 0
__zdseg_950c:
    db 'PCVWSCRN.VGA', 0
    db 0x00
__zdseg_951a:
    db 0x00, 0x00
__zdseg_951c:
    db 0x00, 0x00
__zdseg_951e:
    db 0x00, 0x00
__zdseg_9520:
    db 0x00, 0x00
__zdseg_9522:
    db 0x00, 0x00

__zimage_end:
absolute __zimage_end
__zobss_9524:
    resb 0x0002
__zobss_9526:
    resb 0x0002
__zobss_9528:
    resb 0x0002
__zobss_952a:
    resb 0x0002
__zobss_952c:
    resb 0x0002
__zobss_952e:
    resb 0x0002
__zobss_9530:
    resb 0x0002
__zobss_9532:
    resb 0x0002
__zobss_9534:
    resb 0x0002
__zobss_9536:
    resb 0x0002
__zobss_9538:
    resb 0x0002
__zobss_953a:
    resb 0x0002
__zobss_953c:
    resb 0x0002
__zobss_953e:
    resb 0x0002
__zobss_9540:
    resb 0x0002
__zobss_9542:
    resb 0x0052
__zobss_9594:
    resb 0x0002
__zobss_9596:
    resb 0x0014
__zobss_95aa:
    resb 0x0002
__zobss_95ac:
    resb 0x0002
__zobss_95ae:
    resb 0x003a
__zobss_95e8:
    resb 0x000c
__zobss_95f4:
    resb 0x0018
__zobss_960c:
    resb 0x0160
__zobss_976c:
    resb 0x001e
__zobss_978a:
    resb 0x0002
__zobss_end:
