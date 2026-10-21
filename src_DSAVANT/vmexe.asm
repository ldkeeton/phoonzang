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
    dw (__zdata_start - __zcode_start)       ; 0xa537 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0024 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0120 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xf511 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "shared/api_idx_0002_GKQL.asm"     ; 0x000e

%include "vmexe/api_idx_0004_QUVO.asm"     ; 0x0034

bss_90bc equ __zdseg_end + (__zobss_90bc - __zdata_start)
%include "vmexe/api_idx_0012_PGSL.asm"     ; 0x00db

%include "shared/api_idx_0008_MNJN.asm"     ; 0x0257

%include "vmexe/api_idx_0004_MLLS.asm"     ; 0x030b

%include "shared/fill_action_slot_table.asm" ; 0x0456

api_idx_000e_VRIR.api_idx1 equ fill_action_slot_table
%include "shared/api_idx_000e_VRIR.asm"     ; 0x0656

%include "shared/api_idx_0004_ONRQ.asm"     ; 0x0979

%include "shared/api_idx_001c_VLRT.asm"     ; 0x0a83

api_idx_000e_NKQN.api_idx1 equ api_idx_0004_ONRQ
%include "shared/api_idx_000e_NKQN.asm"     ; 0x0cc9

%include "shared/loc_SSIO.asm"              ; 0x0dbe

bss_90dc equ __zdseg_end + (__zobss_90dc - __zdata_start)
%include "vmexe/api_idx_0016_MUKH.asm"     ; 0x0e1a

; bss_90dc equ __zdseg_end + (__zobss_90dc - __zdata_start)
bss_90de equ __zdseg_end + (__zobss_90de - __zdata_start)
%include "vmexe/loc_OTGM.asm"              ; 0x0f67

%include "vmexe/loc_HJSG.asm"              ; 0x15ab

%include "vmexe/loc_SKIP.asm"              ; 0x15f9

%include "vmexe/loc_PHIP.asm"              ; 0x1613

%include "vmexe/api_idx_0002_TMNV.asm"     ; 0x1642

%include "vmexe/api_idx_0050_PLNP.asm"     ; 0x169d

%include "vmexe/api_idx_0004_QSNR.asm"     ; 0x16c1

%include "vmexe/api_idx_000e_PTNT.asm"     ; 0x178e

bss_90e0 equ __zdseg_end + (__zobss_90e0 - __zdata_start)
%include "vmexe/ovmain.asm"                ; 0x17d1

%include "vmexe/loc_TGJH.asm"              ; 0x182b

bss_90e2 equ __zdseg_end + (__zobss_90e2 - __zdata_start)
loc_KRMP.bss1 equ bss_90e2
%include "shared/loc_KRMP.asm"              ; 0x1849

; bss_90dc equ __zdseg_end + (__zobss_90dc - __zdata_start)
; bss_90e2 equ __zdseg_end + (__zobss_90e2 - __zdata_start)
%include "vmexe/api_idx_0006_TMLR.asm"     ; 0x18a8

loc_RPUI.api_idx1 equ api_idx_0006_TMLR
%include "shared/loc_RPUI.asm"              ; 0x1a35

loc_UTQS.api_idx1 equ api_idx_0006_TMLR
%include "shared/loc_UTQS.asm"              ; 0x1a4c

bss_90e4 equ __zdseg_end + (__zobss_90e4 - __zdata_start)
%include "vmexe/api_idx_0004_QUPL.asm"     ; 0x1a5f

%include "shared/api_idx_000a_UUIH.asm"     ; 0x1ac7

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_909f equ __zdseg_end + (__zdseg_909f - __zdata_start)
%include "vmexe/api_idx_0004_UONH.asm"     ; 0x1b45

%include "shared/loc_SIKN.asm"              ; 0x1bf4

%include "vmexe/loc_MUTI.asm"              ; 0x1c36

%include "vmexe/api_idx_0004_PIHK.asm"     ; 0x1c5e

bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vmexe/loc_NJKR.asm"              ; 0x1e35

%include "vmexe/api_idx_0002_LKMM.asm"     ; 0x1f00

%include "vmexe/loc_MHUK.asm"              ; 0x1f5d

%include "vmexe/api_idx_0002_UTVG.asm"     ; 0x1f98

%include "vmexe/api_idx_0006_QJOL.asm"     ; 0x209c

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vmexe/api_idx_0022_ROKS.asm"     ; 0x2242

%include "vmexe/loc_PKMT.asm"              ; 0x24c2

%include "vmexe/api_idx_0004_QLTQ.asm"     ; 0x24f0

%include "vmexe/loc_QUJT.asm"              ; 0x2553

%include "vmexe/api_idx_0006_OMUL.asm"     ; 0x25d0

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vmexe/api_idx_0010_LPLH.asm"     ; 0x265f

%include "vmexe/api_idx_000a_PJIK.asm"     ; 0x28e1

; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vmexe/api_idx_000a_LHTJ.asm"     ; 0x2998

; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vmexe/api_idx_000e_RMNP.asm"     ; 0x2a8b

%include "vmexe/api_idx_0002_PGQI.asm"     ; 0x2bf2

; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vmexe/api_idx_0006_LIRP.asm"     ; 0x2c7b

; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vmexe/api_idx_0002_NGRN.asm"     ; 0x2d6b

%include "shared/loc_QQUT.asm"              ; 0x2e09

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
%include "vmexe/api_idx_0010_RUQS.asm"     ; 0x2e59

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
%include "vmexe/api_idx_0006_NIMO.asm"     ; 0x312e

; bss_90de equ __zdseg_end + (__zobss_90de - __zdata_start)
bss_91d8 equ __zdseg_end + (__zobss_91d8 - __zdata_start)
%include "vmexe/api_idx_0004_PMSR.asm"     ; 0x33e2

dseg_90a6 equ __zdseg_end + (__zdseg_90a6 - __zdata_start)
%include "vmexe/api_idx_005e_OJVJ.asm"     ; 0x34bc

; bss_90e4 equ __zdseg_end + (__zobss_90e4 - __zdata_start)
; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
%include "vmexe/string_loc_KUIU.asm"       ; 0x3620

dseg_90b0 equ __zdseg_end + (__zdseg_90b0 - __zdata_start)
; bss_90e6  equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136  equ __zdseg_end + (__zobss_9136 - __zdata_start)
%include "vmexe/loc_RKLS.asm"              ; 0x3aa3

; bss_90e4 equ __zdseg_end + (__zobss_90e4 - __zdata_start)
%include "vmexe/api_idx_000e_ORJG.asm"     ; 0x3b07

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
; bss_91d8 equ __zdseg_end + (__zobss_91d8 - __zdata_start)
bss_91da equ __zdseg_end + (__zobss_91da - __zdata_start)
%include "vmexe/api_idx_000e_HLRI.asm"     ; 0x5fa1

%include "vmexe/api_idx_0004_MIIS.asm"     ; 0x6374

%include "vmexe/api_idx_0008_NUPQ.asm"     ; 0x63cd

; bss_90de equ __zdseg_end + (__zobss_90de - __zdata_start)
; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
; bss_91d8 equ __zdseg_end + (__zobss_91d8 - __zdata_start)
; bss_91da equ __zdseg_end + (__zobss_91da - __zdata_start)
%include "vmexe/api_idx_0014_OSKJ.asm"     ; 0x6476

%include "vmexe/loc_HOUQ.asm"              ; 0x6edc

; bss_90e2 equ __zdseg_end + (__zobss_90e2 - __zdata_start)
%include "vmexe/api_idx_000c_VJPM.asm"     ; 0x6f33

%include "vmexe/api_idx_0004_NRKR.asm"     ; 0x73f6

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
%include "vmexe/api_idx_000a_VQTM.asm"     ; 0x7434

%include "vmexe/api_idx_000c_NRPK.asm"     ; 0x7911

; bss_90de equ __zdseg_end + (__zobss_90de - __zdata_start)
; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
; bss_91d6 equ __zdseg_end + (__zobss_91d6 - __zdata_start)
; bss_91d8 equ __zdseg_end + (__zobss_91d8 - __zdata_start)
%include "vmexe/api_idx_00ac_OJJU.asm"     ; 0x7962

; bss_90de equ __zdseg_end + (__zobss_90de - __zdata_start)
; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
%include "vmexe/api_idx_0006_MRPM.asm"     ; 0x908d

; bss_90de equ __zdseg_end + (__zobss_90de - __zdata_start)
; bss_90e4 equ __zdseg_end + (__zobss_90e4 - __zdata_start)
%include "vmexe/api_idx_000e_SOLJ.asm"     ; 0x91b5

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
%include "vmexe/loc_SKVJ.asm"              ; 0x9842

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
%include "vmexe/api_idx_0006_PSQH.asm"     ; 0x989b

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
%include "vmexe/api_idx_0010_UUTT.asm"     ; 0x9a2f

%include "vmexe/loc_IRGI.asm"              ; 0x9d8d

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
%include "vmexe/api_idx_0006_JJVQ.asm"     ; 0x9e5d

; bss_90e6 equ __zdseg_end + (__zobss_90e6 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9186 equ __zdseg_end + (__zobss_9186 - __zdata_start)
; bss_91d8 equ __zdseg_end + (__zobss_91d8 - __zdata_start)
; bss_91da equ __zdseg_end + (__zobss_91da - __zdata_start)
%include "vmexe/api_idx_005a_UJPS.asm"     ; 0x9f4f

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_90bc - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec_ovbgn.asm"           ; 0xa4ca

%include "shared/aztec_cswit.asm"           ; 0xa508

%include "shared/aztec_swapmem.asm"         ; 0xa520

__zdseg_9098:
__zdata_start:
    db 'V1.$$$', 0
__zdseg_909f:
    db 'V2.$$$', 0
__zdseg_90a6:
    db 'MON00.PIC', 0
__zdseg_90b0:
    db 0x00, 0x00
%include "shared/data/save_si.asm"          ; 0xa55f

%include "shared/data/save_di.asm"          ; 0xa561

%include "shared/data/save_sp.asm"          ; 0xa563

%include "shared/data/save_bp.asm"          ; 0xa565

%include "shared/data/save_ret.asm"         ; 0xa567


__zimage_end:
absolute __zimage_end
__zobss_90bc:
    resb 0x0020
__zobss_90dc:
    resb 0x0002
__zobss_90de:
    resb 0x0002
__zobss_90e0:
    resb 0x0002
__zobss_90e2:
    resb 0x0002
__zobss_90e4:
    resb 0x0002
__zobss_90e6:
    resb 0x0050
__zobss_9136:
    resb 0x0050
__zobss_9186:
    resb 0x0050
__zobss_91d6:
    resb 0x0002
__zobss_91d8:
    resb 0x0002
__zobss_91da:
    resb 0x0002
__zobss_end:
