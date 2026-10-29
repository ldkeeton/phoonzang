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
    dw (__zdata_start - __zcode_start)       ; 0xac60 ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x00fa ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x0c94 ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xfc77 ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_90a0 equ __zdseg_end + (__zdseg_90a0 - __zdata_start)
dseg_90ad equ __zdseg_end + (__zdseg_90ad - __zdata_start)
dseg_90ba equ __zdseg_end + (__zdseg_90ba - __zdata_start)
dseg_90c7 equ __zdseg_end + (__zdseg_90c7 - __zdata_start)
dseg_90d4 equ __zdseg_end + (__zdseg_90d4 - __zdata_start)
dseg_90e1 equ __zdseg_end + (__zdseg_90e1 - __zdata_start)
dseg_90ee equ __zdseg_end + (__zdseg_90ee - __zdata_start)
dseg_90fb equ __zdseg_end + (__zdseg_90fb - __zdata_start)
dseg_9108 equ __zdseg_end + (__zdseg_9108 - __zdata_start)
dseg_9115 equ __zdseg_end + (__zdseg_9115 - __zdata_start)
dseg_9122 equ __zdseg_end + (__zdseg_9122 - __zdata_start)
dseg_912f equ __zdseg_end + (__zdseg_912f - __zdata_start)
dseg_913c equ __zdseg_end + (__zdseg_913c - __zdata_start)
dseg_9149 equ __zdseg_end + (__zdseg_9149 - __zdata_start)
dseg_9156 equ __zdseg_end + (__zdseg_9156 - __zdata_start)
dseg_9163 equ __zdseg_end + (__zdseg_9163 - __zdata_start)
dseg_9170 equ __zdseg_end + (__zdseg_9170 - __zdata_start)
dseg_917e equ __zdseg_end + (__zdseg_917e - __zdata_start)
dseg_9186 equ __zdseg_end + (__zdseg_9186 - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9192 - __zdata_start)
bss_9192 equ __zdseg_end + (__zobss_9192 - __zdata_start)
bss_9194 equ __zdseg_end + (__zobss_9194 - __zdata_start)
bss_9196 equ __zdseg_end + (__zobss_9196 - __zdata_start)
bss_9198 equ __zdseg_end + (__zobss_9198 - __zdata_start)
bss_919a equ __zdseg_end + (__zobss_919a - __zdata_start)
bss_919c equ __zdseg_end + (__zobss_919c - __zdata_start)
save_location_flag equ __zdseg_end + (__zobss_919e - __zdata_start)
bss_91a0 equ __zdseg_end + (__zobss_91a0 - __zdata_start)
boundary_wall_open equ __zdseg_end + (__zobss_91a6 - __zdata_start)
location_changed equ __zdseg_end + (__zobss_91a8 - __zdata_start)
bss_91aa equ __zdseg_end + (__zobss_91aa - __zdata_start)
bss_91ac equ __zdseg_end + (__zobss_91ac - __zdata_start)
bss_91ae equ __zdseg_end + (__zobss_91ae - __zdata_start)
bss_91b0 equ __zdseg_end + (__zobss_91b0 - __zdata_start)
bss_91b2 equ __zdseg_end + (__zobss_91b2 - __zdata_start)
bss_91b4 equ __zdseg_end + (__zobss_91b4 - __zdata_start)
bss_91b6 equ __zdseg_end + (__zobss_91b6 - __zdata_start)
bss_91bc equ __zdseg_end + (__zobss_91bc - __zdata_start)
bss_91c2 equ __zdseg_end + (__zobss_91c2 - __zdata_start)
bss_91c8 equ __zdseg_end + (__zobss_91c8 - __zdata_start)
bss_91d0 equ __zdseg_end + (__zobss_91d0 - __zdata_start)
bss_91d2 equ __zdseg_end + (__zobss_91d2 - __zdata_start)
boundary_wall_variant equ __zdseg_end + (__zobss_91d4 - __zdata_start)
cell_wall_override_disabled equ __zdseg_end + (__zobss_91d6 - __zdata_start)
bss_91d8 equ __zdseg_end + (__zobss_91d8 - __zdata_start)
bss_91da equ __zdseg_end + (__zobss_91da - __zdata_start)
bss_91e4 equ __zdseg_end + (__zobss_91e4 - __zdata_start)
bss_91f1 equ __zdseg_end + (__zobss_91f1 - __zdata_start)
bss_91f3 equ __zdseg_end + (__zobss_91f3 - __zdata_start)
bss_920a equ __zdseg_end + (__zobss_920a - __zdata_start)
bss_920c equ __zdseg_end + (__zobss_920c - __zdata_start)
bss_9211 equ __zdseg_end + (__zobss_9211 - __zdata_start)
bss_9223 equ __zdseg_end + (__zobss_9223 - __zdata_start)
bss_9225 equ __zdseg_end + (__zobss_9225 - __zdata_start)
bss_923c equ __zdseg_end + (__zobss_923c - __zdata_start)
bss_9240 equ __zdseg_end + (__zobss_9240 - __zdata_start)
bss_926e equ __zdseg_end + (__zobss_926e - __zdata_start)
bss_9272 equ __zdseg_end + (__zobss_9272 - __zdata_start)
bss_92a0 equ __zdseg_end + (__zobss_92a0 - __zdata_start)
bss_92a2 equ __zdseg_end + (__zobss_92a2 - __zdata_start)
bss_92ba equ __zdseg_end + (__zobss_92ba - __zdata_start)
bss_92be equ __zdseg_end + (__zobss_92be - __zdata_start)
bss_92ec equ __zdseg_end + (__zobss_92ec - __zdata_start)
bss_92f0 equ __zdseg_end + (__zobss_92f0 - __zdata_start)
bss_931e equ __zdseg_end + (__zobss_931e - __zdata_start)
bss_9320 equ __zdseg_end + (__zobss_9320 - __zdata_start)
bss_9322 equ __zdseg_end + (__zobss_9322 - __zdata_start)
bss_9324 equ __zdseg_end + (__zobss_9324 - __zdata_start)
bss_9326 equ __zdseg_end + (__zobss_9326 - __zdata_start)
bss_9328 equ __zdseg_end + (__zobss_9328 - __zdata_start)
bss_9329 equ __zdseg_end + (__zobss_9329 - __zdata_start)
bss_932a equ __zdseg_end + (__zobss_932a - __zdata_start)
bss_932b equ __zdseg_end + (__zobss_932b - __zdata_start)
bss_932c equ __zdseg_end + (__zobss_932c - __zdata_start)
bss_932d equ __zdseg_end + (__zobss_932d - __zdata_start)
bss_932e equ __zdseg_end + (__zobss_932e - __zdata_start)
bss_932f equ __zdseg_end + (__zobss_932f - __zdata_start)
bss_9330 equ __zdseg_end + (__zobss_9330 - __zdata_start)
bss_9b18 equ __zdseg_end + (__zobss_9b18 - __zdata_start)
bss_9b1a equ __zdseg_end + (__zobss_9b1a - __zdata_start)
bss_9b34 equ __zdseg_end + (__zobss_9b34 - __zdata_start)
bss_9b36 equ __zdseg_end + (__zobss_9b36 - __zdata_start)
bss_9b38 equ __zdseg_end + (__zobss_9b38 - __zdata_start)
bss_9b3a equ __zdseg_end + (__zobss_9b3a - __zdata_start)
bss_9b3c equ __zdseg_end + (__zobss_9b3c - __zdata_start)
bss_9b3e equ __zdseg_end + (__zobss_9b3e - __zdata_start)
bss_9b40 equ __zdseg_end + (__zobss_9b40 - __zdata_start)
bss_9b42 equ __zdseg_end + (__zobss_9b42 - __zdata_start)
bss_9b44 equ __zdseg_end + (__zobss_9b44 - __zdata_start)
bss_9b46 equ __zdseg_end + (__zobss_9b46 - __zdata_start)
bss_9b48 equ __zdseg_end + (__zobss_9b48 - __zdata_start)
bss_9b4a equ __zdseg_end + (__zobss_9b4a - __zdata_start)
bss_9b4c equ __zdseg_end + (__zobss_9b4c - __zdata_start)
bss_9b4e equ __zdseg_end + (__zobss_9b4e - __zdata_start)
bss_9b50 equ __zdseg_end + (__zobss_9b50 - __zdata_start)
region_step_flag equ __zdseg_end + (__zobss_9bd0 - __zdata_start)
bss_9bd2 equ __zdseg_end + (__zobss_9bd2 - __zdata_start)
bss_9bdc equ __zdseg_end + (__zobss_9bdc - __zdata_start)
bss_9bde equ __zdseg_end + (__zobss_9bde - __zdata_start)
bss_9be6 equ __zdseg_end + (__zobss_9be6 - __zdata_start)
bss_9be8 equ __zdseg_end + (__zobss_9be8 - __zdata_start)
bss_9c00 equ __zdseg_end + (__zobss_9c00 - __zdata_start)
bss_9c02 equ __zdseg_end + (__zobss_9c02 - __zdata_start)
bss_9c42 equ __zdseg_end + (__zobss_9c42 - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vmaze/ovmain.asm"                ; 0x000e

%include "vmaze/api_idx_0002_QNMM.asm"     ; 0x0106

%include "vmaze/loc_RRRG.asm"              ; 0x017f

%include "vmaze/api_idx_0008_URRP.asm"     ; 0x01c9

%include "vmaze/api_idx_0002_LMTG.asm"     ; 0x02da

%include "shared/ovr/load_maze_file.asm"        ; 0x02fe

%include "vmaze/loc_QMTV.asm"              ; 0x0344

%include "vmaze/api_idx_0002_UTNP.asm"     ; 0x03ea

%include "vmaze/api_idx_0014_NJLK.asm"     ; 0x06da

%include "vmaze/loc_LPSI.asm"              ; 0x09cb

%include "vmaze/api_idx_0006_KUNS.asm"     ; 0x0a6e

%include "vmaze/api_idx_0002_GGTO.asm"     ; 0x0acc

%include "vmaze/loc_VGMJ.asm"              ; 0x0b14

%include "vmaze/api_idx_0002_SMVN.asm"     ; 0x0b66

%include "vmaze/enter_level.asm"           ; 0x0cb5

%include "vmaze/api_idx_0002_GSIL.asm"     ; 0x0e5d

%include "vmaze/loc_LMUG.asm"              ; 0x0ea6

%include "shared/ovr/loc_QQOI.asm"              ; 0x0f68

%include "vmaze/wait_ticks_or_key.asm"     ; 0x0f8e

%include "shared/ovr/api_idx_0008_OMTP.asm"     ; 0x0fde

%include "shared/ovr/show_message.asm"          ; 0x1094

%include "shared/ovr/loc_QTKU.asm"              ; 0x10b0

%include "vmaze/api_idx_0002_QLPH.asm"     ; 0x110e

%include "shared/ovr/get_cell_wall.asm"         ; 0x1165

%include "vmaze/api_idx_0002_RRIU.asm"     ; 0x1206

%include "vmaze/loc_KOGT.asm"              ; 0x1240

%include "shared/ovr/loc_IVLM.asm"              ; 0x12a2

%include "vmaze/loc_LPNP.asm"              ; 0x12d3

%include "vmaze/api_idx_0004_IKPN.asm"     ; 0x1308

%include "shared/ovr/check_at_saved_location.asm" ; 0x13c0

%include "vmaze/api_idx_0004_IHHI.asm"     ; 0x13f7

jumptable_1556_case_1  equ api_idx_0004_SMLK.jumptable_case1
jumptable_1556_case_14 equ api_idx_0004_SMLK.jumptable_case2
jumptable_1556_case_0  equ api_idx_0004_SMLK.jumptable_case3
jumptable_1556         equ api_idx_0004_SMLK.jumptable1
%include "shared/ovr/api_idx_0004_SMLK.asm"     ; 0x1504

%include "vmaze/api_idx_000e_NSGM.asm"     ; 0x162b

%include "vmaze/api_idx_0004_USIK.asm"     ; 0x17ee

%include "vmaze/api_idx_000a_URTS.asm"     ; 0x195c

%include "vmaze/api_idx_0018_USPR.asm"     ; 0x1c94

%include "vmaze/api_idx_0010_HOIJ.asm"     ; 0x2033

%include "shared/ovr/api_idx_0006_TMNI.asm"     ; 0x20dc

%include "shared/ovr/api_idx_0006_KPLV.asm"     ; 0x2133

%include "vmaze/loc_MMGL.asm"              ; 0x21e3

%include "vmaze/api_idx_0022_LKUK.asm"     ; 0x2215

%include "shared/ovr/get_north_cell_wall.asm"   ; 0x2d94

%include "shared/ovr/get_west_cell_wall.asm"    ; 0x2e0c

loc_UMHI_2e84      equ loc_UMHI_1913
loc_UMHI_1913.bss1 equ bss_91d0
%include "shared/ovr/loc_UMHI_1913.asm"         ; 0x2e84

loc_LPLI_2e98      equ loc_LPLI_1927
loc_LPLI_1927.bss1 equ bss_91d0
%include "shared/ovr/loc_LPLI_1927.asm"         ; 0x2e98

loc_UMHI_2eac      equ loc_UMHI_193b
loc_UMHI_193b.bss1 equ bss_91d2
%include "shared/ovr/loc_UMHI_193b.asm"         ; 0x2eac

loc_LPLI_2ec0      equ loc_LPLI_194f
loc_LPLI_194f.bss1 equ bss_91d2
%include "shared/ovr/loc_LPLI_194f.asm"         ; 0x2ec0

%include "shared/ovr/offset_relative_map_position.asm" ; 0x2ed4

%include "shared/ovr/read_cell_kind_direction.asm" ; 0x2f55

api_idx_0008_PGTT       equ api_idx_0008_NJHP
jumptable_3000_case_0   equ api_idx_0008_NJHP.jumptable_case1
jumptable_3000_case_3   equ api_idx_0008_NJHP.jumptable_case2
jumptable_3000_case_1   equ api_idx_0008_NJHP.jumptable_case3
api_idx_0008_NJHP.bss1  equ bss_91da
jumptable_3000_case_5   equ api_idx_0008_NJHP.jumptable_case4
jumptable_3000          equ api_idx_0008_NJHP.jumptable1
jumptable_3082_case_0   equ api_idx_0008_NJHP.jumptable_case5
jumptable_3082_case_1   equ api_idx_0008_NJHP.jumptable_case6
jumptable_3082_case_2   equ api_idx_0008_NJHP.jumptable_case7
jumptable_3082          equ api_idx_0008_NJHP.jumptable2
jumptable_3111_case_1   equ api_idx_0008_NJHP.jumptable_case8
jumptable_3111_case_2   equ api_idx_0008_NJHP.jumptable_case9
api_idx_0008_NJHP.bss2  equ bss_91f3
jumptable_3111_case_5   equ api_idx_0008_NJHP.jumptable_case10
jumptable_3111_case_0   equ api_idx_0008_NJHP.jumptable_case11
api_idx_0008_NJHP.bss3  equ bss_920c
api_idx_0008_NJHP.bss4  equ bss_9211
jumptable_3111          equ api_idx_0008_NJHP.jumptable3
jumptable_3356_case_0   equ api_idx_0008_NJHP.jumptable_case12
jumptable_3356_case_1   equ api_idx_0008_NJHP.jumptable_case13
jumptable_3356_case_2   equ api_idx_0008_NJHP.jumptable_case14
jumptable_3356_case_3   equ api_idx_0008_NJHP.jumptable_case15
jumptable_3356_case_4   equ api_idx_0008_NJHP.jumptable_case16
jumptable_3356_case_5   equ api_idx_0008_NJHP.jumptable_case17
jumptable_3356_case_6   equ api_idx_0008_NJHP.jumptable_case18
jumptable_3356_case_7   equ api_idx_0008_NJHP.jumptable_case19
api_idx_0008_NJHP.bss5  equ bss_9225
jumptable_3356_case_8   equ api_idx_0008_NJHP.jumptable_case20
api_idx_0008_NJHP.bss6  equ bss_9240
jumptable_3356_case_9   equ api_idx_0008_NJHP.jumptable_case21
api_idx_0008_NJHP.bss7  equ bss_9272
jumptable_3356_case_10  equ api_idx_0008_NJHP.jumptable_case22
jumptable_3356_case_11  equ api_idx_0008_NJHP.jumptable_case23
jumptable_3356_case_12  equ api_idx_0008_NJHP.jumptable_case24
api_idx_0008_NJHP.bss8  equ bss_92a2
jumptable_3356_case_13  equ api_idx_0008_NJHP.jumptable_case25
jumptable_3356_case_14  equ api_idx_0008_NJHP.jumptable_case26
api_idx_0008_NJHP.bss9  equ bss_92be
jumptable_3356_case_15  equ api_idx_0008_NJHP.jumptable_case27
api_idx_0008_NJHP.bss10 equ bss_92f0
jumptable_3356_case_16  equ api_idx_0008_NJHP.jumptable_case28
jumptable_3356          equ api_idx_0008_NJHP.jumptable4
%include "shared/ovr/api_idx_0008_NJHP.asm"     ; 0x2f8e

jumptable_340d_case_0  equ get_relative_cell_wall.jumptable_case1
jumptable_340d_case_3  equ get_relative_cell_wall.jumptable_case2
jumptable_340d_case_1  equ get_relative_cell_wall.jumptable_case3
jumptable_340d_case_5  equ get_relative_cell_wall.jumptable_case4
jumptable_340d         equ get_relative_cell_wall.jumptable1
jumptable_3563_case_0  equ get_relative_cell_wall.jumptable_case5
jumptable_3563_case_1  equ get_relative_cell_wall.jumptable_case6
jumptable_3563_case_2  equ get_relative_cell_wall.jumptable_case7
jumptable_3563_case_3  equ get_relative_cell_wall.jumptable_case8
jumptable_3563_case_4  equ get_relative_cell_wall.jumptable_case9
jumptable_3563_case_5  equ get_relative_cell_wall.jumptable_case10
jumptable_3563_case_6  equ get_relative_cell_wall.jumptable_case11
jumptable_3563_case_10 equ get_relative_cell_wall.jumptable_case12
jumptable_3563_case_11 equ get_relative_cell_wall.jumptable_case13
jumptable_3563         equ get_relative_cell_wall.jumptable2
%include "shared/ovr/get_relative_cell_wall.asm" ; 0x33c0

api_idx_0004_OVUO.bss1  equ bss_931e
api_idx_0004_OVUO.bss2  equ bss_932c
api_idx_0004_OVUO.bss3  equ bss_932e
api_idx_0004_OVUO.bss4  equ bss_9320
api_idx_0004_OVUO.bss5  equ bss_9322
api_idx_0004_OVUO.bss6  equ bss_9328
api_idx_0004_OVUO.bss7  equ bss_9329
api_idx_0004_OVUO.bss8  equ bss_932a
api_idx_0004_OVUO.bss9  equ bss_932b
api_idx_0004_OVUO.bss10 equ bss_9324
api_idx_0004_OVUO.bss11 equ bss_9326
api_idx_0004_OVUO.bss12 equ bss_932d
api_idx_0004_OVUO.bss13 equ bss_932f
api_idx_0004_OVUO.bss14 equ bss_9330
%include "shared/ovr/api_idx_0004_OVUO.asm"     ; 0x358c

api_idx_0010_KRNM.loc1     equ loc_LPLI_2e98
api_idx_0010_KRNM.loc2     equ loc_UMHI_2e84
jumptable_3a86_case_1      equ api_idx_0010_KRNM.jumptable_case1
api_idx_0010_KRNM.api_idx1 equ api_idx_0004_OVUO
jumptable_3a86_case_0      equ api_idx_0010_KRNM.jumptable_case2
jumptable_3a86_case_5      equ api_idx_0010_KRNM.jumptable_case3
jumptable_3a86_case_2      equ api_idx_0010_KRNM.jumptable_case4
jumptable_3a86_case_4      equ api_idx_0010_KRNM.jumptable_case5
api_idx_0010_KRNM.bss1     equ bss_9b18
jumptable_3a86             equ api_idx_0010_KRNM.jumptable1
jumptable_3ed8_case_8      equ api_idx_0010_KRNM.jumptable_case6
jumptable_3ed8_case_7      equ api_idx_0010_KRNM.jumptable_case7
jumptable_3ed8_case_1      equ api_idx_0010_KRNM.jumptable_case8
api_idx_0010_KRNM.bss2     equ bss_91d0
jumptable_3ed8_case_0      equ api_idx_0010_KRNM.jumptable_case9
jumptable_3ed8_case_5      equ api_idx_0010_KRNM.jumptable_case10
jumptable_3ed8_case_10     equ api_idx_0010_KRNM.jumptable_case11
jumptable_3ed8_case_11     equ api_idx_0010_KRNM.jumptable_case12
jumptable_3ed8_case_12     equ api_idx_0010_KRNM.jumptable_case13
jumptable_3ed8_case_14     equ api_idx_0010_KRNM.jumptable_case14
jumptable_3ed8             equ api_idx_0010_KRNM.jumptable2
%include "shared/ovr/api_idx_0010_KRNM.asm"     ; 0x3802

jumptable_4404_case_8      equ api_idx_0012_PNUU.jumptable_case1
jumptable_4404_case_3      equ api_idx_0012_PNUU.jumptable_case2
api_idx_0012_PNUU.api_idx1 equ api_idx_0004_OVUO
api_idx_0012_PNUU.loc1     equ loc_UMHI_2eac
api_idx_0012_PNUU.loc2     equ loc_LPLI_2ec0
jumptable_4404_case_1      equ api_idx_0012_PNUU.jumptable_case3
jumptable_4404_case_0      equ api_idx_0012_PNUU.jumptable_case4
jumptable_4404_case_7      equ api_idx_0012_PNUU.jumptable_case5
jumptable_4404_case_2      equ api_idx_0012_PNUU.jumptable_case6
jumptable_4404_case_4      equ api_idx_0012_PNUU.jumptable_case7
api_idx_0012_PNUU.loc3     equ loc_UMHI_2e84
api_idx_0012_PNUU.loc4     equ loc_LPLI_2e98
jumptable_4404_case_5      equ api_idx_0012_PNUU.jumptable_case8
jumptable_4404             equ api_idx_0012_PNUU.jumptable1
jumptable_4607_case_0      equ api_idx_0012_PNUU.jumptable_case9
jumptable_4607_case_1      equ api_idx_0012_PNUU.jumptable_case10
jumptable_4607_case_2      equ api_idx_0012_PNUU.jumptable_case11
jumptable_4607_case_4      equ api_idx_0012_PNUU.jumptable_case12
jumptable_4607             equ api_idx_0012_PNUU.jumptable2
%include "shared/ovr/api_idx_0012_PNUU.asm"     ; 0x3f56

api_idx_0012_KQTQ          equ api_idx_0012_GMMP
api_idx_0012_GMMP.bss1     equ bss_926e
api_idx_0012_GMMP.bss2     equ bss_92ec
api_idx_0012_GMMP.loc1     equ loc_UMHI_2eac
api_idx_0012_GMMP.loc2     equ loc_LPLI_2ec0
api_idx_0012_GMMP.api_idx1 equ api_idx_0004_OVUO
api_idx_0012_GMMP.bss3     equ bss_91d0
api_idx_0012_GMMP.bss4     equ bss_91f1
api_idx_0012_GMMP.loc3     equ loc_LPLI_2e98
api_idx_0012_GMMP.loc4     equ loc_UMHI_2e84
api_idx_0012_GMMP.bss5     equ bss_91d8
jumptable_4b6b_case_1      equ api_idx_0012_GMMP.jumptable_case1
jumptable_4b6b_case_2      equ api_idx_0012_GMMP.jumptable_case2
jumptable_4b6b_case_3      equ api_idx_0012_GMMP.jumptable_case3
api_idx_0012_GMMP.bss6     equ bss_91d2
jumptable_4b6b_case_4      equ api_idx_0012_GMMP.jumptable_case4
jumptable_4b6b_case_0      equ api_idx_0012_GMMP.jumptable_case5
jumptable_4b6b             equ api_idx_0012_GMMP.jumptable1
api_idx_0012_GMMP.bss7     equ bss_923c
api_idx_0012_GMMP.bss8     equ bss_92ba
api_idx_0012_GMMP.bss9     equ bss_92a0
api_idx_0012_GMMP.bss10    equ bss_9223
%include "shared/ovr/api_idx_0012_GMMP.asm"     ; 0x4665

%include "shared/ovr/api_idx_0016_LHKK.asm"     ; 0x4f53

%include "shared/ovr/api_idx_0024_NUGL.asm"     ; 0x50f4

%include "shared/ovr/draw_clock_marker_glyph.asm" ; 0x529a

api_idx_0030_KNRH          equ api_idx_0030_HINM
api_idx_0030_HINM.bss1     equ bss_920a
api_idx_0030_HINM.bss2     equ bss_91f1
api_idx_0030_HINM.bss3     equ bss_91d8
api_idx_0030_HINM.bss4     equ bss_9b1a
api_idx_0030_HINM.bss5     equ bss_9223
api_idx_0030_HINM.bss6     equ bss_92ba
api_idx_0030_HINM.bss7     equ bss_92a0
api_idx_0030_HINM.bss8     equ bss_923c
api_idx_0030_HINM.bss9     equ bss_92ec
api_idx_0030_HINM.bss10    equ bss_926e
api_idx_0030_HINM.bss11    equ bss_9320
api_idx_0030_HINM.bss12    equ bss_931e
api_idx_0030_HINM.bss13    equ bss_9b34
api_idx_0030_HINM.bss14    equ bss_91d2
jumptable_59e2_case_1      equ api_idx_0030_HINM.jumptable_case1
api_idx_0030_HINM.loc1     equ loc_UMHI_2eac
api_idx_0030_HINM.loc2     equ loc_LPLI_2ec0
jumptable_59e2_case_0      equ api_idx_0030_HINM.jumptable_case2
jumptable_59e2_case_2      equ api_idx_0030_HINM.jumptable_case3
jumptable_59e2_case_3      equ api_idx_0030_HINM.jumptable_case4
jumptable_59e2_case_4      equ api_idx_0030_HINM.jumptable_case5
jumptable_59e2_case_5      equ api_idx_0030_HINM.jumptable_case6
jumptable_59e2_case_6      equ api_idx_0030_HINM.jumptable_case7
jumptable_59e2             equ api_idx_0030_HINM.jumptable1
api_idx_0030_HINM.bss15    equ bss_91d0
api_idx_0030_HINM.bss16    equ bss_9b36
api_idx_0030_HINM.bss17    equ bss_91da
api_idx_0030_HINM.bss18    equ bss_9b38
api_idx_0030_HINM.bss19    equ bss_9b3a
api_idx_0030_HINM.api_idx1 equ api_idx_0008_PGTT
api_idx_0030_HINM.bss20    equ bss_9b3c
api_idx_0030_HINM.bss21    equ bss_9b3e
api_idx_0030_HINM.bss22    equ bss_9b40
api_idx_0030_HINM.bss23    equ bss_9b42
api_idx_0030_HINM.bss24    equ bss_9b44
api_idx_0030_HINM.bss25    equ bss_9b46
api_idx_0030_HINM.bss26    equ bss_9b18
api_idx_0030_HINM.api_idx2 equ api_idx_0012_KQTQ
api_idx_0030_HINM.bss27    equ bss_91e4
api_idx_0030_HINM.bss28    equ bss_91a0
api_idx_0030_HINM.bss29    equ bss_91c8
api_idx_0030_HINM.bss30    equ bss_91b6
api_idx_0030_HINM.bss31    equ bss_91bc
api_idx_0030_HINM.bss32    equ bss_91c2
%include "shared/ovr/api_idx_0030_HINM.asm"     ; 0x53fd

redraw_maze_view.api_idx1 equ api_idx_0030_KNRH
%include "shared/ovr/redraw_maze_view.asm"      ; 0x676c

%include "shared/ovr/loc_MPHO.asm"              ; 0x678c

%include "shared/ovr/find_map_piece.asm"        ; 0x67c6

%include "shared/ovr/find_object_at.asm"        ; 0x6882

%include "vmaze/save_level_state.asm"      ; 0x68f2

%include "shared/ovr/api_idx_0006_POPS.asm"     ; 0x6960

jumptable_6aab_case_0 equ log_maze_change.jumptable_case1
jumptable_6aab_case_1 equ log_maze_change.jumptable_case2
jumptable_6aab_case_5 equ log_maze_change.jumptable_case3
jumptable_6aab_case_6 equ log_maze_change.jumptable_case4
jumptable_6aab        equ log_maze_change.jumptable1
%include "shared/ovr/log_maze_change.asm"       ; 0x69d6

%include "vmaze/loc_GRON.asm"              ; 0x6ac7

%include "shared/ovr/restore_area_a_draw_glyph.asm" ; 0x6b0a

%include "vmaze/loc_MVHP.asm"              ; 0x6b5a

api_idx_0004_JGSH.bss1 equ bss_9b4c
api_idx_0004_JGSH.loc1 equ loc_MVHP
api_idx_0004_JGSH.bss2 equ bss_9b4e
%include "shared/ovr/api_idx_0004_JGSH.asm"     ; 0x6c0a

%include "vmaze/api_idx_0090_QKJQ.asm"     ; 0x6cc9

process_scene_message_words.loc1 equ api_idx_0090_QKJQ
%include "shared/ovr/process_scene_message_words.asm" ; 0x6eb1

%include "vmaze/loc_MLLK.asm"              ; 0x6f14

%include "shared/ovr/loc_SIKN.asm"              ; 0x6fbf

%include "vmaze/api_idx_0002_KUOJ.asm"     ; 0x7001

%include "vmaze/api_idx_001e_SRJO.asm"     ; 0x7034

%include "shared/ovr/mark_region_bits.asm"      ; 0x7242

%include "vmaze/move_party_to_dest.asm"    ; 0x72a6

%include "vmaze/api_idx_0002_OUMQ.asm"     ; 0x73b6

%include "vmaze/loc_PLOT.asm"              ; 0x7436

%include "vmaze/api_idx_0004_TLVR.asm"     ; 0x744e

%include "vmaze/api_idx_0050_QVOG.asm"     ; 0x74e2

%include "vmaze/api_idx_0004_THPM.asm"     ; 0x7542

%include "vmaze/api_idx_0006_NNSP.asm"     ; 0x75ae

%include "vmaze/api_idx_001c_QLSV.asm"     ; 0x764d

%include "vmaze/api_idx_000a_SRNS.asm"     ; 0x784f

%include "vmaze/api_idx_0004_LGSJ.asm"     ; 0x799e

%include "vmaze/loc_HLOU.asm"              ; 0x7a34

%include "vmaze/api_idx_0002_RHUQ.asm"     ; 0x7abe

%include "vmaze/api_idx_0018_KVSP.asm"     ; 0x7b53

%include "vmaze/loc_HMKT.asm"              ; 0x7cb4

%include "vmaze/set_cell_wall.asm"         ; 0x7ce5

%include "vmaze/api_idx_001e_QHIQ.asm"     ; 0x7e46

%include "vmaze/api_idx_000e_RTSO.asm"     ; 0x804e

%include "vmaze/api_idx_0010_TVMI.asm"     ; 0x820b

%include "shared/ovr/api_idx_0004_KGNP.asm"     ; 0x83b3

%include "vmaze/api_idx_000e_IVQS.asm"     ; 0x8448

%include "vmaze/loc_GTVH.asm"              ; 0x8540

%include "vmaze/api_idx_0012_LSRN.asm"     ; 0x8568

%include "vmaze/loc_OKIJ.asm"              ; 0x86a9

%include "vmaze/api_idx_0002_QMUL.asm"     ; 0x86f9

%include "vmaze/api_idx_000c_NSHU.asm"     ; 0x8794

%include "vmaze/loc_TJTU.asm"              ; 0x8867

%include "shared/ovr/clear_bit_pair.asm"        ; 0x89d0

%include "vmaze/claim_cell.asm"            ; 0x8a14

%include "vmaze/check_type8_object.asm"    ; 0x8b52

%include "vmaze/check_cell_objects.asm"    ; 0x8c47

%include "vmaze/api_idx_0002_NGNS.asm"     ; 0x8de9

%include "vmaze/api_idx_0002_QLLK.asm"     ; 0x8e6a

%include "vmaze/api_idx_0002_SKMG.asm"     ; 0x8f1a

%include "vmaze/api_idx_0002_TJNR.asm"     ; 0x8f94

%include "vmaze/api_idx_0048_OSRI.asm"     ; 0x9029

%include "vmaze/api_idx_0006_UMQS.asm"     ; 0x920f

%include "vmaze/api_idx_0002_NVPU.asm"     ; 0x93ab

%include "vmaze/loc_PQKO.asm"              ; 0x9448

%include "vmaze/loc_LGQU.asm"              ; 0x94a6

%include "vmaze/api_idx_003a_SOVP.asm"     ; 0x94ef

%include "vmaze/loc_HULT.asm"              ; 0x9658

%include "vmaze/api_idx_0004_VRTU.asm"     ; 0x96ce

%include "vmaze/api_idx_0002_NMTS.asm"     ; 0x98cc

%include "shared/ovr/assign_slot_bit.asm"       ; 0x9920

%include "vmaze/api_idx_0006_NNTR.asm"     ; 0x99dd

%include "vmaze/api_idx_0010_IOJT.asm"     ; 0x9a80

%include "vmaze/api_idx_0004_SRMT.asm"     ; 0x9e79

%include "vmaze/api_idx_0012_UGVV.asm"     ; 0x9ef7

%include "vmaze/loc_KHPH.asm"              ; 0xa215

%include "vmaze/api_idx_0002_OOUO.asm"     ; 0xa28c

%include "vmaze/api_idx_0010_TRQK.asm"     ; 0xa2df

%include "vmaze/api_idx_0008_OMPR.asm"     ; 0xa5ba

%include "vmaze/api_idx_0002_TLGN.asm"     ; 0xa7b2

%include "vmaze/api_idx_0002_JSGO.asm"     ; 0xa9a4

%include "vmaze/loc_VJUG.asm"              ; 0xaad3

%include "vmaze/api_idx_0032_TNQM.asm"     ; 0xab9b

%include "shared/ovr/aztec_ovbgn.asm"           ; 0xac30

__zdata_start:
%include "vmaze/data/dseg_9098.asm"        ; 0xac6e

%include "shared/data/save_si.asm"          ; 0xad5e

%include "shared/data/save_di.asm"          ; 0xad60

%include "shared/data/save_sp.asm"          ; 0xad62

%include "shared/data/save_bp.asm"          ; 0xad64

%include "shared/data/save_ret.asm"         ; 0xad66


__zimage_end:
absolute __zimage_end
__zobss_9192:
    resb 0x0002
__zobss_9194:
    resb 0x0002
__zobss_9196:
    resb 0x0002
__zobss_9198:
    resb 0x0002
__zobss_919a:
    resb 0x0002
__zobss_919c:
    resb 0x0002
__zobss_919e:
    resb 0x0002
__zobss_91a0:
    resb 0x0006
__zobss_91a6:
    resb 0x0002
__zobss_91a8:
    resb 0x0002
__zobss_91aa:
    resb 0x0002
__zobss_91ac:
    resb 0x0002
__zobss_91ae:
    resb 0x0002
__zobss_91b0:
    resb 0x0002
__zobss_91b2:
    resb 0x0002
__zobss_91b4:
    resb 0x0002
__zobss_91b6:
    resb 0x0006
__zobss_91bc:
    resb 0x0006
__zobss_91c2:
    resb 0x0006
__zobss_91c8:
    resb 0x0008
__zobss_91d0:
    resb 0x0002
__zobss_91d2:
    resb 0x0002
__zobss_91d4:
    resb 0x0002
__zobss_91d6:
    resb 0x0002
__zobss_91d8:
    resb 0x0002
__zobss_91da:
    resb 0x000a
__zobss_91e4:
    resb 0x000d
__zobss_91f1:
    resb 0x0002
__zobss_91f3:
    resb 0x0017
__zobss_920a:
    resb 0x0002
__zobss_920c:
    resb 0x0005
__zobss_9211:
    resb 0x0012
__zobss_9223:
    resb 0x0002
__zobss_9225:
    resb 0x0017
__zobss_923c:
    resb 0x0004
__zobss_9240:
    resb 0x002e
__zobss_926e:
    resb 0x0004
__zobss_9272:
    resb 0x002e
__zobss_92a0:
    resb 0x0002
__zobss_92a2:
    resb 0x0018
__zobss_92ba:
    resb 0x0004
__zobss_92be:
    resb 0x002e
__zobss_92ec:
    resb 0x0004
__zobss_92f0:
    resb 0x002e
__zobss_931e:
    resb 0x0002
__zobss_9320:
    resb 0x0002
__zobss_9322:
    resb 0x0002
__zobss_9324:
    resb 0x0002
__zobss_9326:
    resb 0x0002
__zobss_9328:
    resb 0x0001
__zobss_9329:
    resb 0x0001
__zobss_932a:
    resb 0x0001
__zobss_932b:
    resb 0x0001
__zobss_932c:
    resb 0x0001
__zobss_932d:
    resb 0x0001
__zobss_932e:
    resb 0x0001
__zobss_932f:
    resb 0x0001
__zobss_9330:
    resb 0x07e8
__zobss_9b18:
    resb 0x0002
__zobss_9b1a:
    resb 0x001a
__zobss_9b34:
    resb 0x0002
__zobss_9b36:
    resb 0x0002
__zobss_9b38:
    resb 0x0002
__zobss_9b3a:
    resb 0x0002
__zobss_9b3c:
    resb 0x0002
__zobss_9b3e:
    resb 0x0002
__zobss_9b40:
    resb 0x0002
__zobss_9b42:
    resb 0x0002
__zobss_9b44:
    resb 0x0002
__zobss_9b46:
    resb 0x0002
__zobss_9b48:
    resb 0x0002
__zobss_9b4a:
    resb 0x0002
__zobss_9b4c:
    resb 0x0002
__zobss_9b4e:
    resb 0x0002
__zobss_9b50:
    resb 0x0080
__zobss_9bd0:
    resb 0x0002
__zobss_9bd2:
    resb 0x000a
__zobss_9bdc:
    resb 0x0002
__zobss_9bde:
    resb 0x0008
__zobss_9be6:
    resb 0x0002
__zobss_9be8:
    resb 0x0018
__zobss_9c00:
    resb 0x0002
__zobss_9c02:
    resb 0x0040
__zobss_9c42:
    resb 0x01e4
__zobss_end:
