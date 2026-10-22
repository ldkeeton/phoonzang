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
    dw (__zdata_start - __zcode_start)       ; 0xaecf ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x009c ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x1f22 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xfe57 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vmnpc/api_idx_0008_JGKT.asm"     ; 0x000e

bss_9134 equ __zdseg_end + (__zobss_9134 - __zdata_start)
bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
%include "vmnpc/api_idx_000c_POTM.asm"     ; 0x01d2

%include "vmnpc/api_idx_0004_SMTU.asm"     ; 0x062d

; bss_9134 equ __zdseg_end + (__zobss_9134 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
%include "vmnpc/api_idx_0018_TROH.asm"     ; 0x0727

api_idx_000e_NKQN.api_idx1 equ api_idx_0004_SMTU
%include "shared/game/api_idx_000e_NKQN.asm"     ; 0x0961

%include "shared/game/loc_SSIO.asm"              ; 0x0a56

%include "shared/game/redraw_glyph_strip.asm"    ; 0x0ab2

%include "shared/game/loc_VNIO.asm"              ; 0x0b30

report_line1_none equ __zdseg_end + (__zreport_line1_none - __zdata_start)
dseg_909f         equ __zdseg_end + (__zdseg_909f - __zdata_start)
dseg_90a6         equ __zdseg_end + (__zdseg_90a6 - __zdata_start)
dseg_90ad         equ __zdseg_end + (__zdseg_90ad - __zdata_start)
dseg_90b4         equ __zdseg_end + (__zdseg_90b4 - __zdata_start)
%include "shared/game/api_idx_0006_SHUK.asm"     ; 0x0b74

%include "shared/game/loc_HTQP.asm"              ; 0x0c96

dseg_90bb equ __zdseg_end + (__zdseg_90bb - __zdata_start)
dseg_90be equ __zdseg_end + (__zdseg_90be - __zdata_start)
bss_9138  equ __zdseg_end + (__zobss_9138 - __zdata_start)
%include "vmnpc/api_idx_0054_UKJH.asm"     ; 0x0d46

bss_934c equ __zdseg_end + (__zobss_934c - __zdata_start)
bss_93d2 equ __zdseg_end + (__zobss_93d2 - __zdata_start)
bss_93d4 equ __zdseg_end + (__zobss_93d4 - __zdata_start)
%include "vmnpc/api_idx_0002_IUMT.asm"     ; 0x0dc3

; bss_93d4 equ __zdseg_end + (__zobss_93d4 - __zdata_start)
%include "vmnpc/api_idx_0004_KNGG.asm"     ; 0x0e15

bss_93d6 equ __zdseg_end + (__zobss_93d6 - __zdata_start)
loc_KRMP.bss1 equ bss_93d6
%include "shared/game/loc_KRMP.asm"              ; 0x0ef1

; bss_93d6 equ __zdseg_end + (__zobss_93d6 - __zdata_start)
bss_93d8 equ __zdseg_end + (__zobss_93d8 - __zdata_start)
%include "vmnpc/api_idx_0006_SQTK.asm"     ; 0x0f50

loc_RPUI.api_idx1 equ api_idx_0006_SQTK
%include "shared/game/loc_RPUI.asm"              ; 0x109f

loc_UTQS.api_idx1 equ api_idx_0006_SQTK
%include "shared/game/loc_UTQS.asm"              ; 0x10b6

%include "vmnpc/api_idx_0004_MIJS.asm"     ; 0x10c9

dseg_90c2 equ __zdseg_end + (__zdseg_90c2 - __zdata_start)
%include "vmnpc/api_idx_0004_RPUO.asm"     ; 0x114d

%include "vmnpc/api_idx_0004_GRRG.asm"     ; 0x119e

%include "vmnpc/api_idx_0004_THQU.asm"     ; 0x11f8

%include "vmnpc/api_idx_0054_LVHV.asm"     ; 0x128c

%include "vmnpc/loc_MLKO.asm"              ; 0x130b

%include "vmnpc/api_idx_0050_TJLH.asm"     ; 0x13b4

; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
bss_91c3 equ __zdseg_end + (__zobss_91c3 - __zdata_start)
bss_93da equ __zdseg_end + (__zobss_93da - __zdata_start)
bss_93dc equ __zdseg_end + (__zobss_93dc - __zdata_start)
%include "vmnpc/api_idx_005e_SHOL.asm"     ; 0x13ed

%include "vmnpc/api_idx_000c_KGOL.asm"     ; 0x1676

%include "vmnpc/loc_RSHV.asm"              ; 0x1821

dseg_90c4 equ __zdseg_end + (__zdseg_90c4 - __zdata_start)
dseg_90ca equ __zdseg_end + (__zdseg_90ca - __zdata_start)
%include "vmnpc/loc_MOVJ.asm"              ; 0x1d39

; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
%include "vmnpc/ovmain.asm"                ; 0x21bf

%include "shared/game/api_idx_004c_RQSO.asm"     ; 0x21d2

%include "vmnpc/api_idx_0004_PULL.asm"     ; 0x22e7

; bss_93d4 equ __zdseg_end + (__zobss_93d4 - __zdata_start)
%include "vmnpc/api_idx_0004_VLIO.asm"     ; 0x2372

bss_93ee equ __zdseg_end + (__zobss_93ee - __zdata_start)
%include "vmnpc/loc_LRGG.asm"              ; 0x2472

bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
bss_91c7 equ __zdseg_end + (__zobss_91c7 - __zdata_start)
bss_93f0 equ __zdseg_end + (__zobss_93f0 - __zdata_start)
bss_94f0 equ __zdseg_end + (__zobss_94f0 - __zdata_start)
%include "vmnpc/api_idx_0038_POGI.asm"     ; 0x24ae

; bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
; bss_91c7 equ __zdseg_end + (__zobss_91c7 - __zdata_start)
; bss_93f0 equ __zdseg_end + (__zobss_93f0 - __zdata_start)
bss_9576 equ __zdseg_end + (__zobss_9576 - __zdata_start)
bss_958e equ __zdseg_end + (__zobss_958e - __zdata_start)
%include "vmnpc/api_idx_0002_OUKN.asm"     ; 0x2768

; bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
%include "vmnpc/api_idx_0004_PHNO.asm"     ; 0x28a1

bss_91c2 equ __zdseg_end + (__zobss_91c2 - __zdata_start)
bss_95a6 equ __zdseg_end + (__zobss_95a6 - __zdata_start)
%include "vmnpc/loc_GPUL.asm"              ; 0x2963

; bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
; bss_93d4 equ __zdseg_end + (__zobss_93d4 - __zdata_start)
bss_95a8 equ __zdseg_end + (__zobss_95a8 - __zdata_start)
%include "vmnpc/api_idx_0008_KNNO.asm"     ; 0x29b1

; bss_9134 equ __zdseg_end + (__zobss_9134 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
bss_91b6 equ __zdseg_end + (__zobss_91b6 - __zdata_start)
bss_91b8 equ __zdseg_end + (__zobss_91b8 - __zdata_start)
; bss_91c2 equ __zdseg_end + (__zobss_91c2 - __zdata_start)
; bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
; bss_91c7 equ __zdseg_end + (__zobss_91c7 - __zdata_start)
; bss_93dc equ __zdseg_end + (__zobss_93dc - __zdata_start)
; bss_93ee equ __zdseg_end + (__zobss_93ee - __zdata_start)
; bss_95a6 equ __zdseg_end + (__zobss_95a6 - __zdata_start)
; bss_95a8 equ __zdseg_end + (__zobss_95a8 - __zdata_start)
bss_95f8 equ __zdseg_end + (__zobss_95f8 - __zdata_start)
bss_95fa equ __zdseg_end + (__zobss_95fa - __zdata_start)
%include "vmnpc/api_idx_0040_LSRO.asm"     ; 0x2b8e

bss_964a equ __zdseg_end + (__zobss_964a - __zdata_start)
bss_964c equ __zdseg_end + (__zobss_964c - __zdata_start)
%include "vmnpc/api_idx_0006_SRQN.asm"     ; 0x3773

%include "vmnpc/api_idx_0002_KNHU.asm"     ; 0x38c1

location_changed equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_91c5         equ __zdseg_end + (__zobss_91c5 - __zdata_start)
bss_91cb         equ __zdseg_end + (__zobss_91cb - __zdata_start)
; bss_95a8         equ __zdseg_end + (__zobss_95a8 - __zdata_start)
; bss_95fa         equ __zdseg_end + (__zobss_95fa - __zdata_start)
bss_964e         equ __zdseg_end + (__zobss_964e - __zdata_start)
%include "vmnpc/api_idx_0008_HUTJ.asm"     ; 0x3900

bss_9650 equ __zdseg_end + (__zobss_9650 - __zdata_start)
%include "vmnpc/api_idx_0004_GGOK.asm"     ; 0x3a96

%include "shared/game/api_idx_0018_RGOS.asm"     ; 0x3b9a

%include "vmnpc/api_idx_0004_KHSO.asm"     ; 0x3c97

loc_HTKI.api_idx1 equ api_idx_0004_KHSO
%include "shared/game/loc_HTKI.asm"              ; 0x3df9

dseg_90d0 equ __zdseg_end + (__zdseg_90d0 - __zdata_start)
%include "vmnpc/api_idx_0038_IJUK.asm"     ; 0x3e3a

bss_99ae equ __zdseg_end + (__zobss_99ae - __zdata_start)
%include "vmnpc/api_idx_0054_OPGG.asm"     ; 0x4514

%include "vmnpc/loc_VUSH.asm"              ; 0x4775

%include "vmnpc/loc_GOMR.asm"              ; 0x47b9

dseg_90d6 equ __zdseg_end + (__zdseg_90d6 - __zdata_start)
; bss_93d8  equ __zdseg_end + (__zobss_93d8 - __zdata_start)
; bss_99ae  equ __zdseg_end + (__zobss_99ae - __zdata_start)
bss_9ca6  equ __zdseg_end + (__zobss_9ca6 - __zdata_start)
%include "vmnpc/api_idx_0038_LJOP.asm"     ; 0x47d9

bss_9ca8 equ __zdseg_end + (__zobss_9ca8 - __zdata_start)
%include "vmnpc/api_idx_004c_OGSK.asm"     ; 0x4fea

; bss_9ca8 equ __zdseg_end + (__zobss_9ca8 - __zdata_start)
%include "vmnpc/api_idx_0002_MIIL.asm"     ; 0x515b

; bss_9650 equ __zdseg_end + (__zobss_9650 - __zdata_start)
; bss_9ca8 equ __zdseg_end + (__zobss_9ca8 - __zdata_start)
%include "vmnpc/api_idx_0068_OUGS.asm"     ; 0x51bb

bss_9cd2 equ __zdseg_end + (__zobss_9cd2 - __zdata_start)
bss_9cd4 equ __zdseg_end + (__zobss_9cd4 - __zdata_start)
%include "vmnpc/api_idx_0004_GHUK.asm"     ; 0x5371

%include "shared/game/loc_GMVH.asm"              ; 0x5497

%include "shared/game/api_idx_0002_QVIM.asm"     ; 0x54b4

; bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
; bss_9cd4 equ __zdseg_end + (__zobss_9cd4 - __zdata_start)
%include "vmnpc/api_idx_0008_GUJV.asm"     ; 0x5571

; bss_93d8 equ __zdseg_end + (__zobss_93d8 - __zdata_start)
; bss_9ca6 equ __zdseg_end + (__zobss_9ca6 - __zdata_start)
; bss_9cd2 equ __zdseg_end + (__zobss_9cd2 - __zdata_start)
%include "vmnpc/api_idx_0006_RKSL.asm"     ; 0x573e

%include "shared/game/api_idx_0002_GKQL.asm"     ; 0x57bb

bss_91ac equ __zdseg_end + (__zobss_91ac - __zdata_start)
bss_91ae equ __zdseg_end + (__zobss_91ae - __zdata_start)
; bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
; bss_95a8 equ __zdseg_end + (__zobss_95a8 - __zdata_start)
; bss_95fa equ __zdseg_end + (__zobss_95fa - __zdata_start)
bss_9d10 equ __zdseg_end + (__zobss_9d10 - __zdata_start)
%include "vmnpc/api_idx_005e_KVNO.asm"     ; 0x57e1

; bss_91ae equ __zdseg_end + (__zobss_91ae - __zdata_start)
; bss_91c5 equ __zdseg_end + (__zobss_91c5 - __zdata_start)
; bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
%include "vmnpc/api_idx_004e_PHKR.asm"     ; 0x5b74

; bss_9ca8 equ __zdseg_end + (__zobss_9ca8 - __zdata_start)
%include "vmnpc/api_idx_0006_GQUO.asm"     ; 0x5d0e

%include "vmnpc/api_idx_0054_IHKM.asm"     ; 0x5d93

; bss_91cb equ __zdseg_end + (__zobss_91cb - __zdata_start)
; bss_9ca8 equ __zdseg_end + (__zobss_9ca8 - __zdata_start)
; bss_9cd2 equ __zdseg_end + (__zobss_9cd2 - __zdata_start)
%include "vmnpc/api_idx_0072_KTMQ.asm"     ; 0x5e96

; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_91b6 equ __zdseg_end + (__zobss_91b6 - __zdata_start)
; bss_91b8 equ __zdseg_end + (__zobss_91b8 - __zdata_start)
; bss_91c5 equ __zdseg_end + (__zobss_91c5 - __zdata_start)
; bss_964e equ __zdseg_end + (__zobss_964e - __zdata_start)
; bss_9cd2 equ __zdseg_end + (__zobss_9cd2 - __zdata_start)
; bss_9cd4 equ __zdseg_end + (__zobss_9cd4 - __zdata_start)
bss_9d60 equ __zdseg_end + (__zobss_9d60 - __zdata_start)
%include "vmnpc/api_idx_005e_QNLK.asm"     ; 0x5fd0

; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_91c5 equ __zdseg_end + (__zobss_91c5 - __zdata_start)
; bss_91c7 equ __zdseg_end + (__zobss_91c7 - __zdata_start)
; bss_964e equ __zdseg_end + (__zobss_964e - __zdata_start)
; bss_9ca8 equ __zdseg_end + (__zobss_9ca8 - __zdata_start)
bss_9d62 equ __zdseg_end + (__zobss_9d62 - __zdata_start)
bss_9d64 equ __zdseg_end + (__zobss_9d64 - __zdata_start)
%include "vmnpc/api_idx_00d2_SNMN.asm"     ; 0x631e

; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
bss_91a2 equ __zdseg_end + (__zobss_91a2 - __zdata_start)
; bss_91c3 equ __zdseg_end + (__zobss_91c3 - __zdata_start)
; bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
; bss_91c7 equ __zdseg_end + (__zobss_91c7 - __zdata_start)
; bss_93da equ __zdseg_end + (__zobss_93da - __zdata_start)
; bss_93dc equ __zdseg_end + (__zobss_93dc - __zdata_start)
; bss_93f0 equ __zdseg_end + (__zobss_93f0 - __zdata_start)
; bss_95a6 equ __zdseg_end + (__zobss_95a6 - __zdata_start)
; bss_964e equ __zdseg_end + (__zobss_964e - __zdata_start)
; bss_9d60 equ __zdseg_end + (__zobss_9d60 - __zdata_start)
; bss_9d62 equ __zdseg_end + (__zobss_9d62 - __zdata_start)
; bss_9d64 equ __zdseg_end + (__zobss_9d64 - __zdata_start)
bss_9d66 equ __zdseg_end + (__zobss_9d66 - __zdata_start)
%include "vmnpc/api_idx_009c_MRKK.asm"     ; 0x677a

; bss_91c3 equ __zdseg_end + (__zobss_91c3 - __zdata_start)
bss_91ca equ __zdseg_end + (__zobss_91ca - __zdata_start)
; bss_93da equ __zdseg_end + (__zobss_93da - __zdata_start)
; bss_93dc equ __zdseg_end + (__zobss_93dc - __zdata_start)
%include "vmnpc/loc_JSTI.asm"              ; 0x6d9d

bss_91aa equ __zdseg_end + (__zobss_91aa - __zdata_start)
; bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
bss_91c9 equ __zdseg_end + (__zobss_91c9 - __zdata_start)
; bss_9cd2 equ __zdseg_end + (__zobss_9cd2 - __zdata_start)
; bss_9cd4 equ __zdseg_end + (__zobss_9cd4 - __zdata_start)
%include "vmnpc/api_idx_0086_JRHU.asm"     ; 0x6e0f

; bss_9134 equ __zdseg_end + (__zobss_9134 - __zdata_start)
; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9138 equ __zdseg_end + (__zobss_9138 - __zdata_start)
; bss_93d6 equ __zdseg_end + (__zobss_93d6 - __zdata_start)
; bss_93dc equ __zdseg_end + (__zobss_93dc - __zdata_start)
; bss_93ee equ __zdseg_end + (__zobss_93ee - __zdata_start)
; bss_94f0 equ __zdseg_end + (__zobss_94f0 - __zdata_start)
; bss_95f8 equ __zdseg_end + (__zobss_95f8 - __zdata_start)
; bss_964a equ __zdseg_end + (__zobss_964a - __zdata_start)
; bss_964c equ __zdseg_end + (__zobss_964c - __zdata_start)
; bss_9d66 equ __zdseg_end + (__zobss_9d66 - __zdata_start)
bss_9d68 equ __zdseg_end + (__zobss_9d68 - __zdata_start)
bss_9d6a equ __zdseg_end + (__zobss_9d6a - __zdata_start)
%include "vmnpc/api_idx_001e_GOQP.asm"     ; 0x70b7

dseg_90dc equ __zdseg_end + (__zdseg_90dc - __zdata_start)
; bss_93dc  equ __zdseg_end + (__zobss_93dc - __zdata_start)
%include "vmnpc/api_idx_0006_MITV.asm"     ; 0x72bf

; bss_93d8 equ __zdseg_end + (__zobss_93d8 - __zdata_start)
; bss_9d62 equ __zdseg_end + (__zobss_9d62 - __zdata_start)
bss_9d6c equ __zdseg_end + (__zobss_9d6c - __zdata_start)
%include "vmnpc/loc_LOVI.asm"              ; 0x7400

; bss_93da equ __zdseg_end + (__zobss_93da - __zdata_start)
%include "vmnpc/loc_IVVH.asm"              ; 0x742e

%include "shared/game/draw_party_slot_letters.asm" ; 0x7452

%include "shared/game/api_idx_0002_TIUI.asm"     ; 0x74d1

%include "vmnpc/api_idx_0004_NIJP.asm"     ; 0x752c

%include "shared/game/draw_marker_glyph.asm"     ; 0x759d

%include "shared/game/draw_power_digit.asm"      ; 0x75db

dseg_90e4 equ __zdseg_end + (__zdseg_90e4 - __zdata_start)
loc_IMPO              equ draw_spell_cost
draw_spell_cost.dseg1 equ dseg_90e4
%include "shared/game/draw_spell_cost.asm"              ; 0x7667

api_idx_000c_GHTR equ draw_realm_spell_points
%include "shared/game/draw_realm_spell_points.asm"     ; 0x7708

; bss_93d6 equ __zdseg_end + (__zobss_93d6 - __zdata_start)
periodic_party_redraw.party_redraw_mode1 equ bss_93d6
periodic_party_redraw.api_idx1           equ draw_marker_glyph
periodic_party_redraw.api_idx2           equ api_idx_000c_GHTR
%include "shared/game/periodic_party_redraw.asm" ; 0x77a1

%include "vmnpc/loc_UVUO.asm"              ; 0x7832

dseg_90e8 equ __zdseg_end + (__zdseg_90e8 - __zdata_start)
; bss_93d6  equ __zdseg_end + (__zobss_93d6 - __zdata_start)
%include "vmnpc/api_idx_0044_NORP.asm"     ; 0x786c

%include "vmnpc/api_idx_0006_TLLQ.asm"     ; 0x84f0

api_idx_002a_NJKV equ api_idx_002a_STSK
%include "shared/game/api_idx_002a_STSK.asm"     ; 0x8550

; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_91c7 equ __zdseg_end + (__zobss_91c7 - __zdata_start)
%include "vmnpc/loc_HOSN.asm"              ; 0x85f9

%include "shared/game/loc_SIKN.asm"              ; 0x8662

%include "vmnpc/api_idx_0002_GRRR.asm"     ; 0x86a4

bss_9e52 equ __zdseg_end + (__zobss_9e52 - __zdata_start)
bss_9e54 equ __zdseg_end + (__zobss_9e54 - __zdata_start)
bss_9e56 equ __zdseg_end + (__zobss_9e56 - __zdata_start)
bss_9e58 equ __zdseg_end + (__zobss_9e58 - __zdata_start)
bss_9e5a equ __zdseg_end + (__zobss_9e5a - __zdata_start)
bss_9e5c equ __zdseg_end + (__zobss_9e5c - __zdata_start)
bss_9e5e equ __zdseg_end + (__zobss_9e5e - __zdata_start)
bss_9e62 equ __zdseg_end + (__zobss_9e62 - __zdata_start)
%include "vmnpc/loc_NLPS.asm"              ; 0x86c6

bss_9e84 equ __zdseg_end + (__zobss_9e84 - __zdata_start)
%include "vmnpc/api_idx_0004_JVTH.asm"     ; 0x8738

%include "vmnpc/api_idx_0002_JGQP.asm"     ; 0x8793

%include "vmnpc/api_idx_0006_UKIH.asm"     ; 0x8849

%include "vmnpc/loc_UIIS.asm"              ; 0x8981

bss_a656 equ __zdseg_end + (__zobss_a656 - __zdata_start)
%include "vmnpc/api_idx_0058_PMKH.asm"     ; 0x89a8

%include "vmnpc/api_idx_0054_TNHV.asm"     ; 0x8a81

%include "vmnpc/api_idx_0002_NTRU.asm"     ; 0x8bb0

%include "vmnpc/api_idx_0002_UHGS.asm"     ; 0x8be8

%include "shared/game/api_idx_0004_ULSR.asm"     ; 0x8c2a

; location_changed equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_9e42         equ __zdseg_end + (__zobss_9e42 - __zdata_start)
bss_9e44         equ __zdseg_end + (__zobss_9e44 - __zdata_start)
%include "vmnpc/api_idx_0084_VMPP.asm"     ; 0x8c72

%include "vmnpc/api_idx_0002_MRKH.asm"     ; 0x8d86

%include "vmnpc/api_idx_00a6_OTNK.asm"     ; 0x8dbd

%include "vmnpc/api_idx_00a8_PUTL.asm"     ; 0x8ead

; bss_9e42 equ __zdseg_end + (__zobss_9e42 - __zdata_start)
; bss_9e44 equ __zdseg_end + (__zobss_9e44 - __zdata_start)
bss_9e46 equ __zdseg_end + (__zobss_9e46 - __zdata_start)
bss_9e48 equ __zdseg_end + (__zobss_9e48 - __zdata_start)
bss_9e4a equ __zdseg_end + (__zobss_9e4a - __zdata_start)
bss_9e4c equ __zdseg_end + (__zobss_9e4c - __zdata_start)
bss_9e50 equ __zdseg_end + (__zobss_9e50 - __zdata_start)
bss_9e60 equ __zdseg_end + (__zobss_9e60 - __zdata_start)
; bss_9e62 equ __zdseg_end + (__zobss_9e62 - __zdata_start)
bss_9e64 equ __zdseg_end + (__zobss_9e64 - __zdata_start)
bss_9e66 equ __zdseg_end + (__zobss_9e66 - __zdata_start)
bss_9e68 equ __zdseg_end + (__zobss_9e68 - __zdata_start)
bss_9e6a equ __zdseg_end + (__zobss_9e6a - __zdata_start)
bss_9e6c equ __zdseg_end + (__zobss_9e6c - __zdata_start)
bss_9e6e equ __zdseg_end + (__zobss_9e6e - __zdata_start)
bss_9e70 equ __zdseg_end + (__zobss_9e70 - __zdata_start)
bss_9e74 equ __zdseg_end + (__zobss_9e74 - __zdata_start)
bss_9e76 equ __zdseg_end + (__zobss_9e76 - __zdata_start)
bss_9e78 equ __zdseg_end + (__zobss_9e78 - __zdata_start)
bss_9e7a equ __zdseg_end + (__zobss_9e7a - __zdata_start)
bss_9e7c equ __zdseg_end + (__zobss_9e7c - __zdata_start)
bss_9e7e equ __zdseg_end + (__zobss_9e7e - __zdata_start)
bss_9e80 equ __zdseg_end + (__zobss_9e80 - __zdata_start)
bss_9e82 equ __zdseg_end + (__zobss_9e82 - __zdata_start)
bss_b030 equ __zdseg_end + (__zobss_b030 - __zdata_start)
bss_b032 equ __zdseg_end + (__zobss_b032 - __zdata_start)
bss_b03c equ __zdseg_end + (__zobss_b03c - __zdata_start)
bss_b046 equ __zdseg_end + (__zobss_b046 - __zdata_start)
bss_b048 equ __zdseg_end + (__zobss_b048 - __zdata_start)
%include "vmnpc/api_idx_0004_GSIV.asm"     ; 0x8f85

; bss_93d4 equ __zdseg_end + (__zobss_93d4 - __zdata_start)
%include "vmnpc/api_idx_000e_OOOK.asm"     ; 0x927d

; bss_93d4 equ __zdseg_end + (__zobss_93d4 - __zdata_start)
%include "vmnpc/api_idx_000a_HIIM.asm"     ; 0x93e7

dseg_90ee equ __zdseg_end + (__zdseg_90ee - __zdata_start)
; bss_93d4  equ __zdseg_end + (__zobss_93d4 - __zdata_start)
%include "vmnpc/loc_IPHP.asm"              ; 0x9587

dseg_90f0 equ __zdseg_end + (__zdseg_90f0 - __zdata_start)
; bss_93d4  equ __zdseg_end + (__zobss_93d4 - __zdata_start)
%include "vmnpc/api_idx_0080_TKTP.asm"     ; 0x96c7

dseg_90f2 equ __zdseg_end + (__zdseg_90f2 - __zdata_start)
; bss_93d4  equ __zdseg_end + (__zobss_93d4 - __zdata_start)
%include "vmnpc/api_idx_0100_KHVV.asm"     ; 0x9748

; bss_9e42 equ __zdseg_end + (__zobss_9e42 - __zdata_start)
; bss_9e44 equ __zdseg_end + (__zobss_9e44 - __zdata_start)
; bss_9e46 equ __zdseg_end + (__zobss_9e46 - __zdata_start)
; bss_9e48 equ __zdseg_end + (__zobss_9e48 - __zdata_start)
; bss_9e4a equ __zdseg_end + (__zobss_9e4a - __zdata_start)
; bss_9e4c equ __zdseg_end + (__zobss_9e4c - __zdata_start)
bss_9e4e equ __zdseg_end + (__zobss_9e4e - __zdata_start)
; bss_9e50 equ __zdseg_end + (__zobss_9e50 - __zdata_start)
; bss_9e54 equ __zdseg_end + (__zobss_9e54 - __zdata_start)
; bss_9e60 equ __zdseg_end + (__zobss_9e60 - __zdata_start)
; bss_9e62 equ __zdseg_end + (__zobss_9e62 - __zdata_start)
; bss_9e7e equ __zdseg_end + (__zobss_9e7e - __zdata_start)
; bss_9e80 equ __zdseg_end + (__zobss_9e80 - __zdata_start)
; bss_9e82 equ __zdseg_end + (__zobss_9e82 - __zdata_start)
%include "vmnpc/api_idx_00a2_IKRJ.asm"     ; 0x9844

; bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_9d6a equ __zdseg_end + (__zobss_9d6a - __zdata_start)
; bss_9e42 equ __zdseg_end + (__zobss_9e42 - __zdata_start)
; bss_9e44 equ __zdseg_end + (__zobss_9e44 - __zdata_start)
; bss_9e46 equ __zdseg_end + (__zobss_9e46 - __zdata_start)
; bss_9e48 equ __zdseg_end + (__zobss_9e48 - __zdata_start)
; bss_9e4a equ __zdseg_end + (__zobss_9e4a - __zdata_start)
; bss_9e4c equ __zdseg_end + (__zobss_9e4c - __zdata_start)
; bss_9e4e equ __zdseg_end + (__zobss_9e4e - __zdata_start)
; bss_9e50 equ __zdseg_end + (__zobss_9e50 - __zdata_start)
; bss_9e62 equ __zdseg_end + (__zobss_9e62 - __zdata_start)
; bss_9e70 equ __zdseg_end + (__zobss_9e70 - __zdata_start)
bss_b04a equ __zdseg_end + (__zobss_b04a - __zdata_start)
bss_b04c equ __zdseg_end + (__zobss_b04c - __zdata_start)
bss_b04e equ __zdseg_end + (__zobss_b04e - __zdata_start)
%include "vmnpc/loc_SMSJ.asm"              ; 0x9a04

; bss_91c7 equ __zdseg_end + (__zobss_91c7 - __zdata_start)
; bss_95a8 equ __zdseg_end + (__zobss_95a8 - __zdata_start)
; bss_9d10 equ __zdseg_end + (__zobss_9d10 - __zdata_start)
%include "vmnpc/api_idx_0002_NUKT.asm"     ; 0x9bcc

; bss_95fa equ __zdseg_end + (__zobss_95fa - __zdata_start)
bss_95fb equ __zdseg_end + (__zobss_95fb - __zdata_start)
; bss_9d10 equ __zdseg_end + (__zobss_9d10 - __zdata_start)
; bss_9e70 equ __zdseg_end + (__zobss_9e70 - __zdata_start)
; bss_b04e equ __zdseg_end + (__zobss_b04e - __zdata_start)
%include "vmnpc/loc_OJVU.asm"              ; 0x9c7a

; bss_b046 equ __zdseg_end + (__zobss_b046 - __zdata_start)
bss_b050 equ __zdseg_end + (__zobss_b050 - __zdata_start)
bss_b052 equ __zdseg_end + (__zobss_b052 - __zdata_start)
%include "vmnpc/loc_UPRU.asm"              ; 0x9d06

; location_changed equ __zdseg_end + (__zobss_91a8 - __zdata_start)
; bss_91b6         equ __zdseg_end + (__zobss_91b6 - __zdata_start)
; bss_91b8         equ __zdseg_end + (__zobss_91b8 - __zdata_start)
; bss_9d68         equ __zdseg_end + (__zobss_9d68 - __zdata_start)
; bss_9e42         equ __zdseg_end + (__zobss_9e42 - __zdata_start)
; bss_9e44         equ __zdseg_end + (__zobss_9e44 - __zdata_start)
; bss_9e46         equ __zdseg_end + (__zobss_9e46 - __zdata_start)
; bss_9e52         equ __zdseg_end + (__zobss_9e52 - __zdata_start)
; bss_9e54         equ __zdseg_end + (__zobss_9e54 - __zdata_start)
; bss_9e56         equ __zdseg_end + (__zobss_9e56 - __zdata_start)
; bss_9e58         equ __zdseg_end + (__zobss_9e58 - __zdata_start)
; bss_9e5a         equ __zdseg_end + (__zobss_9e5a - __zdata_start)
; bss_9e5c         equ __zdseg_end + (__zobss_9e5c - __zdata_start)
; bss_9e5e         equ __zdseg_end + (__zobss_9e5e - __zdata_start)
; bss_9e62         equ __zdseg_end + (__zobss_9e62 - __zdata_start)
; bss_9e64         equ __zdseg_end + (__zobss_9e64 - __zdata_start)
; bss_9e78         equ __zdseg_end + (__zobss_9e78 - __zdata_start)
; bss_b04e         equ __zdseg_end + (__zobss_b04e - __zdata_start)
%include "vmnpc/api_idx_0054_UOTQ.asm"     ; 0x9d30

; bss_9e42 equ __zdseg_end + (__zobss_9e42 - __zdata_start)
; bss_9e44 equ __zdseg_end + (__zobss_9e44 - __zdata_start)
; bss_9e46 equ __zdseg_end + (__zobss_9e46 - __zdata_start)
; bss_9e48 equ __zdseg_end + (__zobss_9e48 - __zdata_start)
; bss_9e4a equ __zdseg_end + (__zobss_9e4a - __zdata_start)
; bss_9e4c equ __zdseg_end + (__zobss_9e4c - __zdata_start)
; bss_9e4e equ __zdseg_end + (__zobss_9e4e - __zdata_start)
; bss_9e50 equ __zdseg_end + (__zobss_9e50 - __zdata_start)
%include "vmnpc/loc_LTIS.asm"              ; 0xa29f

; bss_95a8 equ __zdseg_end + (__zobss_95a8 - __zdata_start)
bss_95a9 equ __zdseg_end + (__zobss_95a9 - __zdata_start)
; bss_a656 equ __zdseg_end + (__zobss_a656 - __zdata_start)
; bss_b046 equ __zdseg_end + (__zobss_b046 - __zdata_start)
%include "vmnpc/api_idx_0002_JOQL.asm"     ; 0xa2e7

%include "vmnpc/api_idx_0002_UVON.asm"     ; 0xa391

%include "vmnpc/api_idx_0002_SLOH.asm"     ; 0xa3dd

%include "vmnpc/api_idx_0002_NSKK.asm"     ; 0xa411

bss_91a0 equ __zdseg_end + (__zobss_91a0 - __zdata_start)
bss_91a4 equ __zdseg_end + (__zobss_91a4 - __zdata_start)
bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
; bss_93d4 equ __zdseg_end + (__zobss_93d4 - __zdata_start)
; bss_b032 equ __zdseg_end + (__zobss_b032 - __zdata_start)
; bss_b03c equ __zdseg_end + (__zobss_b03c - __zdata_start)
; bss_b04a equ __zdseg_end + (__zobss_b04a - __zdata_start)
; bss_b04c equ __zdseg_end + (__zobss_b04c - __zdata_start)
; bss_b050 equ __zdseg_end + (__zobss_b050 - __zdata_start)
; bss_b052 equ __zdseg_end + (__zobss_b052 - __zdata_start)
%include "vmnpc/loc_MGPH.asm"              ; 0xa441

bss_b054 equ __zdseg_end + (__zobss_b054 - __zdata_start)
%include "vmnpc/api_idx_0016_TOUQ.asm"     ; 0xa546

; bss_93d4 equ __zdseg_end + (__zobss_93d4 - __zdata_start)
; bss_b054 equ __zdseg_end + (__zobss_b054 - __zdata_start)
%include "vmnpc/api_idx_00b0_KPHQ.asm"     ; 0xa837

%include "vmnpc/api_idx_00ba_TUGQ.asm"     ; 0xaa93

pending_panel_arg1 equ __zdseg_end + (__zpending_panel_arg1 - __zdata_start)
; bss_9136           equ __zdseg_end + (__zobss_9136 - __zdata_start)
; bss_93d4           equ __zdseg_end + (__zobss_93d4 - __zdata_start)
; bss_93ee           equ __zdseg_end + (__zobss_93ee - __zdata_start)
; bss_9e42           equ __zdseg_end + (__zobss_9e42 - __zdata_start)
; bss_9e44           equ __zdseg_end + (__zobss_9e44 - __zdata_start)
; bss_9e46           equ __zdseg_end + (__zobss_9e46 - __zdata_start)
; bss_9e48           equ __zdseg_end + (__zobss_9e48 - __zdata_start)
; bss_9e4a           equ __zdseg_end + (__zobss_9e4a - __zdata_start)
; bss_9e4c           equ __zdseg_end + (__zobss_9e4c - __zdata_start)
; bss_9e4e           equ __zdseg_end + (__zobss_9e4e - __zdata_start)
; bss_9e50           equ __zdseg_end + (__zobss_9e50 - __zdata_start)
; bss_9e52           equ __zdseg_end + (__zobss_9e52 - __zdata_start)
; bss_9e54           equ __zdseg_end + (__zobss_9e54 - __zdata_start)
; bss_9e56           equ __zdseg_end + (__zobss_9e56 - __zdata_start)
; bss_9e58           equ __zdseg_end + (__zobss_9e58 - __zdata_start)
; bss_9e5a           equ __zdseg_end + (__zobss_9e5a - __zdata_start)
; bss_9e5c           equ __zdseg_end + (__zobss_9e5c - __zdata_start)
; bss_9e5e           equ __zdseg_end + (__zobss_9e5e - __zdata_start)
; bss_9e60           equ __zdseg_end + (__zobss_9e60 - __zdata_start)
; bss_9e62           equ __zdseg_end + (__zobss_9e62 - __zdata_start)
; bss_9e64           equ __zdseg_end + (__zobss_9e64 - __zdata_start)
; bss_9e66           equ __zdseg_end + (__zobss_9e66 - __zdata_start)
; bss_9e68           equ __zdseg_end + (__zobss_9e68 - __zdata_start)
; bss_9e6a           equ __zdseg_end + (__zobss_9e6a - __zdata_start)
; bss_9e6c           equ __zdseg_end + (__zobss_9e6c - __zdata_start)
; bss_9e6e           equ __zdseg_end + (__zobss_9e6e - __zdata_start)
; bss_9e70           equ __zdseg_end + (__zobss_9e70 - __zdata_start)
bss_9e72           equ __zdseg_end + (__zobss_9e72 - __zdata_start)
; bss_9e74           equ __zdseg_end + (__zobss_9e74 - __zdata_start)
; bss_9e76           equ __zdseg_end + (__zobss_9e76 - __zdata_start)
; bss_9e78           equ __zdseg_end + (__zobss_9e78 - __zdata_start)
; bss_9e7a           equ __zdseg_end + (__zobss_9e7a - __zdata_start)
; bss_9e7c           equ __zdseg_end + (__zobss_9e7c - __zdata_start)
; bss_9e7e           equ __zdseg_end + (__zobss_9e7e - __zdata_start)
; bss_9e80           equ __zdseg_end + (__zobss_9e80 - __zdata_start)
; bss_9e82           equ __zdseg_end + (__zobss_9e82 - __zdata_start)
; bss_9e84           equ __zdseg_end + (__zobss_9e84 - __zdata_start)
; bss_b030           equ __zdseg_end + (__zobss_b030 - __zdata_start)
; bss_b04e           equ __zdseg_end + (__zobss_b04e - __zdata_start)
%include "vmnpc/api_idx_006a_QKPT.asm"     ; 0xab8d

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_9134 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec/aztec_ovbgn.asm"           ; 0xae10

%include "shared/aztec/aztec_strncpy.asm"         ; 0xae4e

%include "shared/aztec/aztec_strcmp.asm"          ; 0xae76

%include "shared/data/report_line1_none.asm" ; 0xaedd

__zdseg_909f:
    db 'V1.$$$', 0
__zdseg_90a6:
    db 'V2.$$$', 0
__zdseg_90ad:
    db 'V3.$$$', 0
__zdseg_90b4:
    db 'V1.$$$', 0
__zdseg_90bb:
    db 0x31, 0x20, 0x00
__zdseg_90be:
    db 0x28, 0x31, 0x29, 0x00
__zdseg_90c2:
    db 0x50, 0x00
__zdseg_90c4:
    db 'V.$$$', 0
__zdseg_90ca:
    db 'V.$$$', 0
__zdseg_90d0:
    db 'V.$$$', 0
__zdseg_90d6:
    db 'V.$$$', 0
__zdseg_90dc:
    db 'VM1.$$$', 0
__zdseg_90e4:
    db 0x2a, 0x2a, 0x2a, 0x00
__zdseg_90e8:
    db 'V.$$$', 0
__zdseg_90ee:
    db 0x20, 0x00
__zdseg_90f0:
    db 0x20, 0x00
__zdseg_90f2:

    db 0x20
    times 45 db 0

%include "vmnpc/data/pending_panel_arg1.asm" ; 0xaf65

%include "shared/data/save_si.asm"          ; 0xaf6f

%include "shared/data/save_di.asm"          ; 0xaf71

%include "shared/data/save_sp.asm"          ; 0xaf73

%include "shared/data/save_bp.asm"          ; 0xaf75

%include "shared/data/save_ret.asm"         ; 0xaf77


__zimage_end:
absolute __zimage_end
__zobss_9134:
    resb 0x0002
__zobss_9136:
    resb 0x0002
__zobss_9138:
    resb 0x0068
__zobss_91a0:
    resb 0x0002
__zobss_91a2:
    resb 0x0002
__zobss_91a4:
    resb 0x0002
__zobss_91a6:
    resb 0x0002
__zobss_91a8:
    resb 0x0002
__zobss_91aa:
    resb 0x0002
__zobss_91ac:
    resb 0x0002
__zobss_91ae:
    resb 0x0008
__zobss_91b6:
    resb 0x0002
__zobss_91b8:
    resb 0x000a
__zobss_91c2:
    resb 0x0001
__zobss_91c3:
    resb 0x0002
__zobss_91c5:
    resb 0x0001
__zobss_91c6:
    resb 0x0001
__zobss_91c7:
    resb 0x0002
__zobss_91c9:
    resb 0x0001
__zobss_91ca:
    resb 0x0001
__zobss_91cb:
    resb 0x0181
__zobss_934c:
    resb 0x0086
__zobss_93d2:
    resb 0x0002
__zobss_93d4:
    resb 0x0002
__zobss_93d6:
    resb 0x0002
__zobss_93d8:
    resb 0x0002
__zobss_93da:
    resb 0x0002
__zobss_93dc:
    resb 0x0012
__zobss_93ee:
    resb 0x0002
__zobss_93f0:
    resb 0x0100
__zobss_94f0:
    resb 0x0086
__zobss_9576:
    resb 0x0018
__zobss_958e:
    resb 0x0018
__zobss_95a6:
    resb 0x0002
__zobss_95a8:
    resb 0x0001
__zobss_95a9:
    resb 0x004f
__zobss_95f8:
    resb 0x0002
__zobss_95fa:
    resb 0x0001
__zobss_95fb:
    resb 0x004f
__zobss_964a:
    resb 0x0002
__zobss_964c:
    resb 0x0002
__zobss_964e:
    resb 0x0002
__zobss_9650:
    resb 0x035e
__zobss_99ae:
    resb 0x02f8
__zobss_9ca6:
    resb 0x0002
__zobss_9ca8:
    resb 0x002a
__zobss_9cd2:
    resb 0x0002
__zobss_9cd4:
    resb 0x003c
__zobss_9d10:
    resb 0x0050
__zobss_9d60:
    resb 0x0002
__zobss_9d62:
    resb 0x0002
__zobss_9d64:
    resb 0x0002
__zobss_9d66:
    resb 0x0002
__zobss_9d68:
    resb 0x0002
__zobss_9d6a:
    resb 0x0002
__zobss_9d6c:
    resb 0x00d6
__zobss_9e42:
    resb 0x0002
__zobss_9e44:
    resb 0x0002
__zobss_9e46:
    resb 0x0002
__zobss_9e48:
    resb 0x0002
__zobss_9e4a:
    resb 0x0002
__zobss_9e4c:
    resb 0x0002
__zobss_9e4e:
    resb 0x0002
__zobss_9e50:
    resb 0x0002
__zobss_9e52:
    resb 0x0002
__zobss_9e54:
    resb 0x0002
__zobss_9e56:
    resb 0x0002
__zobss_9e58:
    resb 0x0002
__zobss_9e5a:
    resb 0x0002
__zobss_9e5c:
    resb 0x0002
__zobss_9e5e:
    resb 0x0002
__zobss_9e60:
    resb 0x0002
__zobss_9e62:
    resb 0x0002
__zobss_9e64:
    resb 0x0002
__zobss_9e66:
    resb 0x0002
__zobss_9e68:
    resb 0x0002
__zobss_9e6a:
    resb 0x0002
__zobss_9e6c:
    resb 0x0002
__zobss_9e6e:
    resb 0x0002
__zobss_9e70:
    resb 0x0002
__zobss_9e72:
    resb 0x0002
__zobss_9e74:
    resb 0x0002
__zobss_9e76:
    resb 0x0002
__zobss_9e78:
    resb 0x0002
__zobss_9e7a:
    resb 0x0002
__zobss_9e7c:
    resb 0x0002
__zobss_9e7e:
    resb 0x0002
__zobss_9e80:
    resb 0x0002
__zobss_9e82:
    resb 0x0002
__zobss_9e84:
    resb 0x07d2
__zobss_a656:
    resb 0x09da
__zobss_b030:
    resb 0x0002
__zobss_b032:
    resb 0x000a
__zobss_b03c:
    resb 0x000a
__zobss_b046:
    resb 0x0002
__zobss_b048:
    resb 0x0002
__zobss_b04a:
    resb 0x0002
__zobss_b04c:
    resb 0x0002
__zobss_b04e:
    resb 0x0002
__zobss_b050:
    resb 0x0002
__zobss_b052:
    resb 0x0002
__zobss_b054:
    resb 0x0002
__zobss_end:
