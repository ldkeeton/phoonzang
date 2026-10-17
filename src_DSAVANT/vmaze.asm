; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vmaze.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0xac60 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x00fa ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end         ; 0x0c94 ; o_bss: uninitialized data size
    dw loc_TKPQ - IMAGE_BASE + __zres_end ; 0xfc77 ; o_entry: overlay entry offset (CS)

__zcode_start:

bss_9192 equ __zdseg_end + (__zobss_9192 - __zdata_start)
bss_9194 equ __zdseg_end + (__zobss_9194 - __zdata_start)
bss_9196 equ __zdseg_end + (__zobss_9196 - __zdata_start)
bss_9198 equ __zdseg_end + (__zobss_9198 - __zdata_start)
bss_919a equ __zdseg_end + (__zobss_919a - __zdata_start)
bss_919c equ __zdseg_end + (__zobss_919c - __zdata_start)
%include "vmaze/api_idx_0002_RQJQ.asm"     ; 0x000e

; bss_9194 equ __zdseg_end + (__zobss_9194 - __zdata_start)
; bss_9196 equ __zdseg_end + (__zobss_9196 - __zdata_start)
; bss_9198 equ __zdseg_end + (__zobss_9198 - __zdata_start)
%include "vmaze/api_idx_0002_VUIJ.asm"     ; 0x0106

; bss_9194 equ __zdseg_end + (__zobss_9194 - __zdata_start)
; bss_9196 equ __zdseg_end + (__zobss_9196 - __zdata_start)
; bss_9198 equ __zdseg_end + (__zobss_9198 - __zdata_start)
%include "vmaze/loc_RRRG.asm"              ; 0x017f

; bss_9194 equ __zdseg_end + (__zobss_9194 - __zdata_start)
; bss_9198 equ __zdseg_end + (__zobss_9198 - __zdata_start)
bss_919e equ __zdseg_end + (__zobss_919e - __zdata_start)
%include "vmaze/api_idx_0008_URRP.asm"     ; 0x01c9

%include "vmaze/api_idx_0002_LMTG.asm"     ; 0x02da

%include "vmaze/api_idx_0002_PQLV.asm"     ; 0x02fe

%include "vmaze/loc_VRKM.asm"              ; 0x0344

bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
%include "vmaze/api_idx_0002_TOSL.asm"     ; 0x03ea

%include "vmaze/api_idx_0014_LHRI.asm"     ; 0x06da

%include "vmaze/loc_LPSI.asm"              ; 0x09cb

%include "vmaze/api_idx_0006_KUNS.asm"     ; 0x0a6e

%include "vmaze/api_idx_0002_TOSS.asm"     ; 0x0acc

%include "vmaze/loc_VGMJ.asm"              ; 0x0b14

%include "vmaze/api_idx_0002_SMVN.asm"     ; 0x0b66

; bss_919a equ __zdseg_end + (__zobss_919a - __zdata_start)
; bss_919c equ __zdseg_end + (__zobss_919c - __zdata_start)
%include "vmaze/api_idx_000c_RNQS.asm"     ; 0x0cb5

%include "vmaze/api_idx_0002_ITLQ.asm"     ; 0x0e5d

; bss_9192 equ __zdseg_end + (__zobss_9192 - __zdata_start)
; bss_919a equ __zdseg_end + (__zobss_919a - __zdata_start)
; bss_919c equ __zdseg_end + (__zobss_919c - __zdata_start)
%include "vmaze/loc_LMUG.asm"              ; 0x0ea6

%include "shared/loc_QQOI.asm"              ; 0x0f68

%include "vmaze/api_idx_0006_LIGG.asm"     ; 0x0f8e

%include "shared/api_idx_0008_OMTP.asm"     ; 0x0fde

%include "vmaze/api_idx_0050_JLOV.asm"     ; 0x1094

%include "shared/loc_QTKU.asm"              ; 0x10b0

%include "vmaze/api_idx_0002_UGJG.asm"     ; 0x110e

loc_NJKS.loc1 equ loc_GPIH
loc_NJKS.loc2 equ loc_MMMO
%include "shared/loc_NJKS.asm"              ; 0x1165

%include "vmaze/api_idx_0002_IPQN.asm"     ; 0x1206

bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
%include "vmaze/loc_KOGT.asm"              ; 0x1240

%include "shared/loc_IVLM.asm"              ; 0x12a2

%include "vmaze/loc_LPNP.asm"              ; 0x12d3

; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_91aa equ __zdseg_end + (__zobss_91aa - __zdata_start)
%include "vmaze/api_idx_0004_JLQH.asm"     ; 0x1308

; bss_919e equ __zdseg_end + (__zobss_919e - __zdata_start)
loc_HILS.bss1 equ bss_919e
%include "shared/loc_HILS.asm"              ; 0x13c0

; bss_919e equ __zdseg_end + (__zobss_919e - __zdata_start)
%include "vmaze/api_idx_0004_IHHI.asm"     ; 0x13f7

%include "vmaze/api_idx_0004_HRPS.asm"     ; 0x1504

; bss_919e equ __zdseg_end + (__zobss_919e - __zdata_start)
; bss_91aa equ __zdseg_end + (__zobss_91aa - __zdata_start)
%include "vmaze/api_idx_000e_NSGM.asm"     ; 0x162b

; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_91ac equ __zdseg_end + (__zobss_91ac - __zdata_start)
%include "vmaze/api_idx_0004_USIK.asm"     ; 0x17ee

%include "vmaze/api_idx_000a_TQHL.asm"     ; 0x195c

bss_91ae equ __zdseg_end + (__zobss_91ae - __zdata_start)
bss_91b0 equ __zdseg_end + (__zobss_91b0 - __zdata_start)
%include "vmaze/api_idx_0018_USPR.asm"     ; 0x1c94

%include "vmaze/api_idx_0010_HOIJ.asm"     ; 0x2033

%include "shared/api_idx_0006_TMNI.asm"     ; 0x20dc

%include "vmaze/api_idx_0006_TGQJ.asm"     ; 0x2133

bss_91b2 equ __zdseg_end + (__zobss_91b2 - __zdata_start)
%include "vmaze/loc_MMGL.asm"              ; 0x21e3

; bss_9198 equ __zdseg_end + (__zobss_9198 - __zdata_start)
; bss_919a equ __zdseg_end + (__zobss_919a - __zdata_start)
; bss_919c equ __zdseg_end + (__zobss_919c - __zdata_start)
; bss_919e equ __zdseg_end + (__zobss_919e - __zdata_start)
; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
; bss_91aa equ __zdseg_end + (__zobss_91aa - __zdata_start)
; bss_91b0 equ __zdseg_end + (__zobss_91b0 - __zdata_start)
; bss_91b2 equ __zdseg_end + (__zobss_91b2 - __zdata_start)
bss_91b4 equ __zdseg_end + (__zobss_91b4 - __zdata_start)
%include "vmaze/api_idx_0022_RHMN.asm"     ; 0x2215

; bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
loc_GPIH.bss1 equ bss_91a6
%include "shared/loc_GPIH.asm"              ; 0x2d94

; bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
loc_MMMO.bss1 equ bss_91a6
%include "shared/loc_MMMO.asm"              ; 0x2e0c

bss_91d0 equ __zdseg_end + (__zobss_91d0 - __zdata_start)
%include "vmaze/loc_UMHI_2e84.asm"         ; 0x2e84

; bss_91d0 equ __zdseg_end + (__zobss_91d0 - __zdata_start)
%include "vmaze/loc_LPLI_2e98.asm"         ; 0x2e98

bss_91d2 equ __zdseg_end + (__zobss_91d2 - __zdata_start)
%include "vmaze/loc_UMHI_2eac.asm"         ; 0x2eac

; bss_91d2 equ __zdseg_end + (__zobss_91d2 - __zdata_start)
%include "vmaze/loc_LPLI_2ec0.asm"         ; 0x2ec0

%include "vmaze/loc_VOSO.asm"              ; 0x2ed4

; bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vmaze/api_idx_0008_LJTR.asm"     ; 0x2f8e

; bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vmaze/api_idx_0008_QJHI.asm"     ; 0x33c0

bss_931e equ __zdseg_end + (__zobss_931e - __zdata_start)
%include "vmaze/api_idx_0004_OVUO.asm"     ; 0x358c

; bss_91d0 equ __zdseg_end + (__zobss_91d0 - __zdata_start)
; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
bss_9b18 equ __zdseg_end + (__zobss_9b18 - __zdata_start)
%include "vmaze/api_idx_0010_RPIL.asm"     ; 0x3802

; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
%include "vmaze/api_idx_0012_VQVU.asm"     ; 0x3f56

; bss_91d0 equ __zdseg_end + (__zobss_91d0 - __zdata_start)
; bss_91d2 equ __zdseg_end + (__zobss_91d2 - __zdata_start)
; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
%include "vmaze/api_idx_0012_RMOL.asm"     ; 0x4665

%include "shared/api_idx_0016_LHKK.asm"     ; 0x4f53

%include "shared/api_idx_0024_NUGL.asm"     ; 0x50f4

%include "shared/api_idx_001e_IGLM.asm"     ; 0x529a

; bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
; bss_91d0 equ __zdseg_end + (__zobss_91d0 - __zdata_start)
; bss_91d2 equ __zdseg_end + (__zobss_91d2 - __zdata_start)
; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
bss_91e4 equ __zdseg_end + (__zobss_91e4 - __zdata_start)
; bss_931e equ __zdseg_end + (__zobss_931e - __zdata_start)
; bss_9b18 equ __zdseg_end + (__zobss_9b18 - __zdata_start)
bss_9b34 equ __zdseg_end + (__zobss_9b34 - __zdata_start)
bss_9b36 equ __zdseg_end + (__zobss_9b36 - __zdata_start)
bss_9b38 equ __zdseg_end + (__zobss_9b38 - __zdata_start)
bss_9b3a equ __zdseg_end + (__zobss_9b3a - __zdata_start)
bss_9b3c equ __zdseg_end + (__zobss_9b3c - __zdata_start)
bss_9b3e equ __zdseg_end + (__zobss_9b3e - __zdata_start)
bss_9b40 equ __zdseg_end + (__zobss_9b40 - __zdata_start)
bss_9b42 equ __zdseg_end + (__zobss_9b42 - __zdata_start)
bss_9b44 equ __zdseg_end + (__zobss_9b44 - __zdata_start)
bss_9b46 equ __zdseg_end + (__zobss_9b46 - __zdata_start)
%include "vmaze/api_idx_0030_JQMM.asm"     ; 0x53fd

loc_IONR.api_idx1 equ api_idx_0030_JQMM
%include "shared/loc_IONR.asm"              ; 0x676c

%include "shared/loc_MPHO.asm"              ; 0x678c

%include "shared/api_idx_0004_QVPP.asm"     ; 0x67c6

%include "vmaze/api_idx_0002_GSOS.asm"     ; 0x6882

%include "vmaze/loc_VNRM.asm"              ; 0x68f2

%include "shared/api_idx_0006_POPS.asm"     ; 0x6960

%include "vmaze/api_idx_0004_KMPG.asm"     ; 0x69d6

%include "vmaze/loc_GRON.asm"              ; 0x6ac7

%include "vmaze/api_idx_000a_RIKJ.asm"     ; 0x6b0a

; bss_919a equ __zdseg_end + (__zobss_919a - __zdata_start)
; bss_919c equ __zdseg_end + (__zobss_919c - __zdata_start)
bss_9b48 equ __zdseg_end + (__zobss_9b48 - __zdata_start)
bss_9b4a equ __zdseg_end + (__zobss_9b4a - __zdata_start)
bss_9b4c equ __zdseg_end + (__zobss_9b4c - __zdata_start)
%include "vmaze/loc_MVHP.asm"              ; 0x6b5a

; bss_9b4c equ __zdseg_end + (__zobss_9b4c - __zdata_start)
bss_9b4e equ __zdseg_end + (__zobss_9b4e - __zdata_start)
api_idx_0004_JGSH.bss1 equ bss_9b4c
api_idx_0004_JGSH.loc1 equ loc_MVHP
api_idx_0004_JGSH.bss2 equ bss_9b4e
%include "shared/api_idx_0004_JGSH.asm"     ; 0x6c0a

; bss_9b48 equ __zdseg_end + (__zobss_9b48 - __zdata_start)
; bss_9b4a equ __zdseg_end + (__zobss_9b4a - __zdata_start)
; bss_9b4c equ __zdseg_end + (__zobss_9b4c - __zdata_start)
bss_9b50 equ __zdseg_end + (__zobss_9b50 - __zdata_start)
%include "vmaze/api_idx_0090_PNOU.asm"     ; 0x6cc9

%include "vmaze/api_idx_0004_JQTM.asm"     ; 0x6eb1

; bss_9b48 equ __zdseg_end + (__zobss_9b48 - __zdata_start)
; bss_9b4c equ __zdseg_end + (__zobss_9b4c - __zdata_start)
; bss_9b4e equ __zdseg_end + (__zobss_9b4e - __zdata_start)
; bss_9b50 equ __zdseg_end + (__zobss_9b50 - __zdata_start)
%include "vmaze/loc_MLLK.asm"              ; 0x6f14

%include "shared/loc_SIKN.asm"              ; 0x6fbf

%include "vmaze/api_idx_0002_KUOJ.asm"     ; 0x7001

bss_9bd0 equ __zdseg_end + (__zobss_9bd0 - __zdata_start)
%include "vmaze/api_idx_001e_KGSI.asm"     ; 0x7034

%include "shared/loc_OUOJ.asm"              ; 0x7242

; bss_919e equ __zdseg_end + (__zobss_919e - __zdata_start)
; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
; bss_9bd0 equ __zdseg_end + (__zobss_9bd0 - __zdata_start)
%include "vmaze/api_idx_0004_IPQQ.asm"     ; 0x72a6

; bss_91b2 equ __zdseg_end + (__zobss_91b2 - __zdata_start)
%include "vmaze/api_idx_0002_NIPM.asm"     ; 0x73b6

; bss_91b0 equ __zdseg_end + (__zobss_91b0 - __zdata_start)
%include "vmaze/loc_PLOT.asm"              ; 0x7436

%include "vmaze/api_idx_0004_TLVR.asm"     ; 0x744e

%include "vmaze/api_idx_0050_QVOG.asm"     ; 0x74e2

%include "vmaze/api_idx_0004_THPM.asm"     ; 0x7542

%include "vmaze/api_idx_0006_NNSP.asm"     ; 0x75ae

%include "vmaze/api_idx_001c_QLSV.asm"     ; 0x764d

%include "vmaze/api_idx_000a_SRNS.asm"     ; 0x784f

; bss_9b4a equ __zdseg_end + (__zobss_9b4a - __zdata_start)
%include "vmaze/api_idx_0004_THGV.asm"     ; 0x799e

%include "vmaze/loc_HLOU.asm"              ; 0x7a34

%include "vmaze/api_idx_0002_RHUQ.asm"     ; 0x7abe

%include "vmaze/api_idx_0018_OIIM.asm"     ; 0x7b53

%include "vmaze/loc_HMKT.asm"              ; 0x7cb4

%include "vmaze/api_idx_000a_JJNS.asm"     ; 0x7ce5

%include "vmaze/api_idx_001e_QHIQ.asm"     ; 0x7e46

%include "vmaze/api_idx_000e_RTSO.asm"     ; 0x804e

%include "vmaze/api_idx_0010_TVMI.asm"     ; 0x820b

%include "shared/api_idx_0004_KGNP.asm"     ; 0x83b3

%include "vmaze/api_idx_000e_LLMU.asm"     ; 0x8448

%include "vmaze/loc_GTVH.asm"              ; 0x8540

%include "vmaze/api_idx_0012_JIRG.asm"     ; 0x8568

%include "vmaze/loc_OKIJ.asm"              ; 0x86a9

%include "vmaze/api_idx_0002_QMUL.asm"     ; 0x86f9

%include "vmaze/api_idx_000c_QGMU.asm"     ; 0x8794

; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
; bss_9b4a equ __zdseg_end + (__zobss_9b4a - __zdata_start)
; bss_9bd0 equ __zdseg_end + (__zobss_9bd0 - __zdata_start)
%include "vmaze/loc_IPSH.asm"              ; 0x8867

%include "shared/api_idx_0002_OVRM.asm"     ; 0x89d0

%include "vmaze/api_idx_0002_MSOL.asm"     ; 0x8a14

; bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
%include "vmaze/api_idx_0006_MPQT.asm"     ; 0x8b52

%include "vmaze/api_idx_000a_JNPN.asm"     ; 0x8c47

%include "vmaze/api_idx_0002_NGNS.asm"     ; 0x8de9

%include "vmaze/api_idx_0002_QLLK.asm"     ; 0x8e6a

%include "vmaze/api_idx_0002_SKMG.asm"     ; 0x8f1a

bss_9be6 equ __zdseg_end + (__zobss_9be6 - __zdata_start)
%include "vmaze/api_idx_0002_TJNR.asm"     ; 0x8f94

; bss_9be6 equ __zdseg_end + (__zobss_9be6 - __zdata_start)
bss_9c00 equ __zdseg_end + (__zobss_9c00 - __zdata_start)
%include "vmaze/api_idx_0048_OSRI.asm"     ; 0x9029

bss_9bdc equ __zdseg_end + (__zobss_9bdc - __zdata_start)
bss_9bde equ __zdseg_end + (__zobss_9bde - __zdata_start)
; bss_9be6 equ __zdseg_end + (__zobss_9be6 - __zdata_start)
; bss_9c00 equ __zdseg_end + (__zobss_9c00 - __zdata_start)
%include "vmaze/api_idx_0006_UMQS.asm"     ; 0x920f

%include "vmaze/api_idx_0002_JLVK.asm"     ; 0x93ab

%include "vmaze/loc_PQKO.asm"              ; 0x9448

%include "vmaze/loc_LGQU.asm"              ; 0x94a6

%include "vmaze/api_idx_003a_HOUV.asm"     ; 0x94ef

%include "vmaze/loc_HULT.asm"              ; 0x9658

%include "vmaze/api_idx_0004_VRTU.asm"     ; 0x96ce

%include "vmaze/api_idx_0002_NMTS.asm"     ; 0x98cc

%include "shared/api_idx_0002_QVIM.asm"     ; 0x9920

%include "vmaze/api_idx_0006_NNTR.asm"     ; 0x99dd

%include "vmaze/api_idx_0010_IOJT.asm"     ; 0x9a80

%include "vmaze/api_idx_0004_SRMT.asm"     ; 0x9e79

%include "vmaze/api_idx_0012_NJUH.asm"     ; 0x9ef7

%include "vmaze/loc_KHPH.asm"              ; 0xa215

%include "vmaze/api_idx_0002_OOUO.asm"     ; 0xa28c

%include "vmaze/api_idx_0010_TRQK.asm"     ; 0xa2df

%include "vmaze/api_idx_0008_OMPR.asm"     ; 0xa5ba

%include "vmaze/api_idx_0002_TLGN.asm"     ; 0xa7b2

%include "vmaze/api_idx_0002_KRLI.asm"     ; 0xa9a4

%include "vmaze/loc_SNPU.asm"              ; 0xaad3

%include "vmaze/api_idx_0032_RMHI.asm"     ; 0xab9b

dseg_9188 equ __zdseg_end + (__zdseg_9188 - __zdata_start)
dseg_918a equ __zdseg_end + (__zdseg_918a - __zdata_start)
dseg_918c equ __zdseg_end + (__zdseg_918c - __zdata_start)
dseg_918e equ __zdseg_end + (__zdseg_918e - __zdata_start)
dseg_9190 equ __zdseg_end + (__zdseg_9190 - __zdata_start)
; bss_9192  equ __zdseg_end + (__zobss_9192 - __zdata_start)
%include "vmaze/asm_only/loc_TKPQ.asm"              ; 0xac30

__zdata_start:

    db 'VM1.$$$', 0
    db 'MAZEDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TOWNDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TILEDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'CAVEDATA.VGA', 0
    db 'OCAVDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 'TREEDATA.VGA', 0
    db 'OTWNDATA.VGA', 0
    db 'WATRDATA.VGA', 0
    db 0x00
    db '!%&]@#~', 0
    db 0x20, 0x00

__zdseg_9188:
    db 0x00, 0x00
__zdseg_918a:
    db 0x00, 0x00
__zdseg_918c:
    db 0x00, 0x00
__zdseg_918e:
    db 0x00, 0x00
__zdseg_9190:
    db 0x00, 0x00

__zimage_end:
absolute __zimage_end
__zobss_9192:
    resb 0x0002
__zobss_9194:
    resb 0x0002
__zobss_9196:
    resb 0x0002
__zobss_9198:
    resb 0x0002
__zobss_919a:
    resb 0x0002
__zobss_919c:
    resb 0x0002
__zobss_919e:
    resb 0x0008
__zobss_91a6:
    resb 0x0002
__zobss_91a8:
    resb 0x0002
__zobss_91aa:
    resb 0x0002
__zobss_91ac:
    resb 0x0002
__zobss_91ae:
    resb 0x0002
__zobss_91b0:
    resb 0x0002
__zobss_91b2:
    resb 0x0002
__zobss_91b4:
    resb 0x001c
__zobss_91d0:
    resb 0x0002
__zobss_91d2:
    resb 0x0002
__zobss_91d4:
    resb 0x0002
__zobss_91d6:
    resb 0x000e
__zobss_91e4:
    resb 0x013a
__zobss_931e:
    resb 0x07fa
__zobss_9b18:
    resb 0x001c
__zobss_9b34:
    resb 0x0002
__zobss_9b36:
    resb 0x0002
__zobss_9b38:
    resb 0x0002
__zobss_9b3a:
    resb 0x0002
__zobss_9b3c:
    resb 0x0002
__zobss_9b3e:
    resb 0x0002
__zobss_9b40:
    resb 0x0002
__zobss_9b42:
    resb 0x0002
__zobss_9b44:
    resb 0x0002
__zobss_9b46:
    resb 0x0002
__zobss_9b48:
    resb 0x0002
__zobss_9b4a:
    resb 0x0002
__zobss_9b4c:
    resb 0x0002
__zobss_9b4e:
    resb 0x0002
__zobss_9b50:
    resb 0x0080
__zobss_9bd0:
    resb 0x000c
__zobss_9bdc:
    resb 0x0002
__zobss_9bde:
    resb 0x0008
__zobss_9be6:
    resb 0x001a
__zobss_9c00:
    resb 0x0226
__zobss_end:
