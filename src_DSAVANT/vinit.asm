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
    dw (__zdata_start - __zcode_start)       ; 0x1609 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0120 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0002 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0x6620 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vinit/ovmain.asm"                ; 0x000e

%include "vinit/api_idx_0002_JOSN.asm"     ; 0x0045

%include "vinit/api_idx_0002_OGHR.asm"     ; 0x0084

%include "vinit/api_idx_0002_GHOH.asm"     ; 0x00ca

%include "vinit/api_idx_0002_TJHL.asm"     ; 0x010c

%include "vinit/api_idx_000c_QTSG.asm"     ; 0x0146

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_90a5 equ __zdseg_end + (__zdseg_90a5 - __zdata_start)
dseg_90b1 equ __zdseg_end + (__zdseg_90b1 - __zdata_start)
dseg_90bd equ __zdseg_end + (__zdseg_90bd - __zdata_start)
dseg_90c9 equ __zdseg_end + (__zdseg_90c9 - __zdata_start)
dseg_90d5 equ __zdseg_end + (__zdseg_90d5 - __zdata_start)
dseg_90e1 equ __zdseg_end + (__zdseg_90e1 - __zdata_start)
dseg_90ed equ __zdseg_end + (__zdseg_90ed - __zdata_start)
dseg_90f9 equ __zdseg_end + (__zdseg_90f9 - __zdata_start)
dseg_9105 equ __zdseg_end + (__zdseg_9105 - __zdata_start)
dseg_9111 equ __zdseg_end + (__zdseg_9111 - __zdata_start)
dseg_911d equ __zdseg_end + (__zdseg_911d - __zdata_start)
dseg_9129 equ __zdseg_end + (__zdseg_9129 - __zdata_start)
dseg_9136 equ __zdseg_end + (__zdseg_9136 - __zdata_start)
dseg_9141 equ __zdseg_end + (__zdseg_9141 - __zdata_start)
dseg_914a equ __zdseg_end + (__zdseg_914a - __zdata_start)
dseg_9152 equ __zdseg_end + (__zdseg_9152 - __zdata_start)
dseg_915d equ __zdseg_end + (__zdseg_915d - __zdata_start)
dseg_9166 equ __zdseg_end + (__zdseg_9166 - __zdata_start)
dseg_916e equ __zdseg_end + (__zdseg_916e - __zdata_start)
dseg_917b equ __zdseg_end + (__zdseg_917b - __zdata_start)
%include "vinit/loc_RVQR.asm"              ; 0x03a8

%include "shared/api_idx_0002_LVPS.asm"     ; 0x08b7

bss_91b8 equ __zdseg_end + (__zobss_91b8 - __zdata_start)
%include "vinit/api_idx_0002_PUOP.asm"     ; 0x094a

%include "vinit/api_idx_0004_OIGN.asm"     ; 0x0988

%include "vinit/api_idx_000e_JRRT.asm"     ; 0x09d3

%include "vinit/loc_KVVL.asm"              ; 0x0a56

dseg_9187 equ __zdseg_end + (__zdseg_9187 - __zdata_start)
dseg_9194 equ __zdseg_end + (__zdseg_9194 - __zdata_start)
; bss_91b8  equ __zdseg_end + (__zobss_91b8 - __zdata_start)
%include "vinit/api_idx_0068_OUHP.asm"     ; 0x0ac7

%include "vinit/api_idx_0002_SKSN.asm"     ; 0x133d

dseg_91a1 equ __zdseg_end + (__zdseg_91a1 - __zdata_start)
%include "vinit/api_idx_0008_QGRM.asm"     ; 0x1409

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_91b8 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec_ovbgn.asm"           ; 0x15d9

__zdseg_9098:
__zdata_start:
    db 'SCENARIO.HDR', 0
__zdseg_90a5:
    db 'VBFONT0.VGA', 0
__zdseg_90b1:
    db 'VBFONT1.VGA', 0
__zdseg_90bd:
    db 'VBFONT2.VGA', 0
__zdseg_90c9:
    db 'VBFONT3.VGA', 0
__zdseg_90d5:
    db 'VCFONT1.VGA', 0
__zdseg_90e1:
    db 'VCPORT0.VGA', 0
__zdseg_90ed:
    db 'VCFONT2.VGA', 0
__zdseg_90f9:
    db 'VCFONT3.VGA', 0
__zdseg_9105:
    db 'VMPNTR0.VGA', 0
__zdseg_9111:
    db 'VMPNTR1.VGA', 0
__zdseg_911d:
    db 'VMPNTR2.VGA', 0
__zdseg_9129:
    db 'BASEDATA.VGA', 0
__zdseg_9136:
    db 'MASTER.HDR', 0
__zdseg_9141:
    db 'DISK.HDR', 0
__zdseg_914a:
    db 'MSG.HDR', 0
__zdseg_9152:
    db 'PCFILE.DBS', 0
__zdseg_915d:
    db 'MISC.HDR', 0
__zdseg_9166:
    db 'MSG.DBS', 0
__zdseg_916e:
    db 'SCENARIO.DBS', 0
__zdseg_917b:
    db 'PALETTE.DEF', 0
__zdseg_9187:
    db 'TIT1SCRN.VGA', 0
__zdseg_9194:
    db 'TIT2SCRN.VGA', 0
__zdseg_91a1:
    db 'MAINSCRN.VGA', 0
%include "shared/data/save_si.asm"          ; 0x172d

%include "shared/data/save_di.asm"          ; 0x172f

%include "shared/data/save_sp.asm"          ; 0x1731

%include "shared/data/save_bp.asm"          ; 0x1733

%include "shared/data/save_ret.asm"         ; 0x1735


__zimage_end:
absolute __zimage_end
__zobss_91b8:
    resb 0x0002
__zobss_end:
