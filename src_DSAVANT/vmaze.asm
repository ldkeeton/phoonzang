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
    dw 0x0c94                             ; o_bss: uninitialized data size
    dw loc_TKPQ - IMAGE_BASE + __zres_end ; 0xfc77 ; o_entry: overlay entry offset (CS)

__zcode_start:
fpu_loc_06b5 equ 0x06b5 + VBASE
leaf_loc_4404 equ 0x4404 + VBASE
string_loc_4b6b equ 0x4b6b + VBASE
loc_ITNU equ 0xab7d + VBASE

%include "vmaze/api_idx_0002_RQJQ.asm"     ; 0x000e

%include "vmaze/api_idx_0002_VUIJ.asm"     ; 0x0106

%include "vmaze/loc_RRRG.asm"              ; 0x017f

%include "vmaze/api_idx_0008_URRP.asm"     ; 0x01c9

%include "vmaze/api_idx_0002_LMTG.asm"     ; 0x02da

%include "vmaze/api_idx_0002_PQLV.asm"     ; 0x02fe

%include "vmaze/loc_VRKM.asm"              ; 0x0344

api_idx_0002_HTRV.bss1 equ bss_91a6
api_idx_0002_HTRV.loc1 equ loc_046b
%include "shared/api_idx_0002_HTRV.asm"     ; 0x03ea

%include "vmaze/leaf_loc_OTPG.asm"         ; 0x03fb

leaf_loc_LHLU.loc1 equ loc_KJUH
%include "shared/leaf_loc_LHLU.asm"         ; 0x0402

%include "vmaze/leaf_loc_UTMM.asm"         ; 0x0409

%include "vmaze/api_idx_0014_LHRI.asm"     ; 0x06da

%include "vmaze/loc_LPSI.asm"              ; 0x09cb

%include "vmaze/api_idx_0006_KUNS.asm"     ; 0x0a6e

%include "vmaze/api_idx_0002_TOSS.asm"     ; 0x0acc

%include "vmaze/loc_VGMJ.asm"              ; 0x0b14

%include "vmaze/api_idx_0002_SMVN.asm"     ; 0x0b66

%include "vmaze/api_idx_000c_RNQS.asm"     ; 0x0cb5

%include "vmaze/api_idx_0002_ITLQ.asm"     ; 0x0e5d

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

%include "vmaze/loc_KOGT.asm"              ; 0x1240

%include "shared/loc_IVLM.asm"              ; 0x12a2

%include "vmaze/loc_LPNP.asm"              ; 0x12d3

%include "vmaze/api_idx_0004_JLQH.asm"     ; 0x1308

loc_HILS.bss1 equ bss_919e
%include "shared/loc_HILS.asm"              ; 0x13c0

%include "vmaze/api_idx_0004_IHHI.asm"     ; 0x13f7

%include "vmaze/api_idx_0004_HRPS.asm"     ; 0x1504

%include "vmaze/api_idx_000e_NSGM.asm"     ; 0x162b

%include "vmaze/api_idx_0004_USIK.asm"     ; 0x17ee

%include "vmaze/api_idx_000a_JVOP.asm"     ; 0x195c

%include "vmaze/fpu_loc_VKJQ.asm"          ; 0x1997

%include "vmaze/fpu_loc_KUHO.asm"          ; 0x199e

%include "vmaze/fpu_loc_USLK.asm"          ; 0x19a5

%include "vmaze/fpu_loc_IJNV.asm"          ; 0x19ac

%include "vmaze/fpu_loc_LHHK.asm"          ; 0x19b3

%include "vmaze/fpu_loc_KVGV.asm"          ; 0x19ba

%include "vmaze/api_idx_0018_USPR.asm"     ; 0x1c94

%include "vmaze/api_idx_0010_HOIJ.asm"     ; 0x2033

%include "shared/api_idx_0006_TMNI.asm"     ; 0x20dc

%include "vmaze/api_idx_0006_TGQJ.asm"     ; 0x2133

%include "vmaze/loc_MMGL.asm"              ; 0x21e3

%include "vmaze/api_idx_0022_RHMN.asm"     ; 0x2215

loc_GPIH.bss1 equ bss_91a6
%include "shared/loc_GPIH.asm"              ; 0x2d94

loc_MMMO.bss1 equ bss_91a6
%include "shared/loc_MMMO.asm"              ; 0x2e0c

%include "vmaze/loc_UMHI_2e84.asm"         ; 0x2e84

%include "vmaze/loc_LPLI_2e98.asm"         ; 0x2e98

%include "vmaze/loc_UMHI_2eac.asm"         ; 0x2eac

%include "vmaze/loc_LPLI_2ec0.asm"         ; 0x2ec0

%include "vmaze/loc_VOSO.asm"              ; 0x2ed4

%include "vmaze/api_idx_0008_KSTK.asm"     ; 0x2f8e

leaf_loc_LGUH.loc1 equ loc_KNRN
%include "shared/leaf_loc_LGUH.asm"         ; 0x3241

leaf_loc_TGSJ.loc1 equ loc_KNRN
%include "shared/leaf_loc_TGSJ.asm"         ; 0x3249

leaf_loc_LHNH.loc1 equ loc_KNRN
%include "shared/leaf_loc_LHNH.asm"         ; 0x3251

leaf_loc_UKTT.loc1 equ loc_KNRN
%include "shared/leaf_loc_UKTT.asm"         ; 0x3259

leaf_loc_LUKJ.bss1 equ bss_91d6
leaf_loc_LUKJ.loc1 equ loc_KNRN
%include "shared/leaf_loc_LUKJ.asm"         ; 0x3261

leaf_loc_NNIO.bss1 equ bss_91d6
leaf_loc_NNIO.loc1 equ loc_KNRN
%include "shared/leaf_loc_NNIO.asm"         ; 0x3270

%include "vmaze/leaf_loc_VKVH.asm"         ; 0x327f

%include "vmaze/leaf_loc_VUHJ.asm"         ; 0x329a

%include "vmaze/leaf_loc_PQRM.asm"         ; 0x32b9

leaf_loc_KGIG.loc1 equ loc_KNRN
%include "shared/leaf_loc_KGIG.asm"         ; 0x32d8

leaf_loc_RJTN.loc1 equ loc_KNRN
%include "shared/leaf_loc_RJTN.asm"         ; 0x32e0

%include "vmaze/leaf_loc_UVOJ.asm"         ; 0x32e8

%include "vmaze/leaf_loc_QUHK.asm"         ; 0x32fc

%include "vmaze/leaf_loc_HPLP.asm"         ; 0x330f

%include "vmaze/leaf_loc_OKIV.asm"         ; 0x3325

%include "vmaze/leaf_loc_JHVI.asm"         ; 0x3343

%include "vmaze/api_idx_0008_QJHI.asm"     ; 0x33c0

%include "vmaze/api_idx_0004_OVUO.asm"     ; 0x358c

%include "vmaze/api_idx_0010_RPIL.asm"     ; 0x3802

%include "vmaze/api_idx_0012_HQVT.asm"     ; 0x3f56

leaf_loc_RSTT.loc1 equ loc_PLIR_4664
leaf_loc_RSTT.loc2 equ loc_4613
%include "shared/leaf_loc_RSTT.asm"         ; 0x4431

%include "shared/leaf_loc_URUM.asm"         ; 0x446b

%include "shared/leaf_loc_JNNQ.asm"         ; 0x44ad

leaf_loc_MGPR.bss1 equ bss_91d4
%include "shared/leaf_loc_MGPR.asm"         ; 0x44f6

%include "vmaze/leaf_loc_GHQS.asm"         ; 0x45c0

%include "vmaze/api_idx_0012_TQRK.asm"     ; 0x4665

%include "vmaze/string_loc_NVUT.asm"       ; 0x4b23

%include "vmaze/string_loc_MNIM.asm"       ; 0x4b67

%include "vmaze/string_loc_VSGL.asm"       ; 0x4b69

%include "vmaze/api_idx_0016_LHKK.asm"     ; 0x4f53

%include "shared/api_idx_0024_NUGL.asm"     ; 0x50f4

%include "shared/api_idx_001e_IGLM.asm"     ; 0x529a

%include "vmaze/api_idx_0030_JQMM.asm"     ; 0x53fd

loc_IONR.api_idx1 equ api_idx_0030_JQMM
%include "shared/loc_IONR.asm"              ; 0x676c

%include "shared/loc_MPHO.asm"              ; 0x678c

%include "shared/api_idx_0004_QVPP.asm"     ; 0x67c6

%include "vmaze/api_idx_0002_GSOS.asm"     ; 0x6882

%include "vmaze/loc_VNRM.asm"              ; 0x68f2

%include "shared/api_idx_0006_POPS.asm"     ; 0x6960

api_idx_0004_GMNK.loc1 equ loc_6ab9
%include "shared/api_idx_0004_GMNK.asm"     ; 0x69d6

%include "vmaze/fpu_loc_VMRH.asm"          ; 0x6a57

%include "vmaze/fpu_loc_NQGQ.asm"          ; 0x6a7a

%include "vmaze/fpu_loc_TKUN.asm"          ; 0x6a85

%include "vmaze/fpu_loc_JQQH.asm"          ; 0x6a97

%include "vmaze/loc_GRON.asm"              ; 0x6ac7

%include "vmaze/api_idx_000a_RIKJ.asm"     ; 0x6b0a

%include "vmaze/loc_MVHP.asm"              ; 0x6b5a

api_idx_0004_JGSH.bss1 equ bss_9b4c
api_idx_0004_JGSH.loc1 equ loc_MVHP
api_idx_0004_JGSH.bss2 equ bss_9b4e
%include "shared/api_idx_0004_JGSH.asm"     ; 0x6c0a

%include "vmaze/api_idx_0090_PNOU.asm"     ; 0x6cc9

%include "vmaze/api_idx_0004_JQTM.asm"     ; 0x6eb1

%include "vmaze/loc_MLLK.asm"              ; 0x6f14

%include "shared/loc_SIKN.asm"              ; 0x6fbf

%include "vmaze/api_idx_0002_KUOJ.asm"     ; 0x7001

%include "vmaze/api_idx_001e_KGSI.asm"     ; 0x7034

%include "shared/loc_OUOJ.asm"              ; 0x7242

%include "vmaze/api_idx_0004_IPQQ.asm"     ; 0x72a6

%include "vmaze/api_idx_0002_NIPM.asm"     ; 0x73b6

%include "vmaze/loc_PLOT.asm"              ; 0x7436

%include "vmaze/api_idx_0004_TLVR.asm"     ; 0x744e

%include "vmaze/api_idx_0050_QVOG.asm"     ; 0x74e2

%include "vmaze/api_idx_0004_THPM.asm"     ; 0x7542

%include "vmaze/api_idx_0006_NNSP.asm"     ; 0x75ae

%include "vmaze/api_idx_001c_QLSV.asm"     ; 0x764d

%include "vmaze/api_idx_000a_SRNS.asm"     ; 0x784f

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

%include "vmaze/api_idx_000c_KJKJ.asm"     ; 0x8794

%include "vmaze/loc_VKNV.asm"              ; 0x8867

%include "vmaze/loc_LHIM.asm"              ; 0x8879

%include "vmaze/loc_VVQG_88af.asm"         ; 0x88af

%include "vmaze/loc_UKSK.asm"              ; 0x88b5

%include "vmaze/loc_VVQG_88c2.asm"         ; 0x88c2

%include "vmaze/loc_VVQG_88c8.asm"         ; 0x88c8

%include "vmaze/loc_VVQG_88ce.asm"         ; 0x88ce

%include "vmaze/loc_VVQG_88d4.asm"         ; 0x88d4

%include "vmaze/loc_VVQG_88da.asm"         ; 0x88da

%include "vmaze/loc_KNTG.asm"              ; 0x88e0

%include "vmaze/fpu_loc_TTRR.asm"          ; 0x8925

%include "vmaze/fpu_loc_VVQG_892e.asm"     ; 0x892e

%include "vmaze/fpu_loc_VVQG_8934.asm"     ; 0x8934

%include "vmaze/fpu_loc_SLKO.asm"          ; 0x893a

%include "vmaze/fpu_loc_RKSN_8943.asm"     ; 0x8943

%include "vmaze/fpu_loc_RKSN_8948.asm"     ; 0x8948

%include "vmaze/fpu_loc_MNIM_894d.asm"     ; 0x894d

%include "vmaze/fpu_loc_RKSN_894f.asm"     ; 0x894f

%include "vmaze/fpu_loc_RKSN_8954.asm"     ; 0x8954

%include "vmaze/fpu_loc_RKSN_8959.asm"     ; 0x8959

%include "vmaze/fpu_loc_MNIM_895e.asm"     ; 0x895e

%include "vmaze/fpu_loc_MNIM_8960.asm"     ; 0x8960

%include "vmaze/fpu_loc_RKSN_8962.asm"     ; 0x8962

%include "vmaze/fpu_loc_RKSN_8967.asm"     ; 0x8967

%include "vmaze/fpu_loc_RKSN_896c.asm"     ; 0x896c

%include "vmaze/fpu_loc_RKSN_8971.asm"     ; 0x8971

%include "vmaze/fpu_loc_KHTM.asm"          ; 0x8976

%include "shared/api_idx_0002_OVRM.asm"     ; 0x89d0

%include "vmaze/api_idx_0002_MSOL.asm"     ; 0x8a14

%include "vmaze/api_idx_0006_MPQT.asm"     ; 0x8b52

%include "vmaze/api_idx_000a_JNPN.asm"     ; 0x8c47

%include "vmaze/api_idx_0002_NGNS.asm"     ; 0x8de9

%include "vmaze/api_idx_0002_QLLK.asm"     ; 0x8e6a

%include "vmaze/api_idx_0002_SKMG.asm"     ; 0x8f1a

%include "vmaze/api_idx_0002_TJNR.asm"     ; 0x8f94

%include "vmaze/api_idx_0048_OSRI.asm"     ; 0x9029

%include "vmaze/api_idx_0006_TNSP.asm"     ; 0x920f

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

%include "vmaze/loc_MVIL.asm"              ; 0xaad3

%include "vmaze/asm_only/loc_LNJU.asm"              ; 0xab84

%include "vmaze/api_idx_0032_RMHI.asm"     ; 0xab9b

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
    db 0x20
    times 11 db 0


__zimage_end:
