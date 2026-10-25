; auto-generated
bits 16
%include "include/structs.inc"
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
    dw (__zdata_start - __zcode_start)       ; 0x7023 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x048c ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0268 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xbfd3 ; o_entry: overlay entry offset (CS)

__zcode_start:

%include "vpcmk/ovmain.asm"                ; 0x000e

%include "shared/game/api_idx_0002_OOKN.asm"     ; 0x0021

dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
%include "shared/game/api_idx_0002_SJMT.asm"     ; 0x0085

%include "shared/game/input_text_field.asm"      ; 0x0104

api_idx_0008_VRRI equ api_idx_0008_JJHR
%include "shared/game/api_idx_0008_JJHR.asm"     ; 0x02bc

dseg_90a3 equ __zdseg_end + (__zdseg_90a3 - __zdata_start)
dseg_90a9 equ __zdseg_end + (__zdseg_90a9 - __zdata_start)
loc_TRPK.dseg1 equ dseg_90a3
loc_TRPK.dseg2 equ dseg_90a9
%include "shared/game/loc_TRPK.asm"              ; 0x0445

%include "shared/game/api_idx_0058_GKGM.asm"     ; 0x0935

dseg_90af equ __zdseg_end + (__zdseg_90af - __zdata_start)
api_idx_0038_LTUV.dseg1 equ dseg_90af
jumptable_11b9_case_0   equ api_idx_0038_LTUV.jumptable_case1
jumptable_11b9_case_1   equ api_idx_0038_LTUV.jumptable_case2
jumptable_11b9_case_3   equ api_idx_0038_LTUV.jumptable_case3
jumptable_11b9_case_4   equ api_idx_0038_LTUV.jumptable_case4
jumptable_11b9_case_5   equ api_idx_0038_LTUV.jumptable_case5
jumptable_11b9          equ api_idx_0038_LTUV.jumptable1
%include "shared/game/api_idx_0038_LTUV.asm"     ; 0x0abb

dseg_90b5 equ __zdseg_end + (__zdseg_90b5 - __zdata_start)
api_idx_0026_NRVO.dseg1 equ dseg_90b5
%include "shared/game/api_idx_0026_NRVO.asm"     ; 0x11f4

%include "shared/game/draw_party_slot_letters.asm" ; 0x16ea

bss_9538 equ __zdseg_end + (__zobss_9538 - __zdata_start)
bss_953a equ __zdseg_end + (__zobss_953a - __zdata_start)
api_idx_0004_RMVO.bss1 equ bss_953a
api_idx_0004_RMVO.bss2 equ bss_9538
%include "shared/game/api_idx_0004_RMVO.asm"     ; 0x1769

%include "shared/game/api_idx_0002_TIUI.asm"     ; 0x1819

%include "shared/game/api_idx_0002_UIHS.asm"     ; 0x1874

%include "vpcmk/api_idx_0010_GGGV.asm"     ; 0x18b5

bss_953c equ __zdseg_end + (__zobss_953c - __zdata_start)
bss_953e equ __zdseg_end + (__zobss_953e - __zdata_start)
bss_9544 equ __zdseg_end + (__zobss_9544 - __zdata_start)
bss_9594 equ __zdseg_end + (__zobss_9594 - __zdata_start)
bss_9596 equ __zdseg_end + (__zobss_9596 - __zdata_start)
%include "vpcmk/api_idx_0002_SSJN.asm"     ; 0x19ab

saved_screen      equ __zdseg_end + (__zobss_9540 - __zdata_start)
banner_offset     equ __zdseg_end + (__zobss_95aa - __zdata_start)
banner_plain_flag equ __zdseg_end + (__zobss_95ac - __zdata_start)
%include "shared/game/draw_title_banner.asm"     ; 0x1a98

dseg_90bb         equ __zdseg_end + (__zdseg_90bb - __zdata_start)
bss_9524          equ __zdseg_end + (__zobss_9524 - __zdata_start)
bss_9526          equ __zdseg_end + (__zobss_9526 - __zdata_start)
bss_9528          equ __zdseg_end + (__zobss_9528 - __zdata_start)
bss_952a          equ __zdseg_end + (__zobss_952a - __zdata_start)
; banner_offset     equ __zdseg_end + (__zobss_95aa - __zdata_start)
; banner_plain_flag equ __zdseg_end + (__zobss_95ac - __zdata_start)
bss_95ae          equ __zdseg_end + (__zobss_95ae - __zdata_start)
%include "vpcmk/api_idx_0054_RLST.asm"     ; 0x1b40

%include "shared/game/api_idx_0004_PMIU.asm"     ; 0x2090

bss_95b0 equ __zdseg_end + (__zobss_95b0 - __zdata_start)
api_idx_0004_GRKI      equ api_idx_0004_GRGJ
api_idx_0004_GRGJ.bss1 equ bss_95b0
%include "shared/game/api_idx_0004_GRGJ.asm"     ; 0x2144

dseg_90be        equ __zdseg_end + (__zdseg_90be - __zdata_start)
dseg_90c9        equ __zdseg_end + (__zdseg_90c9 - __zdata_start)
dseg_90d2        equ __zdseg_end + (__zdseg_90d2 - __zdata_start)
dseg_90d9        equ __zdseg_end + (__zdseg_90d9 - __zdata_start)
dseg_90e4        equ __zdseg_end + (__zdseg_90e4 - __zdata_start)
dseg_90ef        equ __zdseg_end + (__zdseg_90ef - __zdata_start)
dseg_90f8        equ __zdseg_end + (__zdseg_90f8 - __zdata_start)
dseg_90ff        equ __zdseg_end + (__zdseg_90ff - __zdata_start)
dseg_910a        equ __zdseg_end + (__zdseg_910a - __zdata_start)
dseg_9115        equ __zdseg_end + (__zdseg_9115 - __zdata_start)
dseg_911e        equ __zdseg_end + (__zdseg_911e - __zdata_start)
dseg_9125        equ __zdseg_end + (__zdseg_9125 - __zdata_start)
dseg_9130        equ __zdseg_end + (__zdseg_9130 - __zdata_start)
dseg_913b        equ __zdseg_end + (__zdseg_913b - __zdata_start)
dseg_9144        equ __zdseg_end + (__zdseg_9144 - __zdata_start)
dseg_914b        equ __zdseg_end + (__zdseg_914b - __zdata_start)
dseg_9156        equ __zdseg_end + (__zdseg_9156 - __zdata_start)
dseg_9161        equ __zdseg_end + (__zdseg_9161 - __zdata_start)
dseg_916a        equ __zdseg_end + (__zdseg_916a - __zdata_start)
dseg_9171        equ __zdseg_end + (__zdseg_9171 - __zdata_start)
dseg_917c        equ __zdseg_end + (__zdseg_917c - __zdata_start)
dseg_9187        equ __zdseg_end + (__zdseg_9187 - __zdata_start)
dseg_9190        equ __zdseg_end + (__zdseg_9190 - __zdata_start)
dseg_9197        equ __zdseg_end + (__zdseg_9197 - __zdata_start)
dseg_91a2        equ __zdseg_end + (__zdseg_91a2 - __zdata_start)
dseg_91ad        equ __zdseg_end + (__zdseg_91ad - __zdata_start)
dseg_91b6        equ __zdseg_end + (__zdseg_91b6 - __zdata_start)
dseg_91bd        equ __zdseg_end + (__zdseg_91bd - __zdata_start)
dseg_91c8        equ __zdseg_end + (__zdseg_91c8 - __zdata_start)
dseg_91d3        equ __zdseg_end + (__zdseg_91d3 - __zdata_start)
dseg_91dc        equ __zdseg_end + (__zdseg_91dc - __zdata_start)
dseg_91e3        equ __zdseg_end + (__zdseg_91e3 - __zdata_start)
dseg_91ee        equ __zdseg_end + (__zdseg_91ee - __zdata_start)
dseg_91f9        equ __zdseg_end + (__zdseg_91f9 - __zdata_start)
dseg_9202        equ __zdseg_end + (__zdseg_9202 - __zdata_start)
dseg_9209        equ __zdseg_end + (__zdseg_9209 - __zdata_start)
dseg_9214        equ __zdseg_end + (__zdseg_9214 - __zdata_start)
dseg_921f        equ __zdseg_end + (__zdseg_921f - __zdata_start)
dseg_9228        equ __zdseg_end + (__zdseg_9228 - __zdata_start)
dseg_922f        equ __zdseg_end + (__zdseg_922f - __zdata_start)
dseg_923a        equ __zdseg_end + (__zdseg_923a - __zdata_start)
dseg_9245        equ __zdseg_end + (__zdseg_9245 - __zdata_start)
dseg_924e        equ __zdseg_end + (__zdseg_924e - __zdata_start)
dseg_9255        equ __zdseg_end + (__zdseg_9255 - __zdata_start)
dseg_9260        equ __zdseg_end + (__zdseg_9260 - __zdata_start)
dseg_926b        equ __zdseg_end + (__zdseg_926b - __zdata_start)
dseg_9274        equ __zdseg_end + (__zdseg_9274 - __zdata_start)
dseg_927b        equ __zdseg_end + (__zdseg_927b - __zdata_start)
dseg_9286        equ __zdseg_end + (__zdseg_9286 - __zdata_start)
dseg_9291        equ __zdseg_end + (__zdseg_9291 - __zdata_start)
dseg_929a        equ __zdseg_end + (__zdseg_929a - __zdata_start)
dseg_92a1        equ __zdseg_end + (__zdseg_92a1 - __zdata_start)
dseg_92ac        equ __zdseg_end + (__zdseg_92ac - __zdata_start)
dseg_92b7        equ __zdseg_end + (__zdseg_92b7 - __zdata_start)
dseg_92c0        equ __zdseg_end + (__zdseg_92c0 - __zdata_start)
dseg_92c7        equ __zdseg_end + (__zdseg_92c7 - __zdata_start)
; bss_95b0         equ __zdseg_end + (__zobss_95b0 - __zdata_start)
bss_95e8         equ __zdseg_end + (__zobss_95e8 - __zdata_start)
slot_prompt_text equ __zdseg_end + (__zobss_95f4 - __zdata_start)
api_idx_0004_SNNO                   equ api_idx_0004_LOLJ
jumptable_240e_case_0               equ api_idx_0004_LOLJ.jumptable_case1
api_idx_0004_LOLJ.dseg1             equ dseg_90d9
api_idx_0004_LOLJ.dseg2             equ dseg_90d2
api_idx_0004_LOLJ.dseg3             equ dseg_90c9
api_idx_0004_LOLJ.dseg4             equ dseg_90be
api_idx_0004_LOLJ.api_idx1          equ api_idx_0004_GRKI
jumptable_240e_case_1               equ api_idx_0004_LOLJ.jumptable_case2
api_idx_0004_LOLJ.dseg5             equ dseg_90ff
api_idx_0004_LOLJ.dseg6             equ dseg_90f8
api_idx_0004_LOLJ.dseg7             equ dseg_90ef
api_idx_0004_LOLJ.dseg8             equ dseg_90e4
jumptable_240e_case_2               equ api_idx_0004_LOLJ.jumptable_case3
api_idx_0004_LOLJ.dseg9             equ dseg_9125
api_idx_0004_LOLJ.dseg10            equ dseg_911e
api_idx_0004_LOLJ.dseg11            equ dseg_9115
api_idx_0004_LOLJ.dseg12            equ dseg_910a
jumptable_240e_case_3               equ api_idx_0004_LOLJ.jumptable_case4
api_idx_0004_LOLJ.dseg13            equ dseg_914b
api_idx_0004_LOLJ.dseg14            equ dseg_9144
api_idx_0004_LOLJ.dseg15            equ dseg_913b
api_idx_0004_LOLJ.dseg16            equ dseg_9130
jumptable_240e_case_4               equ api_idx_0004_LOLJ.jumptable_case5
api_idx_0004_LOLJ.dseg17            equ dseg_9171
api_idx_0004_LOLJ.dseg18            equ dseg_916a
api_idx_0004_LOLJ.dseg19            equ dseg_9161
api_idx_0004_LOLJ.dseg20            equ dseg_9156
jumptable_240e_case_5               equ api_idx_0004_LOLJ.jumptable_case6
api_idx_0004_LOLJ.dseg21            equ dseg_9197
api_idx_0004_LOLJ.dseg22            equ dseg_9190
api_idx_0004_LOLJ.dseg23            equ dseg_9187
api_idx_0004_LOLJ.dseg24            equ dseg_917c
jumptable_240e_case_6               equ api_idx_0004_LOLJ.jumptable_case7
api_idx_0004_LOLJ.dseg25            equ dseg_91bd
api_idx_0004_LOLJ.dseg26            equ dseg_91b6
api_idx_0004_LOLJ.dseg27            equ dseg_91ad
api_idx_0004_LOLJ.dseg28            equ dseg_91a2
jumptable_240e_case_7               equ api_idx_0004_LOLJ.jumptable_case8
api_idx_0004_LOLJ.dseg29            equ dseg_91e3
api_idx_0004_LOLJ.dseg30            equ dseg_91dc
api_idx_0004_LOLJ.dseg31            equ dseg_91d3
api_idx_0004_LOLJ.dseg32            equ dseg_91c8
jumptable_240e_case_8               equ api_idx_0004_LOLJ.jumptable_case9
api_idx_0004_LOLJ.dseg33            equ dseg_9209
api_idx_0004_LOLJ.dseg34            equ dseg_9202
api_idx_0004_LOLJ.dseg35            equ dseg_91f9
api_idx_0004_LOLJ.dseg36            equ dseg_91ee
jumptable_240e_case_9               equ api_idx_0004_LOLJ.jumptable_case10
api_idx_0004_LOLJ.dseg37            equ dseg_922f
api_idx_0004_LOLJ.dseg38            equ dseg_9228
api_idx_0004_LOLJ.dseg39            equ dseg_921f
api_idx_0004_LOLJ.dseg40            equ dseg_9214
jumptable_240e_case_10              equ api_idx_0004_LOLJ.jumptable_case11
api_idx_0004_LOLJ.dseg41            equ dseg_9255
api_idx_0004_LOLJ.dseg42            equ dseg_924e
api_idx_0004_LOLJ.dseg43            equ dseg_9245
api_idx_0004_LOLJ.dseg44            equ dseg_923a
jumptable_240e_case_11              equ api_idx_0004_LOLJ.jumptable_case12
api_idx_0004_LOLJ.dseg45            equ dseg_927b
api_idx_0004_LOLJ.dseg46            equ dseg_9274
api_idx_0004_LOLJ.dseg47            equ dseg_926b
api_idx_0004_LOLJ.dseg48            equ dseg_9260
jumptable_240e_case_12              equ api_idx_0004_LOLJ.jumptable_case13
api_idx_0004_LOLJ.dseg49            equ dseg_92a1
api_idx_0004_LOLJ.dseg50            equ dseg_929a
api_idx_0004_LOLJ.dseg51            equ dseg_9291
api_idx_0004_LOLJ.dseg52            equ dseg_9286
jumptable_240e_case_13              equ api_idx_0004_LOLJ.jumptable_case14
api_idx_0004_LOLJ.dseg53            equ dseg_92c7
api_idx_0004_LOLJ.dseg54            equ dseg_92c0
api_idx_0004_LOLJ.dseg55            equ dseg_92b7
api_idx_0004_LOLJ.dseg56            equ dseg_92ac
jumptable_240e                      equ api_idx_0004_LOLJ.jumptable1
api_idx_0004_LOLJ.bss1              equ bss_95e8
api_idx_0004_LOLJ.bss2              equ bss_95b0
api_idx_0004_LOLJ.slot_prompt_text1 equ slot_prompt_text
%include "shared/game/api_idx_0004_LOLJ.asm"     ; 0x2273

bss_952c equ __zdseg_end + (__zobss_952c - __zdata_start)
bss_952e equ __zdseg_end + (__zobss_952e - __zdata_start)
api_idx_0002_OGRO.roster_screen_a1 equ bss_952e
api_idx_0002_OGRO.roster_screen_b1 equ bss_952c
%include "shared/game/api_idx_0002_OGRO.asm"     ; 0x24c8

; slot_prompt_text equ __zdseg_end + (__zobss_95f4 - __zdata_start)
slot_value       equ __zdseg_end + (__zobss_9608 - __zdata_start)
api_idx_002e_JGHT equ api_idx_002e_ILPL
%include "shared/game/api_idx_002e_ILPL.asm"     ; 0x2582

; slot_value equ __zdseg_end + (__zobss_9608 - __zdata_start)
slot_label equ __zdseg_end + (__zobss_9610 - __zdata_start)
slot_limit equ __zdseg_end + (__zobss_96d8 - __zdata_start)
api_idx_0032_HGIM.api_idx1 equ api_idx_002e_JGHT
%include "shared/game/api_idx_0032_HGIM.asm"     ; 0x26f1

; bss_95b0   equ __zdseg_end + (__zobss_95b0 - __zdata_start)
; slot_label equ __zdseg_end + (__zobss_9610 - __zdata_start)
; slot_limit equ __zdseg_end + (__zobss_96d8 - __zdata_start)
%include "vpcmk/api_idx_0088_QLNT.asm"     ; 0x2c15

bss_971c equ __zdseg_end + (__zobss_971c - __zdata_start)
api_idx_0004_VQQR                      equ collect_known_spells
collect_known_spells.known_spell_list1 equ bss_971c
%include "shared/game/collect_known_spells.asm"     ; 0x2d63

%include "shared/game/draw_marker_glyph.asm"     ; 0x2dd4

%include "shared/game/draw_power_digit.asm"      ; 0x2e12

dseg_92d2 equ __zdseg_end + (__zdseg_92d2 - __zdata_start)
loc_HRLN              equ draw_spell_cost
draw_spell_cost.dseg1 equ dseg_92d2
%include "shared/game/draw_spell_cost.asm"              ; 0x2e9e

%include "shared/game/draw_realm_spell_points.asm" ; 0x2f3f

bss_976c equ __zdseg_end + (__zobss_976c - __zdata_start)
periodic_party_redraw.party_redraw_mode1 equ bss_976c
periodic_party_redraw.api_idx1           equ draw_realm_spell_points
%include "shared/game/periodic_party_redraw.asm" ; 0x2fd8

dseg_92d6 equ __zdseg_end + (__zdseg_92d6 - __zdata_start)
; bss_971c  equ __zdseg_end + (__zobss_971c - __zdata_start)
; bss_976c  equ __zdseg_end + (__zobss_976c - __zdata_start)
api_idx_0050_NHHL          equ api_idx_0050_MINM
api_idx_0050_MINM.dseg1    equ dseg_92d6
api_idx_0050_MINM.loc1     equ loc_HRLN
api_idx_0050_MINM.api_idx1 equ api_idx_0004_VQQR
api_idx_0050_MINM.bss1     equ bss_976c
jumptable_3cc2_case_0      equ api_idx_0050_MINM.jumptable_case1
jumptable_3cc2_case_1      equ api_idx_0050_MINM.jumptable_case2
jumptable_3cc2_case_3      equ api_idx_0050_MINM.jumptable_case3
jumptable_3cc2_case_4      equ api_idx_0050_MINM.jumptable_case4
api_idx_0050_MINM.bss2     equ bss_971c
jumptable_3cc2             equ api_idx_0050_MINM.jumptable1
%include "shared/game/api_idx_0050_MINM.asm"     ; 0x3069

%include "vpcmk/api_idx_006e_LVOK.asm"     ; 0x3d59

; bss_95ae equ __zdseg_end + (__zobss_95ae - __zdata_start)
; bss_976c equ __zdseg_end + (__zobss_976c - __zdata_start)
loc_TTSP.bss1 equ bss_976c
loc_TTSP.bss2 equ bss_95ae
%include "shared/game/loc_TTSP.asm"              ; 0x3f87

%include "vpcmk/api_idx_0002_IRKS.asm"     ; 0x402d

; bss_9594 equ __zdseg_end + (__zobss_9594 - __zdata_start)
bss_976e equ __zdseg_end + (__zobss_976e - __zdata_start)
%include "vpcmk/api_idx_0006_SKNL.asm"     ; 0x4081

dseg_92dc equ __zdseg_end + (__zdseg_92dc - __zdata_start)
dseg_92e5 equ __zdseg_end + (__zdseg_92e5 - __zdata_start)
dseg_92ee equ __zdseg_end + (__zdseg_92ee - __zdata_start)
dseg_92f7 equ __zdseg_end + (__zdseg_92f7 - __zdata_start)
dseg_9300 equ __zdseg_end + (__zdseg_9300 - __zdata_start)
dseg_9309 equ __zdseg_end + (__zdseg_9309 - __zdata_start)
dseg_9312 equ __zdseg_end + (__zdseg_9312 - __zdata_start)
dseg_931b equ __zdseg_end + (__zdseg_931b - __zdata_start)
dseg_9324 equ __zdseg_end + (__zdseg_9324 - __zdata_start)
dseg_932d equ __zdseg_end + (__zdseg_932d - __zdata_start)
dseg_9336 equ __zdseg_end + (__zdseg_9336 - __zdata_start)
dseg_933f equ __zdseg_end + (__zdseg_933f - __zdata_start)
dseg_9348 equ __zdseg_end + (__zdseg_9348 - __zdata_start)
dseg_9351 equ __zdseg_end + (__zdseg_9351 - __zdata_start)
; bss_976e  equ __zdseg_end + (__zobss_976e - __zdata_start)
%include "vpcmk/loc_UMTI.asm"              ; 0x4107

api_idx_0002_MPHM.loc1 equ loc_UMTI
%include "shared/game/api_idx_0002_MPHM.asm"     ; 0x4291

dseg_935a equ __zdseg_end + (__zdseg_935a - __zdata_start)
dseg_9363 equ __zdseg_end + (__zdseg_9363 - __zdata_start)
dseg_936c equ __zdseg_end + (__zdseg_936c - __zdata_start)
dseg_9375 equ __zdseg_end + (__zdseg_9375 - __zdata_start)
dseg_937e equ __zdseg_end + (__zdseg_937e - __zdata_start)
dseg_9387 equ __zdseg_end + (__zdseg_9387 - __zdata_start)
dseg_9390 equ __zdseg_end + (__zdseg_9390 - __zdata_start)
dseg_9399 equ __zdseg_end + (__zdseg_9399 - __zdata_start)
dseg_93a2 equ __zdseg_end + (__zdseg_93a2 - __zdata_start)
dseg_93ab equ __zdseg_end + (__zdseg_93ab - __zdata_start)
dseg_93b4 equ __zdseg_end + (__zdseg_93b4 - __zdata_start)
loc_VQPO               equ loc_SRNN
jumptable_436e_case_0  equ loc_SRNN.jumptable_case1
loc_SRNN.dseg1         equ dseg_935a
loc_SRNN.api_idx1      equ api_idx_0002_IRKS
jumptable_436e_case_1  equ loc_SRNN.jumptable_case2
loc_SRNN.dseg2         equ dseg_9363
jumptable_436e_case_2  equ loc_SRNN.jumptable_case3
loc_SRNN.dseg3         equ dseg_936c
jumptable_436e_case_3  equ loc_SRNN.jumptable_case4
loc_SRNN.dseg4         equ dseg_9375
jumptable_436e_case_4  equ loc_SRNN.jumptable_case5
loc_SRNN.dseg5         equ dseg_937e
jumptable_436e_case_5  equ loc_SRNN.jumptable_case6
loc_SRNN.dseg6         equ dseg_9387
jumptable_436e_case_6  equ loc_SRNN.jumptable_case7
loc_SRNN.dseg7         equ dseg_9390
jumptable_436e_case_7  equ loc_SRNN.jumptable_case8
loc_SRNN.dseg8         equ dseg_9399
jumptable_436e_case_8  equ loc_SRNN.jumptable_case9
loc_SRNN.dseg9         equ dseg_93a2
jumptable_436e_case_9  equ loc_SRNN.jumptable_case10
loc_SRNN.dseg10        equ dseg_93ab
jumptable_436e_case_10 equ loc_SRNN.jumptable_case11
loc_SRNN.dseg11        equ dseg_93b4
jumptable_436e         equ loc_SRNN.jumptable1
%include "shared/game/loc_SRNN.asm"              ; 0x42b8

%include "vpcmk/loc_HGUJ.asm"              ; 0x4392

%include "vpcmk/api_idx_007a_GTOG.asm"     ; 0x43bb

%include "vpcmk/api_idx_007a_HMNU.asm"     ; 0x4498

; bss_976e equ __zdseg_end + (__zobss_976e - __zdata_start)
%include "vpcmk/api_idx_007c_MIHQ.asm"     ; 0x4585

; bss_9594 equ __zdseg_end + (__zobss_9594 - __zdata_start)
%include "vpcmk/api_idx_006c_JNMM.asm"     ; 0x4697

; bss_953c equ __zdseg_end + (__zobss_953c - __zdata_start)
; bss_953e equ __zdseg_end + (__zobss_953e - __zdata_start)
%include "vpcmk/api_idx_0008_VHMQ.asm"     ; 0x4934

%include "vpcmk/loc_RPNT.asm"              ; 0x4aa1

%include "vpcmk/api_idx_0002_SLKJ.asm"     ; 0x4ade

%include "vpcmk/api_idx_004e_ITVQ.asm"     ; 0x4b05

%include "vpcmk/loc_LTLR.asm"              ; 0x4c82

%include "shared/game/loc_NJOH.asm"              ; 0x4ead

%include "shared/game/api_idx_0006_VJKJ.asm"     ; 0x4f00

%include "shared/game/api_idx_0002_KQIK.asm"     ; 0x4f95

dseg_93bd equ __zdseg_end + (__zdseg_93bd - __zdata_start)
dseg_93cc equ __zdseg_end + (__zdseg_93cc - __zdata_start)
dseg_93db equ __zdseg_end + (__zdseg_93db - __zdata_start)
dseg_93ea equ __zdseg_end + (__zdseg_93ea - __zdata_start)
dseg_93f9 equ __zdseg_end + (__zdseg_93f9 - __zdata_start)
dseg_9408 equ __zdseg_end + (__zdseg_9408 - __zdata_start)
dseg_9417 equ __zdseg_end + (__zdseg_9417 - __zdata_start)
dseg_9426 equ __zdseg_end + (__zdseg_9426 - __zdata_start)
dseg_9435 equ __zdseg_end + (__zdseg_9435 - __zdata_start)
dseg_9444 equ __zdseg_end + (__zdseg_9444 - __zdata_start)
dseg_9453 equ __zdseg_end + (__zdseg_9453 - __zdata_start)
dseg_9462 equ __zdseg_end + (__zdseg_9462 - __zdata_start)
dseg_9471 equ __zdseg_end + (__zdseg_9471 - __zdata_start)
dseg_9480 equ __zdseg_end + (__zdseg_9480 - __zdata_start)
dseg_948f equ __zdseg_end + (__zdseg_948f - __zdata_start)
dseg_949e equ __zdseg_end + (__zdseg_949e - __zdata_start)
dseg_94ad equ __zdseg_end + (__zdseg_94ad - __zdata_start)
dseg_94bc equ __zdseg_end + (__zdseg_94bc - __zdata_start)
dseg_94cb equ __zdseg_end + (__zdseg_94cb - __zdata_start)
dseg_94da equ __zdseg_end + (__zdseg_94da - __zdata_start)
%include "vpcmk/api_idx_0004_GHPT.asm"     ; 0x5087

; slot_value  equ __zdseg_end + (__zobss_9608 - __zdata_start)
slot_value2 equ __zdseg_end + (__zobss_960c - __zdata_start)
%include "shared/game/roll_slot_values.asm"      ; 0x5580

; slot_value equ __zdseg_end + (__zobss_9608 - __zdata_start)
%include "vpcmk/api_idx_0002_GVOH.asm"     ; 0x56b0

%include "vpcmk/loc_QVUI.asm"              ; 0x5706

%include "vpcmk/api_idx_000a_HMMT.asm"     ; 0x5a8a

%include "shared/game/loc_OIOJ.asm"              ; 0x5d7e

api_idx_0004_QSJP      equ api_idx_0004_MMTP
jumptable_6059_case_0  equ api_idx_0004_MMTP.jumptable_case1
jumptable_6059_case_1  equ api_idx_0004_MMTP.jumptable_case2
jumptable_6059_case_2  equ api_idx_0004_MMTP.jumptable_case3
jumptable_6059_case_4  equ api_idx_0004_MMTP.jumptable_case4
jumptable_6059_case_5  equ api_idx_0004_MMTP.jumptable_case5
jumptable_6059_case_6  equ api_idx_0004_MMTP.jumptable_case6
jumptable_6059_case_7  equ api_idx_0004_MMTP.jumptable_case7
jumptable_6059_case_8  equ api_idx_0004_MMTP.jumptable_case8
jumptable_6059_case_9  equ api_idx_0004_MMTP.jumptable_case9
jumptable_6059_case_10 equ api_idx_0004_MMTP.jumptable_case10
jumptable_6059_case_11 equ api_idx_0004_MMTP.jumptable_case11
jumptable_6059_case_12 equ api_idx_0004_MMTP.jumptable_case12
jumptable_6059_case_13 equ api_idx_0004_MMTP.jumptable_case13
jumptable_6059         equ api_idx_0004_MMTP.jumptable1
%include "shared/game/api_idx_0004_MMTP.asm"     ; 0x5df5

dseg_94e9 equ __zdseg_end + (__zdseg_94e9 - __zdata_start)
api_idx_0016_JNJG.dseg1 equ dseg_94e9
%include "shared/game/api_idx_0016_JNJG.asm"     ; 0x6083

%include "vpcmk/api_idx_0006_HMNQ.asm"     ; 0x60e0

%include "vpcmk/api_idx_0002_IVMI.asm"     ; 0x626e

dseg_94f6  equ __zdseg_end + (__zdseg_94f6 - __zdata_start)
; bss_952c   equ __zdseg_end + (__zobss_952c - __zdata_start)
; bss_952e   equ __zdseg_end + (__zobss_952e - __zdata_start)
; bss_9594   equ __zdseg_end + (__zobss_9594 - __zdata_start)
; slot_value equ __zdseg_end + (__zobss_9608 - __zdata_start)
bss_978a   equ __zdseg_end + (__zobss_978a - __zdata_start)
%include "vpcmk/loc_MIPR.asm"              ; 0x62fb

%include "vpcmk/api_idx_0002_RUKQ.asm"     ; 0x65fc

%include "vpcmk/loc_TLLM.asm"              ; 0x6626

; bss_978a equ __zdseg_end + (__zobss_978a - __zdata_start)
%include "vpcmk/api_idx_0014_LVIL.asm"     ; 0x6673

; bss_9594 equ __zdseg_end + (__zobss_9594 - __zdata_start)
%include "vpcmk/loc_TUUJ.asm"              ; 0x66c3

dseg_9501 equ __zdseg_end + (__zdseg_9501 - __zdata_start)
%include "vpcmk/api_idx_002c_JIHO.asm"     ; 0x6738

%include "vpcmk/loc_RNSM.asm"              ; 0x67e2

%include "vpcmk/api_idx_0018_MVRH.asm"     ; 0x67ff

%include "vpcmk/api_idx_0006_JHIT.asm"     ; 0x6887

%include "vpcmk/loc_PVJJ.asm"              ; 0x68fa

dseg_950c         equ __zdseg_end + (__zdseg_950c - __zdata_start)
; bss_9524          equ __zdseg_end + (__zobss_9524 - __zdata_start)
; bss_9526          equ __zdseg_end + (__zobss_9526 - __zdata_start)
; bss_9528          equ __zdseg_end + (__zobss_9528 - __zdata_start)
; bss_952a          equ __zdseg_end + (__zobss_952a - __zdata_start)
; bss_952c          equ __zdseg_end + (__zobss_952c - __zdata_start)
; bss_952e          equ __zdseg_end + (__zobss_952e - __zdata_start)
bss_9530          equ __zdseg_end + (__zobss_9530 - __zdata_start)
bss_9532          equ __zdseg_end + (__zobss_9532 - __zdata_start)
bss_9534          equ __zdseg_end + (__zobss_9534 - __zdata_start)
bss_9536          equ __zdseg_end + (__zobss_9536 - __zdata_start)
; bss_9538          equ __zdseg_end + (__zobss_9538 - __zdata_start)
; bss_953a          equ __zdseg_end + (__zobss_953a - __zdata_start)
; bss_953c          equ __zdseg_end + (__zobss_953c - __zdata_start)
; bss_953e          equ __zdseg_end + (__zobss_953e - __zdata_start)
; saved_screen      equ __zdseg_end + (__zobss_9540 - __zdata_start)
bss_9542          equ __zdseg_end + (__zobss_9542 - __zdata_start)
; bss_9544          equ __zdseg_end + (__zobss_9544 - __zdata_start)
; bss_9596          equ __zdseg_end + (__zobss_9596 - __zdata_start)
; banner_offset     equ __zdseg_end + (__zobss_95aa - __zdata_start)
; banner_plain_flag equ __zdseg_end + (__zobss_95ac - __zdata_start)
; bss_95ae          equ __zdseg_end + (__zobss_95ae - __zdata_start)
; bss_976c          equ __zdseg_end + (__zobss_976c - __zdata_start)
%include "vpcmk/api_idx_002c_NHRR.asm"     ; 0x6a3f

save_si  equ __zdseg_end + (__zsave_si - __zdata_start)
save_di  equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp  equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp  equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg    equ __zdseg_end + (__zobss_9524 - __zdata_start)
_Uend    equ __zdseg_end + (__zobss_end - __zdata_start)
%include "shared/aztec/aztec_ovbgn.asm"           ; 0x6f8c

%include "shared/aztec/aztec_strcmp.asm"          ; 0x6fca

__zdata_start:
%include "vpcmk/data/dseg_9098.asm"        ; 0x7031

%include "shared/data/save_si.asm"          ; 0x74b3

%include "shared/data/save_di.asm"          ; 0x74b5

%include "shared/data/save_sp.asm"          ; 0x74b7

%include "shared/data/save_bp.asm"          ; 0x74b9

%include "shared/data/save_ret.asm"         ; 0x74bb


__zimage_end:
absolute __zimage_end
__zobss_9524:
    resb 0x0002
__zobss_9526:
    resb 0x0002
__zobss_9528:
    resb 0x0002
__zobss_952a:
    resb 0x0002
__zobss_952c:
    resb 0x0002
__zobss_952e:
    resb 0x0002
__zobss_9530:
    resb 0x0002
__zobss_9532:
    resb 0x0002
__zobss_9534:
    resb 0x0002
__zobss_9536:
    resb 0x0002
__zobss_9538:
    resb 0x0002
__zobss_953a:
    resb 0x0002
__zobss_953c:
    resb 0x0002
__zobss_953e:
    resb 0x0002
__zobss_9540:
    resb 0x0002
__zobss_9542:
    resb 0x0002
__zobss_9544:
    resb 0x0050
__zobss_9594:
    resb 0x0002
__zobss_9596:
    resb 0x0014
__zobss_95aa:
    resb 0x0002
__zobss_95ac:
    resb 0x0002
__zobss_95ae:
    resb 0x0002
__zobss_95b0:
    resb 0x0038
__zobss_95e8:
    resb 0x000c
__zobss_95f4:
    resb 0x0014
__zobss_9608:
    resb 0x0004
__zobss_960c:
    resb 0x0004
__zobss_9610:
    resb 0x00c8
__zobss_96d8:
    resb 0x0044
__zobss_971c:
    resb 0x0050
__zobss_976c:
    resb 0x0002
__zobss_976e:
    resb 0x001c
__zobss_978a:
    resb 0x0002
__zobss_end:
