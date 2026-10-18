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
    dw __zobss_end - __zimage_end                ; 0x143c ; o_bss: uninitialized data size
    dw string_loc_LOVO - IMAGE_BASE + __zres_end ; 0xe377 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vbase/loc_RSMP.asm"              ; 0x000e

%include "shared/api_idx_0002_SJMT.asm"     ; 0x0036

%include "vbase/api_idx_0004_VUIP.asm"     ; 0x00b5

%include "vbase/loc_LSRQ.asm"              ; 0x023a

%include "vbase/api_idx_0016_KOOO.asm"     ; 0x0559

%include "vbase/api_idx_0006_MHOR.asm"     ; 0x05b6

%include "vbase/api_idx_0038_MNUL.asm"     ; 0x0606

%include "shared/api_idx_0008_LLVT.asm"     ; 0x0d3f

%include "vbase/api_idx_0028_NRJN.asm"     ; 0x0ef7

%include "vbase/loc_KPLK.asm"              ; 0x150d

%include "vbase/api_idx_004c_MUGV.asm"     ; 0x156e

%include "vbase/loc_JJHG.asm"              ; 0x1683

%include "vbase/loc_UOUN.asm"              ; 0x1820

%include "vbase/loc_GLHQ.asm"              ; 0x1a12

%include "shared/loc_OIOJ.asm"              ; 0x1c09

%include "vbase/api_idx_0004_MMTP.asm"     ; 0x1c80

%include "vbase/loc_MJMJ.asm"              ; 0x1f0e

%include "vbase/api_idx_0040_TGSS.asm"     ; 0x1f6f

bss_93be equ __zdseg_end + (__zobss_93be - __zdata_start)
bss_9400 equ __zdseg_end + (__zobss_9400 - __zdata_start)
bss_940a equ __zdseg_end + (__zobss_940a - __zdata_start)
bss_940c equ __zdseg_end + (__zobss_940c - __zdata_start)
bss_941c equ __zdseg_end + (__zobss_941c - __zdata_start)
bss_9426 equ __zdseg_end + (__zobss_9426 - __zdata_start)
bss_9428 equ __zdseg_end + (__zobss_9428 - __zdata_start)
bss_959f equ __zdseg_end + (__zobss_959f - __zdata_start)
bss_95a0 equ __zdseg_end + (__zobss_95a0 - __zdata_start)
bss_95a1 equ __zdseg_end + (__zobss_95a1 - __zdata_start)
bss_95a2 equ __zdseg_end + (__zobss_95a2 - __zdata_start)
bss_95ae equ __zdseg_end + (__zobss_95ae - __zdata_start)
bss_95af equ __zdseg_end + (__zobss_95af - __zdata_start)
bss_95b0 equ __zdseg_end + (__zobss_95b0 - __zdata_start)
bss_95b2 equ __zdseg_end + (__zobss_95b2 - __zdata_start)
%include "vbase/api_idx_0072_OUII.asm"     ; 0x1faf

; bss_95b2 equ __zdseg_end + (__zobss_95b2 - __zdata_start)
bss_95b4 equ __zdseg_end + (__zobss_95b4 - __zdata_start)
bss_98d4 equ __zdseg_end + (__zobss_98d4 - __zdata_start)
bss_98d5 equ __zdseg_end + (__zobss_98d5 - __zdata_start)
bss_98ea equ __zdseg_end + (__zobss_98ea - __zdata_start)
bss_98eb equ __zdseg_end + (__zobss_98eb - __zdata_start)
bss_98f2 equ __zdseg_end + (__zobss_98f2 - __zdata_start)
bss_98f4 equ __zdseg_end + (__zobss_98f4 - __zdata_start)
bss_98f6 equ __zdseg_end + (__zobss_98f6 - __zdata_start)
bss_98f7 equ __zdseg_end + (__zobss_98f7 - __zdata_start)
bss_98f8 equ __zdseg_end + (__zobss_98f8 - __zdata_start)
bss_98f9 equ __zdseg_end + (__zobss_98f9 - __zdata_start)
bss_98fa equ __zdseg_end + (__zobss_98fa - __zdata_start)
bss_98fb equ __zdseg_end + (__zobss_98fb - __zdata_start)
bss_98fc equ __zdseg_end + (__zobss_98fc - __zdata_start)
bss_98fd equ __zdseg_end + (__zobss_98fd - __zdata_start)
bss_98fe equ __zdseg_end + (__zobss_98fe - __zdata_start)
bss_9a00 equ __zdseg_end + (__zobss_9a00 - __zdata_start)
bss_9a02 equ __zdseg_end + (__zobss_9a02 - __zdata_start)
bss_9a04 equ __zdseg_end + (__zobss_9a04 - __zdata_start)
bss_9a06 equ __zdseg_end + (__zobss_9a06 - __zdata_start)
bss_9a08 equ __zdseg_end + (__zobss_9a08 - __zdata_start)
bss_9a0a equ __zdseg_end + (__zobss_9a0a - __zdata_start)
bss_9a0c equ __zdseg_end + (__zobss_9a0c - __zdata_start)
bss_9a0e equ __zdseg_end + (__zobss_9a0e - __zdata_start)
bss_9a10 equ __zdseg_end + (__zobss_9a10 - __zdata_start)
bss_9a12 equ __zdseg_end + (__zobss_9a12 - __zdata_start)
bss_9a14 equ __zdseg_end + (__zobss_9a14 - __zdata_start)
bss_9a16 equ __zdseg_end + (__zobss_9a16 - __zdata_start)
bss_9a18 equ __zdseg_end + (__zobss_9a18 - __zdata_start)
bss_9a1a equ __zdseg_end + (__zobss_9a1a - __zdata_start)
bss_9a1c equ __zdseg_end + (__zobss_9a1c - __zdata_start)
bss_9a1e equ __zdseg_end + (__zobss_9a1e - __zdata_start)
bss_9a20 equ __zdseg_end + (__zobss_9a20 - __zdata_start)
bss_9a22 equ __zdseg_end + (__zobss_9a22 - __zdata_start)
bss_9a24 equ __zdseg_end + (__zobss_9a24 - __zdata_start)
bss_9a26 equ __zdseg_end + (__zobss_9a26 - __zdata_start)
bss_9a28 equ __zdseg_end + (__zobss_9a28 - __zdata_start)
bss_9a2a equ __zdseg_end + (__zobss_9a2a - __zdata_start)
bss_9a2c equ __zdseg_end + (__zobss_9a2c - __zdata_start)
bss_9a2e equ __zdseg_end + (__zobss_9a2e - __zdata_start)
bss_9a30 equ __zdseg_end + (__zobss_9a30 - __zdata_start)
bss_9a4a equ __zdseg_end + (__zobss_9a4a - __zdata_start)
bss_9a4c equ __zdseg_end + (__zobss_9a4c - __zdata_start)
%include "vbase/asm_only/api_idx_0038_HNUN.asm"     ; 0x2fef

; bss_9a00 equ __zdseg_end + (__zobss_9a00 - __zdata_start)
; bss_9a02 equ __zdseg_end + (__zobss_9a02 - __zdata_start)
; bss_9a04 equ __zdseg_end + (__zobss_9a04 - __zdata_start)
; bss_9a06 equ __zdseg_end + (__zobss_9a06 - __zdata_start)
; bss_9a08 equ __zdseg_end + (__zobss_9a08 - __zdata_start)
; bss_9a0a equ __zdseg_end + (__zobss_9a0a - __zdata_start)
; bss_9a0c equ __zdseg_end + (__zobss_9a0c - __zdata_start)
; bss_9a0e equ __zdseg_end + (__zobss_9a0e - __zdata_start)
; bss_9a10 equ __zdseg_end + (__zobss_9a10 - __zdata_start)
; bss_9a12 equ __zdseg_end + (__zobss_9a12 - __zdata_start)
; bss_9a14 equ __zdseg_end + (__zobss_9a14 - __zdata_start)
; bss_9a16 equ __zdseg_end + (__zobss_9a16 - __zdata_start)
; bss_9a18 equ __zdseg_end + (__zobss_9a18 - __zdata_start)
; bss_9a1a equ __zdseg_end + (__zobss_9a1a - __zdata_start)
; bss_9a1c equ __zdseg_end + (__zobss_9a1c - __zdata_start)
; bss_9a1e equ __zdseg_end + (__zobss_9a1e - __zdata_start)
; bss_9a20 equ __zdseg_end + (__zobss_9a20 - __zdata_start)
; bss_9a22 equ __zdseg_end + (__zobss_9a22 - __zdata_start)
; bss_9a24 equ __zdseg_end + (__zobss_9a24 - __zdata_start)
; bss_9a26 equ __zdseg_end + (__zobss_9a26 - __zdata_start)
; bss_9a28 equ __zdseg_end + (__zobss_9a28 - __zdata_start)
; bss_9a2a equ __zdseg_end + (__zobss_9a2a - __zdata_start)
; bss_9a2c equ __zdseg_end + (__zobss_9a2c - __zdata_start)
; bss_9a2e equ __zdseg_end + (__zobss_9a2e - __zdata_start)
; bss_9a30 equ __zdseg_end + (__zobss_9a30 - __zdata_start)
; bss_9a4a equ __zdseg_end + (__zobss_9a4a - __zdata_start)
; bss_9a4c equ __zdseg_end + (__zobss_9a4c - __zdata_start)
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

%include "vbase/api_idx_0062_SRKH.asm"     ; 0x4b95

%include "vbase/asm_only/loc_RMVR.asm"              ; 0x4d0e

%include "vbase/asm_only/loc_LQIO.asm"              ; 0x606d

%include "vbase/asm_only/api_idx_0006_MROT.asm"     ; 0x61db

%include "vbase/loc_ROTV.asm"              ; 0x62c6

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
%include "shared/api_idx_0004_TTGQ.asm"     ; 0x6c87

bss_a4a6 equ __zdseg_end + (__zobss_a4a6 - __zdata_start)
%include "vbase/api_idx_0004_MIQG.asm"     ; 0x6cd0

; bss_a4a6 equ __zdseg_end + (__zobss_a4a6 - __zdata_start)
bss_a4a8 equ __zdseg_end + (__zobss_a4a8 - __zdata_start)
%include "vbase/api_idx_0004_RLUP.asm"     ; 0x6d1f

; bss_a4a6 equ __zdseg_end + (__zobss_a4a6 - __zdata_start)
bss_a4aa equ __zdseg_end + (__zobss_a4aa - __zdata_start)
bss_a5aa equ __zdseg_end + (__zobss_a5aa - __zdata_start)
bss_a5ac equ __zdseg_end + (__zobss_a5ac - __zdata_start)
%include "vbase/loc_VMSS.asm"              ; 0x6dd9

%include "vbase/api_idx_0004_OTSN.asm"     ; 0x6f16

; bss_a4a6 equ __zdseg_end + (__zobss_a4a6 - __zdata_start)
; bss_a4a8 equ __zdseg_end + (__zobss_a4a8 - __zdata_start)
; bss_a4aa equ __zdseg_end + (__zobss_a4aa - __zdata_start)
; bss_a5ac equ __zdseg_end + (__zobss_a5ac - __zdata_start)
%include "vbase/loc_LIQV.asm"              ; 0x6f79

%include "shared/api_idx_0002_LVPS.asm"     ; 0x6fda

; bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
%include "vbase/api_idx_0002_NVMN.asm"     ; 0x706d

%include "vbase/loc_GUNQ.asm"              ; 0x72c2

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

; bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0 equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2 equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4 equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b6 equ __zdseg_end + (__zobss_a5b6 - __zdata_start)
; bss_a5b8 equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
; bss_a5ba equ __zdseg_end + (__zobss_a5ba - __zdata_start)
; bss_a5bc equ __zdseg_end + (__zobss_a5bc - __zdata_start)
; bss_a5ce equ __zdseg_end + (__zobss_a5ce - __zdata_start)
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

; bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0 equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2 equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4 equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b8 equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
; bss_a5ce equ __zdseg_end + (__zobss_a5ce - __zdata_start)
; bss_a5e2 equ __zdseg_end + (__zobss_a5e2 - __zdata_start)
; bss_a5f2 equ __zdseg_end + (__zobss_a5f2 - __zdata_start)
; bss_a600 equ __zdseg_end + (__zobss_a600 - __zdata_start)
%include "vbase/loc_JTTS.asm"              ; 0x8a74

; bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0 equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2 equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4 equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b8 equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
; bss_a5d0 equ __zdseg_end + (__zobss_a5d0 - __zdata_start)
; bss_a5d2 equ __zdseg_end + (__zobss_a5d2 - __zdata_start)
; bss_a5d4 equ __zdseg_end + (__zobss_a5d4 - __zdata_start)
; bss_a5d6 equ __zdseg_end + (__zobss_a5d6 - __zdata_start)
; bss_a5da equ __zdseg_end + (__zobss_a5da - __zdata_start)
; bss_a5e2 equ __zdseg_end + (__zobss_a5e2 - __zdata_start)
; bss_a5f2 equ __zdseg_end + (__zobss_a5f2 - __zdata_start)
; bss_a600 equ __zdseg_end + (__zobss_a600 - __zdata_start)
%include "vbase/api_idx_0002_GORG.asm"     ; 0x8b69

; bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0 equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2 equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4 equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b6 equ __zdseg_end + (__zobss_a5b6 - __zdata_start)
; bss_a5ce equ __zdseg_end + (__zobss_a5ce - __zdata_start)
; bss_a5fa equ __zdseg_end + (__zobss_a5fa - __zdata_start)
%include "vbase/api_idx_0002_JHTS.asm"     ; 0x8ca3

; bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0 equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2 equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4 equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5ce equ __zdseg_end + (__zobss_a5ce - __zdata_start)
; bss_a5fa equ __zdseg_end + (__zobss_a5fa - __zdata_start)
; bss_a5fc equ __zdseg_end + (__zobss_a5fc - __zdata_start)
; bss_a5fe equ __zdseg_end + (__zobss_a5fe - __zdata_start)
%include "vbase/api_idx_0002_MIQR.asm"     ; 0x8d84

; bss_a4a4 equ __zdseg_end + (__zobss_a4a4 - __zdata_start)
; bss_a5ae equ __zdseg_end + (__zobss_a5ae - __zdata_start)
; bss_a5b0 equ __zdseg_end + (__zobss_a5b0 - __zdata_start)
; bss_a5b2 equ __zdseg_end + (__zobss_a5b2 - __zdata_start)
; bss_a5b4 equ __zdseg_end + (__zobss_a5b4 - __zdata_start)
; bss_a5b8 equ __zdseg_end + (__zobss_a5b8 - __zdata_start)
; bss_a5ba equ __zdseg_end + (__zobss_a5ba - __zdata_start)
; bss_a5ce equ __zdseg_end + (__zobss_a5ce - __zdata_start)
; bss_a5fa equ __zdseg_end + (__zobss_a5fa - __zdata_start)
; bss_a5fc equ __zdseg_end + (__zobss_a5fc - __zdata_start)
; bss_a5fe equ __zdseg_end + (__zobss_a5fe - __zdata_start)
%include "vbase/api_idx_0002_QRJS.asm"     ; 0x8e6b

%include "vbase/api_idx_0002_HQSQ.asm"     ; 0x8f74

dseg_91bc equ __zdseg_end + (__zdseg_91bc - __zdata_start)
dseg_91be equ __zdseg_end + (__zdseg_91be - __zdata_start)
dseg_91c0 equ __zdseg_end + (__zdseg_91c0 - __zdata_start)
dseg_91c2 equ __zdseg_end + (__zdseg_91c2 - __zdata_start)
dseg_91c4 equ __zdseg_end + (__zdseg_91c4 - __zdata_start)
bss_91c6  equ __zdseg_end + (__zobss_91c6 - __zdata_start)
%include "vbase/asm_only/string_loc_LOVO.asm"       ; 0x9330

%include "shared/leaf_loc_RJLR.asm"         ; 0x936e

%include "shared/aztec_strcmp.asm"          ; 0x9386

loc_NQQK equ aztec_strncmp.loc1
%include "shared/aztec_strncmp.asm"         ; 0x93a4

__zdata_start:

    db 'PCFILE.DBS', 0
    db 'V.$$$', 0
    db 'PORTDATA.VGA', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 'SAVEGAME.BCF', 0
    db 'NEWGAME.DBS', 0
    db 'CRUSADER.END', 0
    db 'SCENARIO.HDR', 0
    db 'V.$$$', 0
    db 'PALETTE.DEF', 0
    db 'V.$$$', 0
    db 'V.$$$', 0
    db 0x00
    db '!%&]@#|', 0
    db 0x20, 0x00
    db 'STARSCRN.VGA', 0
    db 'MAINSCRN.VGA', 0
    db 'VIDEO00.PIC', 0
    db 'VIDSCN01.VGA', 0
    db '123432', 0
    db 'STARSCRN.VGA', 0
    db 'VIDSCN02.VGA', 0
    db 'VIDSCN03.VGA', 0
    db '123432', 0
    db 'VIDSCN04.VGA', 0
    db '123432', 0
    db 'VIDSCN05.VGA', 0
    db '123432', 0
    db 'MAINSCRN.VGA', 0
    db 0x00

__zdseg_91bc:
    db 0x00, 0x00
__zdseg_91be:
    db 0x00, 0x00
__zdseg_91c0:
    db 0x00, 0x00
__zdseg_91c2:
    db 0x00, 0x00
__zdseg_91c4:
    db 0x00, 0x00

__zimage_end:
absolute __zimage_end
__zobss_91c6:
    resb 0x01f8
__zobss_93be:
    resb 0x0042
__zobss_9400:
    resb 0x000a
__zobss_940a:
    resb 0x0002
__zobss_940c:
    resb 0x0010
__zobss_941c:
    resb 0x000a
__zobss_9426:
    resb 0x0002
__zobss_9428:
    resb 0x0177
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
    resb 0x0015
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
    resb 0x0102
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
    resb 0x0a48
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
    resb 0x0010
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
