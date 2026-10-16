; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vbase.inc"
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
    dw (__zdata_start - __zcode_start)           ; 0x93df ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x012e ; o_dsize: initialized data size
    dw 0x143c                                    ; o_bss: uninitialized data size
    dw string_loc_LOVO - IMAGE_BASE + __zres_end ; 0xe377 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_VTTH equ 0x0d04 + VBASE
loc_SJHR equ 0x14d6 + VBASE
leaf_loc_185e equ 0x185e + VBASE
loc_KTLJ equ 0x18c8 + VBASE
loc_GTJO equ 0x18ca + VBASE
leaf_loc_1949 equ 0x1949 + VBASE
loc_QNTL equ 0x6e77 + VBASE

%include "vbase/loc_RSMP.asm"              ; 0x000e

%include "shared/api_idx_0002_SJMT.asm"     ; 0x0036

%include "vbase/api_idx_0004_VUIP.asm"     ; 0x00b5

%include "vbase/loc_LSRQ.asm"              ; 0x023a

%include "vbase/api_idx_0016_KOOO.asm"     ; 0x0559

%include "vbase/api_idx_0006_MHOR.asm"     ; 0x05b6

%include "vbase/api_idx_0038_MNUL.asm"     ; 0x0606

%include "shared/api_idx_0008_LLVT.asm"     ; 0x0d3f

%include "vbase/api_idx_0028_NRJN.asm"     ; 0x0ef7

%include "vbase/loc_IQSK.asm"              ; 0x150d

%include "vbase/api_idx_004c_PNQN.asm"     ; 0x156e

%include "vbase/loc_QKKR_1683.asm"         ; 0x1683

%include "vbase/loc_QPMS.asm"              ; 0x168e

%include "vbase/leaf_loc_HLJH.asm"         ; 0x172e

%include "vbase/loc_QKKR_1820.asm"         ; 0x1820

%include "vbase/leaf_loc_LGVH.asm"         ; 0x182b

%include "vbase/leaf_loc_LLJP_1838.asm"    ; 0x1838

%include "vbase/leaf_loc_QOPI.asm"         ; 0x183c

%include "vbase/leaf_loc_QGMV.asm"         ; 0x1840

%include "vbase/leaf_loc_PVHU.asm"         ; 0x184d

%include "vbase/leaf_loc_LUHJ.asm"         ; 0x185a

%include "vbase/leaf_loc_NRKJ.asm"         ; 0x188f

%include "vbase/leaf_loc_PNPQ.asm"         ; 0x189c

%include "vbase/leaf_loc_HIVO_18a9.asm"    ; 0x18a9

%include "vbase/leaf_loc_KRST.asm"         ; 0x18ad

%include "vbase/leaf_loc_ITHO.asm"         ; 0x18ba

%include "vbase/loc_VOQS.asm"              ; 0x19ba

%include "vbase/loc_PULU.asm"              ; 0x1a12

%include "vbase/leaf_loc_PKOU.asm"         ; 0x1a1e

%include "vbase/leaf_loc_HIVO_1a22.asm"    ; 0x1a22

%include "vbase/leaf_loc_LSGO.asm"         ; 0x1a26

%include "vbase/leaf_loc_VSLU.asm"         ; 0x1a2a

%include "vbase/leaf_loc_MHUJ.asm"         ; 0x1a2e

%include "vbase/leaf_loc_GMVN.asm"         ; 0x1a32

%include "vbase/leaf_loc_QMHJ.asm"         ; 0x1a36

%include "vbase/leaf_loc_OVLK.asm"         ; 0x1a3a

%include "vbase/leaf_loc_JKOM.asm"         ; 0x1a3e

%include "vbase/leaf_loc_UKPT.asm"         ; 0x1a42

%include "vbase/leaf_loc_SSHO.asm"         ; 0x1a46

%include "vbase/leaf_loc_IULT.asm"         ; 0x1a4a

%include "vbase/leaf_loc_QKNS.asm"         ; 0x1a4e

%include "vbase/leaf_loc_KOOS.asm"         ; 0x1a52

%include "vbase/leaf_loc_QPHR.asm"         ; 0x1a56

%include "vbase/leaf_loc_PGGN.asm"         ; 0x1a5a

%include "vbase/leaf_loc_IVVU.asm"         ; 0x1a5e

%include "vbase/leaf_loc_SSRH.asm"         ; 0x1a62

%include "vbase/leaf_loc_TOIN.asm"         ; 0x1a66

%include "vbase/leaf_loc_KTTM.asm"         ; 0x1a6a

%include "vbase/leaf_loc_LLJP_1a6e.asm"    ; 0x1a6e

%include "vbase/leaf_loc_JOIK.asm"         ; 0x1a72

%include "vbase/leaf_loc_VIMI.asm"         ; 0x1a76

%include "vbase/leaf_loc_LIJO.asm"         ; 0x1a7a

%include "vbase/leaf_loc_KNVS.asm"         ; 0x1a7e

%include "vbase/leaf_loc_UNIG.asm"         ; 0x1a82

%include "vbase/leaf_loc_KUJK.asm"         ; 0x1a86

%include "vbase/leaf_loc_OSIL.asm"         ; 0x1a8a

%include "vbase/leaf_loc_MVLV.asm"         ; 0x1a8e

%include "vbase/leaf_loc_IJVH.asm"         ; 0x1a92

%include "vbase/leaf_loc_NVRS.asm"         ; 0x1a96

%include "vbase/leaf_loc_VQJH.asm"         ; 0x1a9a

%include "vbase/leaf_loc_HJJU.asm"         ; 0x1a9e

%include "vbase/leaf_loc_OPJU.asm"         ; 0x1aa2

%include "vbase/leaf_loc_ILJO.asm"         ; 0x1aa6

%include "vbase/leaf_loc_VJPN.asm"         ; 0x1aaa

%include "vbase/leaf_loc_VJOG.asm"         ; 0x1aae

%include "vbase/leaf_loc_MNTG.asm"         ; 0x1ab2

%include "vbase/leaf_loc_OHLN.asm"         ; 0x1ab6

%include "vbase/leaf_loc_OKVK.asm"         ; 0x1aba

%include "vbase/leaf_loc_NSPS.asm"         ; 0x1abe

%include "vbase/leaf_loc_NNJU.asm"         ; 0x1ac2

%include "vbase/leaf_loc_MITT.asm"         ; 0x1ac6

%include "vbase/leaf_loc_KRVQ.asm"         ; 0x1aca

%include "vbase/leaf_loc_QNKP.asm"         ; 0x1ace

%include "vbase/leaf_loc_GPUJ.asm"         ; 0x1ad2

%include "vbase/leaf_loc_RUIT.asm"         ; 0x1ad6

%include "vbase/leaf_loc_JJOT.asm"         ; 0x1ada

%include "vbase/leaf_loc_TPUN.asm"         ; 0x1ade

%include "vbase/leaf_loc_UHVO.asm"         ; 0x1ae2

%include "vbase/leaf_loc_GJRO.asm"         ; 0x1ae6

%include "vbase/leaf_loc_KSVS.asm"         ; 0x1aea

%include "vbase/leaf_loc_RSRN.asm"         ; 0x1aee

%include "vbase/leaf_loc_KVHO.asm"         ; 0x1af2

%include "vbase/leaf_loc_LPSP.asm"         ; 0x1af6

%include "vbase/leaf_loc_VHRJ.asm"         ; 0x1afa

%include "vbase/leaf_loc_JIMR.asm"         ; 0x1afe

%include "vbase/leaf_loc_JRKG.asm"         ; 0x1b02

%include "vbase/leaf_loc_RKOI.asm"         ; 0x1b06

%include "vbase/leaf_loc_VMRI.asm"         ; 0x1b0a

%include "vbase/leaf_loc_JJOS.asm"         ; 0x1b0e

%include "vbase/leaf_loc_SQUH.asm"         ; 0x1b12

%include "vbase/leaf_loc_UUJI.asm"         ; 0x1b16

%include "vbase/leaf_loc_PJRV.asm"         ; 0x1b1a

%include "vbase/leaf_loc_TOTT.asm"         ; 0x1b1e

%include "vbase/leaf_loc_UIJU.asm"         ; 0x1b22

%include "vbase/leaf_loc_KHHR.asm"         ; 0x1b26

%include "vbase/leaf_loc_KSTS.asm"         ; 0x1b2a

%include "vbase/leaf_loc_UINL.asm"         ; 0x1b2e

%include "vbase/leaf_loc_HNGM.asm"         ; 0x1b32

%include "vbase/leaf_loc_NKON.asm"         ; 0x1b36

%include "vbase/leaf_loc_OMNK.asm"         ; 0x1b3a

%include "vbase/leaf_loc_UVKL.asm"         ; 0x1b3e

%include "vbase/leaf_loc_OJRV.asm"         ; 0x1b42

%include "vbase/leaf_loc_SHGR.asm"         ; 0x1b46

%include "vbase/leaf_loc_ONGV.asm"         ; 0x1b4a

%include "vbase/leaf_loc_SUUP.asm"         ; 0x1b4e

%include "vbase/leaf_loc_VVNL.asm"         ; 0x1b52

%include "vbase/leaf_loc_NRTV.asm"         ; 0x1b56

%include "shared/loc_OIOJ.asm"              ; 0x1c09

%include "vbase/api_idx_0004_MMTP.asm"     ; 0x1c80

%include "vbase/loc_MJMJ.asm"              ; 0x1f0e

%include "vbase/api_idx_0040_TGSS.asm"     ; 0x1f6f

%include "vbase/api_idx_0072_MNLK.asm"     ; 0x1faf

%include "vbase/leaf_loc_KVRT.asm"         ; 0x25da

%include "vbase/leaf_loc_VKOG.asm"         ; 0x25e2

%include "vbase/leaf_loc_TQGG.asm"         ; 0x25ea

%include "vbase/leaf_loc_GGTG.asm"         ; 0x25f2

%include "vbase/leaf_loc_MJJK.asm"         ; 0x25fa

%include "vbase/leaf_loc_IMPH.asm"         ; 0x2602

%include "vbase/leaf_loc_OLLI_260a.asm"    ; 0x260a

%include "vbase/leaf_loc_OLLI_2612.asm"    ; 0x2612

%include "vbase/leaf_loc_OLLI_261a.asm"    ; 0x261a

%include "vbase/leaf_loc_TNRJ_2622.asm"    ; 0x2622

%include "vbase/leaf_loc_TNRJ_2629.asm"    ; 0x2629

%include "vbase/leaf_loc_RTMU.asm"         ; 0x2630

%include "vbase/leaf_loc_TNRJ_2637.asm"    ; 0x2637

%include "vbase/leaf_loc_MVIH.asm"         ; 0x263e

%include "vbase/leaf_loc_NGIK.asm"         ; 0x2645

%include "vbase/leaf_loc_NURI.asm"         ; 0x264c

%include "vbase/leaf_loc_RTHP.asm"         ; 0x2653

%include "vbase/leaf_loc_LKQO.asm"         ; 0x265a

leaf_loc_LGUH.loc1 equ loc_SVKO
%include "shared/leaf_loc_LGUH.asm"         ; 0x2a85

%include "vbase/leaf_loc_HSKV.asm"         ; 0x2a8d

%include "vbase/leaf_loc_RGKU.asm"         ; 0x2a95

%include "vbase/leaf_loc_PQKI.asm"         ; 0x2a9d

%include "vbase/leaf_loc_HGNR.asm"         ; 0x2aa5

%include "vbase/leaf_loc_IHKI.asm"         ; 0x2ab1

%include "vbase/leaf_loc_NSLJ.asm"         ; 0x2ab8

%include "vbase/leaf_loc_IMSM.asm"         ; 0x2ac4

%include "vbase/leaf_loc_OISN.asm"         ; 0x2acb

%include "vbase/leaf_loc_GUJN.asm"         ; 0x2ad2

%include "vbase/leaf_loc_SLSK.asm"         ; 0x2ad9

%include "vbase/asm_only/api_idx_0038_IQQK.asm"     ; 0x2fef

%include "vbase/asm_only/api_idx_004e_HUKL.asm"     ; 0x388c

%include "vbase/api_idx_0002_QRVU.asm"     ; 0x3fac

%include "vbase/api_idx_000c_NLKU.asm"     ; 0x4060

%include "vbase/api_idx_0050_NKOU.asm"     ; 0x41e7

%include "vbase/loc_HIQU.asm"              ; 0x4245

%include "vbase/loc_HOMM.asm"              ; 0x4292

%include "vbase/loc_RSMG.asm"              ; 0x42e3

%include "vbase/api_idx_0052_LJTK.asm"     ; 0x4335

%include "vbase/loc_GHNH.asm"              ; 0x46b8

%include "vbase/loc_IIHU.asm"              ; 0x4727

%include "vbase/loc_LLMG.asm"              ; 0x47bb

%include "vbase/api_idx_0052_JQTP.asm"     ; 0x4826

%include "vbase/loc_MLQO.asm"              ; 0x4b29

%include "vbase/loc_NGTJ.asm"              ; 0x4b5e

%include "vbase/api_idx_0062_NHSS.asm"     ; 0x4b95

%include "vbase/asm_only/loc_TQRN.asm"              ; 0x4d0e

%include "vbase/loc_JUVG.asm"              ; 0x563a

%include "vbase/loc_UUQO.asm"              ; 0x5675

%include "vbase/loc_POQO.asm"              ; 0x56b8

%include "vbase/loc_NVTI_56f9.asm"         ; 0x56f9

%include "vbase/string_loc_SPUS.asm"       ; 0x5703

%include "vbase/string_loc_LPQS.asm"       ; 0x570b

%include "vbase/string_loc_LIJT.asm"       ; 0x5712

%include "vbase/string_loc_JOHO.asm"       ; 0x5719

%include "vbase/string_loc_KQUO.asm"       ; 0x5720

%include "vbase/string_loc_SMQG.asm"       ; 0x5727

%include "vbase/string_loc_UUIN.asm"       ; 0x572e

%include "vbase/string_loc_PMML.asm"       ; 0x5735

%include "vbase/string_loc_KQRJ.asm"       ; 0x573c

%include "vbase/string_loc_UQKQ.asm"       ; 0x5743

%include "vbase/string_loc_UJIQ.asm"       ; 0x574a

%include "vbase/loc_GSOO.asm"              ; 0x5777

%include "vbase/string_loc_HJSM.asm"       ; 0x5784

%include "vbase/string_loc_OPPT.asm"       ; 0x579d

%include "vbase/string_loc_QRUI.asm"       ; 0x57a4

%include "vbase/string_loc_RMHU.asm"       ; 0x57ab

%include "vbase/string_loc_JJVI.asm"       ; 0x57b2

%include "vbase/string_loc_VLIS.asm"       ; 0x57b9

%include "vbase/string_loc_INMJ.asm"       ; 0x57c0

%include "vbase/string_loc_HMJM.asm"       ; 0x57c7

%include "vbase/loc_QLNN.asm"              ; 0x57f0

%include "vbase/leaf_loc_HJSM.asm"         ; 0x57fd

%include "vbase/leaf_loc_IQIN.asm"         ; 0x5816

%include "vbase/leaf_loc_ISLJ.asm"         ; 0x581d

%include "vbase/leaf_loc_QRTH.asm"         ; 0x5824

%include "vbase/leaf_loc_JVQR.asm"         ; 0x582b

%include "vbase/leaf_loc_ONST.asm"         ; 0x5832

%include "vbase/leaf_loc_UOLJ.asm"         ; 0x5839

%include "vbase/leaf_loc_RLNM.asm"         ; 0x5840

%include "vbase/loc_OLNT.asm"              ; 0x5869

%include "vbase/asm_only/leaf_loc_NNQH.asm"         ; 0x5876

%include "vbase/asm_only/loc_LQIO.asm"              ; 0x606d

%include "vbase/asm_only/api_idx_0006_MROT.asm"     ; 0x61db

%include "vbase/loc_ROTV.asm"              ; 0x62c6

%include "vbase/api_idx_00aa_SLMI.asm"     ; 0x62e5

%include "vbase/api_idx_0004_OPGP.asm"     ; 0x6665

%include "vbase/api_idx_0002_IRNO.asm"     ; 0x6756

%include "vbase/api_idx_0002_JLUK.asm"     ; 0x6800

%include "vbase/api_idx_004a_UIIS.asm"     ; 0x68bd

%include "vbase/api_idx_004a_LKJS.asm"     ; 0x6a0f

%include "vbase/loc_SVUQ.asm"              ; 0x6c1e

%include "vbase/loc_QSOL.asm"              ; 0x6c3f

%include "vbase/loc_TJHG.asm"              ; 0x6c5c

api_idx_0004_TTGQ.loc1 equ loc_TJHG
%include "shared/api_idx_0004_TTGQ.asm"     ; 0x6c87

%include "vbase/api_idx_0004_MIQG.asm"     ; 0x6cd0

%include "vbase/api_idx_0004_RLUP.asm"     ; 0x6d1f

%include "vbase/loc_LTHK.asm"              ; 0x6dd9

%include "vbase/api_idx_0004_OTSN.asm"     ; 0x6f16

%include "vbase/loc_LIQV.asm"              ; 0x6f79

%include "shared/api_idx_0002_LVPS.asm"     ; 0x6fda

%include "vbase/api_idx_0002_NVMN.asm"     ; 0x706d

%include "vbase/loc_GUNQ.asm"              ; 0x72c2

%include "vbase/api_idx_0016_LTLN.asm"     ; 0x72d0

%include "vbase/api_idx_000a_JPLR.asm"     ; 0x7340

%include "vbase/api_idx_000a_IGIN.asm"     ; 0x737d

%include "vbase/loc_GSUP.asm"              ; 0x73bc

%include "vbase/api_idx_000a_THHN.asm"     ; 0x7415

%include "vbase/loc_TQHJ.asm"              ; 0x8634

%include "vbase/api_idx_0002_GLIS.asm"     ; 0x8756

%include "vbase/api_idx_0002_UUUJ.asm"     ; 0x8881

%include "vbase/loc_JTTS.asm"              ; 0x8a74

%include "vbase/api_idx_0002_GORG.asm"     ; 0x8b69

%include "vbase/api_idx_0002_JHTS.asm"     ; 0x8ca3

%include "vbase/api_idx_0002_MIQR.asm"     ; 0x8d84

%include "vbase/api_idx_0002_QRJS.asm"     ; 0x8e6b

%include "vbase/api_idx_0002_SOPK.asm"     ; 0x8f74

%include "vbase/asm_only/string_loc_LOVO.asm"       ; 0x9330

%include "shared/leaf_loc_RJLR.asm"         ; 0x936e

aztec_strcmp.loc1 equ loc_JIHK
%include "shared/aztec_strcmp.asm"          ; 0x9386

%include "vbase/asm_only/aztec_strncmp.asm"         ; 0x93a4

%include "vbase/asm_only/string_loc_NUOR.asm"       ; 0x93e3


__zimage_end:
