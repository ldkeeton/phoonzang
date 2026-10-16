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
    dw string_loc_IHLM - IMAGE_BASE + __zres_end ; 0xe377 ; o_entry: overlay entry offset (CS)

__zcode_start:
loc_JLHL equ 0x0d04 + VBASE
loc_PHNK equ 0x14d6 + VBASE
loc_1795 equ 0x1795 + VBASE
leaf_loc_185e equ 0x185e + VBASE
loc_OKTS equ 0x18c8 + VBASE
loc_LOOL equ 0x18ca + VBASE
leaf_loc_1949 equ 0x1949 + VBASE
loc_QUQJ equ 0x6e77 + VBASE

loc_NIVM:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 7      ; 0x0014
    jne short @..loc_NIVM.l1         ; 0x0019
    call api_idx_0002_PGSG           ; 0x001b
@..loc_NIVM.l1:
    cmp word [bss_830a], byte 4      ; 0x001e
    jne short @..loc_NIVM.l2         ; 0x0023
    call api_idx_004a_QVSP           ; 0x0025
@..loc_NIVM.l2:
    cmp word [bss_830a], byte 0x18   ; 0x0028
    jne short @..loc_NIVM.l3         ; 0x002d
    call api_idx_004a_ROIJ           ; 0x002f
@..loc_NIVM.l3:
    mov ax, 0                        ; 0x0032
    ret                              ; 0x0035
%include "shared/api_idx_0002_LTOL.asm"     ; 0x0036

%include "vbase/api_idx_0004_JLRL.asm"     ; 0x00b5

%include "vbase/loc_QLQS.asm"              ; 0x023a

%include "vbase/api_idx_0016_MUPN.asm"     ; 0x0559

%include "vbase/api_idx_0006_SOSU.asm"     ; 0x05b6

%include "vbase/api_idx_0038_HKLS.asm"     ; 0x0606

%include "shared/api_idx_0008_IGKQ.asm"     ; 0x0d3f

%include "vbase/api_idx_0028_MKOQ.asm"     ; 0x0ef7

%include "vbase/loc_LJIJ.asm"              ; 0x150d

%include "vbase/api_idx_004c_TIIJ.asm"     ; 0x156e

%include "vbase/loc_OKON.asm"              ; 0x1683

%include "vbase/asm_only/loc_ISTS.asm"              ; 0x168e

%include "vbase/loc_UKJI.asm"              ; 0x179b

%include "vbase/loc_JTQS.asm"              ; 0x17af

%include "vbase/loc_JVTQ.asm"              ; 0x1820

%include "vbase/leaf_loc_UIJV.asm"         ; 0x182b

%include "vbase/leaf_loc_NMHI_1838.asm"    ; 0x1838

%include "vbase/leaf_loc_NNQS.asm"         ; 0x183c

%include "vbase/leaf_loc_RMSR.asm"         ; 0x1840

%include "vbase/leaf_loc_VPOQ.asm"         ; 0x184d

%include "vbase/leaf_loc_VSSJ.asm"         ; 0x185a

%include "vbase/leaf_loc_GRHS.asm"         ; 0x188f

%include "vbase/leaf_loc_RIOS.asm"         ; 0x189c

%include "vbase/leaf_loc_LNUO_18a9.asm"    ; 0x18a9

%include "vbase/leaf_loc_GIVG.asm"         ; 0x18ad

%include "vbase/leaf_loc_TKKO.asm"         ; 0x18ba

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
@..loc_JVTQ.l7:
    cmp ax, strict word 0xd          ; 0x1963
    jae short @..loc_JVTQ.l8         ; 0x1966
    xchg bx, ax                      ; 0x1968
    shl bx, 1                        ; 0x1969
    jmp [cs:bx + 0x6990]             ; 0x196b
@..loc_JVTQ.l8:
    mov ax, word [bp + 0x8]          ; 0x1970
    jmp near @..loc_JVTQ.l9          ; 0x1973
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
%include "vbase/loc_JVVM.asm"              ; 0x19ba

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
@..loc_JVTQ.l9:
    cmp ax, strict word 0xd          ; 0x19f8
    jae short @..loc_JVTQ.l10        ; 0x19fb
    xchg bx, ax                      ; 0x19fd
    shl bx, 1                        ; 0x19fe
    jmp [cs:bx + 0x6a25]             ; 0x1a00
jumptable_19de_case_0:
@..loc_JVTQ.l10:
    mov ax, 0x13                     ; 0x1a05
    cmp word [bp + 0x6], byte 0      ; 0x1a08
    jne short @..loc_JVTQ.l11        ; 0x1a0c
    mov ax, 0x17                     ; 0x1a0e
@..loc_JVTQ.l11:
    ret                              ; 0x1a11
%include "vbase/loc_VSKM.asm"              ; 0x1a12

%include "vbase/leaf_loc_KJNJ.asm"         ; 0x1a1e

%include "vbase/leaf_loc_LNUO_1a22.asm"    ; 0x1a22

%include "vbase/leaf_loc_GVOH.asm"         ; 0x1a26

%include "vbase/leaf_loc_ULTG.asm"         ; 0x1a2a

%include "vbase/leaf_loc_QHPO.asm"         ; 0x1a2e

%include "vbase/leaf_loc_PSIO.asm"         ; 0x1a32

%include "vbase/leaf_loc_JRGS.asm"         ; 0x1a36

%include "vbase/leaf_loc_OKGM.asm"         ; 0x1a3a

%include "vbase/leaf_loc_LQPI.asm"         ; 0x1a3e

%include "vbase/leaf_loc_JOQP.asm"         ; 0x1a42

%include "vbase/leaf_loc_HKUQ.asm"         ; 0x1a46

%include "vbase/leaf_loc_PQRQ.asm"         ; 0x1a4a

%include "vbase/leaf_loc_KJQS.asm"         ; 0x1a4e

%include "vbase/leaf_loc_TTTN.asm"         ; 0x1a52

%include "vbase/leaf_loc_LKLK.asm"         ; 0x1a56

%include "vbase/leaf_loc_RMQL.asm"         ; 0x1a5a

%include "vbase/leaf_loc_LVVV.asm"         ; 0x1a5e

%include "vbase/leaf_loc_KKNK.asm"         ; 0x1a62

%include "vbase/leaf_loc_KISI.asm"         ; 0x1a66

%include "vbase/leaf_loc_PNMP.asm"         ; 0x1a6a

%include "vbase/leaf_loc_NMHI_1a6e.asm"    ; 0x1a6e

%include "vbase/leaf_loc_HSLL.asm"         ; 0x1a72

%include "vbase/leaf_loc_SORM.asm"         ; 0x1a76

%include "vbase/leaf_loc_VITI.asm"         ; 0x1a7a

%include "vbase/leaf_loc_THVI.asm"         ; 0x1a7e

%include "vbase/leaf_loc_VKOM.asm"         ; 0x1a82

%include "vbase/leaf_loc_MMIH.asm"         ; 0x1a86

%include "vbase/leaf_loc_IMUG.asm"         ; 0x1a8a

%include "vbase/leaf_loc_TLGS.asm"         ; 0x1a8e

%include "vbase/leaf_loc_MUSM.asm"         ; 0x1a92

%include "vbase/leaf_loc_MRSQ.asm"         ; 0x1a96

%include "vbase/leaf_loc_ITJT.asm"         ; 0x1a9a

%include "vbase/leaf_loc_JNTP.asm"         ; 0x1a9e

%include "vbase/leaf_loc_OOVQ.asm"         ; 0x1aa2

%include "vbase/leaf_loc_UHMJ.asm"         ; 0x1aa6

%include "vbase/leaf_loc_KMKH.asm"         ; 0x1aaa

%include "vbase/leaf_loc_RHMM.asm"         ; 0x1aae

%include "vbase/leaf_loc_IIVM.asm"         ; 0x1ab2

%include "vbase/leaf_loc_JIUR.asm"         ; 0x1ab6

%include "vbase/leaf_loc_MTVH.asm"         ; 0x1aba

%include "vbase/leaf_loc_HMPL.asm"         ; 0x1abe

%include "vbase/leaf_loc_IIJR.asm"         ; 0x1ac2

%include "vbase/leaf_loc_HILL.asm"         ; 0x1ac6

%include "vbase/leaf_loc_LGJN.asm"         ; 0x1aca

%include "vbase/leaf_loc_MGHO.asm"         ; 0x1ace

%include "vbase/leaf_loc_VMQJ.asm"         ; 0x1ad2

%include "vbase/leaf_loc_VMPO.asm"         ; 0x1ad6

%include "vbase/leaf_loc_MORQ.asm"         ; 0x1ada

%include "vbase/leaf_loc_KOIR.asm"         ; 0x1ade

%include "vbase/leaf_loc_JILH.asm"         ; 0x1ae2

%include "vbase/leaf_loc_JMKN.asm"         ; 0x1ae6

%include "vbase/leaf_loc_SUPO.asm"         ; 0x1aea

%include "vbase/leaf_loc_OPSO.asm"         ; 0x1aee

%include "vbase/leaf_loc_NTTM.asm"         ; 0x1af2

%include "vbase/leaf_loc_IPSP.asm"         ; 0x1af6

%include "vbase/leaf_loc_OOHH.asm"         ; 0x1afa

%include "vbase/leaf_loc_HJIQ.asm"         ; 0x1afe

%include "vbase/leaf_loc_GPNL.asm"         ; 0x1b02

%include "vbase/leaf_loc_QJSO.asm"         ; 0x1b06

%include "vbase/leaf_loc_OGRL.asm"         ; 0x1b0a

%include "vbase/leaf_loc_JOVH.asm"         ; 0x1b0e

%include "vbase/leaf_loc_QGVI.asm"         ; 0x1b12

%include "vbase/leaf_loc_GGUT.asm"         ; 0x1b16

%include "vbase/leaf_loc_JNVV.asm"         ; 0x1b1a

%include "vbase/leaf_loc_RVHN.asm"         ; 0x1b1e

%include "vbase/leaf_loc_HPRV.asm"         ; 0x1b22

%include "vbase/leaf_loc_IHNQ.asm"         ; 0x1b26

%include "vbase/leaf_loc_QITG.asm"         ; 0x1b2a

%include "vbase/leaf_loc_LGJH.asm"         ; 0x1b2e

%include "vbase/leaf_loc_GTNS.asm"         ; 0x1b32

%include "vbase/leaf_loc_SMPL.asm"         ; 0x1b36

%include "vbase/leaf_loc_HIJI.asm"         ; 0x1b3a

%include "vbase/leaf_loc_THGL.asm"         ; 0x1b3e

%include "vbase/leaf_loc_GLRJ.asm"         ; 0x1b42

%include "vbase/leaf_loc_OOTG.asm"         ; 0x1b46

%include "vbase/leaf_loc_GJLJ.asm"         ; 0x1b4a

%include "vbase/leaf_loc_THTT.asm"         ; 0x1b4e

%include "vbase/leaf_loc_NVIM.asm"         ; 0x1b52

%include "vbase/leaf_loc_LJTS.asm"         ; 0x1b56

%include "shared/loc_LMIM.asm"              ; 0x1c09

%include "vbase/api_idx_0004_OKUV.asm"     ; 0x1c80

%include "vbase/loc_KNHQ.asm"              ; 0x1f0e

%include "vbase/api_idx_0040_JSPR.asm"     ; 0x1f6f

%include "vbase/api_idx_0072_UKKH.asm"     ; 0x1faf

%include "vbase/leaf_loc_OSVQ.asm"         ; 0x25da

%include "vbase/leaf_loc_STUO.asm"         ; 0x25e2

%include "vbase/leaf_loc_SLVH.asm"         ; 0x25ea

%include "vbase/leaf_loc_VRMS.asm"         ; 0x25f2

%include "vbase/leaf_loc_JOVK.asm"         ; 0x25fa

%include "vbase/leaf_loc_LPIO.asm"         ; 0x2602

%include "vbase/leaf_loc_VPOV_260a.asm"    ; 0x260a

%include "vbase/leaf_loc_VPOV_2612.asm"    ; 0x2612

%include "vbase/leaf_loc_VPOV_261a.asm"    ; 0x261a

%include "vbase/leaf_loc_VPOV_2622.asm"    ; 0x2622

%include "vbase/leaf_loc_VPOV_2629.asm"    ; 0x2629

%include "vbase/leaf_loc_KMII.asm"         ; 0x2630

%include "vbase/leaf_loc_VPOV_2637.asm"    ; 0x2637

%include "vbase/leaf_loc_QMOJ.asm"         ; 0x263e

%include "vbase/leaf_loc_QLUL.asm"         ; 0x2645

%include "vbase/leaf_loc_JNLK.asm"         ; 0x264c

%include "vbase/leaf_loc_NKTV.asm"         ; 0x2653

%include "vbase/leaf_loc_MNNQ.asm"         ; 0x265a

%include "vbase/leaf_loc_KLRJ.asm"         ; 0x2a85

%include "vbase/leaf_loc_VMKK_2a8d.asm"    ; 0x2a8d

%include "vbase/leaf_loc_HPOI_2a95.asm"    ; 0x2a95

%include "vbase/leaf_loc_LIKI.asm"         ; 0x2a9d

%include "vbase/leaf_loc_HVKO.asm"         ; 0x2aa5

%include "vbase/leaf_loc_VMKK_2ab1.asm"    ; 0x2ab1

%include "vbase/leaf_loc_SGJO.asm"         ; 0x2ab8

%include "vbase/leaf_loc_JLOJ.asm"         ; 0x2ac4

%include "vbase/leaf_loc_MTVJ.asm"         ; 0x2acb

%include "vbase/leaf_loc_HPOI_2ad2.asm"    ; 0x2ad2

%include "vbase/leaf_loc_LIHG.asm"         ; 0x2ad9

%include "vbase/asm_only/api_idx_0038_OGMN.asm"     ; 0x2fef

%include "vbase/asm_only/api_idx_004e_HNNL.asm"     ; 0x388c

%include "vbase/api_idx_0002_QPLT.asm"     ; 0x3fac

%include "vbase/api_idx_000c_GPPG.asm"     ; 0x4060

%include "vbase/api_idx_0050_NPKS.asm"     ; 0x41e7

%include "vbase/loc_RJLG.asm"              ; 0x4245

%include "vbase/loc_UVGL.asm"              ; 0x4292

%include "vbase/loc_SOOL.asm"              ; 0x42e3

%include "vbase/api_idx_0052_NJVQ.asm"     ; 0x4335

%include "vbase/loc_OOOS.asm"              ; 0x46b8

%include "vbase/loc_MPIM.asm"              ; 0x4727

%include "vbase/loc_NLTI.asm"              ; 0x47bb

%include "vbase/api_idx_0052_IHOT.asm"     ; 0x4826

%include "vbase/loc_ISNS.asm"              ; 0x4b29

%include "vbase/loc_IGOG.asm"              ; 0x4b5e

%include "vbase/api_idx_0062_QHSK.asm"     ; 0x4b95

%include "vbase/asm_only/loc_JUUJ.asm"              ; 0x4d0e

%include "vbase/loc_UKVI.asm"              ; 0x563a

%include "vbase/loc_PKPU.asm"              ; 0x5675

%include "vbase/loc_JPGI.asm"              ; 0x56b8

%include "vbase/loc_PKQG.asm"              ; 0x56f9

%include "vbase/string_loc_QQMO.asm"       ; 0x5703

%include "vbase/string_loc_QMNO.asm"       ; 0x570b

%include "vbase/string_loc_TISR.asm"       ; 0x5712

%include "vbase/string_loc_LLRR.asm"       ; 0x5719

%include "vbase/string_loc_MHMH.asm"       ; 0x5720

%include "vbase/string_loc_KLTJ.asm"       ; 0x5727

%include "vbase/string_loc_LSNQ.asm"       ; 0x572e

%include "vbase/string_loc_MHGI.asm"       ; 0x5735

%include "vbase/string_loc_PNQP.asm"       ; 0x573c

%include "vbase/string_loc_RHUQ.asm"       ; 0x5743

%include "vbase/string_loc_HRPK.asm"       ; 0x574a

%include "vbase/loc_LRIS.asm"              ; 0x5777

%include "vbase/string_loc_SQRJ.asm"       ; 0x5784

%include "vbase/string_loc_SSQJ.asm"       ; 0x579d

%include "vbase/string_loc_SNPM.asm"       ; 0x57a4

%include "vbase/string_loc_RNGU.asm"       ; 0x57ab

%include "vbase/string_loc_LUPN.asm"       ; 0x57b2

%include "vbase/string_loc_OMHS.asm"       ; 0x57b9

%include "vbase/string_loc_SKKJ.asm"       ; 0x57c0

%include "vbase/string_loc_MQLQ.asm"       ; 0x57c7

%include "vbase/loc_GRPI.asm"              ; 0x57f0

%include "vbase/leaf_loc_MMVG.asm"         ; 0x57fd

%include "vbase/leaf_loc_TOTU.asm"         ; 0x5816

%include "vbase/leaf_loc_UGLQ.asm"         ; 0x581d

%include "vbase/leaf_loc_QNJU.asm"         ; 0x5824

%include "vbase/leaf_loc_IGJT.asm"         ; 0x582b

%include "vbase/leaf_loc_GROM.asm"         ; 0x5832

%include "vbase/leaf_loc_JPLK.asm"         ; 0x5839

%include "vbase/leaf_loc_MMLM.asm"         ; 0x5840

%include "vbase/loc_KRGU.asm"              ; 0x5869

%include "vbase/asm_only/leaf_loc_IPGP.asm"         ; 0x5876

%include "vbase/asm_only/loc_ORKU.asm"              ; 0x606d

%include "vbase/asm_only/api_idx_0006_HMGH.asm"     ; 0x61db

%include "vbase/loc_POKM.asm"              ; 0x62c6

%include "vbase/api_idx_00aa_INUI.asm"     ; 0x62e5

%include "vbase/api_idx_0004_VTTI.asm"     ; 0x6665

%include "vbase/api_idx_0002_PGSG.asm"     ; 0x6756

%include "vbase/api_idx_0002_ILPS.asm"     ; 0x6800

%include "vbase/api_idx_004a_ROIJ.asm"     ; 0x68bd

%include "vbase/api_idx_004a_QVSP.asm"     ; 0x6a0f

%include "vbase/loc_SKTH.asm"              ; 0x6c1e

%include "vbase/loc_LMPL.asm"              ; 0x6c3f

%include "vbase/loc_HIUG.asm"              ; 0x6c5c

%include "vbase/api_idx_0004_NSSO.asm"     ; 0x6c87

%include "vbase/api_idx_0004_TLTU.asm"     ; 0x6cd0

%include "vbase/api_idx_0004_PUGI.asm"     ; 0x6d1f

%include "vbase/loc_HQPO.asm"              ; 0x6dd9

jumptable_6e77_case_0:
    inc word [bp + 0x4]              ; 0x6dff
    mov ax, 0xa4aa                   ; 0x6e02
    push ax                          ; 0x6e05
    call api_idx_0004_PUGI           ; 0x6e06
    pop cx                           ; 0x6e09
    jmp near @..loc_HQPO.l6          ; 0x6e0a
jumptable_6e77_case_1:
    inc word [bp + 0x4]              ; 0x6e0d
    mov bx, word [bp + 0x4]          ; 0x6e10
    mov al, byte [bx]                ; 0x6e13
    sub ah, ah                       ; 0x6e15
    mov word [bp - 0x0006], ax       ; 0x6e17
    mov cx, 0x12                     ; 0x6e1a
    imul cx                          ; 0x6e1d
    push ax                          ; 0x6e1f
    call api_idx_0004_NSSO           ; 0x6e20
    pop cx                           ; 0x6e23
    inc word [bp + 0x4]              ; 0x6e24
    jmp short @..loc_HQPO.l6         ; 0x6e27
jumptable_6e77_case_2:
    inc word [bp + 0x4]              ; 0x6e29
    mov ax, 0xa4aa                   ; 0x6e2c
    push ax                          ; 0x6e2f
    call api_idx_0004_PUGI           ; 0x6e30
    pop cx                           ; 0x6e33
    call loc_LMPL                    ; 0x6e34
    jmp short @..loc_HQPO.l6         ; 0x6e37
jumptable_6e77_case_3:
    inc word [bp + 0x4]              ; 0x6e39
    call loc_SKTH                    ; 0x6e3c
    mov word [bss_a4a6], 0           ; 0x6e3f
    jmp short @..loc_HQPO.l6         ; 0x6e45
jumptable_6e77_case_4:
    inc word [bp + 0x4]              ; 0x6e47
    mov ax, 0xa4aa                   ; 0x6e4a
    push ax                          ; 0x6e4d
    call api_idx_0004_PUGI           ; 0x6e4e
    pop cx                           ; 0x6e51
    call api_idx_0004_TLTU           ; 0x6e52
    jmp short @..loc_HQPO.l6         ; 0x6e55
jumptable_6e77_case_5:
    inc word [bp + 0x4]              ; 0x6e57
    inc word [bss_a5aa]              ; 0x6e5a
    jmp short @..loc_HQPO.l6         ; 0x6e5e
jumptable_6e77_case_6:
    inc word [bp + 0x4]              ; 0x6e60
    mov word [bss_a5ac], 1           ; 0x6e63
@..loc_HQPO.l3:
    cmp word [bss_a5ac], byte 0      ; 0x6e69
    je short @..loc_HQPO.l4          ; 0x6e6e
    call loc_HIUG                    ; 0x6e70
    jmp short @..loc_HQPO.l3         ; 0x6e73
@..loc_HQPO.l4:
    jmp short @..loc_HQPO.l6         ; 0x6e75
jumptable_6e77:
    dw jumptable_6e77_case_0 - IMAGE_BASE + 0x5055 ; 0x6e77
    dw jumptable_6e77_case_1 - IMAGE_BASE + 0x5055 ; 0x6e79
    dw jumptable_6e77_case_2 - IMAGE_BASE + 0x5055 ; 0x6e7b
    dw jumptable_6e77_case_3 - IMAGE_BASE + 0x5055 ; 0x6e7d
    dw jumptable_6e77_case_4 - IMAGE_BASE + 0x5055 ; 0x6e7f
    dw jumptable_6e77_case_5 - IMAGE_BASE + 0x5055 ; 0x6e81
    dw jumptable_6e77_case_6 - IMAGE_BASE + 0x5055 ; 0x6e83
@..loc_HQPO.l5:
    cmp ax, strict word 7            ; 0x6e85
    jae short @..loc_HQPO.l6         ; 0x6e88
    xchg bx, ax                      ; 0x6e8a
    shl bx, 1                        ; 0x6e8b
    jmp [cs:bx - 0x4142]             ; 0x6e8d
@..loc_HQPO.l6:
    jmp near @..loc_HQPO.l1          ; 0x6e92
@..loc_HQPO.l7:
    cmp byte [bss_a4aa], 0           ; 0x6e95
    je short @..loc_HQPO.l8          ; 0x6e9a
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
    call ds_string_loc_VOPH          ; 0x6eb4
    add sp, byte 4                   ; 0x6eb7
    push word [bp + 0x4]             ; 0x6eba
    lea ax, word [bp - 0x0105]       ; 0x6ebd
    push ax                          ; 0x6ec1
    call ds_string_loc_VOPH          ; 0x6ec2
    add sp, byte 4                   ; 0x6ec5
    jmp short @..loc_HQPO.l9         ; 0x6ec8
@..loc_HQPO.l8:
    push word [bp + 0x4]             ; 0x6eca
    lea ax, word [bp - 0x0105]       ; 0x6ecd
    push ax                          ; 0x6ed1
    call aztec_strcpy                ; 0x6ed2
    add sp, byte 4                   ; 0x6ed5
@..loc_HQPO.l9:
    mov ax, 2                        ; 0x6ed8
    push ax                          ; 0x6edb
    lea ax, word [bp - 0x0105]       ; 0x6edc
    push ax                          ; 0x6ee0
    call ds_loc_TILJ                 ; 0x6ee1
    add sp, byte 4                   ; 0x6ee4
    mov word [bp - 0x0002], ax       ; 0x6ee7
    cmp ax, 0x127                    ; 0x6eea
    jle short @..loc_HQPO.l10        ; 0x6eed
    mov ax, 0xa4aa                   ; 0x6eef
    push ax                          ; 0x6ef2
    call api_idx_0004_PUGI           ; 0x6ef3
    pop cx                           ; 0x6ef6
    push word [bp + 0x4]             ; 0x6ef7
    mov ax, 0xa4aa                   ; 0x6efa
    push ax                          ; 0x6efd
    call aztec_strcpy                ; 0x6efe
    add sp, byte 4                   ; 0x6f01
    jmp short @..loc_HQPO.l11        ; 0x6f04
@..loc_HQPO.l10:
    lea ax, word [bp - 0x0105]       ; 0x6f06
    push ax                          ; 0x6f0a
    mov ax, 0xa4aa                   ; 0x6f0b
    push ax                          ; 0x6f0e
    call aztec_strcpy                ; 0x6f0f
    add sp, byte 4                   ; 0x6f12
@..loc_HQPO.l11:
    ret                              ; 0x6f15
%include "vbase/api_idx_0004_KGUI.asm"     ; 0x6f16

%include "vbase/loc_HTNP.asm"              ; 0x6f79

%include "shared/api_idx_0002_VTPK.asm"     ; 0x6fda

%include "vbase/api_idx_0002_NLRM.asm"     ; 0x706d

%include "vbase/loc_JJLM.asm"              ; 0x72c2

%include "vbase/api_idx_0016_NVIQ.asm"     ; 0x72d0

%include "vbase/api_idx_000a_OVTV.asm"     ; 0x7340

%include "vbase/api_idx_000a_VTTG.asm"     ; 0x737d

%include "vbase/loc_MUTS.asm"              ; 0x73bc

%include "vbase/api_idx_000a_KPKK.asm"     ; 0x7415

%include "vbase/loc_LPVU.asm"              ; 0x8634

%include "vbase/api_idx_0002_PHMJ.asm"     ; 0x8756

%include "vbase/api_idx_0002_MHHI.asm"     ; 0x8881

%include "vbase/loc_VVVH.asm"              ; 0x8a74

%include "vbase/api_idx_0002_SMPQ.asm"     ; 0x8b69

%include "vbase/api_idx_0002_UPNQ.asm"     ; 0x8ca3

%include "vbase/api_idx_0002_LNSL.asm"     ; 0x8d84

%include "vbase/api_idx_0002_RGNK.asm"     ; 0x8e6b

%include "vbase/api_idx_0002_NURS.asm"     ; 0x8f74

%include "vbase/asm_only/string_loc_IHLM.asm"       ; 0x9330

%include "shared/leaf_loc_VKIM.asm"         ; 0x936e

%include "vbase/asm_only/aztec_strcmp.asm"          ; 0x9386

%include "vbase/asm_only/aztec_strncmp.asm"         ; 0x93a4

%include "vbase/asm_only/string_loc_UUPH.asm"       ; 0x93e3


__zimage_end:
