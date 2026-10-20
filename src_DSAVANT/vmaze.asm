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
    dw (__zdata_start - __zcode_start)       ; 0xac60 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x00fa ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0c94 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xfc77 ; o_entry: overlay entry offset (CS)

__zcode_start:

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
bss_9192  equ __zdseg_end + (__zobss_9192 - __zdata_start)
bss_9194  equ __zdseg_end + (__zobss_9194 - __zdata_start)
bss_9196  equ __zdseg_end + (__zobss_9196 - __zdata_start)
bss_9198  equ __zdseg_end + (__zobss_9198 - __zdata_start)
bss_919a  equ __zdseg_end + (__zobss_919a - __zdata_start)
bss_919c  equ __zdseg_end + (__zobss_919c - __zdata_start)
%include "vmaze/ovmain.asm"                ; 0x000e

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

dseg_90a0 equ __zdseg_end + (__zdseg_90a0 - __zdata_start)
dseg_90ad equ __zdseg_end + 0x0015
dseg_90ba equ __zdseg_end + 0x0022
dseg_90c7 equ __zdseg_end + 0x002f
dseg_90d4 equ __zdseg_end + 0x003c
dseg_90e1 equ __zdseg_end + 0x0049
dseg_90ee equ __zdseg_end + 0x0056
dseg_90fb equ __zdseg_end + 0x0063
dseg_9108 equ __zdseg_end + 0x0070
dseg_9115 equ __zdseg_end + 0x007d
dseg_9122 equ __zdseg_end + 0x008a
dseg_912f equ __zdseg_end + 0x0097
dseg_913c equ __zdseg_end + 0x00a4
dseg_9149 equ __zdseg_end + 0x00b1
dseg_9156 equ __zdseg_end + 0x00be
dseg_9163 equ __zdseg_end + 0x00cb
dseg_9170 equ __zdseg_end + 0x00d8
bss_91a6  equ __zdseg_end + (__zobss_91a6 - __zdata_start)
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
bss_9320 equ __zdseg_end + (__zobss_9320 - __zdata_start)
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
bss_91d8 equ __zdseg_end + (__zobss_91d8 - __zdata_start)
bss_91f1 equ __zdseg_end + (__zobss_91f1 - __zdata_start)
bss_9223 equ __zdseg_end + (__zobss_9223 - __zdata_start)
bss_923c equ __zdseg_end + (__zobss_923c - __zdata_start)
bss_926e equ __zdseg_end + (__zobss_926e - __zdata_start)
bss_92a0 equ __zdseg_end + (__zobss_92a0 - __zdata_start)
bss_92ba equ __zdseg_end + (__zobss_92ba - __zdata_start)
bss_92ec equ __zdseg_end + (__zobss_92ec - __zdata_start)
%include "vmaze/api_idx_0012_RMOL.asm"     ; 0x4665

%include "shared/api_idx_0016_LHKK.asm"     ; 0x4f53

%include "shared/api_idx_0024_NUGL.asm"     ; 0x50f4

%include "shared/api_idx_001e_IGLM.asm"     ; 0x529a

; bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
; bss_91d0 equ __zdseg_end + (__zobss_91d0 - __zdata_start)
; bss_91d2 equ __zdseg_end + (__zobss_91d2 - __zdata_start)
; bss_91d4 equ __zdseg_end + (__zobss_91d4 - __zdata_start)
; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
; bss_91d8 equ __zdseg_end + (__zobss_91d8 - __zdata_start)
bss_91e4 equ __zdseg_end + (__zobss_91e4 - __zdata_start)
; bss_91f1 equ __zdseg_end + (__zobss_91f1 - __zdata_start)
bss_920a equ __zdseg_end + (__zobss_920a - __zdata_start)
; bss_9223 equ __zdseg_end + (__zobss_9223 - __zdata_start)
; bss_923c equ __zdseg_end + (__zobss_923c - __zdata_start)
; bss_926e equ __zdseg_end + (__zobss_926e - __zdata_start)
; bss_92a0 equ __zdseg_end + (__zobss_92a0 - __zdata_start)
; bss_92ba equ __zdseg_end + (__zobss_92ba - __zdata_start)
; bss_92ec equ __zdseg_end + (__zobss_92ec - __zdata_start)
; bss_931e equ __zdseg_end + (__zobss_931e - __zdata_start)
; bss_9320 equ __zdseg_end + (__zobss_9320 - __zdata_start)
; bss_9b18 equ __zdseg_end + (__zobss_9b18 - __zdata_start)
bss_9b1a equ __zdseg_end + (__zobss_9b1a - __zdata_start)
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

dseg_917e equ __zdseg_end + (__zdseg_917e - __zdata_start)
dseg_9186 equ __zdseg_end + (__zdseg_9186 - __zdata_start)
; bss_9b48  equ __zdseg_end + (__zobss_9b48 - __zdata_start)
; bss_9b4a  equ __zdseg_end + (__zobss_9b4a - __zdata_start)
; bss_9b4c  equ __zdseg_end + (__zobss_9b4c - __zdata_start)
bss_9b50  equ __zdseg_end + (__zobss_9b50 - __zdata_start)
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

bss_9bd2 equ __zdseg_end + (__zobss_9bd2 - __zdata_start)
bss_9be6 equ __zdseg_end + (__zobss_9be6 - __zdata_start)
%include "vmaze/api_idx_0002_TJNR.asm"     ; 0x8f94

; bss_9bd2 equ __zdseg_end + (__zobss_9bd2 - __zdata_start)
; bss_9be6 equ __zdseg_end + (__zobss_9be6 - __zdata_start)
bss_9c00 equ __zdseg_end + (__zobss_9c00 - __zdata_start)
bss_9c02 equ __zdseg_end + (__zobss_9c02 - __zdata_start)
%include "vmaze/api_idx_0048_OSRI.asm"     ; 0x9029

; bss_9bd2 equ __zdseg_end + (__zobss_9bd2 - __zdata_start)
bss_9bdc equ __zdseg_end + (__zobss_9bdc - __zdata_start)
bss_9bde equ __zdseg_end + (__zobss_9bde - __zdata_start)
; bss_9be6 equ __zdseg_end + (__zobss_9be6 - __zdata_start)
; bss_9c00 equ __zdseg_end + (__zobss_9c00 - __zdata_start)
; bss_9c02 equ __zdseg_end + (__zobss_9c02 - __zdata_start)
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

bss_9c42 equ __zdseg_end + (__zobss_9c42 - __zdata_start)
%include "vmaze/api_idx_0010_IOJT.asm"     ; 0x9a80

%include "vmaze/api_idx_0004_SRMT.asm"     ; 0x9e79

%include "vmaze/api_idx_0012_NJUH.asm"     ; 0x9ef7

; bss_9c42 equ __zdseg_end + (__zobss_9c42 - __zdata_start)
%include "vmaze/loc_KHPH.asm"              ; 0xa215

%include "vmaze/api_idx_0002_OOUO.asm"     ; 0xa28c

; bss_9c42 equ __zdseg_end + (__zobss_9c42 - __zdata_start)
%include "vmaze/api_idx_0010_TRQK.asm"     ; 0xa2df

; bss_9c42 equ __zdseg_end + (__zobss_9c42 - __zdata_start)
%include "vmaze/api_idx_0008_OMPR.asm"     ; 0xa5ba

%include "vmaze/api_idx_0002_TLGN.asm"     ; 0xa7b2

%include "vmaze/api_idx_0002_KRLI.asm"     ; 0xa9a4

%include "vmaze/loc_SNPU.asm"              ; 0xaad3

; bss_9c42 equ __zdseg_end + (__zobss_9c42 - __zdata_start)
%include "vmaze/api_idx_0032_TNQM.asm"     ; 0xab9b

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_9192 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec_ovbgn.asm"           ; 0xac30

__zdseg_9098:
__zdata_start:
    push si                          ; 0xac6e
    dec bp                           ; 0xac6f
    xor word [bss_2424], bp          ; 0xac70
    and al, 0                        ; 0xac74
__zdseg_90a0:
    dec bp                           ; 0xac76
    inc cx                           ; 0xac77
    pop dx                           ; 0xac78
    inc bp                           ; 0xac79
    inc sp                           ; 0xac7a
    inc cx                           ; 0xac7b
    push sp                          ; 0xac7c
    inc cx                           ; 0xac7d
    cs push si                       ; 0xac7e
    inc di                           ; 0xac80
    inc cx                           ; 0xac81
    add byte [bx + 0x41], dl         ; 0xac82
    push sp                          ; 0xac85
    push dx                          ; 0xac86
    inc sp                           ; 0xac87
    inc cx                           ; 0xac88
    push sp                          ; 0xac89
    inc cx                           ; 0xac8a
    cs push si                       ; 0xac8b
    inc di                           ; 0xac8d
    inc cx                           ; 0xac8e
    add byte [si + 0x52], dl         ; 0xac8f
    inc bp                           ; 0xac92
    inc bp                           ; 0xac93
    inc sp                           ; 0xac94
    inc cx                           ; 0xac95
    push sp                          ; 0xac96
    inc cx                           ; 0xac97
    cs push si                       ; 0xac98
    inc di                           ; 0xac9a
    inc cx                           ; 0xac9b
    add byte [bx + 0x54], cl         ; 0xac9c
    push di                          ; 0xac9f
    dec si                           ; 0xaca0
    inc sp                           ; 0xaca1
    inc cx                           ; 0xaca2
    push sp                          ; 0xaca3
    inc cx                           ; 0xaca4
    cs push si                       ; 0xaca5
    inc di                           ; 0xaca7
    inc cx                           ; 0xaca8
    add byte [si + 0x49], dl         ; 0xaca9
    dec sp                           ; 0xacac
    inc bp                           ; 0xacad
    inc sp                           ; 0xacae
    inc cx                           ; 0xacaf
    push sp                          ; 0xacb0
    inc cx                           ; 0xacb1
    cs push si                       ; 0xacb2
    inc di                           ; 0xacb4
    inc cx                           ; 0xacb5
    add byte [si + 0x4f], dl         ; 0xacb6
    push di                          ; 0xacb9
    dec si                           ; 0xacba
    inc sp                           ; 0xacbb
    inc cx                           ; 0xacbc
    push sp                          ; 0xacbd
    inc cx                           ; 0xacbe
    cs push si                       ; 0xacbf
    inc di                           ; 0xacc1
    inc cx                           ; 0xacc2
    add byte [bx + 0x54], cl         ; 0xacc3
    push di                          ; 0xacc6
    dec si                           ; 0xacc7
    inc sp                           ; 0xacc8
    inc cx                           ; 0xacc9
    push sp                          ; 0xacca
    inc cx                           ; 0xaccb
    cs push si                       ; 0xaccc
    inc di                           ; 0xacce
    inc cx                           ; 0xaccf
    add byte [bx + 0x41], dl         ; 0xacd0
    push sp                          ; 0xacd3
    push dx                          ; 0xacd4
    inc sp                           ; 0xacd5
    inc cx                           ; 0xacd6
    push sp                          ; 0xacd7
    inc cx                           ; 0xacd8
    cs push si                       ; 0xacd9
    inc di                           ; 0xacdb
    inc cx                           ; 0xacdc
    add byte [si + 0x49], dl         ; 0xacdd
    dec sp                           ; 0xace0
    inc bp                           ; 0xace1
    inc sp                           ; 0xace2
    inc cx                           ; 0xace3
    push sp                          ; 0xace4
    inc cx                           ; 0xace5
    cs push si                       ; 0xace6
    inc di                           ; 0xace8
    inc cx                           ; 0xace9
    add byte [si + 0x52], dl         ; 0xacea
    inc bp                           ; 0xaced
    inc bp                           ; 0xacee
    inc sp                           ; 0xacef
    inc cx                           ; 0xacf0
    push sp                          ; 0xacf1
    inc cx                           ; 0xacf2
    cs push si                       ; 0xacf3
    inc di                           ; 0xacf5
    inc cx                           ; 0xacf6
    add byte [bx + 0x43], cl         ; 0xacf7
    inc cx                           ; 0xacfa
    push si                          ; 0xacfb
    inc sp                           ; 0xacfc
    inc cx                           ; 0xacfd
    push sp                          ; 0xacfe
    inc cx                           ; 0xacff
    cs push si                       ; 0xad00
    inc di                           ; 0xad02
    inc cx                           ; 0xad03
    add byte [bp + di + 0x41], al    ; 0xad04
    push si                          ; 0xad07
    inc bp                           ; 0xad08
    inc sp                           ; 0xad09
    inc cx                           ; 0xad0a
    push sp                          ; 0xad0b
    inc cx                           ; 0xad0c
    cs push si                       ; 0xad0d
    inc di                           ; 0xad0f
    inc cx                           ; 0xad10
    add byte [bx + 0x43], cl         ; 0xad11
    inc cx                           ; 0xad14
    push si                          ; 0xad15
    inc sp                           ; 0xad16
    inc cx                           ; 0xad17
    push sp                          ; 0xad18
    inc cx                           ; 0xad19
    cs push si                       ; 0xad1a
    inc di                           ; 0xad1c
    inc cx                           ; 0xad1d
    add byte [bx + 0x41], dl         ; 0xad1e
    push sp                          ; 0xad21
    push dx                          ; 0xad22
    inc sp                           ; 0xad23
    inc cx                           ; 0xad24
    push sp                          ; 0xad25
    inc cx                           ; 0xad26
    cs push si                       ; 0xad27
    inc di                           ; 0xad29
    inc cx                           ; 0xad2a
    add byte [si + 0x52], dl         ; 0xad2b
    inc bp                           ; 0xad2e
    inc bp                           ; 0xad2f
    inc sp                           ; 0xad30
    inc cx                           ; 0xad31
    push sp                          ; 0xad32
    inc cx                           ; 0xad33
    cs push si                       ; 0xad34
    inc di                           ; 0xad36
    inc cx                           ; 0xad37
    add byte [bx + 0x54], cl         ; 0xad38
    push di                          ; 0xad3b
    dec si                           ; 0xad3c
    inc sp                           ; 0xad3d
    inc cx                           ; 0xad3e
    push sp                          ; 0xad3f
    inc cx                           ; 0xad40
    cs push si                       ; 0xad41
    inc di                           ; 0xad43
    inc cx                           ; 0xad44
    add byte [bx + 0x41], dl         ; 0xad45
    push sp                          ; 0xad48
    push dx                          ; 0xad49
    inc sp                           ; 0xad4a
    inc cx                           ; 0xad4b
    push sp                          ; 0xad4c
    inc cx                           ; 0xad4d
    cs push si                       ; 0xad4e
    inc di                           ; 0xad50
    inc cx                           ; 0xad51
    add byte [bx + si], al           ; 0xad52
__zdseg_917e:
    and word [di], sp                ; 0xad54
    es pop bp                        ; 0xad56
    inc ax                           ; 0xad58
    and di, word [bp]                ; 0xad59
__zdseg_9186:
    and byte [bx + si], al           ; 0xad5c
__zsave_si:
    add byte [bx + si], al           ; 0xad5e
__zsave_di:
    add byte [bx + si], al           ; 0xad60
__zsave_sp:
    add byte [bx + si], al           ; 0xad62
__zsave_bp:
    add byte [bx + si], al           ; 0xad64
__zsave_ret:
    add byte [bx + si], al           ; 0xad66

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
    resb 0x0002
__zobss_91d8:
    resb 0x000c
__zobss_91e4:
    resb 0x000d
__zobss_91f1:
    resb 0x0019
__zobss_920a:
    resb 0x0019
__zobss_9223:
    resb 0x0019
__zobss_923c:
    resb 0x0032
__zobss_926e:
    resb 0x0032
__zobss_92a0:
    resb 0x001a
__zobss_92ba:
    resb 0x0032
__zobss_92ec:
    resb 0x0032
__zobss_931e:
    resb 0x0002
__zobss_9320:
    resb 0x07f8
__zobss_9b18:
    resb 0x0002
__zobss_9b1a:
    resb 0x001a
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
    resb 0x0002
__zobss_9bd2:
    resb 0x000a
__zobss_9bdc:
    resb 0x0002
__zobss_9bde:
    resb 0x0008
__zobss_9be6:
    resb 0x001a
__zobss_9c00:
    resb 0x0002
__zobss_9c02:
    resb 0x0040
__zobss_9c42:
    resb 0x01e4
__zobss_end:
