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
    dw (__zdata_start - __zcode_start)       ; 0x93df ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x012e ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x143c ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xe377 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vbase/ovmain.asm"                ; 0x000e

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
%include "shared/game/api_idx_0002_SJMT.asm"     ; 0x0036

%include "vbase/api_idx_0004_VUIP.asm"     ; 0x00b5

dseg_90a3 equ __zdseg_end + (__zdseg_90a3 - __zdata_start)
%include "vbase/loc_LSRQ.asm"              ; 0x023a

dseg_90a9 equ __zdseg_end + (__zdseg_90a9 - __zdata_start)
api_idx_0016_KOOO       equ api_idx_0016_JNJG
api_idx_0016_JNJG.dseg1 equ dseg_90a9
%include "shared/game/api_idx_0016_JNJG.asm"     ; 0x0559

%include "vbase/api_idx_0006_MHOR.asm"     ; 0x05b6

dseg_90b6 equ __zdseg_end + (__zdseg_90b6 - __zdata_start)
api_idx_0038_MNUL       equ api_idx_0038_LTUV
api_idx_0038_LTUV.dseg1 equ dseg_90b6
jumptable_0d04_case_0   equ api_idx_0038_LTUV.jumptable_case1
jumptable_0d04_case_1   equ api_idx_0038_LTUV.jumptable_case2
jumptable_0d04_case_3   equ api_idx_0038_LTUV.jumptable_case3
jumptable_0d04_case_4   equ api_idx_0038_LTUV.jumptable_case4
jumptable_0d04_case_5   equ api_idx_0038_LTUV.jumptable_case5
jumptable_0d04          equ api_idx_0038_LTUV.jumptable1
%include "shared/game/api_idx_0038_LTUV.asm"     ; 0x0606

%include "shared/game/api_idx_0008_LLVT.asm"     ; 0x0d3f

dseg_90bc equ __zdseg_end + (__zdseg_90bc - __zdata_start)
%include "vbase/api_idx_0028_NRJN.asm"     ; 0x0ef7

%include "vbase/loc_KPLK.asm"              ; 0x150d

api_idx_004c_MUGV equ api_idx_004c_RQSO
%include "shared/game/api_idx_004c_RQSO.asm"     ; 0x156e

%include "vbase/loc_JJHG.asm"              ; 0x1683

%include "vbase/loc_UOUN.asm"              ; 0x1820

%include "vbase/loc_GLHQ.asm"              ; 0x1a12

%include "shared/game/loc_OIOJ.asm"              ; 0x1c09

jumptable_1ee4_case_0  equ api_idx_0004_MMTP.jumptable_case1
jumptable_1ee4_case_1  equ api_idx_0004_MMTP.jumptable_case2
jumptable_1ee4_case_2  equ api_idx_0004_MMTP.jumptable_case3
jumptable_1ee4_case_4  equ api_idx_0004_MMTP.jumptable_case4
jumptable_1ee4_case_5  equ api_idx_0004_MMTP.jumptable_case5
jumptable_1ee4_case_6  equ api_idx_0004_MMTP.jumptable_case6
jumptable_1ee4_case_7  equ api_idx_0004_MMTP.jumptable_case7
jumptable_1ee4_case_8  equ api_idx_0004_MMTP.jumptable_case8
jumptable_1ee4_case_9  equ api_idx_0004_MMTP.jumptable_case9
jumptable_1ee4_case_10 equ api_idx_0004_MMTP.jumptable_case10
jumptable_1ee4_case_11 equ api_idx_0004_MMTP.jumptable_case11
jumptable_1ee4_case_12 equ api_idx_0004_MMTP.jumptable_case12
jumptable_1ee4_case_13 equ api_idx_0004_MMTP.jumptable_case13
jumptable_1ee4         equ api_idx_0004_MMTP.jumptable1
%include "shared/game/api_idx_0004_MMTP.asm"     ; 0x1c80

%include "vbase/loc_MJMJ.asm"              ; 0x1f0e

%include "vbase/api_idx_0040_TGSS.asm"     ; 0x1f6f

dseg_90c2 equ __zdseg_end + (__zdseg_90c2 - __zdata_start)
bss_91c6  equ __zdseg_end + (__zobss_91c6 - __zdata_start)
bss_91da  equ __zdseg_end + (__zobss_91da - __zdata_start)
bss_91ee  equ __zdseg_end + (__zobss_91ee - __zdata_start)
bss_9220  equ __zdseg_end + (__zobss_9220 - __zdata_start)
bss_93be  equ __zdseg_end + (__zobss_93be - __zdata_start)
bss_93c0  equ __zdseg_end + (__zobss_93c0 - __zdata_start)
bss_9400  equ __zdseg_end + (__zobss_9400 - __zdata_start)
bss_9402  equ __zdseg_end + (__zobss_9402 - __zdata_start)
bss_940a  equ __zdseg_end + (__zobss_940a - __zdata_start)
bss_940c  equ __zdseg_end + (__zobss_940c - __zdata_start)
bss_941c  equ __zdseg_end + (__zobss_941c - __zdata_start)
bss_9426  equ __zdseg_end + (__zobss_9426 - __zdata_start)
bss_9428  equ __zdseg_end + (__zobss_9428 - __zdata_start)
bss_958a  equ __zdseg_end + (__zobss_958a - __zdata_start)
bss_959f  equ __zdseg_end + (__zobss_959f - __zdata_start)
bss_95a0  equ __zdseg_end + (__zobss_95a0 - __zdata_start)
bss_95a1  equ __zdseg_end + (__zobss_95a1 - __zdata_start)
bss_95a2  equ __zdseg_end + (__zobss_95a2 - __zdata_start)
bss_95ae  equ __zdseg_end + (__zobss_95ae - __zdata_start)
bss_95af  equ __zdseg_end + (__zobss_95af - __zdata_start)
bss_95b0  equ __zdseg_end + (__zobss_95b0 - __zdata_start)
bss_95b2  equ __zdseg_end + (__zobss_95b2 - __zdata_start)
%include "vbase/api_idx_0072_OUII.asm"     ; 0x1faf

dseg_90cf equ __zdseg_end + (__zdseg_90cf - __zdata_start)
; bss_91c6  equ __zdseg_end + (__zobss_91c6 - __zdata_start)
; bss_91da  equ __zdseg_end + (__zobss_91da - __zdata_start)
; bss_91ee  equ __zdseg_end + (__zobss_91ee - __zdata_start)
; bss_95b2  equ __zdseg_end + (__zobss_95b2 - __zdata_start)
bss_95b4  equ __zdseg_end + (__zobss_95b4 - __zdata_start)
bss_98d4  equ __zdseg_end + (__zobss_98d4 - __zdata_start)
bss_98d5  equ __zdseg_end + (__zobss_98d5 - __zdata_start)
bss_98d6  equ __zdseg_end + (__zobss_98d6 - __zdata_start)
bss_98ea  equ __zdseg_end + (__zobss_98ea - __zdata_start)
bss_98eb  equ __zdseg_end + (__zobss_98eb - __zdata_start)
bss_98f2  equ __zdseg_end + (__zobss_98f2 - __zdata_start)
bss_98f4  equ __zdseg_end + (__zobss_98f4 - __zdata_start)
bss_98f6  equ __zdseg_end + (__zobss_98f6 - __zdata_start)
bss_98f7  equ __zdseg_end + (__zobss_98f7 - __zdata_start)
bss_98f8  equ __zdseg_end + (__zobss_98f8 - __zdata_start)
bss_98f9  equ __zdseg_end + (__zobss_98f9 - __zdata_start)
bss_98fa  equ __zdseg_end + (__zobss_98fa - __zdata_start)
bss_98fb  equ __zdseg_end + (__zobss_98fb - __zdata_start)
bss_98fc  equ __zdseg_end + (__zobss_98fc - __zdata_start)
bss_98fd  equ __zdseg_end + (__zobss_98fd - __zdata_start)
bss_98fe  equ __zdseg_end + (__zobss_98fe - __zdata_start)
bss_9900  equ __zdseg_end + (__zobss_9900 - __zdata_start)
bss_9980  equ __zdseg_end + (__zobss_9980 - __zdata_start)
bss_9a00  equ __zdseg_end + (__zobss_9a00 - __zdata_start)
bss_9a02  equ __zdseg_end + (__zobss_9a02 - __zdata_start)
bss_9a04  equ __zdseg_end + (__zobss_9a04 - __zdata_start)
bss_9a06  equ __zdseg_end + (__zobss_9a06 - __zdata_start)
bss_9a08  equ __zdseg_end + (__zobss_9a08 - __zdata_start)
bss_9a0a  equ __zdseg_end + (__zobss_9a0a - __zdata_start)
bss_9a0c  equ __zdseg_end + (__zobss_9a0c - __zdata_start)
bss_9a0e  equ __zdseg_end + (__zobss_9a0e - __zdata_start)
bss_9a10  equ __zdseg_end + (__zobss_9a10 - __zdata_start)
bss_9a12  equ __zdseg_end + (__zobss_9a12 - __zdata_start)
bss_9a14  equ __zdseg_end + (__zobss_9a14 - __zdata_start)
bss_9a16  equ __zdseg_end + (__zobss_9a16 - __zdata_start)
bss_9a18  equ __zdseg_end + (__zobss_9a18 - __zdata_start)
bss_9a1a  equ __zdseg_end + (__zobss_9a1a - __zdata_start)
bss_9a1c  equ __zdseg_end + (__zobss_9a1c - __zdata_start)
bss_9a1e  equ __zdseg_end + (__zobss_9a1e - __zdata_start)
bss_9a20  equ __zdseg_end + (__zobss_9a20 - __zdata_start)
bss_9a22  equ __zdseg_end + (__zobss_9a22 - __zdata_start)
bss_9a24  equ __zdseg_end + (__zobss_9a24 - __zdata_start)
bss_9a26  equ __zdseg_end + (__zobss_9a26 - __zdata_start)
bss_9a28  equ __zdseg_end + (__zobss_9a28 - __zdata_start)
bss_9a2a  equ __zdseg_end + (__zobss_9a2a - __zdata_start)
bss_9a2c  equ __zdseg_end + (__zobss_9a2c - __zdata_start)
bss_9a2e  equ __zdseg_end + (__zobss_9a2e - __zdata_start)
bss_9a30  equ __zdseg_end + (__zobss_9a30 - __zdata_start)
bss_9a4a  equ __zdseg_end + (__zobss_9a4a - __zdata_start)
bss_9a4c  equ __zdseg_end + (__zobss_9a4c - __zdata_start)
%include "vbase/api_idx_0038_HNUN.asm"     ; 0x2fef

dseg_90db equ __zdseg_end + (__zdseg_90db - __zdata_start)
; bss_91c6  equ __zdseg_end + (__zobss_91c6 - __zdata_start)
; bss_91da  equ __zdseg_end + (__zobss_91da - __zdata_start)
; bss_91ee  equ __zdseg_end + (__zobss_91ee - __zdata_start)
; bss_9900  equ __zdseg_end + (__zobss_9900 - __zdata_start)
; bss_9980  equ __zdseg_end + (__zobss_9980 - __zdata_start)
; bss_9a00  equ __zdseg_end + (__zobss_9a00 - __zdata_start)
; bss_9a02  equ __zdseg_end + (__zobss_9a02 - __zdata_start)
; bss_9a04  equ __zdseg_end + (__zobss_9a04 - __zdata_start)
; bss_9a06  equ __zdseg_end + (__zobss_9a06 - __zdata_start)
; bss_9a08  equ __zdseg_end + (__zobss_9a08 - __zdata_start)
; bss_9a0a  equ __zdseg_end + (__zobss_9a0a - __zdata_start)
; bss_9a0c  equ __zdseg_end + (__zobss_9a0c - __zdata_start)
; bss_9a0e  equ __zdseg_end + (__zobss_9a0e - __zdata_start)
; bss_9a10  equ __zdseg_end + (__zobss_9a10 - __zdata_start)
; bss_9a12  equ __zdseg_end + (__zobss_9a12 - __zdata_start)
; bss_9a14  equ __zdseg_end + (__zobss_9a14 - __zdata_start)
; bss_9a16  equ __zdseg_end + (__zobss_9a16 - __zdata_start)
; bss_9a18  equ __zdseg_end + (__zobss_9a18 - __zdata_start)
; bss_9a1a  equ __zdseg_end + (__zobss_9a1a - __zdata_start)
; bss_9a1c  equ __zdseg_end + (__zobss_9a1c - __zdata_start)
; bss_9a1e  equ __zdseg_end + (__zobss_9a1e - __zdata_start)
; bss_9a20  equ __zdseg_end + (__zobss_9a20 - __zdata_start)
; bss_9a22  equ __zdseg_end + (__zobss_9a22 - __zdata_start)
; bss_9a24  equ __zdseg_end + (__zobss_9a24 - __zdata_start)
; bss_9a26  equ __zdseg_end + (__zobss_9a26 - __zdata_start)
; bss_9a28  equ __zdseg_end + (__zobss_9a28 - __zdata_start)
; bss_9a2a  equ __zdseg_end + (__zobss_9a2a - __zdata_start)
; bss_9a2c  equ __zdseg_end + (__zobss_9a2c - __zdata_start)
; bss_9a2e  equ __zdseg_end + (__zobss_9a2e - __zdata_start)
; bss_9a30  equ __zdseg_end + (__zobss_9a30 - __zdata_start)
; bss_9a4a  equ __zdseg_end + (__zobss_9a4a - __zdata_start)
; bss_9a4c  equ __zdseg_end + (__zobss_9a4c - __zdata_start)
%include "vbase/api_idx_004e_HUKL.asm"     ; 0x388c

dseg_90e8 equ __zdseg_end + (__zdseg_90e8 - __zdata_start)
%include "vbase/api_idx_0002_QRVU.asm"     ; 0x3fac

bss_9c94 equ __zdseg_end + (__zobss_9c94 - __zdata_start)
bss_a294 equ __zdseg_end + (__zobss_a294 - __zdata_start)
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

dseg_90f5 equ __zdseg_end + (__zdseg_90f5 - __zdata_start)
%include "vbase/api_idx_0062_SRKH.asm"     ; 0x4b95

dseg_90fb equ __zdseg_end + (__zdseg_90fb - __zdata_start)
dseg_9107 equ __zdseg_end + (__zdseg_9107 - __zdata_start)
; bss_9c94  equ __zdseg_end + (__zobss_9c94 - __zdata_start)
%include "vbase/loc_RMVR.asm"              ; 0x4d0e

%include "vbase/loc_LQIO.asm"              ; 0x606d

%include "vbase/api_idx_0006_MROT.asm"     ; 0x61db

%include "vbase/loc_ROTV.asm"              ; 0x62c6

dseg_910d equ __zdseg_end + (__zdseg_910d - __zdata_start)
%include "vbase/api_idx_00aa_SLMI.asm"     ; 0x62e5

; bss_95b2 equ __zdseg_end + (__zobss_95b2 - __zdata_start)
bss_a494 equ __zdseg_end + (__zobss_a494 - __zdata_start)
%include "vbase/api_idx_0004_OPGP.asm"     ; 0x6665

%include "vbase/api_idx_0002_IRNO.asm"     ; 0x6756

%include "vbase/api_idx_0002_JLUK.asm"     ; 0x6800

%include "vbase/api_idx_004a_UIIS.asm"     ; 0x68bd

; bss_a494 equ __zdseg_end + (__zobss_a494 - __zdata_start)
%include "vbase/api_idx_004a_LKJS.asm"     ; 0x6a0f

%include "vbase/loc_SVUQ.asm"              ; 0x6c1e

%include "vbase/loc_QSOL.asm"              ; 0x6c3f

bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
%include "vbase/loc_TJHG.asm"              ; 0x6c5c

api_idx_0004_TTGQ.loc1 equ loc_TJHG
%include "shared/game/api_idx_0004_TTGQ.asm"     ; 0x6c87

bss_a4a6 equ __zdseg_end + (__zobss_a4a6 - __zdata_start)
%include "vbase/api_idx_0004_MIQG.asm"     ; 0x6cd0

; bss_a4a6 equ __zdseg_end + (__zobss_a4a6 - __zdata_start)
bss_a4a8 equ __zdseg_end + (__zobss_a4a8 - __zdata_start)
%include "vbase/api_idx_0004_RLUP.asm"     ; 0x6d1f

dseg_9114 equ __zdseg_end + (__zdseg_9114 - __zdata_start)
dseg_911c equ __zdseg_end + (__zdseg_911c - __zdata_start)
; bss_a4a6  equ __zdseg_end + (__zobss_a4a6 - __zdata_start)
bss_a4aa  equ __zdseg_end + (__zobss_a4aa - __zdata_start)
bss_a5aa  equ __zdseg_end + (__zobss_a5aa - __zdata_start)
bss_a5ac  equ __zdseg_end + (__zobss_a5ac - __zdata_start)
%include "vbase/loc_VMSS.asm"              ; 0x6dd9

api_idx_0004_OTSN          equ api_idx_0004_JQTM
api_idx_0004_JQTM.api_idx1 equ loc_VMSS
%include "shared/game/api_idx_0004_JQTM.asm"     ; 0x6f16

; bss_a4a6 equ __zdseg_end + (__zobss_a4a6 - __zdata_start)
; bss_a4a8 equ __zdseg_end + (__zobss_a4a8 - __zdata_start)
; bss_a4aa equ __zdseg_end + (__zobss_a4aa - __zdata_start)
; bss_a5ac equ __zdseg_end + (__zobss_a5ac - __zdata_start)
%include "vbase/loc_LIQV.asm"              ; 0x6f79

%include "shared/game/api_idx_0002_LVPS.asm"     ; 0x6fda

dseg_911e equ __zdseg_end + (__zdseg_911e - __zdata_start)
dseg_912b equ __zdseg_end + (__zdseg_912b - __zdata_start)
; bss_a4a4  equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
%include "vbase/api_idx_0002_NVMN.asm"     ; 0x706d

%include "vbase/loc_GUNQ.asm"              ; 0x72c2

dseg_9138 equ __zdseg_end + (__zdseg_9138 - __zdata_start)
%include "vbase/api_idx_0016_LTLN.asm"     ; 0x72d0

%include "vbase/api_idx_000a_JPLR.asm"     ; 0x7340

%include "vbase/api_idx_000a_IGIN.asm"     ; 0x737d

bss_a5ae equ __zdseg_end + (__zobss_a5ae - __zdata_start)
bss_a5b0 equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
%include "vbase/loc_GSUP.asm"              ; 0x73bc

; bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5aa equ __zdseg_end + (__zobss_a5aa - __zdata_start)
; bss_a5ac equ __zdseg_end + (__zobss_a5ac - __zdata_start)
; bss_a5b0 equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
bss_a5b2 equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
bss_a5b4 equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
bss_a5b6 equ __zdseg_end + (__zobss_a5b6 - __zdata_start)
bss_a5b8 equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
bss_a5ba equ __zdseg_end + (__zobss_a5ba - __zdata_start)
bss_a5bc equ __zdseg_end + (__zobss_a5bc - __zdata_start)
bss_a5be equ __zdseg_end + (__zobss_a5be - __zdata_start)
bss_a5c6 equ __zdseg_end + (__zobss_a5c6 - __zdata_start)
bss_a5ce equ __zdseg_end + (__zobss_a5ce - __zdata_start)
bss_a5d0 equ __zdseg_end + (__zobss_a5d0 - __zdata_start)
bss_a5d2 equ __zdseg_end + (__zobss_a5d2 - __zdata_start)
bss_a5d4 equ __zdseg_end + (__zobss_a5d4 - __zdata_start)
bss_a5d6 equ __zdseg_end + (__zobss_a5d6 - __zdata_start)
bss_a5d8 equ __zdseg_end + (__zobss_a5d8 - __zdata_start)
bss_a5da equ __zdseg_end + (__zobss_a5da - __zdata_start)
bss_a5e2 equ __zdseg_end + (__zobss_a5e2 - __zdata_start)
bss_a5e4 equ __zdseg_end + (__zobss_a5e4 - __zdata_start)
bss_a5f2 equ __zdseg_end + (__zobss_a5f2 - __zdata_start)
bss_a5fa equ __zdseg_end + (__zobss_a5fa - __zdata_start)
bss_a5fc equ __zdseg_end + (__zobss_a5fc - __zdata_start)
bss_a5fe equ __zdseg_end + (__zobss_a5fe - __zdata_start)
bss_a600 equ __zdseg_end + (__zobss_a600 - __zdata_start)
%include "vbase/api_idx_000a_THHN.asm"     ; 0x7415

dseg_9144 equ __zdseg_end + (__zdseg_9144 - __zdata_start)
dseg_9151 equ __zdseg_end + (__zdseg_9151 - __zdata_start)
; bss_a4a4  equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae  equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0  equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2  equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4  equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b6  equ __zdseg_end + (__zobss_a5b6 - __zdata_start)
; bss_a5b8  equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
; bss_a5ba  equ __zdseg_end + (__zobss_a5ba - __zdata_start)
; bss_a5bc  equ __zdseg_end + (__zobss_a5bc - __zdata_start)
; bss_a5c6  equ __zdseg_end + (__zobss_a5c6 - __zdata_start)
; bss_a5ce  equ __zdseg_end + (__zobss_a5ce - __zdata_start)
%include "vbase/loc_TQHJ.asm"              ; 0x8634

; bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0 equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b6 equ __zdseg_end + (__zobss_a5b6 - __zdata_start)
; bss_a5b8 equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
; bss_a5ba equ __zdseg_end + (__zobss_a5ba - __zdata_start)
; bss_a5d0 equ __zdseg_end + (__zobss_a5d0 - __zdata_start)
; bss_a5da equ __zdseg_end + (__zobss_a5da - __zdata_start)
bss_a5e0 equ __zdseg_end + (__zobss_a5e0 - __zdata_start)
; bss_a5e2 equ __zdseg_end + (__zobss_a5e2 - __zdata_start)
bss_a5f0 equ __zdseg_end + (__zobss_a5f0 - __zdata_start)
; bss_a5f2 equ __zdseg_end + (__zobss_a5f2 - __zdata_start)
; bss_a5fa equ __zdseg_end + (__zobss_a5fa - __zdata_start)
%include "vbase/api_idx_0002_GLIS.asm"     ; 0x8756

; bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0 equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2 equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4 equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b8 equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
; bss_a5bc equ __zdseg_end + (__zobss_a5bc - __zdata_start)
; bss_a5be equ __zdseg_end + (__zobss_a5be - __zdata_start)
; bss_a5d0 equ __zdseg_end + (__zobss_a5d0 - __zdata_start)
; bss_a5d2 equ __zdseg_end + (__zobss_a5d2 - __zdata_start)
; bss_a5d4 equ __zdseg_end + (__zobss_a5d4 - __zdata_start)
; bss_a5d6 equ __zdseg_end + (__zobss_a5d6 - __zdata_start)
; bss_a5d8 equ __zdseg_end + (__zobss_a5d8 - __zdata_start)
; bss_a5da equ __zdseg_end + (__zobss_a5da - __zdata_start)
; bss_a5e0 equ __zdseg_end + (__zobss_a5e0 - __zdata_start)
; bss_a5e2 equ __zdseg_end + (__zobss_a5e2 - __zdata_start)
; bss_a5e4 equ __zdseg_end + (__zobss_a5e4 - __zdata_start)
; bss_a5f0 equ __zdseg_end + (__zobss_a5f0 - __zdata_start)
; bss_a5f2 equ __zdseg_end + (__zobss_a5f2 - __zdata_start)
; bss_a5fc equ __zdseg_end + (__zobss_a5fc - __zdata_start)
; bss_a5fe equ __zdseg_end + (__zobss_a5fe - __zdata_start)
%include "vbase/api_idx_0002_UUUJ.asm"     ; 0x8881

dseg_9158 equ __zdseg_end + (__zdseg_9158 - __zdata_start)
; bss_a4a4  equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae  equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0  equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2  equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4  equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b8  equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
; bss_a5ce  equ __zdseg_end + (__zobss_a5ce - __zdata_start)
; bss_a5e2  equ __zdseg_end + (__zobss_a5e2 - __zdata_start)
; bss_a5f2  equ __zdseg_end + (__zobss_a5f2 - __zdata_start)
; bss_a600  equ __zdseg_end + (__zobss_a600 - __zdata_start)
%include "vbase/loc_JTTS.asm"              ; 0x8a74

dseg_9165 equ __zdseg_end + (__zdseg_9165 - __zdata_start)
; bss_a4a4  equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae  equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0  equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2  equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4  equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b8  equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
; bss_a5d0  equ __zdseg_end + (__zobss_a5d0 - __zdata_start)
; bss_a5d2  equ __zdseg_end + (__zobss_a5d2 - __zdata_start)
; bss_a5d4  equ __zdseg_end + (__zobss_a5d4 - __zdata_start)
; bss_a5d6  equ __zdseg_end + (__zobss_a5d6 - __zdata_start)
; bss_a5da  equ __zdseg_end + (__zobss_a5da - __zdata_start)
; bss_a5e2  equ __zdseg_end + (__zobss_a5e2 - __zdata_start)
; bss_a5f2  equ __zdseg_end + (__zobss_a5f2 - __zdata_start)
; bss_a600  equ __zdseg_end + (__zobss_a600 - __zdata_start)
%include "vbase/api_idx_0002_GORG.asm"     ; 0x8b69

dseg_9172 equ __zdseg_end + (__zdseg_9172 - __zdata_start)
dseg_917f equ __zdseg_end + (__zdseg_917f - __zdata_start)
; bss_a4a4  equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae  equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0  equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2  equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4  equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b6  equ __zdseg_end + (__zobss_a5b6 - __zdata_start)
; bss_a5c6  equ __zdseg_end + (__zobss_a5c6 - __zdata_start)
; bss_a5ce  equ __zdseg_end + (__zobss_a5ce - __zdata_start)
; bss_a5fa  equ __zdseg_end + (__zobss_a5fa - __zdata_start)
%include "vbase/api_idx_0002_JHTS.asm"     ; 0x8ca3

dseg_9186 equ __zdseg_end + (__zdseg_9186 - __zdata_start)
dseg_9193 equ __zdseg_end + (__zdseg_9193 - __zdata_start)
; bss_a4a4  equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae  equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0  equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2  equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4  equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5c6  equ __zdseg_end + (__zobss_a5c6 - __zdata_start)
; bss_a5ce  equ __zdseg_end + (__zobss_a5ce - __zdata_start)
; bss_a5fa  equ __zdseg_end + (__zobss_a5fa - __zdata_start)
; bss_a5fc  equ __zdseg_end + (__zobss_a5fc - __zdata_start)
; bss_a5fe  equ __zdseg_end + (__zobss_a5fe - __zdata_start)
%include "vbase/api_idx_0002_MIQR.asm"     ; 0x8d84

dseg_919a equ __zdseg_end + (__zdseg_919a - __zdata_start)
dseg_91a7 equ __zdseg_end + (__zdseg_91a7 - __zdata_start)
; bss_a4a4  equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae  equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0  equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2  equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4  equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b8  equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
; bss_a5ba  equ __zdseg_end + (__zobss_a5ba - __zdata_start)
; bss_a5c6  equ __zdseg_end + (__zobss_a5c6 - __zdata_start)
; bss_a5ce  equ __zdseg_end + (__zobss_a5ce - __zdata_start)
; bss_a5fa  equ __zdseg_end + (__zobss_a5fa - __zdata_start)
; bss_a5fc  equ __zdseg_end + (__zobss_a5fc - __zdata_start)
; bss_a5fe  equ __zdseg_end + (__zobss_a5fe - __zdata_start)
%include "vbase/api_idx_0002_QRJS.asm"     ; 0x8e6b

dseg_91ae equ __zdseg_end + (__zdseg_91ae - __zdata_start)
%include "vbase/api_idx_0002_HQSQ.asm"     ; 0x8f74

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_91c6 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec/aztec_ovbgn.asm"           ; 0x9330

%include "shared/aztec/aztec_cswit.asm"           ; 0x936e

%include "shared/aztec/aztec_strcmp.asm"          ; 0x9386

__zdseg_9098:
__zdata_start:
    db 'PCFILE.DBS', 0
__zdseg_90a3:
    db 'V.$$$', 0
__zdseg_90a9:
    db 'PORTDATA.VGA', 0
__zdseg_90b6:
    db 'V.$$$', 0
__zdseg_90bc:
    db 'V.$$$', 0
__zdseg_90c2:
    db 'SAVEGAME.BCF', 0
__zdseg_90cf:
    db 'NEWGAME.DBS', 0
__zdseg_90db:
    db 'CRUSADER.END', 0
__zdseg_90e8:
    db 'SCENARIO.HDR', 0
__zdseg_90f5:
    db 'V.$$$', 0
__zdseg_90fb:
    db 'PALETTE.DEF', 0
__zdseg_9107:
    db 'V.$$$', 0
__zdseg_910d:
    db 'V.$$$', 0
    db 0x00
__zdseg_9114:
    db '!%&]@#|', 0
__zdseg_911c:
    db 0x20, 0x00
__zdseg_911e:
    db 'STARSCRN.VGA', 0
__zdseg_912b:
    db 'MAINSCRN.VGA', 0
__zdseg_9138:
    db 'VIDEO00.PIC', 0
__zdseg_9144:
    db 'VIDSCN01.VGA', 0
__zdseg_9151:
    db '123432', 0
__zdseg_9158:
    db 'STARSCRN.VGA', 0
__zdseg_9165:
    db 'VIDSCN02.VGA', 0
__zdseg_9172:
    db 'VIDSCN03.VGA', 0
__zdseg_917f:
    db '123432', 0
__zdseg_9186:
    db 'VIDSCN04.VGA', 0
__zdseg_9193:
    db '123432', 0
__zdseg_919a:
    db 'VIDSCN05.VGA', 0
__zdseg_91a7:
    db '123432', 0
__zdseg_91ae:
    db 'MAINSCRN.VGA', 0
    db 0x00
%include "shared/data/save_si.asm"          ; 0x9511

%include "shared/data/save_di.asm"          ; 0x9513

%include "shared/data/save_sp.asm"          ; 0x9515

%include "shared/data/save_bp.asm"          ; 0x9517

%include "shared/data/save_ret.asm"         ; 0x9519


__zimage_end:
absolute __zimage_end
__zobss_91c6:
    resb 0x0014
__zobss_91da:
    resb 0x0014
__zobss_91ee:
    resb 0x0032
__zobss_9220:
    resb 0x019e
__zobss_93be:
    resb 0x0002
__zobss_93c0:
    resb 0x0040
__zobss_9400:
    resb 0x0002
__zobss_9402:
    resb 0x0008
__zobss_940a:
    resb 0x0002
__zobss_940c:
    resb 0x0010
__zobss_941c:
    resb 0x000a
__zobss_9426:
    resb 0x0002
__zobss_9428:
    resb 0x0162
__zobss_958a:
    resb 0x0015
__zobss_959f:
    resb 0x0001
__zobss_95a0:
    resb 0x0001
__zobss_95a1:
    resb 0x0001
__zobss_95a2:
    resb 0x000c
__zobss_95ae:
    resb 0x0001
__zobss_95af:
    resb 0x0001
__zobss_95b0:
    resb 0x0002
__zobss_95b2:
    resb 0x0002
__zobss_95b4:
    resb 0x0320
__zobss_98d4:
    resb 0x0001
__zobss_98d5:
    resb 0x0001
__zobss_98d6:
    resb 0x0014
__zobss_98ea:
    resb 0x0001
__zobss_98eb:
    resb 0x0007
__zobss_98f2:
    resb 0x0002
__zobss_98f4:
    resb 0x0002
__zobss_98f6:
    resb 0x0001
__zobss_98f7:
    resb 0x0001
__zobss_98f8:
    resb 0x0001
__zobss_98f9:
    resb 0x0001
__zobss_98fa:
    resb 0x0001
__zobss_98fb:
    resb 0x0001
__zobss_98fc:
    resb 0x0001
__zobss_98fd:
    resb 0x0001
__zobss_98fe:
    resb 0x0002
__zobss_9900:
    resb 0x0080
__zobss_9980:
    resb 0x0080
__zobss_9a00:
    resb 0x0002
__zobss_9a02:
    resb 0x0002
__zobss_9a04:
    resb 0x0002
__zobss_9a06:
    resb 0x0002
__zobss_9a08:
    resb 0x0002
__zobss_9a0a:
    resb 0x0002
__zobss_9a0c:
    resb 0x0002
__zobss_9a0e:
    resb 0x0002
__zobss_9a10:
    resb 0x0002
__zobss_9a12:
    resb 0x0002
__zobss_9a14:
    resb 0x0002
__zobss_9a16:
    resb 0x0002
__zobss_9a18:
    resb 0x0002
__zobss_9a1a:
    resb 0x0002
__zobss_9a1c:
    resb 0x0002
__zobss_9a1e:
    resb 0x0002
__zobss_9a20:
    resb 0x0002
__zobss_9a22:
    resb 0x0002
__zobss_9a24:
    resb 0x0002
__zobss_9a26:
    resb 0x0002
__zobss_9a28:
    resb 0x0002
__zobss_9a2a:
    resb 0x0002
__zobss_9a2c:
    resb 0x0002
__zobss_9a2e:
    resb 0x0002
__zobss_9a30:
    resb 0x001a
__zobss_9a4a:
    resb 0x0002
__zobss_9a4c:
    resb 0x0248
__zobss_9c94:
    resb 0x0600
__zobss_a294:
    resb 0x0200
__zobss_a494:
    resb 0x0010
__zobss_a4a4:
    resb 0x0002
__zobss_a4a6:
    resb 0x0002
__zobss_a4a8:
    resb 0x0002
__zobss_a4aa:
    resb 0x0100
__zobss_a5aa:
    resb 0x0002
__zobss_a5ac:
    resb 0x0002
__zobss_a5ae:
    resb 0x0002
__zobss_a5b0:
    resb 0x0002
__zobss_a5b2:
    resb 0x0002
__zobss_a5b4:
    resb 0x0002
__zobss_a5b6:
    resb 0x0002
__zobss_a5b8:
    resb 0x0002
__zobss_a5ba:
    resb 0x0002
__zobss_a5bc:
    resb 0x0002
__zobss_a5be:
    resb 0x0008
__zobss_a5c6:
    resb 0x0008
__zobss_a5ce:
    resb 0x0002
__zobss_a5d0:
    resb 0x0002
__zobss_a5d2:
    resb 0x0002
__zobss_a5d4:
    resb 0x0002
__zobss_a5d6:
    resb 0x0002
__zobss_a5d8:
    resb 0x0002
__zobss_a5da:
    resb 0x0006
__zobss_a5e0:
    resb 0x0002
__zobss_a5e2:
    resb 0x0002
__zobss_a5e4:
    resb 0x000c
__zobss_a5f0:
    resb 0x0002
__zobss_a5f2:
    resb 0x0008
__zobss_a5fa:
    resb 0x0002
__zobss_a5fc:
    resb 0x0002
__zobss_a5fe:
    resb 0x0002
__zobss_a600:
    resb 0x0002
__zobss_end:
