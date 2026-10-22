; auto-generated
bits 16
%include "include/host_symbols.inc"
%ifndef VBASE
%ifdef ELF_BUILD
VBASE equ 0
%else
VBASE equ __zres_end - 0x000e
%endif
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e + VBASE
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                                ; o_magic: overlay signature (0x00f2)
    dw __zres_end                            ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)       ; 0x7023 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x048c ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0268 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xbfd3 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vpcmk/ovmain.asm"                ; 0x000e

%include "shared/api_idx_0002_OOKN.asm"     ; 0x0021

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
%include "shared/api_idx_0002_SJMT.asm"     ; 0x0085

%include "shared/api_idx_0008_LLVT.asm"     ; 0x0104

%include "vpcmk/api_idx_0008_VRRI.asm"     ; 0x02bc

dseg_90a3 equ __zdseg_end + (__zdseg_90a3 - __zdata_start)
dseg_90a9 equ __zdseg_end + (__zdseg_90a9 - __zdata_start)
%include "vpcmk/loc_TRPK.asm"              ; 0x0445

%include "shared/api_idx_0058_GKGM.asm"     ; 0x0935

dseg_90af equ __zdseg_end + (__zdseg_90af - __zdata_start)
%include "vpcmk/api_idx_0038_LTUV.asm"     ; 0x0abb

dseg_90b5 equ __zdseg_end + (__zdseg_90b5 - __zdata_start)
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
bss_9596 equ __zdseg_end + (__zobss_9596 - __zdata_start)
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

dseg_90bb equ __zdseg_end + (__zdseg_90bb - __zdata_start)
bss_9524  equ __zdseg_end + (__zobss_9524 - __zdata_start)
bss_9526  equ __zdseg_end + (__zobss_9526 - __zdata_start)
bss_9528  equ __zdseg_end + (__zobss_9528 - __zdata_start)
bss_952a  equ __zdseg_end + (__zobss_952a - __zdata_start)
; bss_95aa  equ __zdseg_end + (__zobss_95aa - __zdata_start)
; bss_95ac  equ __zdseg_end + (__zobss_95ac - __zdata_start)
bss_95ae  equ __zdseg_end + (__zobss_95ae - __zdata_start)
%include "vpcmk/api_idx_0054_RLST.asm"     ; 0x1b40

%include "shared/api_idx_0004_PMIU.asm"     ; 0x2090

%include "vpcmk/api_idx_0004_GRKI.asm"     ; 0x2144

dseg_90be equ __zdseg_end + (__zdseg_90be - __zdata_start)
dseg_90c9 equ __zdseg_end + (__zdseg_90c9 - __zdata_start)
dseg_90d2 equ __zdseg_end + (__zdseg_90d2 - __zdata_start)
dseg_90d9 equ __zdseg_end + (__zdseg_90d9 - __zdata_start)
dseg_90e4 equ __zdseg_end + (__zdseg_90e4 - __zdata_start)
dseg_90ef equ __zdseg_end + (__zdseg_90ef - __zdata_start)
dseg_90f8 equ __zdseg_end + (__zdseg_90f8 - __zdata_start)
dseg_90ff equ __zdseg_end + (__zdseg_90ff - __zdata_start)
dseg_910a equ __zdseg_end + (__zdseg_910a - __zdata_start)
dseg_9115 equ __zdseg_end + (__zdseg_9115 - __zdata_start)
dseg_911e equ __zdseg_end + (__zdseg_911e - __zdata_start)
dseg_9125 equ __zdseg_end + (__zdseg_9125 - __zdata_start)
dseg_9130 equ __zdseg_end + (__zdseg_9130 - __zdata_start)
dseg_913b equ __zdseg_end + (__zdseg_913b - __zdata_start)
dseg_9144 equ __zdseg_end + (__zdseg_9144 - __zdata_start)
dseg_914b equ __zdseg_end + (__zdseg_914b - __zdata_start)
dseg_9156 equ __zdseg_end + (__zdseg_9156 - __zdata_start)
dseg_9161 equ __zdseg_end + (__zdseg_9161 - __zdata_start)
dseg_916a equ __zdseg_end + (__zdseg_916a - __zdata_start)
dseg_9171 equ __zdseg_end + (__zdseg_9171 - __zdata_start)
dseg_917c equ __zdseg_end + (__zdseg_917c - __zdata_start)
dseg_9187 equ __zdseg_end + (__zdseg_9187 - __zdata_start)
dseg_9190 equ __zdseg_end + (__zdseg_9190 - __zdata_start)
dseg_9197 equ __zdseg_end + (__zdseg_9197 - __zdata_start)
dseg_91a2 equ __zdseg_end + (__zdseg_91a2 - __zdata_start)
dseg_91ad equ __zdseg_end + (__zdseg_91ad - __zdata_start)
dseg_91b6 equ __zdseg_end + (__zdseg_91b6 - __zdata_start)
dseg_91bd equ __zdseg_end + (__zdseg_91bd - __zdata_start)
dseg_91c8 equ __zdseg_end + (__zdseg_91c8 - __zdata_start)
dseg_91d3 equ __zdseg_end + (__zdseg_91d3 - __zdata_start)
dseg_91dc equ __zdseg_end + (__zdseg_91dc - __zdata_start)
dseg_91e3 equ __zdseg_end + (__zdseg_91e3 - __zdata_start)
dseg_91ee equ __zdseg_end + (__zdseg_91ee - __zdata_start)
dseg_91f9 equ __zdseg_end + (__zdseg_91f9 - __zdata_start)
dseg_9202 equ __zdseg_end + (__zdseg_9202 - __zdata_start)
dseg_9209 equ __zdseg_end + (__zdseg_9209 - __zdata_start)
dseg_9214 equ __zdseg_end + (__zdseg_9214 - __zdata_start)
dseg_921f equ __zdseg_end + (__zdseg_921f - __zdata_start)
dseg_9228 equ __zdseg_end + (__zdseg_9228 - __zdata_start)
dseg_922f equ __zdseg_end + (__zdseg_922f - __zdata_start)
dseg_923a equ __zdseg_end + (__zdseg_923a - __zdata_start)
dseg_9245 equ __zdseg_end + (__zdseg_9245 - __zdata_start)
dseg_924e equ __zdseg_end + (__zdseg_924e - __zdata_start)
dseg_9255 equ __zdseg_end + (__zdseg_9255 - __zdata_start)
dseg_9260 equ __zdseg_end + (__zdseg_9260 - __zdata_start)
dseg_926b equ __zdseg_end + (__zdseg_926b - __zdata_start)
dseg_9274 equ __zdseg_end + (__zdseg_9274 - __zdata_start)
dseg_927b equ __zdseg_end + (__zdseg_927b - __zdata_start)
dseg_9286 equ __zdseg_end + (__zdseg_9286 - __zdata_start)
dseg_9291 equ __zdseg_end + (__zdseg_9291 - __zdata_start)
dseg_929a equ __zdseg_end + (__zdseg_929a - __zdata_start)
dseg_92a1 equ __zdseg_end + (__zdseg_92a1 - __zdata_start)
dseg_92ac equ __zdseg_end + (__zdseg_92ac - __zdata_start)
dseg_92b7 equ __zdseg_end + (__zdseg_92b7 - __zdata_start)
dseg_92c0 equ __zdseg_end + (__zdseg_92c0 - __zdata_start)
dseg_92c7 equ __zdseg_end + (__zdseg_92c7 - __zdata_start)
bss_95e8  equ __zdseg_end + (__zobss_95e8 - __zdata_start)
bss_95f4  equ __zdseg_end + (__zobss_95f4 - __zdata_start)
%include "vpcmk/api_idx_0004_SNNO.asm"     ; 0x2273

bss_952c equ __zdseg_end + (__zobss_952c - __zdata_start)
bss_952e equ __zdseg_end + (__zobss_952e - __zdata_start)
api_idx_0002_OGRO.bss1 equ bss_952e
api_idx_0002_OGRO.bss2 equ bss_952c
%include "shared/api_idx_0002_OGRO.asm"     ; 0x24c8

; bss_95f4 equ __zdseg_end + (__zobss_95f4 - __zdata_start)
%include "vpcmk/api_idx_002e_JGHT.asm"     ; 0x2582

%include "vpcmk/api_idx_0032_HGIM.asm"     ; 0x26f1

%include "vpcmk/api_idx_0088_QLNT.asm"     ; 0x2c15

%include "vpcmk/api_idx_0004_VQQR.asm"     ; 0x2d63

%include "vpcmk/api_idx_000a_PQSU.asm"     ; 0x2dd4

%include "shared/draw_power_digit.asm"      ; 0x2e12

dseg_92d2 equ __zdseg_end + (__zdseg_92d2 - __zdata_start)
%include "vpcmk/loc_HRLN.asm"              ; 0x2e9e

%include "shared/draw_realm_spell_points.asm" ; 0x2f3f

bss_976c equ __zdseg_end + (__zobss_976c - __zdata_start)
periodic_party_redraw.bss1     equ bss_976c
periodic_party_redraw.api_idx1 equ api_idx_000a_PQSU
periodic_party_redraw.api_idx2 equ draw_realm_spell_points
%include "shared/periodic_party_redraw.asm" ; 0x2fd8

dseg_92d6 equ __zdseg_end + (__zdseg_92d6 - __zdata_start)
; bss_976c  equ __zdseg_end + (__zobss_976c - __zdata_start)
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

dseg_92dc equ __zdseg_end + (__zdseg_92dc - __zdata_start)
dseg_92e5 equ __zdseg_end + (__zdseg_92e5 - __zdata_start)
dseg_92ee equ __zdseg_end + (__zdseg_92ee - __zdata_start)
dseg_92f7 equ __zdseg_end + (__zdseg_92f7 - __zdata_start)
dseg_9300 equ __zdseg_end + (__zdseg_9300 - __zdata_start)
dseg_9309 equ __zdseg_end + (__zdseg_9309 - __zdata_start)
dseg_9312 equ __zdseg_end + (__zdseg_9312 - __zdata_start)
dseg_931b equ __zdseg_end + (__zdseg_931b - __zdata_start)
dseg_9324 equ __zdseg_end + (__zdseg_9324 - __zdata_start)
dseg_932d equ __zdseg_end + (__zdseg_932d - __zdata_start)
dseg_9336 equ __zdseg_end + (__zdseg_9336 - __zdata_start)
dseg_933f equ __zdseg_end + (__zdseg_933f - __zdata_start)
dseg_9348 equ __zdseg_end + (__zdseg_9348 - __zdata_start)
dseg_9351 equ __zdseg_end + (__zdseg_9351 - __zdata_start)
%include "vpcmk/loc_UMTI.asm"              ; 0x4107

%include "vpcmk/api_idx_0002_MPHM.asm"     ; 0x4291

dseg_935a equ __zdseg_end + (__zdseg_935a - __zdata_start)
dseg_9363 equ __zdseg_end + (__zdseg_9363 - __zdata_start)
dseg_936c equ __zdseg_end + (__zdseg_936c - __zdata_start)
dseg_9375 equ __zdseg_end + (__zdseg_9375 - __zdata_start)
dseg_937e equ __zdseg_end + (__zdseg_937e - __zdata_start)
dseg_9387 equ __zdseg_end + (__zdseg_9387 - __zdata_start)
dseg_9390 equ __zdseg_end + (__zdseg_9390 - __zdata_start)
dseg_9399 equ __zdseg_end + (__zdseg_9399 - __zdata_start)
dseg_93a2 equ __zdseg_end + (__zdseg_93a2 - __zdata_start)
dseg_93ab equ __zdseg_end + (__zdseg_93ab - __zdata_start)
dseg_93b4 equ __zdseg_end + (__zdseg_93b4 - __zdata_start)
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

dseg_93bd equ __zdseg_end + (__zdseg_93bd - __zdata_start)
dseg_93cc equ __zdseg_end + (__zdseg_93cc - __zdata_start)
dseg_93db equ __zdseg_end + (__zdseg_93db - __zdata_start)
dseg_93ea equ __zdseg_end + (__zdseg_93ea - __zdata_start)
dseg_93f9 equ __zdseg_end + (__zdseg_93f9 - __zdata_start)
dseg_9408 equ __zdseg_end + (__zdseg_9408 - __zdata_start)
dseg_9417 equ __zdseg_end + (__zdseg_9417 - __zdata_start)
dseg_9426 equ __zdseg_end + (__zdseg_9426 - __zdata_start)
dseg_9435 equ __zdseg_end + (__zdseg_9435 - __zdata_start)
dseg_9444 equ __zdseg_end + (__zdseg_9444 - __zdata_start)
dseg_9453 equ __zdseg_end + (__zdseg_9453 - __zdata_start)
dseg_9462 equ __zdseg_end + (__zdseg_9462 - __zdata_start)
dseg_9471 equ __zdseg_end + (__zdseg_9471 - __zdata_start)
dseg_9480 equ __zdseg_end + (__zdseg_9480 - __zdata_start)
dseg_948f equ __zdseg_end + (__zdseg_948f - __zdata_start)
dseg_949e equ __zdseg_end + (__zdseg_949e - __zdata_start)
dseg_94ad equ __zdseg_end + (__zdseg_94ad - __zdata_start)
dseg_94bc equ __zdseg_end + (__zdseg_94bc - __zdata_start)
dseg_94cb equ __zdseg_end + (__zdseg_94cb - __zdata_start)
dseg_94da equ __zdseg_end + (__zdseg_94da - __zdata_start)
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
; bss_9596  equ __zdseg_end + (__zobss_9596 - __zdata_start)
; bss_95aa  equ __zdseg_end + (__zobss_95aa - __zdata_start)
; bss_95ac  equ __zdseg_end + (__zobss_95ac - __zdata_start)
; bss_95ae  equ __zdseg_end + (__zobss_95ae - __zdata_start)
; bss_976c  equ __zdseg_end + (__zobss_976c - __zdata_start)
%include "vpcmk/api_idx_002c_NHRR.asm"     ; 0x6a3f

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_9524 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec_ovbgn.asm"           ; 0x6f8c

%include "shared/aztec_strcmp.asm"          ; 0x6fca

__zdseg_9098:
__zdata_start:
    db 'PCFILE.DBS', 0
__zdseg_90a3:
    db 'V.$$$', 0
__zdseg_90a9:
    db 'V.$$$', 0
__zdseg_90af:
    db 'V.$$$', 0
__zdseg_90b5:
    db 'V.$$$', 0
__zdseg_90bb:
    db 0x25, 0x20, 0x00
__zdseg_90be:
    db '1111111110', 0
__zdseg_90c9:
    db '11100000', 0
__zdseg_90d2:
    db '000000', 0
__zdseg_90d9:
    db '1111000000', 0
__zdseg_90e4:
    db '1000111100', 0
__zdseg_90ef:
    db '11101000', 0
__zdseg_90f8:
    db '000000', 0
__zdseg_90ff:
    db '1111000010', 0
__zdseg_910a:
    db '0001101010', 0
__zdseg_9115:
    db '11101000', 0
__zdseg_911e:
    db '000000', 0
__zdseg_9125:
    db '1111101000', 0
__zdseg_9130:
    db '1111111110', 0
__zdseg_913b:
    db '11101111', 0
__zdseg_9144:
    db '000000', 0
__zdseg_914b:
    db '1111000000', 0
__zdseg_9156:
    db '1111111110', 0
__zdseg_9161:
    db '11100111', 0
__zdseg_916a:
    db '000000', 0
__zdseg_9171:
    db '1111010000', 0
__zdseg_917c:
    db '1001110000', 0
__zdseg_9187:
    db '11100000', 0
__zdseg_9190:
    db '000000', 0
__zdseg_9197:
    db '1111010000', 0
__zdseg_91a2:
    db '1111111110', 0
__zdseg_91ad:
    db '11111111', 0
__zdseg_91b6:
    db '000000', 0
__zdseg_91bd:
    db '1111000010', 0
__zdseg_91c8:
    db '1001111000', 0
__zdseg_91d3:
    db '11101000', 0
__zdseg_91dc:
    db '000000', 0
__zdseg_91e3:
    db '1111000100', 0
__zdseg_91ee:
    db '1111111110', 0
__zdseg_91f9:
    db '11101000', 0
__zdseg_9202:
    db '000000', 0
__zdseg_9209:
    db '1111001000', 0
__zdseg_9214:
    db '0001101010', 0
__zdseg_921f:
    db '11101000', 0
__zdseg_9228:
    db '000000', 0
__zdseg_922f:
    db '1111101010', 0
__zdseg_923a:
    db '1111111110', 0
__zdseg_9245:
    db '11101000', 0
__zdseg_924e:
    db '000000', 0
__zdseg_9255:
    db '1111101000', 0
__zdseg_9260:
    db '1111111110', 0
__zdseg_926b:
    db '11101000', 0
__zdseg_9274:
    db '000000', 0
__zdseg_927b:
    db '1111000011', 0
__zdseg_9286:
    db '1001111101', 0
__zdseg_9291:
    db '11101001', 0
__zdseg_929a:
    db '000000', 0
__zdseg_92a1:
    db '1111000101', 0
__zdseg_92ac:
    db '1111111111', 0
__zdseg_92b7:
    db '11100111', 0
__zdseg_92c0:
    db '000000', 0
__zdseg_92c7:
    db '1111010001', 0
__zdseg_92d2:
    db 0x2a, 0x2a, 0x2a, 0x00
__zdseg_92d6:
    db 'V.$$$', 0
__zdseg_92dc:
    db 'MAAAAAAA', 0
__zdseg_92e5:
    db 'AMAAAAAA', 0
__zdseg_92ee:
    db 'AAMAAAIA', 0
__zdseg_92f7:
    db 'AAAAMIAA', 0
__zdseg_9300:
    db 'KIILKIIA', 0
__zdseg_9309:
    db 'ANAANAAA', 0
__zdseg_9312:
    db 'AKAAMIMA', 0
__zdseg_931b:
    db 'KOAOAAKA', 0
__zdseg_9324:
    db 'KALLKLIA', 0
__zdseg_932d:
    db 'APPAAAIA', 0
__zdseg_9336:
    db 'MJMMJJOA', 0
__zdseg_933f:
    db 'MLAJMOIA', 0
__zdseg_9348:
    db 'NINAKNIA', 0
__zdseg_9351:
    db 'MKKMMMAA', 0
__zdseg_935a:
    db 'JIIJJIIA', 0
__zdseg_9363:
    db 'HKKHJJIA', 0
__zdseg_936c:
    db 'LGKMHHHA', 0
__zdseg_9375:
    db 'KHNKIGGA', 0
__zdseg_937e:
    db 'IHGJKHNA', 0
__zdseg_9387:
    db 'FLGGKOMA', 0
__zdseg_9390:
    db 'MFFOIKDA', 0
__zdseg_9399:
    db 'KHGMKIGA', 0
__zdseg_93a2:
    db 'HKHHKMKA', 0
__zdseg_93ab:
    db 'IGMKIIKA', 0
__zdseg_93b4:
    db 'KKGKHHJA', 0
__zdseg_93bd:
    db 'ACBCBCCCCHCHBA', 0
__zdseg_93cc:
    db '02222232112230', 0
__zdseg_93db:
    db 'ACCCCDCCCHHKDA', 0
__zdseg_93ea:
    db '02222232123230', 0
__zdseg_93f9:
    db 'ACCCCDCCCIFKEA', 0
__zdseg_9408:
    db '02222232121230', 0
__zdseg_9417:
    db 'ACHCHDCCCHFIDA', 0
__zdseg_9426:
    db '02323232111230', 0
__zdseg_9435:
    db 'ACKCHHGCCIECBA', 0
__zdseg_9444:
    db '02322322121220', 0
__zdseg_9453:
    db 'ACBCCDECCEEEGA', 0
__zdseg_9462:
    db '02121212111330', 0
__zdseg_9471:
    db 'ACICIBHCCFKFFA', 0
__zdseg_9480:
    db '02323112113330', 0
__zdseg_948f:
    db 'ACECCEGCCIFKFA', 0
__zdseg_949e:
    db '02222222122220', 0
__zdseg_94ad:
    db 'ACKCGDHCCFKIDA', 0
__zdseg_94bc:
    db '02322212112320', 0
__zdseg_94cb:
    db 'ACHCHHGCCCECHA', 0
__zdseg_94da:
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
%include "shared/data/save_si.asm"          ; 0x74b3

%include "shared/data/save_di.asm"          ; 0x74b5

%include "shared/data/save_sp.asm"          ; 0x74b7

%include "shared/data/save_bp.asm"          ; 0x74b9

%include "shared/data/save_ret.asm"         ; 0x74bb


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
