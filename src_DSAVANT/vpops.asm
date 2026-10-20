; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpops.inc"
bits 16
%include "inc/host_symbols.inc"
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
    dw 0x00f2                             ; o_magic: overlay signature (0x00f2)
    dw __zres_end                         ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)    ; 0x4ecd ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x003e ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end         ; 0x02b8 ; o_bss: uninitialized data size
    dw loc_JHJT - IMAGE_BASE + __zres_end ; 0x9ee4 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vpops/loc_PTRJ.asm"              ; 0x000e

%include "shared/api_idx_002a_STSK.asm"     ; 0x0022

%include "shared/api_idx_000a_QJGP.asm"     ; 0x00cb

%include "shared/loc_VNIO.asm"              ; 0x0149

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_909f equ __zdseg_end + (__zdseg_909f - __zdata_start)
dseg_90a6 equ __zdseg_end + (__zdseg_90a6 - __zdata_start)
dseg_90ad equ __zdseg_end + (__zdseg_90ad - __zdata_start)
dseg_90b4 equ __zdseg_end + (__zdseg_90b4 - __zdata_start)
%include "shared/api_idx_0006_SHUK.asm"     ; 0x018d

%include "shared/loc_HTQP.asm"              ; 0x02af

%include "vpops/api_idx_0054_NQHV.asm"     ; 0x035f

%include "shared/draw_fill_action_slot_table.asm" ; 0x0504

api_idx_000e_VRIR.api_idx1 equ draw_fill_action_slot_table
%include "shared/api_idx_000e_VRIR.asm"     ; 0x0704

%include "shared/api_idx_0004_ONRQ.asm"     ; 0x0a27

%include "shared/api_idx_001c_VLRT.asm"     ; 0x0b31

%include "vpops/api_idx_000e_LVUJ.asm"     ; 0x0d77

%include "shared/loc_SSIO.asm"              ; 0x0e6c

bss_90d6 equ __zdseg_end + (__zobss_90d6 - __zdata_start)
loc_KRMP.bss1 equ bss_90d6
%include "shared/loc_KRMP.asm"              ; 0x0ec8

; bss_90d6 equ __zdseg_end + (__zobss_90d6 - __zdata_start)
%include "vpops/api_idx_0006_HRUL.asm"     ; 0x0f27

loc_RPUI.api_idx1 equ api_idx_0006_HRUL
%include "shared/loc_RPUI.asm"              ; 0x1076

%include "vpops/loc_UTQS.asm"              ; 0x108d

%include "vpops/loc_HTRU.asm"              ; 0x111b

%include "vpops/api_idx_000c_JUIH.asm"     ; 0x178a

%include "shared/draw_party_slot_letters.asm" ; 0x18c2

%include "shared/api_idx_0002_TIUI.asm"     ; 0x1941

%include "vpops/api_idx_0004_OQNP.asm"     ; 0x199c

%include "vpops/api_idx_000a_UMQI.asm"     ; 0x1a0d

%include "shared/loc_PTRP.asm"              ; 0x1a4b

dseg_90bb equ __zdseg_end + (__zdseg_90bb - __zdata_start)
%include "vpops/loc_VGIT.asm"              ; 0x1ad7

%include "shared/api_idx_000c_JQMN.asm"     ; 0x1b78

; bss_90d6 equ __zdseg_end + (__zobss_90d6 - __zdata_start)
loc_SRQQ.bss1     equ bss_90d6
loc_SRQQ.api_idx1 equ api_idx_000a_UMQI
loc_SRQQ.api_idx2 equ api_idx_000c_JQMN
%include "shared/loc_SRQQ.asm"              ; 0x1c11

dseg_90bf equ __zdseg_end + (__zdseg_90bf - __zdata_start)
; bss_90d6  equ __zdseg_end + (__zobss_90d6 - __zdata_start)
%include "vpops/api_idx_0044_NJNI.asm"     ; 0x1ca2

%include "vpops/api_idx_000a_GVNM.asm"     ; 0x2947

%include "shared/api_idx_0018_RGOS.asm"     ; 0x29f2

%include "vpops/api_idx_0004_LUOM.asm"     ; 0x2aef

loc_HTKI.api_idx1 equ api_idx_0004_LUOM
%include "shared/loc_HTKI.asm"              ; 0x2c51

dseg_90c5 equ __zdseg_end + (__zdseg_90c5 - __zdata_start)
%include "vpops/api_idx_0038_PVVG.asm"     ; 0x2c92

%include "vpops/api_idx_0094_NVHQ.asm"     ; 0x33db

%include "vpops/api_idx_0006_QUSK.asm"     ; 0x36c0

bss_90d8 equ __zdseg_end + (__zobss_90d8 - __zdata_start)
bss_9386 equ __zdseg_end + (__zobss_9386 - __zdata_start)
bss_9388 equ __zdseg_end + (__zobss_9388 - __zdata_start)
%include "vpops/api_idx_00d4_LUPQ.asm"     ; 0x3710

%include "vpops/api_idx_0004_PKLV.asm"     ; 0x4528

%include "vpops/api_idx_0002_ROVK.asm"     ; 0x45b3

%include "vpops/api_idx_0024_NKNU.asm"     ; 0x45f3

%include "vpops/api_idx_0002_GMMK.asm"     ; 0x4d91

; bss_90d6 equ __zdseg_end + (__zobss_90d6 - __zdata_start)
; bss_9386 equ __zdseg_end + (__zobss_9386 - __zdata_start)
; bss_9388 equ __zdseg_end + (__zobss_9388 - __zdata_start)
bss_938a equ __zdseg_end + (__zobss_938a - __zdata_start)
bss_938c equ __zdseg_end + (__zobss_938c - __zdata_start)
%include "vpops/api_idx_0004_PPTR.asm"     ; 0x4e3b

dseg_90cc equ __zdseg_end + (__zdseg_90cc - __zdata_start)
dseg_90ce equ __zdseg_end + (__zdseg_90ce - __zdata_start)
dseg_90d0 equ __zdseg_end + (__zdseg_90d0 - __zdata_start)
dseg_90d2 equ __zdseg_end + (__zdseg_90d2 - __zdata_start)
dseg_90d4 equ __zdseg_end + (__zdseg_90d4 - __zdata_start)
; bss_90d6  equ __zdseg_end + (__zobss_90d6 - __zdata_start)
%include "vpops/loc_JHJT.asm"              ; 0x4e9d

__zdseg_9098:
__zdata_start:
    db 'V1.$$$', 0
__zdseg_909f:
    db 'V1.$$$', 0
__zdseg_90a6:
    db 'V2.$$$', 0
__zdseg_90ad:
    db 'V3.$$$', 0
__zdseg_90b4:
    db 'V1.$$$', 0
__zdseg_90bb:
    db 0x2a, 0x2a, 0x2a, 0x00
__zdseg_90bf:
    db 'V.$$$', 0
__zdseg_90c5:
    db 'V.$$$', 0
    db 0x00
__zdseg_90cc:
    db 0x00, 0x00
__zdseg_90ce:
    db 0x00, 0x00
__zdseg_90d0:
    db 0x00, 0x00
__zdseg_90d2:
    db 0x00, 0x00
__zdseg_90d4:
    db 0x00, 0x00

__zimage_end:
absolute __zimage_end
__zobss_90d6:
    resb 0x0002
__zobss_90d8:
    resb 0x02ae
__zobss_9386:
    resb 0x0002
__zobss_9388:
    resb 0x0002
__zobss_938a:
    resb 0x0002
__zobss_938c:
    resb 0x0002
__zobss_end:
