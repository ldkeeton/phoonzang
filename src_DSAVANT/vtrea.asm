; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vtrea.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0x9a0d ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x007c ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end         ; 0x05a6 ; o_bss: uninitialized data size
    dw loc_SQUK - IMAGE_BASE + __zres_end ; 0xea0c ; o_entry: overlay entry offset (CS)

__zcode_start:

bss_9114 equ __zdseg_end + (__zobss_9114 - __zdata_start)
bss_9116 equ __zdseg_end + (__zobss_9116 - __zdata_start)
bss_9118 equ __zdseg_end + (__zobss_9118 - __zdata_start)
bss_911a equ __zdseg_end + (__zobss_911a - __zdata_start)
%include "vtrea/loc_IJTR.asm"              ; 0x000e

%include "vtrea/api_idx_0010_PVHV.asm"     ; 0x0090

; bss_9116 equ __zdseg_end + (__zobss_9116 - __zdata_start)
bss_911c equ __zdseg_end + (__zobss_911c - __zdata_start)
%include "vtrea/loc_GRQV.asm"              ; 0x0111

%include "shared/api_idx_000e_TIOP.asm"     ; 0x067b

; bss_9114 equ __zdseg_end + (__zobss_9114 - __zdata_start)
; bss_9116 equ __zdseg_end + (__zobss_9116 - __zdata_start)
; bss_9118 equ __zdseg_end + (__zobss_9118 - __zdata_start)
; bss_911a equ __zdseg_end + (__zobss_911a - __zdata_start)
; bss_911c equ __zdseg_end + (__zobss_911c - __zdata_start)
bss_911e equ __zdseg_end + (__zobss_911e - __zdata_start)
bss_9120 equ __zdseg_end + (__zobss_9120 - __zdata_start)
bss_9122 equ __zdseg_end + (__zobss_9122 - __zdata_start)
%include "vtrea/api_idx_000a_UUNU.asm"     ; 0x073b

; bss_9116 equ __zdseg_end + (__zobss_9116 - __zdata_start)
; bss_911e equ __zdseg_end + (__zobss_911e - __zdata_start)
bss_9124 equ __zdseg_end + (__zobss_9124 - __zdata_start)
%include "vtrea/loc_IKLI.asm"              ; 0x086b

%include "vtrea/api_idx_0004_UQUT.asm"     ; 0x08eb

bss_9126 equ __zdseg_end + (__zobss_9126 - __zdata_start)
bss_9128 equ __zdseg_end + (__zobss_9128 - __zdata_start)
%include "vtrea/api_idx_000a_TIPG.asm"     ; 0x0954

bss_9150 equ __zdseg_end + (__zobss_9150 - __zdata_start)
%include "vtrea/loc_NQGV.asm"              ; 0x0a1a

; bss_9150 equ __zdseg_end + (__zobss_9150 - __zdata_start)
bss_9152 equ __zdseg_end + (__zobss_9152 - __zdata_start)
api_idx_0004_JGSH.bss1 equ bss_9150
api_idx_0004_JGSH.loc1 equ loc_NQGV
api_idx_0004_JGSH.bss2 equ bss_9152
%include "shared/api_idx_0004_JGSH.asm"     ; 0x0a6a

dseg_90a0 equ __zdseg_end + (__zdseg_90a0 - __zdata_start)
; bss_9150  equ __zdseg_end + (__zobss_9150 - __zdata_start)
bss_9154  equ __zdseg_end + (__zobss_9154 - __zdata_start)
%include "vtrea/api_idx_0090_NPLS.asm"     ; 0x0b29

%include "vtrea/api_idx_0004_QHUH.asm"     ; 0x0d24

; bss_9150 equ __zdseg_end + (__zobss_9150 - __zdata_start)
; bss_9152 equ __zdseg_end + (__zobss_9152 - __zdata_start)
; bss_9154 equ __zdseg_end + (__zobss_9154 - __zdata_start)
%include "vtrea/loc_KIOQ.asm"              ; 0x0d87

%include "vtrea/api_idx_0004_IMVS.asm"     ; 0x0e03

%include "vtrea/loc_OOHI.asm"              ; 0x0eb2

%include "shared/loc_SIKN.asm"              ; 0x0f54

%include "vtrea/api_idx_0002_RJQH.asm"     ; 0x0f96

dseg_90b0 equ __zdseg_end + (__zdseg_90b0 - __zdata_start)
dseg_90b1 equ __zdseg_end + (__zdseg_90b1 - __zdata_start)
%include "vtrea/api_idx_005a_SIOK.asm"     ; 0x10fb

%include "vtrea/asm_only/api_idx_003e_JGVR.asm"     ; 0x11bc

dseg_90b2 equ __zdseg_end + (__zdseg_90b2 - __zdata_start)
dseg_90b3 equ __zdseg_end + (__zdseg_90b3 - __zdata_start)
%include "vtrea/asm_only/api_idx_0056_VTNO.asm"     ; 0x12cc

; bss_9116 equ __zdseg_end + (__zobss_9116 - __zdata_start)
; bss_9118 equ __zdseg_end + (__zobss_9118 - __zdata_start)
; bss_911a equ __zdseg_end + (__zobss_911a - __zdata_start)
; bss_9120 equ __zdseg_end + (__zobss_9120 - __zdata_start)
; bss_9122 equ __zdseg_end + (__zobss_9122 - __zdata_start)
bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vtrea/api_idx_0050_MPOT.asm"     ; 0x13e0

%include "vtrea/api_idx_0004_VSSI.asm"     ; 0x1447

%include "vtrea/api_idx_0006_UHJH.asm"     ; 0x148d

dseg_90b4 equ __zdseg_end + (__zdseg_90b4 - __zdata_start)
dseg_90b5 equ __zdseg_end + (__zdseg_90b5 - __zdata_start)
dseg_90b6 equ __zdseg_end + (__zdseg_90b6 - __zdata_start)
dseg_90b7 equ __zdseg_end + (__zdseg_90b7 - __zdata_start)
dseg_90b8 equ __zdseg_end + (__zdseg_90b8 - __zdata_start)
dseg_90b9 equ __zdseg_end + (__zdseg_90b9 - __zdata_start)
dseg_90ba equ __zdseg_end + (__zdseg_90ba - __zdata_start)
; bss_91d4  equ __zdseg_end + (__zobss_91d4 - __zdata_start)
%include "vtrea/asm_only/api_idx_00b8_LTRM.asm"     ; 0x14e7

dseg_90bb equ __zdseg_end + (__zdseg_90bb - __zdata_start)
dseg_90c4 equ __zdseg_end + (__zdseg_90c4 - __zdata_start)
; bss_91d6  equ __zdseg_end + (__zobss_91d6 - __zdata_start)
bss_91fe  equ __zdseg_end + (__zobss_91fe - __zdata_start)
bss_9200  equ __zdseg_end + (__zobss_9200 - __zdata_start)
bss_9230  equ __zdseg_end + (__zobss_9230 - __zdata_start)
bss_9250  equ __zdseg_end + (__zobss_9250 - __zdata_start)
%include "vtrea/api_idx_0060_VPPJ.asm"     ; 0x1fd5

%include "vtrea/loc_OVQV.asm"              ; 0x242c

%include "vtrea/api_idx_0002_PMUV.asm"     ; 0x251a

dseg_90d3 equ __zdseg_end + (__zdseg_90d3 - __zdata_start)
dseg_90d5 equ __zdseg_end + (__zdseg_90d5 - __zdata_start)
dseg_90d8 equ __zdseg_end + (__zdseg_90d8 - __zdata_start)
dseg_90da equ __zdseg_end + (__zdseg_90da - __zdata_start)
; bss_911c  equ __zdseg_end + (__zobss_911c - __zdata_start)
; bss_9230  equ __zdseg_end + (__zobss_9230 - __zdata_start)
; bss_9250  equ __zdseg_end + (__zobss_9250 - __zdata_start)
%include "vtrea/api_idx_0084_IMVQ.asm"     ; 0x25ab

%include "shared/api_idx_0008_RQRL.asm"     ; 0x3552

%include "shared/api_idx_0004_UJRL.asm"     ; 0x35de

%include "shared/api_idx_0006_TMNI.asm"     ; 0x36af

%include "vtrea/api_idx_0006_KPLV.asm"     ; 0x3706

%include "shared/api_idx_0018_RGOS.asm"     ; 0x37b6

%include "vtrea/api_idx_0004_SLIS.asm"     ; 0x38b3

loc_HTKI.api_idx1 equ api_idx_0004_SLIS
%include "shared/loc_HTKI.asm"              ; 0x3a15

; bss_911c equ __zdseg_end + (__zobss_911c - __zdata_start)
; bss_9124 equ __zdseg_end + (__zobss_9124 - __zdata_start)
%include "vtrea/api_idx_0038_ULQM.asm"     ; 0x3a56

; bss_9114 equ __zdseg_end + (__zobss_9114 - __zdata_start)
; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
; bss_91fe equ __zdseg_end + (__zobss_91fe - __zdata_start)
bss_95de equ __zdseg_end + (__zobss_95de - __zdata_start)
bss_95e0 equ __zdseg_end + (__zobss_95e0 - __zdata_start)
%include "vtrea/api_idx_0054_TIQK.asm"     ; 0x4254

%include "shared/loc_QQUT.asm"              ; 0x4318

; bss_91fe equ __zdseg_end + (__zobss_91fe - __zdata_start)
; bss_9250 equ __zdseg_end + (__zobss_9250 - __zdata_start)
; bss_95de equ __zdseg_end + (__zobss_95de - __zdata_start)
%include "vtrea/asm_only/api_idx_0008_HJOM.asm"     ; 0x4368

bss_95e2 equ __zdseg_end + (__zobss_95e2 - __zdata_start)
%include "vtrea/api_idx_0004_GKHR.asm"     ; 0x4ad8

dseg_90e2 equ __zdseg_end + (__zdseg_90e2 - __zdata_start)
; bss_95e2  equ __zdseg_end + (__zobss_95e2 - __zdata_start)
%include "vtrea/api_idx_0092_GSQH.asm"     ; 0x4bcc

; bss_9114 equ __zdseg_end + (__zobss_9114 - __zdata_start)
; bss_911e equ __zdseg_end + (__zobss_911e - __zdata_start)
; bss_9126 equ __zdseg_end + (__zobss_9126 - __zdata_start)
; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
; bss_91fe equ __zdseg_end + (__zobss_91fe - __zdata_start)
; bss_95de equ __zdseg_end + (__zobss_95de - __zdata_start)
; bss_95e0 equ __zdseg_end + (__zobss_95e0 - __zdata_start)
%include "vtrea/api_idx_007a_NHII.asm"     ; 0x4f0c

%include "shared/api_idx_004c_RQSO.asm"     ; 0x51d7

%include "shared/api_idx_0004_ONJT.asm"     ; 0x52ec

bss_95e4 equ __zdseg_end + (__zobss_95e4 - __zdata_start)
%include "vtrea/api_idx_0040_LIPH.asm"     ; 0x5348

%include "vtrea/api_idx_0006_OUPU.asm"     ; 0x550e

%include "vtrea/api_idx_0002_HHSQ.asm"     ; 0x5689

%include "shared/loc_GMVH.asm"              ; 0x56af

%include "vtrea/api_idx_0002_MLKN.asm"     ; 0x56cc

; bss_9114 equ __zdseg_end + (__zobss_9114 - __zdata_start)
; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
; bss_95e4 equ __zdseg_end + (__zobss_95e4 - __zdata_start)
%include "vtrea/loc_HUIS.asm"              ; 0x5789

; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
%include "vtrea/api_idx_00a8_JSHI.asm"     ; 0x5d80

%include "shared/api_idx_0006_POPS.asm"     ; 0x5e88

%include "vtrea/api_idx_0004_JVLM.asm"     ; 0x5efe

dseg_90e9 equ __zdseg_end + (__zdseg_90e9 - __zdata_start)
dseg_90eb equ __zdseg_end + (__zdseg_90eb - __zdata_start)
; bss_911c  equ __zdseg_end + (__zobss_911c - __zdata_start)
%include "vtrea/api_idx_006a_NKMN.asm"     ; 0x5fef

; bss_911c equ __zdseg_end + (__zobss_911c - __zdata_start)
%include "vtrea/api_idx_0074_MHUG.asm"     ; 0x66eb

%include "shared/api_idx_0002_OVRM.asm"     ; 0x6e69

%include "vtrea/api_idx_0004_IHLT.asm"     ; 0x6ead

%include "vtrea/loc_RVKS.asm"              ; 0x6f41

%include "vtrea/api_idx_0034_NSGM.asm"     ; 0x6ff5

; bss_9126 equ __zdseg_end + (__zobss_9126 - __zdata_start)
%include "vtrea/api_idx_0072_LQIT.asm"     ; 0x7151

%include "shared/api_idx_0004_KGNP.asm"     ; 0x7319

; bss_9126 equ __zdseg_end + (__zobss_9126 - __zdata_start)
; bss_9128 equ __zdseg_end + (__zobss_9128 - __zdata_start)
%include "vtrea/api_idx_00e6_QNPR.asm"     ; 0x73ae

%include "shared/loc_OUOJ.asm"              ; 0x782b

%include "shared/loc_QTKU.asm"              ; 0x788f

%include "vtrea/asm_only/api_idx_0074_SGUS.asm"     ; 0x78ed

; bss_911c equ __zdseg_end + (__zobss_911c - __zdata_start)
; bss_9124 equ __zdseg_end + (__zobss_9124 - __zdata_start)
; bss_9126 equ __zdseg_end + (__zobss_9126 - __zdata_start)
; bss_9128 equ __zdseg_end + (__zobss_9128 - __zdata_start)
; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
%include "vtrea/loc_SNOI.asm"              ; 0x7d99

%include "vtrea/loc_VSIT.asm"              ; 0x7eba

; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
%include "vtrea/api_idx_0050_MUIG.asm"     ; 0x7f5a

%include "vtrea/loc_PKHU.asm"              ; 0x809e

%include "vtrea/loc_UIQM.asm"              ; 0x811f

%include "vtrea/loc_PGGL.asm"              ; 0x81b6

%include "vtrea/loc_HVOM.asm"              ; 0x81db

%include "shared/api_idx_002a_SRJL.asm"     ; 0x8200

%include "shared/loc_RULJ.asm"              ; 0x82a9

%include "vtrea/api_idx_0008_JJHR.asm"     ; 0x82b8

%include "vtrea/loc_IOMS.asm"              ; 0x8441

%include "shared/draw_party_slot_letters.asm" ; 0x893e

%include "shared/api_idx_0002_TIUI.asm"     ; 0x89bd

%include "vtrea/api_idx_0004_JOHI.asm"     ; 0x8a18

%include "vtrea/api_idx_000a_IIIU.asm"     ; 0x8a89

%include "shared/loc_PTRP.asm"              ; 0x8ac7

%include "vtrea/loc_HOII.asm"              ; 0x8b53

%include "shared/api_idx_000c_JQMN.asm"     ; 0x8bf4

; bss_9124 equ __zdseg_end + (__zobss_9124 - __zdata_start)
loc_SRQQ.bss1     equ bss_9124
loc_SRQQ.api_idx1 equ api_idx_000a_IIIU
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x8c8d

; bss_9124 equ __zdseg_end + (__zobss_9124 - __zdata_start)
%include "vtrea/api_idx_0044_NJQJ.asm"     ; 0x8d1e

dseg_910a equ __zdseg_end + (__zdseg_910a - __zdata_start)
dseg_910c equ __zdseg_end + (__zdseg_910c - __zdata_start)
dseg_910e equ __zdseg_end + (__zdseg_910e - __zdata_start)
dseg_9110 equ __zdseg_end + (__zdseg_9110 - __zdata_start)
dseg_9112 equ __zdseg_end + (__zdseg_9112 - __zdata_start)
; bss_9114  equ __zdseg_end + (__zobss_9114 - __zdata_start)
%include "vtrea/asm_only/loc_SQUK.asm"              ; 0x99c5

%include "vtrea/asm_only/leaf_loc_GTUT.asm"         ; 0x9a03


__zimage_end:
absolute __zimage_end
__zobss_9114:
    resb 0x0002
__zobss_9116:
    resb 0x0002
__zobss_9118:
    resb 0x0002
__zobss_911a:
    resb 0x0002
__zobss_911c:
    resb 0x0002
__zobss_911e:
    resb 0x0002
__zobss_9120:
    resb 0x0002
__zobss_9122:
    resb 0x0002
__zobss_9124:
    resb 0x0002
__zobss_9126:
    resb 0x0002
__zobss_9128:
    resb 0x0028
__zobss_9150:
    resb 0x0002
__zobss_9152:
    resb 0x0002
__zobss_9154:
    resb 0x0080
__zobss_91d4:
    resb 0x0002
__zobss_91d6:
    resb 0x0028
__zobss_91fe:
    resb 0x0002
__zobss_9200:
    resb 0x0030
__zobss_9230:
    resb 0x0020
__zobss_9250:
    resb 0x038e
__zobss_95de:
    resb 0x0002
__zobss_95e0:
    resb 0x0002
__zobss_95e2:
    resb 0x0002
__zobss_95e4:
    resb 0x00d6
__zobss_end:
