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

loc_RSMP:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 7      ; 0x0014
    jne short @..loc_RSMP.l1         ; 0x0019
    call api_idx_0002_IRNO           ; 0x001b
@..loc_RSMP.l1:
    cmp word [bss_830a], byte 4      ; 0x001e
    jne short @..loc_RSMP.l2         ; 0x0023
    call api_idx_004a_LKJS           ; 0x0025
@..loc_RSMP.l2:
    cmp word [bss_830a], byte 0x18   ; 0x0028
    jne short @..loc_RSMP.l3         ; 0x002d
    call api_idx_004a_UIIS           ; 0x002f
@..loc_RSMP.l3:
    mov ax, 0                        ; 0x0032
    ret                              ; 0x0035
%include "shared/api_idx_0002_SJMT.asm"     ; 0x0036

%include "vbase/api_idx_0004_VUIP.asm"     ; 0x00b5

%include "vbase/loc_LSRQ.asm"              ; 0x023a

%include "vbase/api_idx_0016_KOOO.asm"     ; 0x0559

%include "vbase/api_idx_0006_MHOR.asm"     ; 0x05b6

%include "vbase/api_idx_0038_MNUL.asm"     ; 0x0606

%include "shared/api_idx_0008_LLVT.asm"     ; 0x0d3f

%include "vbase/api_idx_0028_NRJN.asm"     ; 0x0ef7

%include "vbase/loc_IQSK.asm"              ; 0x150d

%include "vbase/api_idx_004c_MNLG.asm"     ; 0x156e

%include "vbase/loc_QKKR_1683.asm"         ; 0x1683

loc_1795 equ 0x1795 + VBASE
%include "vbase/asm_only/loc_MNRN.asm"              ; 0x168e

%include "vbase/loc_PMVN.asm"              ; 0x179b

%include "vbase/loc_TPPH.asm"              ; 0x17af

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

jumptable_1949_case_0:
    mov ax, 0x1d                     ; 0x1908
    cmp word [bp + 0x6], byte 0      ; 0x190b
    jne short @..loc_1908.l1         ; 0x190f
    mov ax, 4                        ; 0x1911
@..loc_1908.l1:
    ret                              ; 0x1914
jumptable_1949_case_1:
    mov ax, 0x11                     ; 0x1915
    cmp word [bp + 0x6], byte 0      ; 0x1918
    jne short @..loc_1915.l1         ; 0x191c
    mov ax, 0xb                      ; 0x191e
@..loc_1915.l1:
    ret                              ; 0x1921
jumptable_1949_case_6:
    mov ax, 0xe                      ; 0x1922
    cmp word [bp + 0x6], byte 0      ; 0x1925
    jne short @..loc_1922.l1         ; 0x1929
    mov ax, 0x10                     ; 0x192b
@..loc_1922.l1:
    ret                              ; 0x192e
jumptable_1949_case_3:
    mov ax, 0x1d                     ; 0x192f
    cmp word [bp + 0x6], byte 0      ; 0x1932
    jne short @..loc_192f.l1         ; 0x1936
    mov ax, 0x10                     ; 0x1938
@..loc_192f.l1:
    ret                              ; 0x193b
jumptable_1949_case_11:
    mov ax, 0x1b                     ; 0x193c
    cmp word [bp + 0x6], byte 0      ; 0x193f
    jne short @..loc_193c.l1         ; 0x1943
    mov ax, 6                        ; 0x1945
@..loc_193c.l1:
    ret                              ; 0x1948
jumptable_1949:
    dw jumptable_1949_case_0 - IMAGE_BASE + 0x5055 ; 0x1949
    dw jumptable_1949_case_1 - IMAGE_BASE + 0x5055 ; 0x194b
    dw jumptable_1949_case_1 - IMAGE_BASE + 0x5055 ; 0x194d
    dw jumptable_1949_case_3 - IMAGE_BASE + 0x5055 ; 0x194f
    dw jumptable_1949_case_3 - IMAGE_BASE + 0x5055 ; 0x1951
    dw jumptable_1949_case_1 - IMAGE_BASE + 0x5055 ; 0x1953
    dw jumptable_1949_case_6 - IMAGE_BASE + 0x5055 ; 0x1955
    dw jumptable_1949_case_1 - IMAGE_BASE + 0x5055 ; 0x1957
    dw jumptable_1949_case_0 - IMAGE_BASE + 0x5055 ; 0x1959
    dw jumptable_1949_case_1 - IMAGE_BASE + 0x5055 ; 0x195b
    dw jumptable_1949_case_0 - IMAGE_BASE + 0x5055 ; 0x195d
    dw jumptable_1949_case_11 - IMAGE_BASE + 0x5055 ; 0x195f
    dw jumptable_1949_case_3 - IMAGE_BASE + 0x5055 ; 0x1961
@..loc_QKKR_1820.l7:
    cmp ax, strict word 0xd          ; 0x1963
    jae short @..loc_QKKR_1820.l8    ; 0x1966
    xchg bx, ax                      ; 0x1968
    shl bx, 1                        ; 0x1969
    jmp [cs:bx + 0x6990]             ; 0x196b
@..loc_QKKR_1820.l8:
    mov ax, word [bp + 0x8]          ; 0x1970
    jmp near @..loc_QKKR_1820.l9     ; 0x1973
jumptable_19de_case_1:
    mov ax, 0                        ; 0x1976
    cmp word [bp + 0x6], byte 0      ; 0x1979
    jne short @..loc_1976.l1         ; 0x197d
    mov ax, 2                        ; 0x197f
@..loc_1976.l1:
    ret                              ; 0x1982
jumptable_19de_case_2:
    mov ax, 0                        ; 0x1983
    cmp word [bp + 0x6], byte 0      ; 0x1986
    jne short @..loc_1983.l1         ; 0x198a
    mov ax, 0x1e                     ; 0x198c
@..loc_1983.l1:
    ret                              ; 0x198f
jumptable_19de_case_3:
    mov ax, 0xe                      ; 0x1990
    cmp word [bp + 0x6], byte 0      ; 0x1993
    jne short @..loc_1990.l1         ; 0x1997
    mov ax, 0x15                     ; 0x1999
@..loc_1990.l1:
    ret                              ; 0x199c
jumptable_19de_case_4:
    mov ax, 0x13                     ; 0x199d
    cmp word [bp + 0x6], byte 0      ; 0x19a0
    jne short @..loc_199d.l1         ; 0x19a4
    mov ax, 9                        ; 0x19a6
@..loc_199d.l1:
    ret                              ; 0x19a9
jumptable_19de_case_8:
    mov ax, 0xa                      ; 0x19aa
    cmp word [bp + 0x6], byte 0      ; 0x19ad
    jne short @..loc_19aa.l1         ; 0x19b1
    mov ax, 0x14                     ; 0x19b3
@..loc_19aa.l1:
    ret                              ; 0x19b6
jumptable_19de_case_9:
    mov ax, 0xf                      ; 0x19b7
%include "vbase/loc_VOQS.asm"              ; 0x19ba

jumptable_19de_case_11:
    mov ax, 0x1b                     ; 0x19c4
    cmp word [bp + 0x6], byte 0      ; 0x19c7
    jne short @..loc_19c4.l1         ; 0x19cb
    mov ax, 6                        ; 0x19cd
@..loc_19c4.l1:
    ret                              ; 0x19d0
jumptable_19de_case_12:
    mov ax, 0xf                      ; 0x19d1
    cmp word [bp + 0x6], byte 0      ; 0x19d4
    jne short @..loc_19d1.l1         ; 0x19d8
    mov ax, 0x1e                     ; 0x19da
@..loc_19d1.l1:
    ret                              ; 0x19dd
jumptable_19de:
    dw jumptable_19de_case_0 - IMAGE_BASE + 0x5055 ; 0x19de
    dw jumptable_19de_case_1 - IMAGE_BASE + 0x5055 ; 0x19e0
    dw jumptable_19de_case_2 - IMAGE_BASE + 0x5055 ; 0x19e2
    dw jumptable_19de_case_3 - IMAGE_BASE + 0x5055 ; 0x19e4
    dw jumptable_19de_case_4 - IMAGE_BASE + 0x5055 ; 0x19e6
    dw jumptable_19de_case_1 - IMAGE_BASE + 0x5055 ; 0x19e8
    dw jumptable_19de_case_3 - IMAGE_BASE + 0x5055 ; 0x19ea
    dw jumptable_19de_case_2 - IMAGE_BASE + 0x5055 ; 0x19ec
    dw jumptable_19de_case_8 - IMAGE_BASE + 0x5055 ; 0x19ee
    dw jumptable_19de_case_9 - IMAGE_BASE + 0x5055 ; 0x19f0
    dw jumptable_19de_case_8 - IMAGE_BASE + 0x5055 ; 0x19f2
    dw jumptable_19de_case_11 - IMAGE_BASE + 0x5055 ; 0x19f4
    dw jumptable_19de_case_12 - IMAGE_BASE + 0x5055 ; 0x19f6
@..loc_QKKR_1820.l9:
    cmp ax, strict word 0xd          ; 0x19f8
    jae short @..loc_QKKR_1820.l10   ; 0x19fb
    xchg bx, ax                      ; 0x19fd
    shl bx, 1                        ; 0x19fe
    jmp [cs:bx + 0x6a25]             ; 0x1a00
jumptable_19de_case_0:
@..loc_QKKR_1820.l10:
    mov ax, 0x13                     ; 0x1a05
    cmp word [bp + 0x6], byte 0      ; 0x1a08
    jne short @..loc_QKKR_1820.l11   ; 0x1a0c
    mov ax, 0x17                     ; 0x1a0e
@..loc_QKKR_1820.l11:
    ret                              ; 0x1a11
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

jumptable_6e77_case_0:
    inc word [bp + 0x4]              ; 0x6dff
    mov ax, 0xa4aa                   ; 0x6e02
    push ax                          ; 0x6e05
    call api_idx_0004_RLUP           ; 0x6e06
    pop cx                           ; 0x6e09
    jmp near @..loc_LTHK.l6          ; 0x6e0a
jumptable_6e77_case_1:
    inc word [bp + 0x4]              ; 0x6e0d
    mov bx, word [bp + 0x4]          ; 0x6e10
    mov al, byte [bx]                ; 0x6e13
    sub ah, ah                       ; 0x6e15
    mov word [bp - 0x0006], ax       ; 0x6e17
    mov cx, 0x12                     ; 0x6e1a
    imul cx                          ; 0x6e1d
    push ax                          ; 0x6e1f
    call api_idx_0004_TTGQ           ; 0x6e20
    pop cx                           ; 0x6e23
    inc word [bp + 0x4]              ; 0x6e24
    jmp short @..loc_LTHK.l6         ; 0x6e27
jumptable_6e77_case_2:
    inc word [bp + 0x4]              ; 0x6e29
    mov ax, 0xa4aa                   ; 0x6e2c
    push ax                          ; 0x6e2f
    call api_idx_0004_RLUP           ; 0x6e30
    pop cx                           ; 0x6e33
    call loc_QSOL                    ; 0x6e34
    jmp short @..loc_LTHK.l6         ; 0x6e37
jumptable_6e77_case_3:
    inc word [bp + 0x4]              ; 0x6e39
    call loc_SVUQ                    ; 0x6e3c
    mov word [bss_a4a6], 0           ; 0x6e3f
    jmp short @..loc_LTHK.l6         ; 0x6e45
jumptable_6e77_case_4:
    inc word [bp + 0x4]              ; 0x6e47
    mov ax, 0xa4aa                   ; 0x6e4a
    push ax                          ; 0x6e4d
    call api_idx_0004_RLUP           ; 0x6e4e
    pop cx                           ; 0x6e51
    call api_idx_0004_MIQG           ; 0x6e52
    jmp short @..loc_LTHK.l6         ; 0x6e55
jumptable_6e77_case_5:
    inc word [bp + 0x4]              ; 0x6e57
    inc word [bss_a5aa]              ; 0x6e5a
    jmp short @..loc_LTHK.l6         ; 0x6e5e
jumptable_6e77_case_6:
    inc word [bp + 0x4]              ; 0x6e60
    mov word [bss_a5ac], 1           ; 0x6e63
@..loc_LTHK.l3:
    cmp word [bss_a5ac], byte 0      ; 0x6e69
    je short @..loc_LTHK.l4          ; 0x6e6e
    call loc_TJHG                    ; 0x6e70
    jmp short @..loc_LTHK.l3         ; 0x6e73
@..loc_LTHK.l4:
    jmp short @..loc_LTHK.l6         ; 0x6e75
jumptable_6e77:
    dw jumptable_6e77_case_0 - IMAGE_BASE + 0x5055 ; 0x6e77
    dw jumptable_6e77_case_1 - IMAGE_BASE + 0x5055 ; 0x6e79
    dw jumptable_6e77_case_2 - IMAGE_BASE + 0x5055 ; 0x6e7b
    dw jumptable_6e77_case_3 - IMAGE_BASE + 0x5055 ; 0x6e7d
    dw jumptable_6e77_case_4 - IMAGE_BASE + 0x5055 ; 0x6e7f
    dw jumptable_6e77_case_5 - IMAGE_BASE + 0x5055 ; 0x6e81
    dw jumptable_6e77_case_6 - IMAGE_BASE + 0x5055 ; 0x6e83
@..loc_LTHK.l5:
    cmp ax, strict word 7            ; 0x6e85
    jae short @..loc_LTHK.l6         ; 0x6e88
    xchg bx, ax                      ; 0x6e8a
    shl bx, 1                        ; 0x6e8b
    jmp [cs:bx - 0x4142]             ; 0x6e8d
@..loc_LTHK.l6:
    jmp near @..loc_LTHK.l1          ; 0x6e92
@..loc_LTHK.l7:
    cmp byte [bss_a4aa], 0           ; 0x6e95
    je short @..loc_LTHK.l8          ; 0x6e9a
    mov ax, 0xa4aa                   ; 0x6e9c
    push ax                          ; 0x6e9f
    lea ax, word [bp - 0x0105]       ; 0x6ea0
    push ax                          ; 0x6ea4
    call aztec_strcpy                ; 0x6ea5
    add sp, byte 4                   ; 0x6ea8
    mov ax, 0x911c                   ; 0x6eab
    push ax                          ; 0x6eae
    lea ax, word [bp - 0x0105]       ; 0x6eaf
    push ax                          ; 0x6eb3
    call aztec_strcat                ; 0x6eb4
    add sp, byte 4                   ; 0x6eb7
    push word [bp + 0x4]             ; 0x6eba
    lea ax, word [bp - 0x0105]       ; 0x6ebd
    push ax                          ; 0x6ec1
    call aztec_strcat                ; 0x6ec2
    add sp, byte 4                   ; 0x6ec5
    jmp short @..loc_LTHK.l9         ; 0x6ec8
@..loc_LTHK.l8:
    push word [bp + 0x4]             ; 0x6eca
    lea ax, word [bp - 0x0105]       ; 0x6ecd
    push ax                          ; 0x6ed1
    call aztec_strcpy                ; 0x6ed2
    add sp, byte 4                   ; 0x6ed5
@..loc_LTHK.l9:
    mov ax, 2                        ; 0x6ed8
    push ax                          ; 0x6edb
    lea ax, word [bp - 0x0105]       ; 0x6edc
    push ax                          ; 0x6ee0
    call ds_loc_JJGM                 ; 0x6ee1
    add sp, byte 4                   ; 0x6ee4
    mov word [bp - 0x0002], ax       ; 0x6ee7
    cmp ax, 0x127                    ; 0x6eea
    jle short @..loc_LTHK.l10        ; 0x6eed
    mov ax, 0xa4aa                   ; 0x6eef
    push ax                          ; 0x6ef2
    call api_idx_0004_RLUP           ; 0x6ef3
    pop cx                           ; 0x6ef6
    push word [bp + 0x4]             ; 0x6ef7
    mov ax, 0xa4aa                   ; 0x6efa
    push ax                          ; 0x6efd
    call aztec_strcpy                ; 0x6efe
    add sp, byte 4                   ; 0x6f01
    jmp short @..loc_LTHK.l11        ; 0x6f04
@..loc_LTHK.l10:
    lea ax, word [bp - 0x0105]       ; 0x6f06
    push ax                          ; 0x6f0a
    mov ax, 0xa4aa                   ; 0x6f0b
    push ax                          ; 0x6f0e
    call aztec_strcpy                ; 0x6f0f
    add sp, byte 4                   ; 0x6f12
@..loc_LTHK.l11:
    ret                              ; 0x6f15
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
