; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vinit.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0x1609 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x0120 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end         ; 0x0002 ; o_bss: uninitialized data size
    dw loc_SPOT - IMAGE_BASE + __zres_end ; 0x6620 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vinit/loc_OIQP.asm"              ; 0x000e

%include "vinit/api_idx_0002_JOSN.asm"     ; 0x0045

%include "vinit/api_idx_0002_OGHR.asm"     ; 0x0084

%include "vinit/api_idx_0002_GHOH.asm"     ; 0x00ca

%include "vinit/api_idx_0002_TJHL.asm"     ; 0x010c

%include "vinit/api_idx_000c_QTSG.asm"     ; 0x0146

%include "vinit/loc_RVQR.asm"              ; 0x03a8

%include "shared/api_idx_0002_LVPS.asm"     ; 0x08b7

bss_91b8 equ __zdseg_end + (__zobss_91b8 - __zdata_start)
%include "vinit/api_idx_0002_PUOP.asm"     ; 0x094a

%include "vinit/api_idx_0004_OIGN.asm"     ; 0x0988

%include "vinit/api_idx_000e_JRRT.asm"     ; 0x09d3

%include "vinit/loc_KVVL.asm"              ; 0x0a56

; bss_91b8 equ __zdseg_end + (__zobss_91b8 - __zdata_start)
%include "vinit/api_idx_0068_OUHP.asm"     ; 0x0ac7

%include "vinit/api_idx_0002_SKSN.asm"     ; 0x133d

%include "vinit/api_idx_0008_NGRM.asm"     ; 0x1409

dseg_91ae equ __zdseg_end + (__zdseg_91ae - __zdata_start)
dseg_91b0 equ __zdseg_end + (__zdseg_91b0 - __zdata_start)
dseg_91b2 equ __zdseg_end + (__zdseg_91b2 - __zdata_start)
dseg_91b4 equ __zdseg_end + (__zdseg_91b4 - __zdata_start)
dseg_91b6 equ __zdseg_end + (__zdseg_91b6 - __zdata_start)
; bss_91b8  equ __zdseg_end + (__zobss_91b8 - __zdata_start)
%include "vinit/asm_only/loc_SPOT.asm"              ; 0x15d9

__zdata_start:

    db 'SCENARIO.HDR', 0
    db 'VBFONT0.VGA', 0
    db 'VBFONT1.VGA', 0
    db 'VBFONT2.VGA', 0
    db 'VBFONT3.VGA', 0
    db 'VCFONT1.VGA', 0
    db 'VCPORT0.VGA', 0
    db 'VCFONT2.VGA', 0
    db 'VCFONT3.VGA', 0
    db 'VMPNTR0.VGA', 0
    db 'VMPNTR1.VGA', 0
    db 'VMPNTR2.VGA', 0
    db 'BASEDATA.VGA', 0
    db 'MASTER.HDR', 0
    db 'DISK.HDR', 0
    db 'MSG.HDR', 0
    db 'PCFILE.DBS', 0
    db 'MISC.HDR', 0
    db 'MSG.DBS', 0
    db 'SCENARIO.DBS', 0
    db 'PALETTE.DEF', 0
    db 'TIT1SCRN.VGA', 0
    db 'TIT2SCRN.VGA', 0
    db 'MAINSCRN.VGA', 0

__zdseg_91ae:
    db 0x00, 0x00
__zdseg_91b0:
    db 0x00, 0x00
__zdseg_91b2:
    db 0x00, 0x00
__zdseg_91b4:
    db 0x00, 0x00
__zdseg_91b6:
    db 0x00, 0x00

__zimage_end:
absolute __zimage_end
__zobss_91b8:
    resb 0x0002
__zobss_end:
