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
    dw (__zdata_start - __zcode_start)       ; 0x9836 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x0348 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0310 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xe835 ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_909b equ __zdseg_end + (__zdseg_909b - __zdata_start)
dseg_90a1 equ __zdseg_end + (__zdseg_90a1 - __zdata_start)
dseg_90a7 equ __zdseg_end + (__zdseg_90a7 - __zdata_start)
dseg_90ab equ __zdseg_end + (__zdseg_90ab - __zdata_start)
dseg_90b1 equ __zdseg_end + (__zdseg_90b1 - __zdata_start)
dseg_90b3 equ __zdseg_end + (__zdseg_90b3 - __zdata_start)
dseg_90c0 equ __zdseg_end + (__zdseg_90c0 - __zdata_start)
dseg_90c2 equ __zdseg_end + (__zdseg_90c2 - __zdata_start)
dseg_90c4 equ __zdseg_end + (__zdseg_90c4 - __zdata_start)
dseg_90c6 equ __zdseg_end + (__zdseg_90c6 - __zdata_start)
dseg_90c8 equ __zdseg_end + (__zdseg_90c8 - __zdata_start)
dseg_90ca equ __zdseg_end + (__zdseg_90ca - __zdata_start)
dseg_90cc equ __zdseg_end + (__zdseg_90cc - __zdata_start)
dseg_90ce equ __zdseg_end + (__zdseg_90ce - __zdata_start)
dseg_90d9 equ __zdseg_end + (__zdseg_90d9 - __zdata_start)
dseg_90e2 equ __zdseg_end + (__zdseg_90e2 - __zdata_start)
dseg_90e9 equ __zdseg_end + (__zdseg_90e9 - __zdata_start)
dseg_90f4 equ __zdseg_end + (__zdseg_90f4 - __zdata_start)
dseg_90ff equ __zdseg_end + (__zdseg_90ff - __zdata_start)
dseg_9108 equ __zdseg_end + (__zdseg_9108 - __zdata_start)
dseg_910f equ __zdseg_end + (__zdseg_910f - __zdata_start)
dseg_911a equ __zdseg_end + (__zdseg_911a - __zdata_start)
dseg_9125 equ __zdseg_end + (__zdseg_9125 - __zdata_start)
dseg_912e equ __zdseg_end + (__zdseg_912e - __zdata_start)
dseg_9135 equ __zdseg_end + (__zdseg_9135 - __zdata_start)
dseg_9140 equ __zdseg_end + (__zdseg_9140 - __zdata_start)
dseg_914b equ __zdseg_end + (__zdseg_914b - __zdata_start)
dseg_9154 equ __zdseg_end + (__zdseg_9154 - __zdata_start)
dseg_915b equ __zdseg_end + (__zdseg_915b - __zdata_start)
dseg_9166 equ __zdseg_end + (__zdseg_9166 - __zdata_start)
dseg_9171 equ __zdseg_end + (__zdseg_9171 - __zdata_start)
dseg_917a equ __zdseg_end + (__zdseg_917a - __zdata_start)
dseg_9181 equ __zdseg_end + (__zdseg_9181 - __zdata_start)
dseg_918c equ __zdseg_end + (__zdseg_918c - __zdata_start)
dseg_9197 equ __zdseg_end + (__zdseg_9197 - __zdata_start)
dseg_91a0 equ __zdseg_end + (__zdseg_91a0 - __zdata_start)
dseg_91a7 equ __zdseg_end + (__zdseg_91a7 - __zdata_start)
dseg_91b2 equ __zdseg_end + (__zdseg_91b2 - __zdata_start)
dseg_91bd equ __zdseg_end + (__zdseg_91bd - __zdata_start)
dseg_91c6 equ __zdseg_end + (__zdseg_91c6 - __zdata_start)
dseg_91cd equ __zdseg_end + (__zdseg_91cd - __zdata_start)
dseg_91d8 equ __zdseg_end + (__zdseg_91d8 - __zdata_start)
dseg_91e3 equ __zdseg_end + (__zdseg_91e3 - __zdata_start)
dseg_91ec equ __zdseg_end + (__zdseg_91ec - __zdata_start)
dseg_91f3 equ __zdseg_end + (__zdseg_91f3 - __zdata_start)
dseg_91fe equ __zdseg_end + (__zdseg_91fe - __zdata_start)
dseg_9209 equ __zdseg_end + (__zdseg_9209 - __zdata_start)
dseg_9212 equ __zdseg_end + (__zdseg_9212 - __zdata_start)
dseg_9219 equ __zdseg_end + (__zdseg_9219 - __zdata_start)
dseg_9224 equ __zdseg_end + (__zdseg_9224 - __zdata_start)
dseg_922f equ __zdseg_end + (__zdseg_922f - __zdata_start)
dseg_9238 equ __zdseg_end + (__zdseg_9238 - __zdata_start)
dseg_923f equ __zdseg_end + (__zdseg_923f - __zdata_start)
dseg_924a equ __zdseg_end + (__zdseg_924a - __zdata_start)
dseg_9255 equ __zdseg_end + (__zdseg_9255 - __zdata_start)
dseg_925e equ __zdseg_end + (__zdseg_925e - __zdata_start)
dseg_9265 equ __zdseg_end + (__zdseg_9265 - __zdata_start)
dseg_9270 equ __zdseg_end + (__zdseg_9270 - __zdata_start)
dseg_927b equ __zdseg_end + (__zdseg_927b - __zdata_start)
dseg_9284 equ __zdseg_end + (__zdseg_9284 - __zdata_start)
dseg_928b equ __zdseg_end + (__zdseg_928b - __zdata_start)
dseg_9296 equ __zdseg_end + (__zdseg_9296 - __zdata_start)
dseg_92a1 equ __zdseg_end + (__zdseg_92a1 - __zdata_start)
dseg_92aa equ __zdseg_end + (__zdseg_92aa - __zdata_start)
dseg_92b1 equ __zdseg_end + (__zdseg_92b1 - __zdata_start)
dseg_92bc equ __zdseg_end + (__zdseg_92bc - __zdata_start)
dseg_92c7 equ __zdseg_end + (__zdseg_92c7 - __zdata_start)
dseg_92d0 equ __zdseg_end + (__zdseg_92d0 - __zdata_start)
dseg_92d7 equ __zdseg_end + (__zdseg_92d7 - __zdata_start)
dseg_92e2 equ __zdseg_end + (__zdseg_92e2 - __zdata_start)
profession_0_stat_requirements equ __zdseg_end + (__zprofession_0_stat_requirements - __zdata_start)
profession_1_stat_requirements equ __zdseg_end + (__zprofession_1_stat_requirements - __zdata_start)
profession_2_stat_requirements equ __zdseg_end + (__zprofession_2_stat_requirements - __zdata_start)
profession_3_stat_requirements equ __zdseg_end + (__zprofession_3_stat_requirements - __zdata_start)
profession_4_stat_requirements equ __zdseg_end + (__zprofession_4_stat_requirements - __zdata_start)
profession_5_stat_requirements equ __zdseg_end + (__zprofession_5_stat_requirements - __zdata_start)
profession_6_stat_requirements equ __zdseg_end + (__zprofession_6_stat_requirements - __zdata_start)
profession_7_stat_requirements equ __zdseg_end + (__zprofession_7_stat_requirements - __zdata_start)
profession_8_stat_requirements equ __zdseg_end + (__zprofession_8_stat_requirements - __zdata_start)
profession_9_stat_requirements equ __zdseg_end + (__zprofession_9_stat_requirements - __zdata_start)
profession_10_stat_requirements equ __zdseg_end + (__zprofession_10_stat_requirements - __zdata_start)
profession_11_stat_requirements equ __zdseg_end + (__zprofession_11_stat_requirements - __zdata_start)
profession_12_stat_requirements equ __zdseg_end + (__zprofession_12_stat_requirements - __zdata_start)
profession_13_stat_requirements equ __zdseg_end + (__zprofession_13_stat_requirements - __zdata_start)
dseg_9366 equ __zdseg_end + (__zdseg_9366 - __zdata_start)
dseg_936f equ __zdseg_end + (__zdseg_936f - __zdata_start)
dseg_9378 equ __zdseg_end + (__zdseg_9378 - __zdata_start)
dseg_9381 equ __zdseg_end + (__zdseg_9381 - __zdata_start)
dseg_938a equ __zdseg_end + (__zdseg_938a - __zdata_start)
dseg_9393 equ __zdseg_end + (__zdseg_9393 - __zdata_start)
dseg_939c equ __zdseg_end + (__zdseg_939c - __zdata_start)
dseg_93a5 equ __zdseg_end + (__zdseg_93a5 - __zdata_start)
dseg_93ae equ __zdseg_end + (__zdseg_93ae - __zdata_start)
dseg_93b7 equ __zdseg_end + (__zdseg_93b7 - __zdata_start)
dseg_93c0 equ __zdseg_end + (__zdseg_93c0 - __zdata_start)
dseg_93c9 equ __zdseg_end + (__zdseg_93c9 - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_93e0 - __zdata_start)
window_record equ __zdseg_end + (__zobss_93e0 - __zdata_start)
bss_93ee equ __zdseg_end + (__zobss_93ee - __zdata_start)
bss_93f0 equ __zdseg_end + (__zobss_93f0 - __zdata_start)
bss_93f2 equ __zdseg_end + (__zobss_93f2 - __zdata_start)
bss_93f4 equ __zdseg_end + (__zobss_93f4 - __zdata_start)
roster_screen_b equ __zdseg_end + (__zobss_93f6 - __zdata_start)
roster_screen_a equ __zdseg_end + (__zobss_93f8 - __zdata_start)
bss_93fa equ __zdseg_end + (__zobss_93fa - __zdata_start)
bss_93fc equ __zdseg_end + (__zobss_93fc - __zdata_start)
bss_93fe equ __zdseg_end + (__zobss_93fe - __zdata_start)
bss_9400 equ __zdseg_end + (__zobss_9400 - __zdata_start)
bss_9402 equ __zdseg_end + (__zobss_9402 - __zdata_start)
bss_9404 equ __zdseg_end + (__zobss_9404 - __zdata_start)
saved_screen equ __zdseg_end + (__zobss_940a - __zdata_start)
bss_940c equ __zdseg_end + (__zobss_940c - __zdata_start)
bss_940e equ __zdseg_end + (__zobss_940e - __zdata_start)
bss_9410 equ __zdseg_end + (__zobss_9410 - __zdata_start)
bss_9412 equ __zdseg_end + (__zobss_9412 - __zdata_start)
bss_9414 equ __zdseg_end + (__zobss_9414 - __zdata_start)
bss_942a equ __zdseg_end + (__zobss_942a - __zdata_start)
bss_942c equ __zdseg_end + (__zobss_942c - __zdata_start)
banner_offset equ __zdseg_end + (__zobss_942e - __zdata_start)
banner_plain_flag equ __zdseg_end + (__zobss_9430 - __zdata_start)
bss_9432 equ __zdseg_end + (__zobss_9432 - __zdata_start)
roster_page equ __zdseg_end + (__zobss_9434 - __zdata_start)
roster_names equ __zdseg_end + (__zobss_9436 - __zdata_start)
known_spell_ids equ __zdseg_end + (__zobss_9512 - __zdata_start)
bss_9562 equ __zdseg_end + (__zobss_9562 - __zdata_start)
bss_9564 equ __zdseg_end + (__zobss_9564 - __zdata_start)
bss_9566 equ __zdseg_end + (__zobss_9566 - __zdata_start)
bss_9568 equ __zdseg_end + (__zobss_9568 - __zdata_start)
bss_956a equ __zdseg_end + (__zobss_956a - __zdata_start)
bss_95ea equ __zdseg_end + (__zobss_95ea - __zdata_start)
roster_row_color equ __zdseg_end + (__zobss_95ec - __zdata_start)
roster_row_attr equ __zdseg_end + (__zobss_9600 - __zdata_start)
roster_alt_mode equ __zdseg_end + (__zobss_9614 - __zdata_start)
bss_9616 equ __zdseg_end + (__zobss_9616 - __zdata_start)
roster_drawn equ __zdseg_end + (__zobss_967a - __zdata_start)
profession_eligible equ __zdseg_end + (__zobss_967c - __zdata_start)
bss_9698 equ __zdseg_end + (__zobss_9698 - __zdata_start)
bss_96d0 equ __zdseg_end + (__zobss_96d0 - __zdata_start)
bss_96dc equ __zdseg_end + (__zobss_96dc - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vpcvw/ovmain.asm"                ; 0x000e

%include "shared/ovr/load_screen_file_immediate.asm" ; 0x0027

%include "shared/ovr/draw_party_glyph_row.asm"  ; 0x008b

api_idx_0012_PJTU equ api_idx_0012_PGSL
%include "shared/ovr/api_idx_0012_PGSL.asm"     ; 0x014b

%include "shared/ovr/api_idx_0004_PMIU.asm"     ; 0x02c7

%include "vpcvw/api_idx_000c_JRTV.asm"     ; 0x037b

%include "vpcvw/api_idx_0012_GQSK.asm"     ; 0x0521

%include "vpcvw/api_idx_0012_SHRT.asm"     ; 0x0781

%include "vpcvw/api_idx_0004_KVIP.asm"     ; 0x09a1

%include "vpcvw/api_idx_0012_MVLS.asm"     ; 0x0a96

%include "shared/ovr/draw_party_slot_letters.asm" ; 0x0cd6

api_idx_0004_RMVO.bss1 equ bss_9404
api_idx_0004_RMVO.bss2 equ bss_9402
%include "shared/ovr/api_idx_0004_RMVO.asm"     ; 0x0d55

%include "shared/ovr/advance_party_slot_frames.asm" ; 0x0e05

%include "shared/ovr/clamp_value_to_range.asm"  ; 0x0e60

%include "shared/ovr/api_idx_0010_STNH.asm"     ; 0x0ea1

draw_title_banner.bss1 equ bss_940c
%include "shared/ovr/draw_title_banner.asm"     ; 0x0f9e

api_idx_007c_OKMO          equ api_idx_007c_MOJH
api_idx_007c_MOJH.bss1     equ bss_93f0
api_idx_007c_MOJH.bss2     equ bss_93ee
api_idx_007c_MOJH.bss3     equ bss_93f4
api_idx_007c_MOJH.bss4     equ bss_93f2
api_idx_007c_MOJH.bss5     equ bss_9432
api_idx_007c_MOJH.api_idx1 equ api_idx_0012_PJTU
%include "shared/ovr/api_idx_007c_MOJH.asm"     ; 0x1046

%include "vpcvw/api_idx_009e_KPST.asm"     ; 0x1894

api_idx_0008_SKNL equ api_idx_0008_JJHR
%include "shared/ovr/api_idx_0008_JJHR.asm"     ; 0x1b17

loc_UGOG       equ loc_TRPK
loc_TRPK.dseg1 equ dseg_909b
loc_TRPK.dseg2 equ dseg_90a1
%include "shared/ovr/loc_TRPK.asm"              ; 0x1ca0

%include "vpcvw/loc_IIRG.asm"              ; 0x2190

%include "shared/ovr/loc_QQUT.asm"              ; 0x21ad

%include "vpcvw/api_idx_0008_NOPG.asm"     ; 0x21fd

api_idx_0004_NONK equ collect_known_spells
%include "shared/ovr/collect_known_spells.asm"     ; 0x297e

%include "shared/ovr/draw_marker_glyph.asm"     ; 0x29ef

%include "shared/ovr/draw_power_digit.asm"      ; 0x2a2d

loc_GPGU              equ draw_spell_cost
draw_spell_cost.dseg1 equ dseg_90a7
%include "shared/ovr/draw_spell_cost.asm"              ; 0x2ab9

%include "shared/ovr/draw_realm_spell_points.asm" ; 0x2b5a

periodic_party_redraw.party_redraw_mode1       equ bss_9562
periodic_party_redraw.draw_realm_spell_points1 equ draw_realm_spell_points
%include "shared/ovr/periodic_party_redraw.asm" ; 0x2bf3

api_idx_0050_QTGU          equ api_idx_0050_MINM
api_idx_0050_MINM.dseg1    equ dseg_90ab
api_idx_0050_MINM.loc1     equ loc_GPGU
api_idx_0050_MINM.api_idx1 equ api_idx_0004_NONK
api_idx_0050_MINM.bss1     equ bss_9562
jumptable_38dd_case_0      equ api_idx_0050_MINM.jumptable_case1
jumptable_38dd_case_1      equ api_idx_0050_MINM.jumptable_case2
jumptable_38dd_case_3      equ api_idx_0050_MINM.jumptable_case3
jumptable_38dd_case_4      equ api_idx_0050_MINM.jumptable_case4
jumptable_38dd             equ api_idx_0050_MINM.jumptable1
%include "shared/ovr/api_idx_0050_MINM.asm"     ; 0x2c84

%include "vpcvw/api_idx_0004_UUMM.asm"     ; 0x3974

%include "vpcvw/loc_NRTK.asm"              ; 0x3a6a

%include "vpcvw/api_idx_0004_UQRV.asm"     ; 0x3aac

%include "vpcvw/api_idx_0084_ILTP.asm"     ; 0x3b66

api_idx_0004_VRNJ          equ api_idx_0004_JQTM
api_idx_0004_JQTM.api_idx1 equ api_idx_0084_ILTP
%include "shared/ovr/api_idx_0004_JQTM.asm"     ; 0x3c18

%include "vpcvw/api_idx_0056_QRVG.asm"     ; 0x3c7b

%include "vpcvw/loc_NKUR.asm"              ; 0x3cde

%include "vpcvw/api_idx_009e_ITUJ.asm"     ; 0x3cfe

loc_TTSP.bss1 equ bss_9562
loc_TTSP.bss2 equ bss_9432
%include "shared/ovr/loc_TTSP.asm"              ; 0x4011

%include "vpcvw/loc_JTQP.asm"              ; 0x40b7

%include "vpcvw/api_idx_0084_LRRN.asm"     ; 0x40ef

%include "vpcvw/api_idx_0048_RGQH.asm"     ; 0x4253

%include "vpcvw/api_idx_004e_LTSQ.asm"     ; 0x42e3

%include "vpcvw/api_idx_0002_MMTM.asm"     ; 0x435b

%include "vpcvw/api_idx_0002_IUPU.asm"     ; 0x4421

%include "vpcvw/api_idx_000e_OJVI.asm"     ; 0x4505

%include "vpcvw/api_idx_0002_USJS.asm"     ; 0x4573

%include "vpcvw/api_idx_0056_KPMS.asm"     ; 0x468b

%include "vpcvw/loc_IHRL.asm"              ; 0x474b

%include "shared/ovr/api_idx_0004_GUSS.asm"     ; 0x4793

%include "vpcvw/api_idx_0048_RUIH.asm"     ; 0x4a1c

%include "vpcvw/api_idx_0072_IPMP.asm"     ; 0x4a3f

%include "vpcvw/api_idx_0002_TJIU.asm"     ; 0x5006

%include "vpcvw/api_idx_0010_GVMH.asm"     ; 0x5050

%include "shared/ovr/api_idx_0008_RQRL.asm"     ; 0x539e

%include "shared/ovr/api_idx_0004_UJRL.asm"     ; 0x542a

%include "vpcvw/api_idx_00c2_OUOT.asm"     ; 0x54fb

%include "vpcvw/api_idx_0014_VORK.asm"     ; 0x616c

%include "shared/ovr/draw_split_two_line_text.asm" ; 0x6977

api_idx_0080_MHMQ.bss1     equ bss_93fc
api_idx_0080_MHMQ.bss2     equ bss_93fa
api_idx_0080_MHMQ.bss3     equ bss_9400
api_idx_0080_MHMQ.bss4     equ bss_93fe
api_idx_0080_MHMQ.api_idx1 equ api_idx_0012_PJTU
%include "shared/ovr/api_idx_0080_MHMQ.asm"     ; 0x6a20

%include "shared/ovr/api_idx_0004_MKGU.asm"     ; 0x6c47

%include "shared/ovr/api_idx_004c_LTUL.asm"     ; 0x6d13

%include "vpcvw/api_idx_009a_KOSH.asm"     ; 0x6f62

%include "vpcvw/api_idx_001a_HRLU.asm"     ; 0x706c

%include "vpcvw/loc_IUTP.asm"              ; 0x70ca

%include "vpcvw/api_idx_0004_IKOQ.asm"     ; 0x82da

api_idx_0004_PONI                   equ api_idx_0004_LOLJ
jumptable_85bc_case_0               equ api_idx_0004_LOLJ.jumptable_case1
api_idx_0004_LOLJ.dseg1             equ dseg_90e9
api_idx_0004_LOLJ.dseg2             equ dseg_90e2
api_idx_0004_LOLJ.dseg3             equ dseg_90d9
api_idx_0004_LOLJ.dseg4             equ dseg_90ce
api_idx_0004_LOLJ.api_idx1          equ api_idx_0004_IKOQ
jumptable_85bc_case_1               equ api_idx_0004_LOLJ.jumptable_case2
api_idx_0004_LOLJ.dseg5             equ dseg_910f
api_idx_0004_LOLJ.dseg6             equ dseg_9108
api_idx_0004_LOLJ.dseg7             equ dseg_90ff
api_idx_0004_LOLJ.dseg8             equ dseg_90f4
jumptable_85bc_case_2               equ api_idx_0004_LOLJ.jumptable_case3
api_idx_0004_LOLJ.dseg9             equ dseg_9135
api_idx_0004_LOLJ.dseg10            equ dseg_912e
api_idx_0004_LOLJ.dseg11            equ dseg_9125
api_idx_0004_LOLJ.dseg12            equ dseg_911a
jumptable_85bc_case_3               equ api_idx_0004_LOLJ.jumptable_case4
api_idx_0004_LOLJ.dseg13            equ dseg_915b
api_idx_0004_LOLJ.dseg14            equ dseg_9154
api_idx_0004_LOLJ.dseg15            equ dseg_914b
api_idx_0004_LOLJ.dseg16            equ dseg_9140
jumptable_85bc_case_4               equ api_idx_0004_LOLJ.jumptable_case5
api_idx_0004_LOLJ.dseg17            equ dseg_9181
api_idx_0004_LOLJ.dseg18            equ dseg_917a
api_idx_0004_LOLJ.dseg19            equ dseg_9171
api_idx_0004_LOLJ.dseg20            equ dseg_9166
jumptable_85bc_case_5               equ api_idx_0004_LOLJ.jumptable_case6
api_idx_0004_LOLJ.dseg21            equ dseg_91a7
api_idx_0004_LOLJ.dseg22            equ dseg_91a0
api_idx_0004_LOLJ.dseg23            equ dseg_9197
api_idx_0004_LOLJ.dseg24            equ dseg_918c
jumptable_85bc_case_6               equ api_idx_0004_LOLJ.jumptable_case7
api_idx_0004_LOLJ.dseg25            equ dseg_91cd
api_idx_0004_LOLJ.dseg26            equ dseg_91c6
api_idx_0004_LOLJ.dseg27            equ dseg_91bd
api_idx_0004_LOLJ.dseg28            equ dseg_91b2
jumptable_85bc_case_7               equ api_idx_0004_LOLJ.jumptable_case8
api_idx_0004_LOLJ.dseg29            equ dseg_91f3
api_idx_0004_LOLJ.dseg30            equ dseg_91ec
api_idx_0004_LOLJ.dseg31            equ dseg_91e3
api_idx_0004_LOLJ.dseg32            equ dseg_91d8
jumptable_85bc_case_8               equ api_idx_0004_LOLJ.jumptable_case9
api_idx_0004_LOLJ.dseg33            equ dseg_9219
api_idx_0004_LOLJ.dseg34            equ dseg_9212
api_idx_0004_LOLJ.dseg35            equ dseg_9209
api_idx_0004_LOLJ.dseg36            equ dseg_91fe
jumptable_85bc_case_9               equ api_idx_0004_LOLJ.jumptable_case10
api_idx_0004_LOLJ.dseg37            equ dseg_923f
api_idx_0004_LOLJ.dseg38            equ dseg_9238
api_idx_0004_LOLJ.dseg39            equ dseg_922f
api_idx_0004_LOLJ.dseg40            equ dseg_9224
jumptable_85bc_case_10              equ api_idx_0004_LOLJ.jumptable_case11
api_idx_0004_LOLJ.dseg41            equ dseg_9265
api_idx_0004_LOLJ.dseg42            equ dseg_925e
api_idx_0004_LOLJ.dseg43            equ dseg_9255
api_idx_0004_LOLJ.dseg44            equ dseg_924a
jumptable_85bc_case_11              equ api_idx_0004_LOLJ.jumptable_case12
api_idx_0004_LOLJ.dseg45            equ dseg_928b
api_idx_0004_LOLJ.dseg46            equ dseg_9284
api_idx_0004_LOLJ.dseg47            equ dseg_927b
api_idx_0004_LOLJ.dseg48            equ dseg_9270
jumptable_85bc_case_12              equ api_idx_0004_LOLJ.jumptable_case13
api_idx_0004_LOLJ.dseg49            equ dseg_92b1
api_idx_0004_LOLJ.dseg50            equ dseg_92aa
api_idx_0004_LOLJ.dseg51            equ dseg_92a1
api_idx_0004_LOLJ.dseg52            equ dseg_9296
jumptable_85bc_case_13              equ api_idx_0004_LOLJ.jumptable_case14
api_idx_0004_LOLJ.dseg53            equ dseg_92d7
api_idx_0004_LOLJ.dseg54            equ dseg_92d0
api_idx_0004_LOLJ.dseg55            equ dseg_92c7
api_idx_0004_LOLJ.dseg56            equ dseg_92bc
jumptable_85bc                      equ api_idx_0004_LOLJ.jumptable1
api_idx_0004_LOLJ.bss1              equ bss_96d0
api_idx_0004_LOLJ.bss2              equ bss_9698
api_idx_0004_LOLJ.slot_prompt_text1 equ bss_96dc
%include "shared/ovr/api_idx_0004_LOLJ.asm"     ; 0x8421

%include "shared/ovr/draw_known_spell_values.asm" ; 0x8676

%include "shared/ovr/api_idx_0058_GKGM.asm"     ; 0x8730

%include "shared/ovr/input_text_field.asm"      ; 0x88b6

api_idx_0026_QIGS       equ api_idx_0026_NRVO
api_idx_0026_NRVO.dseg1 equ dseg_92e2
%include "shared/ovr/api_idx_0026_NRVO.asm"     ; 0x8a6e

%include "vpcvw/api_idx_0002_VLGM.asm"     ; 0x8f64

%include "vpcvw/evaluate_profession_stat_minimums.asm" ; 0x8fb8

%include "vpcvw/evaluate_character_profession.asm" ; 0x902e

evaluate_character_professions.check_profession_requirements1 equ evaluate_character_profession
%include "shared/ovr/evaluate_character_professions.asm" ; 0x91b2

jumptable_928f_case_0  equ loc_SRNN.jumptable_case1
loc_SRNN.dseg1         equ dseg_9366
loc_SRNN.api_idx1      equ api_idx_0002_VLGM
jumptable_928f_case_1  equ loc_SRNN.jumptable_case2
loc_SRNN.dseg2         equ dseg_936f
jumptable_928f_case_2  equ loc_SRNN.jumptable_case3
loc_SRNN.dseg3         equ dseg_9378
jumptable_928f_case_3  equ loc_SRNN.jumptable_case4
loc_SRNN.dseg4         equ dseg_9381
jumptable_928f_case_4  equ loc_SRNN.jumptable_case5
loc_SRNN.dseg5         equ dseg_938a
jumptable_928f_case_5  equ loc_SRNN.jumptable_case6
loc_SRNN.dseg6         equ dseg_9393
jumptable_928f_case_6  equ loc_SRNN.jumptable_case7
loc_SRNN.dseg7         equ dseg_939c
jumptable_928f_case_7  equ loc_SRNN.jumptable_case8
loc_SRNN.dseg8         equ dseg_93a5
jumptable_928f_case_8  equ loc_SRNN.jumptable_case9
loc_SRNN.dseg9         equ dseg_93ae
jumptable_928f_case_9  equ loc_SRNN.jumptable_case10
loc_SRNN.dseg10        equ dseg_93b7
jumptable_928f_case_10 equ loc_SRNN.jumptable_case11
loc_SRNN.dseg11        equ dseg_93c0
jumptable_928f         equ loc_SRNN.jumptable1
%include "shared/ovr/loc_SRNN.asm"              ; 0x91d9

%include "vpcvw/api_idx_0030_TGOH.asm"     ; 0x92b3

api_idx_0016_TVKP       equ api_idx_0016_JNJG
api_idx_0016_JNJG.dseg1 equ dseg_93c9
%include "shared/ovr/api_idx_0016_JNJG.asm"     ; 0x9434

%include "vpcvw/api_idx_0022_PNPP.asm"     ; 0x9491

%include "vpcvw/api_idx_000e_ORVT.asm"     ; 0x96d5

%include "vpcvw/api_idx_0018_VTUP.asm"     ; 0x9740

%include "shared/ovr/aztec_ovbgn.asm"           ; 0x97ee

%include "shared/ovr/aztec_cswt.asm"            ; 0x982c

__zdata_start:
%include "vpcvw/data/dseg_9098.asm"        ; 0x9844

%include "shared/data/profession_0_stat_requirements.asm" ; 0x9a94

%include "shared/data/profession_1_stat_requirements.asm" ; 0x9a9d

%include "shared/data/profession_2_stat_requirements.asm" ; 0x9aa6

%include "shared/data/profession_3_stat_requirements.asm" ; 0x9aaf

%include "shared/data/profession_4_stat_requirements.asm" ; 0x9ab8

%include "shared/data/profession_5_stat_requirements.asm" ; 0x9ac1

%include "shared/data/profession_6_stat_requirements.asm" ; 0x9aca

%include "shared/data/profession_7_stat_requirements.asm" ; 0x9ad3

%include "shared/data/profession_8_stat_requirements.asm" ; 0x9adc

%include "shared/data/profession_9_stat_requirements.asm" ; 0x9ae5

%include "shared/data/profession_10_stat_requirements.asm" ; 0x9aee

%include "shared/data/profession_11_stat_requirements.asm" ; 0x9af7

%include "shared/data/profession_12_stat_requirements.asm" ; 0x9b00

%include "shared/data/profession_13_stat_requirements.asm" ; 0x9b09

%include "vpcvw/data/dseg_9366.asm"        ; 0x9b12

%include "shared/data/save_si.asm"          ; 0x9b82

%include "shared/data/save_di.asm"          ; 0x9b84

%include "shared/data/save_sp.asm"          ; 0x9b86

%include "shared/data/save_bp.asm"          ; 0x9b88

%include "shared/data/save_ret.asm"         ; 0x9b8a


__zimage_end:
absolute __zimage_end
__zobss_93e0:
    resb 0x000e
__zobss_93ee:
    resb 0x0002
__zobss_93f0:
    resb 0x0002
__zobss_93f2:
    resb 0x0002
__zobss_93f4:
    resb 0x0002
__zobss_93f6:
    resb 0x0002
__zobss_93f8:
    resb 0x0002
__zobss_93fa:
    resb 0x0002
__zobss_93fc:
    resb 0x0002
__zobss_93fe:
    resb 0x0002
__zobss_9400:
    resb 0x0002
__zobss_9402:
    resb 0x0002
__zobss_9404:
    resb 0x0006
__zobss_940a:
    resb 0x0002
__zobss_940c:
    resb 0x0002
__zobss_940e:
    resb 0x0002
__zobss_9410:
    resb 0x0002
__zobss_9412:
    resb 0x0002
__zobss_9414:
    resb 0x0016
__zobss_942a:
    resb 0x0002
__zobss_942c:
    resb 0x0002
__zobss_942e:
    resb 0x0002
__zobss_9430:
    resb 0x0002
__zobss_9432:
    resb 0x0002
__zobss_9434:
    resb 0x0002
__zobss_9436:
    resb 0x00dc
__zobss_9512:
    resb 0x0050
__zobss_9562:
    resb 0x0002
__zobss_9564:
    resb 0x0002
__zobss_9566:
    resb 0x0002
__zobss_9568:
    resb 0x0002
__zobss_956a:
    resb 0x0080
__zobss_95ea:
    resb 0x0002
__zobss_95ec:
    resb 0x0014
__zobss_9600:
    resb 0x0014
__zobss_9614:
    resb 0x0002
__zobss_9616:
    resb 0x0064
__zobss_967a:
    resb 0x0002
__zobss_967c:
    resb 0x001c
__zobss_9698:
    resb 0x0038
__zobss_96d0:
    resb 0x000c
__zobss_96dc:
    resb 0x0014
__zobss_end:
