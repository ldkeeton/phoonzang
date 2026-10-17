; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vmele.inc"
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
    dw (__zdata_start - __zcode_start)           ; 0x3765 ; o_csize: code size in bytes
    dw __zdseg_end                               ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)            ; 0x001e ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end                ; 0x001a ; o_bss: uninitialized data size
    dw string_loc_PQLL - IMAGE_BASE + __zres_end ; 0x8757 ; o_entry: overlay entry offset (CS)

__zcode_start:

bss_90b6 equ __zdseg_end + (__zobss_90b6 - __zdata_start)
bss_90b8 equ __zdseg_end + (__zobss_90b8 - __zdata_start)
bss_90ba equ __zdseg_end + (__zobss_90ba - __zdata_start)
bss_90bc equ __zdseg_end + (__zobss_90bc - __zdata_start)
%include "vmele/loc_KSVQ.asm"              ; 0x000e

%include "shared/api_idx_0008_MNJN.asm"     ; 0x004e

%include "vmele/api_idx_0004_RGUG.asm"     ; 0x0102

%include "vmele/api_idx_0008_QLVR.asm"     ; 0x0164

%include "shared/api_idx_000a_UUIH.asm"     ; 0x0244

%include "shared/api_idx_0004_ULSR.asm"     ; 0x02c2

%include "vmele/api_idx_000c_LVHV.asm"     ; 0x030a

%include "vmele/api_idx_0004_RPUQ.asm"     ; 0x03b9

%include "vmele/api_idx_00a8_KNHJ.asm"     ; 0x041d

%include "vmele/api_idx_005e_RKOR.asm"     ; 0x0649

%include "vmele/asm_only/api_idx_0008_SJOG.asm"     ; 0x07ad

%include "vmele/api_idx_0004_TJKU.asm"     ; 0x0c67

; bss_90ba equ __zdseg_end + (__zobss_90ba - __zdata_start)
%include "vmele/api_idx_000a_PKVL.asm"     ; 0x0f95

%include "vmele/api_idx_000c_QNKI.asm"     ; 0x11b0

%include "vmele/api_idx_000e_UGVQ.asm"     ; 0x12ac

%include "vmele/asm_only/api_idx_005c_UIOK.asm"     ; 0x14e6

%include "shared/loc_SIKN.asm"              ; 0x16d1

%include "vmele/api_idx_0006_RJKJ.asm"     ; 0x1713

%include "vmele/api_idx_0004_TTLU.asm"     ; 0x17ad

%include "vmele/asm_only/api_idx_0014_UOQI.asm"     ; 0x1844

%include "vmele/loc_QUVM.asm"              ; 0x1a16

%include "vmele/loc_QLKH.asm"              ; 0x1f39

api_idx_000e_VRIR.api_idx1 equ api_idx_000a_PKVL
%include "shared/api_idx_000e_VRIR.asm"     ; 0x2138

%include "shared/api_idx_0004_ONRQ.asm"     ; 0x245b

%include "shared/api_idx_001c_VLRT.asm"     ; 0x2565

api_idx_000e_NKQN.api_idx1 equ api_idx_0004_ONRQ
%include "shared/api_idx_000e_NKQN.asm"     ; 0x27ab

%include "shared/loc_SSIO.asm"              ; 0x28a0

%include "vmele/api_idx_0002_HMSQ.asm"     ; 0x28fc

%include "vmele/loc_QMOS.asm"              ; 0x299f

; bss_90ba equ __zdseg_end + (__zobss_90ba - __zdata_start)
%include "vmele/api_idx_000c_RTIP.asm"     ; 0x29c5

; bss_90b6 equ __zdseg_end + (__zobss_90b6 - __zdata_start)
loc_KRMP.bss1 equ bss_90b6
%include "shared/loc_KRMP.asm"              ; 0x2b19

; bss_90b6 equ __zdseg_end + (__zobss_90b6 - __zdata_start)
%include "vmele/api_idx_0006_IRNH.asm"     ; 0x2b78

loc_RPUI.api_idx1 equ api_idx_0006_IRNH
%include "shared/loc_RPUI.asm"              ; 0x2cc7

; bss_90b8 equ __zdseg_end + (__zobss_90b8 - __zdata_start)
; bss_90ba equ __zdseg_end + (__zobss_90ba - __zdata_start)
%include "vmele/api_idx_005a_STLR.asm"     ; 0x2cde

%include "vmele/api_idx_0004_NIHO.asm"     ; 0x2ec4

%include "vmele/api_idx_0008_OUTK.asm"     ; 0x306a

%include "vmele/api_idx_0056_KOPT.asm"     ; 0x31a1

%include "vmele/loc_UGJT.asm"              ; 0x331c

%include "vmele/api_idx_0004_NQLR.asm"     ; 0x3390

; bss_90b8 equ __zdseg_end + (__zobss_90b8 - __zdata_start)
; bss_90ba equ __zdseg_end + (__zobss_90ba - __zdata_start)
; bss_90bc equ __zdseg_end + (__zobss_90bc - __zdata_start)
%include "vmele/loc_RLUJ.asm"              ; 0x33df

; bss_90b6 equ __zdseg_end + (__zobss_90b6 - __zdata_start)
; bss_90bc equ __zdseg_end + (__zobss_90bc - __zdata_start)
%include "vmele/api_idx_0002_PSIJ.asm"     ; 0x36b8

dseg_90ac equ __zdseg_end + (__zdseg_90ac - __zdata_start)
dseg_90ae equ __zdseg_end + (__zdseg_90ae - __zdata_start)
dseg_90b0 equ __zdseg_end + (__zdseg_90b0 - __zdata_start)
dseg_90b2 equ __zdseg_end + (__zdseg_90b2 - __zdata_start)
dseg_90b4 equ __zdseg_end + (__zdseg_90b4 - __zdata_start)
; bss_90b6  equ __zdseg_end + (__zobss_90b6 - __zdata_start)
%include "vmele/asm_only/string_loc_PQLL.asm"       ; 0x3710

%include "vmele/asm_only/string_loc_SJPQ.asm"       ; 0x374e

__zdata_start:

    db 'MON00.PIC', 0
    db 0x20, 0x00
    db 'VM1.$$$', 0

__zdseg_90ac:
    db 0x00, 0x00
__zdseg_90ae:
    db 0x00, 0x00
__zdseg_90b0:
    db 0x00, 0x00
__zdseg_90b2:
    db 0x00, 0x00
__zdseg_90b4:
    db 0x00, 0x00

__zimage_end:
absolute __zimage_end
__zobss_90b6:
    resb 0x0002
__zobss_90b8:
    resb 0x0002
__zobss_90ba:
    resb 0x0002
__zobss_90bc:
    resb 0x0014
__zobss_end:
