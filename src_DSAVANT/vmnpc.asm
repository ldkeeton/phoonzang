; auto-generated
bits 16
%include "include/structs.inc"
%include "include/msg.inc"
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
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_909f equ __zdseg_end + (__zdseg_909f - __zdata_start)
dseg_90a6 equ __zdseg_end + (__zdseg_90a6 - __zdata_start)
dseg_90ad equ __zdseg_end + (__zdseg_90ad - __zdata_start)
dseg_90b4 equ __zdseg_end + (__zdseg_90b4 - __zdata_start)
dseg_90bb equ __zdseg_end + (__zdseg_90bb - __zdata_start)
dseg_90be equ __zdseg_end + (__zdseg_90be - __zdata_start)
dseg_90c2 equ __zdseg_end + (__zdseg_90c2 - __zdata_start)
dseg_90c4 equ __zdseg_end + (__zdseg_90c4 - __zdata_start)
dseg_90ca equ __zdseg_end + (__zdseg_90ca - __zdata_start)
dseg_90d0 equ __zdseg_end + (__zdseg_90d0 - __zdata_start)
dseg_90d6 equ __zdseg_end + (__zdseg_90d6 - __zdata_start)
dseg_90dc equ __zdseg_end + (__zdseg_90dc - __zdata_start)
dseg_90e4 equ __zdseg_end + (__zdseg_90e4 - __zdata_start)
dseg_90e8 equ __zdseg_end + (__zdseg_90e8 - __zdata_start)
dseg_90ee equ __zdseg_end + (__zdseg_90ee - __zdata_start)
dseg_90f0 equ __zdseg_end + (__zdseg_90f0 - __zdata_start)
dseg_90f2 equ __zdseg_end + (__zdseg_90f2 - __zdata_start)
dseg_9120 equ __zdseg_end + (__zdseg_9120 - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9134 - __zdata_start)
bss_9134 equ __zdseg_end + (__zobss_9134 - __zdata_start)
bss_9136 equ __zdseg_end + (__zobss_9136 - __zdata_start)
bss_9138 equ __zdseg_end + (__zobss_9138 - __zdata_start)
bss_9148 equ __zdseg_end + (__zobss_9148 - __zdata_start)
bss_914a equ __zdseg_end + (__zobss_914a - __zdata_start)
bss_914b equ __zdseg_end + (__zobss_914b - __zdata_start)
bss_914c equ __zdseg_end + (__zobss_914c - __zdata_start)
bss_914d equ __zdseg_end + (__zobss_914d - __zdata_start)
bss_9178 equ __zdseg_end + (__zobss_9178 - __zdata_start)
bss_91a0 equ __zdseg_end + (__zobss_91a0 - __zdata_start)
bss_91a2 equ __zdseg_end + (__zobss_91a2 - __zdata_start)
bss_91a4 equ __zdseg_end + (__zobss_91a4 - __zdata_start)
bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
bss_91a8 equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_91aa equ __zdseg_end + (__zobss_91aa - __zdata_start)
bss_91ac equ __zdseg_end + (__zobss_91ac - __zdata_start)
bss_91ae equ __zdseg_end + (__zobss_91ae - __zdata_start)
bss_91b6 equ __zdseg_end + (__zobss_91b6 - __zdata_start)
bss_91b8 equ __zdseg_end + (__zobss_91b8 - __zdata_start)
bss_91ba equ __zdseg_end + (__zobss_91ba - __zdata_start)
bss_91c2 equ __zdseg_end + (__zobss_91c2 - __zdata_start)
bss_91c3 equ __zdseg_end + (__zobss_91c3 - __zdata_start)
bss_91c5 equ __zdseg_end + (__zobss_91c5 - __zdata_start)
bss_91c6 equ __zdseg_end + (__zobss_91c6 - __zdata_start)
bss_91c7 equ __zdseg_end + (__zobss_91c7 - __zdata_start)
bss_91c9 equ __zdseg_end + (__zobss_91c9 - __zdata_start)
bss_91ca equ __zdseg_end + (__zobss_91ca - __zdata_start)
bss_91cb equ __zdseg_end + (__zobss_91cb - __zdata_start)
text_line_buffer equ __zdseg_end + (__zobss_91cc - __zdata_start)
bss_924c equ __zdseg_end + (__zobss_924c - __zdata_start)
bss_934c equ __zdseg_end + (__zobss_934c - __zdata_start)
text_line_color equ __zdseg_end + (__zobss_93cc - __zdata_start)
bss_93ce equ __zdseg_end + (__zobss_93ce - __zdata_start)
bss_93d2 equ __zdseg_end + (__zobss_93d2 - __zdata_start)
text_line_index equ __zdseg_end + (__zobss_93d4 - __zdata_start)
party_redraw_interval equ __zdseg_end + (__zobss_93d6 - __zdata_start)
bss_93d8 equ __zdseg_end + (__zobss_93d8 - __zdata_start)
bss_93da equ __zdseg_end + (__zobss_93da - __zdata_start)
bss_93dc equ __zdseg_end + (__zobss_93dc - __zdata_start)
bss_93ee equ __zdseg_end + (__zobss_93ee - __zdata_start)
bss_93f0 equ __zdseg_end + (__zobss_93f0 - __zdata_start)
bss_94f0 equ __zdseg_end + (__zobss_94f0 - __zdata_start)
bss_9576 equ __zdseg_end + (__zobss_9576 - __zdata_start)
bss_958e equ __zdseg_end + (__zobss_958e - __zdata_start)
bss_95a6 equ __zdseg_end + (__zobss_95a6 - __zdata_start)
bss_95a8 equ __zdseg_end + (__zobss_95a8 - __zdata_start)
bss_95a9 equ __zdseg_end + (__zobss_95a9 - __zdata_start)
bss_95f8 equ __zdseg_end + (__zobss_95f8 - __zdata_start)
bss_95fa equ __zdseg_end + (__zobss_95fa - __zdata_start)
bss_95fb equ __zdseg_end + (__zobss_95fb - __zdata_start)
bss_964a equ __zdseg_end + (__zobss_964a - __zdata_start)
bss_964c equ __zdseg_end + (__zobss_964c - __zdata_start)
bss_964e equ __zdseg_end + (__zobss_964e - __zdata_start)
bss_9650 equ __zdseg_end + (__zobss_9650 - __zdata_start)
list_row_marked equ __zdseg_end + (__zobss_9652 - __zdata_start)
bss_9654 equ __zdseg_end + (__zobss_9654 - __zdata_start)
list_row_glyph equ __zdseg_end + (__zobss_967a - __zdata_start)
bss_967c equ __zdseg_end + (__zobss_967c - __zdata_start)
list_row_name equ __zdseg_end + (__zobss_96a2 - __zdata_start)
bss_96b8 equ __zdseg_end + (__zobss_96b8 - __zdata_start)
list_row_count equ __zdseg_end + (__zobss_985a - __zdata_start)
bss_985c equ __zdseg_end + (__zobss_985c - __zdata_start)
bss_9882 equ __zdseg_end + (__zobss_9882 - __zdata_start)
bss_98be equ __zdseg_end + (__zobss_98be - __zdata_start)
bss_98fa equ __zdseg_end + (__zobss_98fa - __zdata_start)
bss_9918 equ __zdseg_end + (__zobss_9918 - __zdata_start)
bss_9936 equ __zdseg_end + (__zobss_9936 - __zdata_start)
bss_9938 equ __zdseg_end + (__zobss_9938 - __zdata_start)
bss_99ae equ __zdseg_end + (__zobss_99ae - __zdata_start)
bss_99b8 equ __zdseg_end + (__zobss_99b8 - __zdata_start)
bss_99d6 equ __zdseg_end + (__zobss_99d6 - __zdata_start)
bss_9c6a equ __zdseg_end + (__zobss_9c6a - __zdata_start)
bss_9ca6 equ __zdseg_end + (__zobss_9ca6 - __zdata_start)
bss_9ca8 equ __zdseg_end + (__zobss_9ca8 - __zdata_start)
bss_9caa equ __zdseg_end + (__zobss_9caa - __zdata_start)
bss_9cac equ __zdseg_end + (__zobss_9cac - __zdata_start)
bss_9cd2 equ __zdseg_end + (__zobss_9cd2 - __zdata_start)
bss_9cd4 equ __zdseg_end + (__zobss_9cd4 - __zdata_start)
bss_9d10 equ __zdseg_end + (__zobss_9d10 - __zdata_start)
bss_9d60 equ __zdseg_end + (__zobss_9d60 - __zdata_start)
bss_9d62 equ __zdseg_end + (__zobss_9d62 - __zdata_start)
bss_9d64 equ __zdseg_end + (__zobss_9d64 - __zdata_start)
bss_9d66 equ __zdseg_end + (__zobss_9d66 - __zdata_start)
bss_9d68 equ __zdseg_end + (__zobss_9d68 - __zdata_start)
bss_9d6a equ __zdseg_end + (__zobss_9d6a - __zdata_start)
bss_9d6c equ __zdseg_end + (__zobss_9d6c - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_9df2 - __zdata_start)
bss_9e42 equ __zdseg_end + (__zobss_9e42 - __zdata_start)
bss_9e44 equ __zdseg_end + (__zobss_9e44 - __zdata_start)
bss_9e46 equ __zdseg_end + (__zobss_9e46 - __zdata_start)
bss_9e48 equ __zdseg_end + (__zobss_9e48 - __zdata_start)
bss_9e4a equ __zdseg_end + (__zobss_9e4a - __zdata_start)
bss_9e4c equ __zdseg_end + (__zobss_9e4c - __zdata_start)
bss_9e4e equ __zdseg_end + (__zobss_9e4e - __zdata_start)
bss_9e50 equ __zdseg_end + (__zobss_9e50 - __zdata_start)
bss_9e52 equ __zdseg_end + (__zobss_9e52 - __zdata_start)
bss_9e54 equ __zdseg_end + (__zobss_9e54 - __zdata_start)
bss_9e56 equ __zdseg_end + (__zobss_9e56 - __zdata_start)
bss_9e58 equ __zdseg_end + (__zobss_9e58 - __zdata_start)
bss_9e5a equ __zdseg_end + (__zobss_9e5a - __zdata_start)
bss_9e5c equ __zdseg_end + (__zobss_9e5c - __zdata_start)
bss_9e5e equ __zdseg_end + (__zobss_9e5e - __zdata_start)
bss_9e60 equ __zdseg_end + (__zobss_9e60 - __zdata_start)
bss_9e62 equ __zdseg_end + (__zobss_9e62 - __zdata_start)
bss_9e64 equ __zdseg_end + (__zobss_9e64 - __zdata_start)
bss_9e66 equ __zdseg_end + (__zobss_9e66 - __zdata_start)
bss_9e68 equ __zdseg_end + (__zobss_9e68 - __zdata_start)
bss_9e6a equ __zdseg_end + (__zobss_9e6a - __zdata_start)
bss_9e6c equ __zdseg_end + (__zobss_9e6c - __zdata_start)
bss_9e6e equ __zdseg_end + (__zobss_9e6e - __zdata_start)
bss_9e70 equ __zdseg_end + (__zobss_9e70 - __zdata_start)
bss_9e72 equ __zdseg_end + (__zobss_9e72 - __zdata_start)
bss_9e74 equ __zdseg_end + (__zobss_9e74 - __zdata_start)
bss_9e76 equ __zdseg_end + (__zobss_9e76 - __zdata_start)
bss_9e78 equ __zdseg_end + (__zobss_9e78 - __zdata_start)
bss_9e7a equ __zdseg_end + (__zobss_9e7a - __zdata_start)
bss_9e7c equ __zdseg_end + (__zobss_9e7c - __zdata_start)
bss_9e7e equ __zdseg_end + (__zobss_9e7e - __zdata_start)
bss_9e80 equ __zdseg_end + (__zobss_9e80 - __zdata_start)
bss_9e82 equ __zdseg_end + (__zobss_9e82 - __zdata_start)
bss_9e84 equ __zdseg_end + (__zobss_9e84 - __zdata_start)
bss_9e86 equ __zdseg_end + (__zobss_9e86 - __zdata_start)
bss_9e88 equ __zdseg_end + (__zobss_9e88 - __zdata_start)
bss_9e89 equ __zdseg_end + (__zobss_9e89 - __zdata_start)
bss_a656 equ __zdseg_end + (__zobss_a656 - __zdata_start)
bss_a658 equ __zdseg_end + (__zobss_a658 - __zdata_start)
bss_a6bc equ __zdseg_end + (__zobss_a6bc - __zdata_start)
bss_a702 equ __zdseg_end + (__zobss_a702 - __zdata_start)
bss_a766 equ __zdseg_end + (__zobss_a766 - __zdata_start)
bss_a7ac equ __zdseg_end + (__zobss_a7ac - __zdata_start)
bss_a7b6 equ __zdseg_end + (__zobss_a7b6 - __zdata_start)
bss_a810 equ __zdseg_end + (__zobss_a810 - __zdata_start)
bss_a856 equ __zdseg_end + (__zobss_a856 - __zdata_start)
bss_a8c4 equ __zdseg_end + (__zobss_a8c4 - __zdata_start)
bss_b030 equ __zdseg_end + (__zobss_b030 - __zdata_start)
bss_b032 equ __zdseg_end + (__zobss_b032 - __zdata_start)
bss_b03c equ __zdseg_end + (__zobss_b03c - __zdata_start)
bss_b046 equ __zdseg_end + (__zobss_b046 - __zdata_start)
bss_b048 equ __zdseg_end + (__zobss_b048 - __zdata_start)
bss_b04a equ __zdseg_end + (__zobss_b04a - __zdata_start)
bss_b04c equ __zdseg_end + (__zobss_b04c - __zdata_start)
bss_b04e equ __zdseg_end + (__zobss_b04e - __zdata_start)
bss_b050 equ __zdseg_end + (__zobss_b050 - __zdata_start)
bss_b052 equ __zdseg_end + (__zobss_b052 - __zdata_start)
bss_b054 equ __zdseg_end + (__zobss_b054 - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vmnpc/api_idx_0008_JGKT.asm"     ; 0x000e

%include "vmnpc/api_idx_000c_POTM.asm"     ; 0x01d2

%include "vmnpc/add_overlay_item.asm"      ; 0x062d

%include "vmnpc/api_idx_0018_TROH.asm"     ; 0x0727

%include "shared/ovr/queue_marker_overlay.asm"  ; 0x0961

%include "shared/ovr/loc_SSIO.asm"              ; 0x0a56

%include "shared/ovr/redraw_glyph_strip.asm"    ; 0x0ab2

%include "shared/ovr/loc_VNIO.asm"              ; 0x0b30

%include "shared/ovr/redraw_area_set.asm"       ; 0x0b74

%include "shared/ovr/show_area_set.asm"         ; 0x0c96

%include "vmnpc/api_idx_0054_UKJH.asm"     ; 0x0d46

%include "vmnpc/api_idx_0002_IUMT.asm"     ; 0x0dc3

%include "vmnpc/next_text_line.asm"        ; 0x0e15

%include "shared/ovr/loc_KRMP.asm"              ; 0x0ef1

%include "vmnpc/step_party_animation.asm"  ; 0x0f50

run_party_screen_animation.api_idx1 equ step_party_animation
%include "shared/ovr/run_party_screen_animation.asm" ; 0x109f

loc_UTQS.api_idx1 equ step_party_animation
%include "shared/ovr/loc_UTQS.asm"              ; 0x10b6

%include "vmnpc/api_idx_0004_MIJS.asm"     ; 0x10c9

%include "vmnpc/api_idx_0004_RPUO.asm"     ; 0x114d

%include "vmnpc/wait_ticks_abortable.asm"  ; 0x119e

%include "vmnpc/api_idx_0004_THQU.asm"     ; 0x11f8

%include "vmnpc/api_idx_0054_IJQR.asm"     ; 0x128c

%include "vmnpc/loc_MLKO.asm"              ; 0x130b

%include "vmnpc/api_idx_0050_TJLH.asm"     ; 0x13b4

%include "vmnpc/api_idx_005e_SHOL.asm"     ; 0x13ed

%include "vmnpc/api_idx_000c_KGOL.asm"     ; 0x1676

%include "vmnpc/loc_RSHV.asm"              ; 0x1821

%include "vmnpc/loc_MOVJ.asm"              ; 0x1d39

%include "vmnpc/ovmain.asm"                ; 0x21bf

%include "shared/ovr/api_idx_004c_RQSO.asm"     ; 0x21d2

%include "vmnpc/api_idx_0004_PULL.asm"     ; 0x22e7

%include "vmnpc/api_idx_0004_QNRH.asm"     ; 0x2372

%include "vmnpc/loc_LRGG.asm"              ; 0x2472

%include "vmnpc/api_idx_0038_OUTM.asm"     ; 0x24ae

%include "vmnpc/api_idx_0002_OUKN.asm"     ; 0x2768

%include "vmnpc/api_idx_0004_OKNN.asm"     ; 0x28a1

%include "vmnpc/loc_GPUL.asm"              ; 0x2963

%include "vmnpc/api_idx_0008_KNNO.asm"     ; 0x29b1

%include "vmnpc/api_idx_0040_INKU.asm"     ; 0x2b8e

%include "vmnpc/api_idx_0006_SRQN.asm"     ; 0x3773

%include "vmnpc/api_idx_0002_KNHU.asm"     ; 0x38c1

%include "vmnpc/api_idx_0008_HUTJ.asm"     ; 0x3900

%include "vmnpc/api_idx_0004_GGOK.asm"     ; 0x3a96

%include "shared/ovr/api_idx_0018_RGOS.asm"     ; 0x3b9a

%include "shared/ovr/draw_list_rows.asm"        ; 0x3c97

%include "shared/ovr/loc_HTKI.asm"              ; 0x3df9

%include "vmnpc/api_idx_0038_LJHT.asm"     ; 0x3e3a

%include "vmnpc/api_idx_0054_OPNV.asm"     ; 0x4514

%include "vmnpc/loc_VUSH.asm"              ; 0x4775

%include "vmnpc/loc_GOMR.asm"              ; 0x47b9

%include "vmnpc/api_idx_0038_KUIN.asm"     ; 0x47d9

%include "vmnpc/api_idx_004c_OGSK.asm"     ; 0x4fea

%include "vmnpc/api_idx_0002_MIIL.asm"     ; 0x515b

%include "vmnpc/api_idx_0068_OUGS.asm"     ; 0x51bb

%include "vmnpc/api_idx_0004_GJHP.asm"     ; 0x5371

%include "shared/ovr/loc_GMVH.asm"              ; 0x5497

%include "shared/ovr/assign_slot_bit.asm"       ; 0x54b4

%include "vmnpc/api_idx_0008_GUJV.asm"     ; 0x5571

%include "vmnpc/api_idx_0006_RKSL.asm"     ; 0x573e

%include "shared/ovr/replace_slashes_with_spaces.asm" ; 0x57bb

%include "vmnpc/api_idx_005e_KVNO.asm"     ; 0x57e1

%include "vmnpc/api_idx_004e_PHKR.asm"     ; 0x5b74

%include "vmnpc/api_idx_0006_GQUO.asm"     ; 0x5d0e

%include "vmnpc/api_idx_0054_IHKM.asm"     ; 0x5d93

%include "vmnpc/api_idx_0072_KTMQ.asm"     ; 0x5e96

%include "vmnpc/api_idx_005e_QNLK.asm"     ; 0x5fd0

%include "vmnpc/api_idx_00d2_RUSS.asm"     ; 0x631e

%include "vmnpc/api_idx_009c_PTNR.asm"     ; 0x677a

%include "vmnpc/loc_JSTI.asm"              ; 0x6d9d

%include "vmnpc/api_idx_0086_JRHU.asm"     ; 0x6e0f

%include "vmnpc/api_idx_001e_GOQP.asm"     ; 0x70b7

%include "vmnpc/api_idx_0006_MKIU.asm"     ; 0x72bf

%include "vmnpc/loc_LOVI.asm"              ; 0x7400

%include "vmnpc/play_sound_cue.asm"        ; 0x742e

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x7452

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x74d1

api_idx_0004_NIJP equ collect_known_spells
%include "shared/ovr/collect_known_spells.asm"     ; 0x752c

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x759d

%include "shared/ovr/draw_power_digit.asm"      ; 0x75db

loc_IMPO              equ draw_spell_cost
draw_spell_cost.dseg1 equ dseg_90e4
%include "shared/ovr/draw_spell_cost.asm"              ; 0x7667

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x7708

%include "shared/ovr/periodic_party_redraw.asm" ; 0x77a1

%include "vmnpc/loc_UVUO.asm"              ; 0x7832

%include "vmnpc/api_idx_0044_QRMH.asm"     ; 0x786c

%include "vmnpc/api_idx_0006_TLLQ.asm"     ; 0x84f0

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x8550

%include "vmnpc/loc_HOSN.asm"              ; 0x85f9

%include "shared/ovr/loc_SIKN.asm"              ; 0x8662

%include "vmnpc/api_idx_0002_SRQM.asm"     ; 0x86a4

%include "vmnpc/loc_TQJT.asm"              ; 0x86c6

%include "vmnpc/api_idx_0004_JVTH.asm"     ; 0x8738

%include "vmnpc/api_idx_0002_JGQP.asm"     ; 0x8793

%include "vmnpc/api_idx_0006_TMJK.asm"     ; 0x8849

%include "vmnpc/loc_UIIS.asm"              ; 0x8981

%include "vmnpc/api_idx_0058_PMKH.asm"     ; 0x89a8

%include "vmnpc/api_idx_0054_OQIS.asm"     ; 0x8a81

%include "vmnpc/api_idx_0002_NTRU.asm"     ; 0x8bb0

%include "vmnpc/api_idx_0002_UHGS.asm"     ; 0x8be8

%include "shared/ovr/titlecase_string.asm"      ; 0x8c2a

%include "vmnpc/api_idx_0084_VMPP.asm"     ; 0x8c72

%include "vmnpc/api_idx_0002_MRKH.asm"     ; 0x8d86

%include "vmnpc/api_idx_00a6_OTNK.asm"     ; 0x8dbd

%include "vmnpc/api_idx_00a8_PUTL.asm"     ; 0x8ead

%include "vmnpc/api_idx_0004_UMTI.asm"     ; 0x8f85

%include "vmnpc/reveal_text_line.asm"      ; 0x927d

%include "vmnpc/apply_text_control_codes.asm" ; 0x93e7

%include "vmnpc/loc_IPHP.asm"              ; 0x9587

%include "vmnpc/api_idx_0080_TKTP.asm"     ; 0x96c7

%include "vmnpc/api_idx_0100_KHVV.asm"     ; 0x9748

%include "vmnpc/api_idx_00a2_LJUU.asm"     ; 0x9844

%include "vmnpc/loc_PLLR.asm"              ; 0x9a04

%include "vmnpc/api_idx_0002_LIOM.asm"     ; 0x9bcc

%include "vmnpc/loc_OJVU.asm"              ; 0x9c7a

%include "vmnpc/loc_UPRU.asm"              ; 0x9d06

%include "vmnpc/api_idx_0054_SSQP.asm"     ; 0x9d30

%include "vmnpc/loc_LTIS.asm"              ; 0xa29f

%include "vmnpc/api_idx_0002_JOQL.asm"     ; 0xa2e7

%include "vmnpc/api_idx_0002_UVON.asm"     ; 0xa391

%include "vmnpc/api_idx_0002_SLOH.asm"     ; 0xa3dd

%include "vmnpc/api_idx_0002_JNUL.asm"     ; 0xa411

%include "vmnpc/loc_MGPH.asm"              ; 0xa441

%include "vmnpc/api_idx_0016_TOUQ.asm"     ; 0xa546

%include "vmnpc/api_idx_00b0_KPHQ.asm"     ; 0xa837

%include "vmnpc/api_idx_00ba_TUGQ.asm"     ; 0xaa93

%include "vmnpc/api_idx_006a_QKPT.asm"     ; 0xab8d

%include "shared/ovr/aztec_ovbgn.asm"           ; 0xae10

%include "shared/ovr/aztec_strncpy.asm"         ; 0xae4e

loc_LNNU equ aztec_strcmp.loc1
%include "shared/ovr/aztec_strcmp.asm"          ; 0xae76

__zdata_start:
%include "vmnpc/data/dseg_9098.asm"        ; 0xaedd

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
    resb 0x0010
__zobss_9148:
    resb 0x0002
__zobss_914a:
    resb 0x0001
__zobss_914b:
    resb 0x0001
__zobss_914c:
    resb 0x0001
__zobss_914d:
    resb 0x002b
__zobss_9178:
    resb 0x0028
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
    resb 0x0002
__zobss_91ba:
    resb 0x0008
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
    resb 0x0001
__zobss_91cc:
    resb 0x0080
__zobss_924c:
    resb 0x0100
__zobss_934c:
    resb 0x0080
__zobss_93cc:
    resb 0x0002
__zobss_93ce:
    resb 0x0004
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
    resb 0x0002
__zobss_9652:
    resb 0x0002
__zobss_9654:
    resb 0x0026
__zobss_967a:
    resb 0x0002
__zobss_967c:
    resb 0x0026
__zobss_96a2:
    resb 0x0016
__zobss_96b8:
    resb 0x01a2
__zobss_985a:
    resb 0x0002
__zobss_985c:
    resb 0x0026
__zobss_9882:
    resb 0x003c
__zobss_98be:
    resb 0x003c
__zobss_98fa:
    resb 0x001e
__zobss_9918:
    resb 0x001e
__zobss_9936:
    resb 0x0002
__zobss_9938:
    resb 0x0076
__zobss_99ae:
    resb 0x000a
__zobss_99b8:
    resb 0x001e
__zobss_99d6:
    resb 0x0294
__zobss_9c6a:
    resb 0x003c
__zobss_9ca6:
    resb 0x0002
__zobss_9ca8:
    resb 0x0002
__zobss_9caa:
    resb 0x0002
__zobss_9cac:
    resb 0x0026
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
    resb 0x0086
__zobss_9df2:
    resb 0x0050
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
    resb 0x0002
__zobss_9e86:
    resb 0x0002
__zobss_9e88:
    resb 0x0001
__zobss_9e89:
    resb 0x07cd
__zobss_a656:
    resb 0x0002
__zobss_a658:
    resb 0x0064
__zobss_a6bc:
    resb 0x0046
__zobss_a702:
    resb 0x0064
__zobss_a766:
    resb 0x0046
__zobss_a7ac:
    resb 0x000a
__zobss_a7b6:
    resb 0x005a
__zobss_a810:
    resb 0x0046
__zobss_a856:
    resb 0x006e
__zobss_a8c4:
    resb 0x076c
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
