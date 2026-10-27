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
    dw (__zdata_start - __zcode_start)       ; 0x524b ; o_csize: code size in bytes
    dw __zdseg_end                           ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x00e8 ; o_dsize: initialized data size
    dw __zobss_end - __zimage_end            ; 0x099c ; o_bss: uninitialized data size
    dw aztec_ovbgn - IMAGE_BASE + __zres_end ; 0xa262 ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_9098 equ __zdseg_end + (__zdseg_9098 - __zdata_start)
dseg_90a5 equ __zdseg_end + (__zdseg_90a5 - __zdata_start)
dseg_90b2 equ __zdseg_end + (__zdseg_90b2 - __zdata_start)
dseg_90bf equ __zdseg_end + (__zdseg_90bf - __zdata_start)
dseg_90cc equ __zdseg_end + (__zdseg_90cc - __zdata_start)
dseg_90d9 equ __zdseg_end + (__zdseg_90d9 - __zdata_start)
dseg_90e6 equ __zdseg_end + (__zdseg_90e6 - __zdata_start)
dseg_90f3 equ __zdseg_end + (__zdseg_90f3 - __zdata_start)
dseg_9100 equ __zdseg_end + (__zdseg_9100 - __zdata_start)
dseg_910d equ __zdseg_end + (__zdseg_910d - __zdata_start)
dseg_911a equ __zdseg_end + (__zdseg_911a - __zdata_start)
dseg_9127 equ __zdseg_end + (__zdseg_9127 - __zdata_start)
dseg_9134 equ __zdseg_end + (__zdseg_9134 - __zdata_start)
dseg_9141 equ __zdseg_end + (__zdseg_9141 - __zdata_start)
dseg_914e equ __zdseg_end + (__zdseg_914e - __zdata_start)
dseg_915b equ __zdseg_end + (__zdseg_915b - __zdata_start)
dseg_9168 equ __zdseg_end + (__zdseg_9168 - __zdata_start)
save_si equ __zdseg_end + (__zsave_si - __zdata_start)
save_di equ __zdseg_end + (__zsave_di - __zdata_start)
save_sp equ __zdseg_end + (__zsave_sp - __zdata_start)
save_bp equ __zdseg_end + (__zsave_bp - __zdata_start)
save_ret equ __zdseg_end + (__zsave_ret - __zdata_start)
_Uorg equ __zdseg_end + (__zobss_9180 - __zdata_start)
bss_9180 equ __zdseg_end + (__zobss_9180 - __zdata_start)
bss_9182 equ __zdseg_end + (__zobss_9182 - __zdata_start)
boundary_wall_open equ __zdseg_end + (__zobss_9188 - __zdata_start)
bss_918a equ __zdseg_end + (__zobss_918a - __zdata_start)
bss_918c equ __zdseg_end + (__zobss_918c - __zdata_start)
bss_9192 equ __zdseg_end + (__zobss_9192 - __zdata_start)
bss_9198 equ __zdseg_end + (__zobss_9198 - __zdata_start)
save_location_flag equ __zdseg_end + (__zobss_919e - __zdata_start)
bss_91a4 equ __zdseg_end + (__zobss_91a4 - __zdata_start)
bss_91a6 equ __zdseg_end + (__zobss_91a6 - __zdata_start)
boundary_wall_variant equ __zdseg_end + (__zobss_91a8 - __zdata_start)
cell_wall_override_disabled equ __zdseg_end + (__zobss_91aa - __zdata_start)
bss_91ac equ __zdseg_end + (__zobss_91ac - __zdata_start)
bss_91ae equ __zdseg_end + (__zobss_91ae - __zdata_start)
bss_91b8 equ __zdseg_end + (__zobss_91b8 - __zdata_start)
bss_91c5 equ __zdseg_end + (__zobss_91c5 - __zdata_start)
bss_91c7 equ __zdseg_end + (__zobss_91c7 - __zdata_start)
bss_91de equ __zdseg_end + (__zobss_91de - __zdata_start)
bss_91e0 equ __zdseg_end + (__zobss_91e0 - __zdata_start)
bss_91e5 equ __zdseg_end + (__zobss_91e5 - __zdata_start)
bss_91f7 equ __zdseg_end + (__zobss_91f7 - __zdata_start)
bss_91f9 equ __zdseg_end + (__zobss_91f9 - __zdata_start)
bss_9210 equ __zdseg_end + (__zobss_9210 - __zdata_start)
bss_9214 equ __zdseg_end + (__zobss_9214 - __zdata_start)
bss_9242 equ __zdseg_end + (__zobss_9242 - __zdata_start)
bss_9246 equ __zdseg_end + (__zobss_9246 - __zdata_start)
bss_9274 equ __zdseg_end + (__zobss_9274 - __zdata_start)
bss_9276 equ __zdseg_end + (__zobss_9276 - __zdata_start)
bss_928e equ __zdseg_end + (__zobss_928e - __zdata_start)
bss_9292 equ __zdseg_end + (__zobss_9292 - __zdata_start)
bss_92c0 equ __zdseg_end + (__zobss_92c0 - __zdata_start)
bss_92c4 equ __zdseg_end + (__zobss_92c4 - __zdata_start)
bss_92f2 equ __zdseg_end + (__zobss_92f2 - __zdata_start)
bss_92f4 equ __zdseg_end + (__zobss_92f4 - __zdata_start)
bss_92f6 equ __zdseg_end + (__zobss_92f6 - __zdata_start)
bss_92f8 equ __zdseg_end + (__zobss_92f8 - __zdata_start)
bss_92fa equ __zdseg_end + (__zobss_92fa - __zdata_start)
bss_92fc equ __zdseg_end + (__zobss_92fc - __zdata_start)
bss_92fd equ __zdseg_end + (__zobss_92fd - __zdata_start)
bss_92fe equ __zdseg_end + (__zobss_92fe - __zdata_start)
bss_92ff equ __zdseg_end + (__zobss_92ff - __zdata_start)
bss_9300 equ __zdseg_end + (__zobss_9300 - __zdata_start)
bss_9301 equ __zdseg_end + (__zobss_9301 - __zdata_start)
bss_9302 equ __zdseg_end + (__zobss_9302 - __zdata_start)
bss_9303 equ __zdseg_end + (__zobss_9303 - __zdata_start)
bss_9304 equ __zdseg_end + (__zobss_9304 - __zdata_start)
bss_9aec equ __zdseg_end + (__zobss_9aec - __zdata_start)
bss_9aee equ __zdseg_end + (__zobss_9aee - __zdata_start)
bss_9b08 equ __zdseg_end + (__zobss_9b08 - __zdata_start)
grid_origin_y equ __zdseg_end + (__zobss_9b0a - __zdata_start)
grid_origin_x equ __zdseg_end + (__zobss_9b0c - __zdata_start)
bss_9b0e equ __zdseg_end + (__zobss_9b0e - __zdata_start)
bss_9b10 equ __zdseg_end + (__zobss_9b10 - __zdata_start)
bss_9b12 equ __zdseg_end + (__zobss_9b12 - __zdata_start)
bss_9b14 equ __zdseg_end + (__zobss_9b14 - __zdata_start)
bss_9b16 equ __zdseg_end + (__zobss_9b16 - __zdata_start)
bss_9b18 equ __zdseg_end + (__zobss_9b18 - __zdata_start)
bss_9b1a equ __zdseg_end + (__zobss_9b1a - __zdata_start)
_Uend equ __zdseg_end + (__zobss_end - __zdata_start)

%include "vmext/ovmain.asm"                ; 0x000e

%include "shared/game/loc_MPHO.asm"              ; 0x00b6

%include "shared/game/find_map_piece.asm"        ; 0x00f0

%include "shared/game/find_object_at.asm"        ; 0x01ac

%include "shared/game/load_maze_file.asm"        ; 0x021c

%include "vmext/api_idx_0002_VNLG.asm"     ; 0x0262

%include "shared/game/loc_QQOI.asm"              ; 0x059a

%include "vmext/loc_IJSN.asm"              ; 0x05c0

%include "vmext/api_idx_0004_KHVI.asm"     ; 0x05e6

%include "vmext/loc_VJNU.asm"              ; 0x0636

%include "shared/game/loc_IVLM.asm"              ; 0x0692

get_cell_wall.get_cell_wall_variant_a1 equ get_north_cell_wall
get_cell_wall.get_cell_wall_variant_b1 equ get_west_cell_wall
%include "shared/game/get_cell_wall.asm"         ; 0x06c3

%include "shared/game/api_idx_0008_OMTP.asm"     ; 0x0764

api_idx_0050_SMLN equ show_message
%include "shared/game/show_message.asm"     ; 0x081a

%include "vmext/loc_NHMQ.asm"              ; 0x0836

check_at_saved_location.save_location_flag1 equ bss_918a
%include "shared/game/check_at_saved_location.asm" ; 0x0860

api_idx_0004_JIVL      equ api_idx_0004_HRPS
jumptable_08e9_case_1  equ api_idx_0004_HRPS.jumptable_case1
jumptable_08e9_case_14 equ api_idx_0004_HRPS.jumptable_case2
jumptable_08e9_case_0  equ api_idx_0004_HRPS.jumptable_case3
jumptable_08e9         equ api_idx_0004_HRPS.jumptable1
%include "shared/game/api_idx_0004_HRPS.asm"     ; 0x0897

%include "vmext/api_idx_000c_RMGQ.asm"     ; 0x09be

%include "vmext/api_idx_0002_JSVP.asm"     ; 0x0b49

%include "vmext/api_idx_000a_NPNK.asm"     ; 0x0b8c

%include "vmext/loc_VUVO.asm"              ; 0x0c0d

%include "vmext/api_idx_008a_SRHN.asm"     ; 0x0c1f

%include "vmext/loc_TLQV.asm"              ; 0x0eac

%include "vmext/api_idx_0012_VNOV.asm"     ; 0x0ee0

%include "shared/game/api_idx_004c_RQSO.asm"     ; 0x1356

%include "shared/game/api_idx_0004_ONJT.asm"     ; 0x146b

%include "shared/game/api_idx_0006_TMNI.asm"     ; 0x14c7

%include "vmext/api_idx_0008_VJQV.asm"     ; 0x151e

%include "vmext/loc_HTTH.asm"              ; 0x15af

%include "shared/game/get_north_cell_wall.asm"   ; 0x1823

%include "shared/game/get_west_cell_wall.asm"    ; 0x189b

loc_UMHI_1913.bss1 equ bss_91a4
%include "shared/game/loc_UMHI_1913.asm"         ; 0x1913

loc_LPLI_1927.bss1 equ bss_91a4
%include "shared/game/loc_LPLI_1927.asm"         ; 0x1927

loc_UMHI_193b.bss1 equ bss_91a6
%include "shared/game/loc_UMHI_193b.asm"         ; 0x193b

loc_LPLI_194f.bss1 equ bss_91a6
%include "shared/game/loc_LPLI_194f.asm"         ; 0x194f

%include "shared/game/offset_relative_map_position.asm" ; 0x1963

%include "shared/game/read_cell_kind_direction.asm" ; 0x19e4

api_idx_0008_UNPO       equ api_idx_0008_LJTR
jumptable_1a8f_case_0   equ api_idx_0008_LJTR.jumptable_case1
jumptable_1a8f_case_3   equ api_idx_0008_LJTR.jumptable_case2
jumptable_1a8f_case_1   equ api_idx_0008_LJTR.jumptable_case3
api_idx_0008_LJTR.bss1  equ bss_91ae
jumptable_1a8f_case_5   equ api_idx_0008_LJTR.jumptable_case4
jumptable_1a8f          equ api_idx_0008_LJTR.jumptable1
jumptable_1b11_case_0   equ api_idx_0008_LJTR.jumptable_case5
jumptable_1b11_case_1   equ api_idx_0008_LJTR.jumptable_case6
jumptable_1b11_case_2   equ api_idx_0008_LJTR.jumptable_case7
jumptable_1b11          equ api_idx_0008_LJTR.jumptable2
jumptable_1ba0_case_1   equ api_idx_0008_LJTR.jumptable_case8
jumptable_1ba0_case_2   equ api_idx_0008_LJTR.jumptable_case9
api_idx_0008_LJTR.bss2  equ bss_91c7
jumptable_1ba0_case_5   equ api_idx_0008_LJTR.jumptable_case10
jumptable_1ba0_case_0   equ api_idx_0008_LJTR.jumptable_case11
api_idx_0008_LJTR.bss3  equ bss_91e0
api_idx_0008_LJTR.bss4  equ bss_91e5
jumptable_1ba0          equ api_idx_0008_LJTR.jumptable3
jumptable_1de5_case_0   equ api_idx_0008_LJTR.jumptable_case12
jumptable_1de5_case_1   equ api_idx_0008_LJTR.jumptable_case13
jumptable_1de5_case_2   equ api_idx_0008_LJTR.jumptable_case14
jumptable_1de5_case_3   equ api_idx_0008_LJTR.jumptable_case15
jumptable_1de5_case_4   equ api_idx_0008_LJTR.jumptable_case16
jumptable_1de5_case_5   equ api_idx_0008_LJTR.jumptable_case17
jumptable_1de5_case_6   equ api_idx_0008_LJTR.jumptable_case18
jumptable_1de5_case_7   equ api_idx_0008_LJTR.jumptable_case19
api_idx_0008_LJTR.bss5  equ bss_91f9
jumptable_1de5_case_8   equ api_idx_0008_LJTR.jumptable_case20
api_idx_0008_LJTR.bss6  equ bss_9214
jumptable_1de5_case_9   equ api_idx_0008_LJTR.jumptable_case21
api_idx_0008_LJTR.bss7  equ bss_9246
jumptable_1de5_case_10  equ api_idx_0008_LJTR.jumptable_case22
jumptable_1de5_case_11  equ api_idx_0008_LJTR.jumptable_case23
jumptable_1de5_case_12  equ api_idx_0008_LJTR.jumptable_case24
api_idx_0008_LJTR.bss8  equ bss_9276
jumptable_1de5_case_13  equ api_idx_0008_LJTR.jumptable_case25
jumptable_1de5_case_14  equ api_idx_0008_LJTR.jumptable_case26
api_idx_0008_LJTR.bss9  equ bss_9292
jumptable_1de5_case_15  equ api_idx_0008_LJTR.jumptable_case27
api_idx_0008_LJTR.bss10 equ bss_92c4
jumptable_1de5_case_16  equ api_idx_0008_LJTR.jumptable_case28
jumptable_1de5          equ api_idx_0008_LJTR.jumptable4
%include "shared/game/api_idx_0008_LJTR.asm"     ; 0x1a1d

jumptable_1e9c_case_0  equ get_relative_cell_wall.jumptable_case1
jumptable_1e9c_case_3  equ get_relative_cell_wall.jumptable_case2
jumptable_1e9c_case_1  equ get_relative_cell_wall.jumptable_case3
jumptable_1e9c_case_5  equ get_relative_cell_wall.jumptable_case4
jumptable_1e9c         equ get_relative_cell_wall.jumptable1
jumptable_1ff2_case_0  equ get_relative_cell_wall.jumptable_case5
jumptable_1ff2_case_1  equ get_relative_cell_wall.jumptable_case6
jumptable_1ff2_case_2  equ get_relative_cell_wall.jumptable_case7
jumptable_1ff2_case_3  equ get_relative_cell_wall.jumptable_case8
jumptable_1ff2_case_4  equ get_relative_cell_wall.jumptable_case9
jumptable_1ff2_case_5  equ get_relative_cell_wall.jumptable_case10
jumptable_1ff2_case_6  equ get_relative_cell_wall.jumptable_case11
jumptable_1ff2_case_10 equ get_relative_cell_wall.jumptable_case12
jumptable_1ff2_case_11 equ get_relative_cell_wall.jumptable_case13
jumptable_1ff2         equ get_relative_cell_wall.jumptable2
%include "shared/game/get_relative_cell_wall.asm" ; 0x1e4f

api_idx_0004_RTNM       equ api_idx_0004_OVUO
api_idx_0004_OVUO.bss1  equ bss_92f2
api_idx_0004_OVUO.bss2  equ bss_9300
api_idx_0004_OVUO.bss3  equ bss_9302
api_idx_0004_OVUO.bss4  equ bss_92f4
api_idx_0004_OVUO.bss5  equ bss_92f6
api_idx_0004_OVUO.bss6  equ bss_92fc
api_idx_0004_OVUO.bss7  equ bss_92fd
api_idx_0004_OVUO.bss8  equ bss_92fe
api_idx_0004_OVUO.bss9  equ bss_92ff
api_idx_0004_OVUO.bss10 equ bss_92f8
api_idx_0004_OVUO.bss11 equ bss_92fa
api_idx_0004_OVUO.bss12 equ bss_9301
api_idx_0004_OVUO.bss13 equ bss_9303
api_idx_0004_OVUO.bss14 equ bss_9304
%include "shared/game/api_idx_0004_OVUO.asm"     ; 0x201b

api_idx_0010_NIMV.loc1     equ loc_LPLI_1927
api_idx_0010_NIMV.loc2     equ loc_UMHI_1913
jumptable_2515_case_1      equ api_idx_0010_NIMV.jumptable_case1
api_idx_0010_NIMV.api_idx1 equ api_idx_0004_RTNM
jumptable_2515_case_0      equ api_idx_0010_NIMV.jumptable_case2
jumptable_2515_case_5      equ api_idx_0010_NIMV.jumptable_case3
jumptable_2515_case_2      equ api_idx_0010_NIMV.jumptable_case4
jumptable_2515_case_4      equ api_idx_0010_NIMV.jumptable_case5
api_idx_0010_NIMV.bss1     equ bss_9aec
jumptable_2515             equ api_idx_0010_NIMV.jumptable1
jumptable_2967_case_8      equ api_idx_0010_NIMV.jumptable_case6
jumptable_2967_case_7      equ api_idx_0010_NIMV.jumptable_case7
jumptable_2967_case_1      equ api_idx_0010_NIMV.jumptable_case8
api_idx_0010_NIMV.bss2     equ bss_91a4
jumptable_2967_case_0      equ api_idx_0010_NIMV.jumptable_case9
jumptable_2967_case_5      equ api_idx_0010_NIMV.jumptable_case10
jumptable_2967_case_10     equ api_idx_0010_NIMV.jumptable_case11
jumptable_2967_case_11     equ api_idx_0010_NIMV.jumptable_case12
jumptable_2967_case_12     equ api_idx_0010_NIMV.jumptable_case13
jumptable_2967_case_14     equ api_idx_0010_NIMV.jumptable_case14
jumptable_2967             equ api_idx_0010_NIMV.jumptable2
%include "shared/game/api_idx_0010_NIMV.asm"     ; 0x2291

jumptable_2e93_case_8      equ api_idx_0012_JLRR.jumptable_case1
jumptable_2e93_case_3      equ api_idx_0012_JLRR.jumptable_case2
api_idx_0012_JLRR.api_idx1 equ api_idx_0004_RTNM
api_idx_0012_JLRR.loc1     equ loc_UMHI_193b
api_idx_0012_JLRR.loc2     equ loc_LPLI_194f
jumptable_2e93_case_1      equ api_idx_0012_JLRR.jumptable_case3
jumptable_2e93_case_0      equ api_idx_0012_JLRR.jumptable_case4
jumptable_2e93_case_7      equ api_idx_0012_JLRR.jumptable_case5
jumptable_2e93_case_2      equ api_idx_0012_JLRR.jumptable_case6
jumptable_2e93_case_4      equ api_idx_0012_JLRR.jumptable_case7
api_idx_0012_JLRR.loc3     equ loc_UMHI_1913
api_idx_0012_JLRR.loc4     equ loc_LPLI_1927
jumptable_2e93_case_5      equ api_idx_0012_JLRR.jumptable_case8
jumptable_2e93             equ api_idx_0012_JLRR.jumptable1
jumptable_3096_case_0      equ api_idx_0012_JLRR.jumptable_case9
jumptable_3096_case_1      equ api_idx_0012_JLRR.jumptable_case10
jumptable_3096_case_2      equ api_idx_0012_JLRR.jumptable_case11
jumptable_3096_case_4      equ api_idx_0012_JLRR.jumptable_case12
jumptable_3096             equ api_idx_0012_JLRR.jumptable2
%include "shared/game/api_idx_0012_JLRR.asm"     ; 0x29e5

api_idx_0012_STJU          equ api_idx_0012_RMOL
api_idx_0012_RMOL.bss1     equ bss_9242
api_idx_0012_RMOL.bss2     equ bss_92c0
api_idx_0012_RMOL.loc1     equ loc_UMHI_193b
api_idx_0012_RMOL.loc2     equ loc_LPLI_194f
api_idx_0012_RMOL.api_idx1 equ api_idx_0004_RTNM
api_idx_0012_RMOL.bss3     equ bss_91a4
api_idx_0012_RMOL.bss4     equ bss_91c5
api_idx_0012_RMOL.loc3     equ loc_LPLI_1927
api_idx_0012_RMOL.loc4     equ loc_UMHI_1913
api_idx_0012_RMOL.bss5     equ bss_91ac
jumptable_35fa_case_1      equ api_idx_0012_RMOL.jumptable_case1
jumptable_35fa_case_2      equ api_idx_0012_RMOL.jumptable_case2
jumptable_35fa_case_3      equ api_idx_0012_RMOL.jumptable_case3
api_idx_0012_RMOL.bss6     equ bss_91a6
jumptable_35fa_case_4      equ api_idx_0012_RMOL.jumptable_case4
jumptable_35fa_case_0      equ api_idx_0012_RMOL.jumptable_case5
jumptable_35fa             equ api_idx_0012_RMOL.jumptable1
api_idx_0012_RMOL.bss7     equ bss_9210
api_idx_0012_RMOL.bss8     equ bss_928e
api_idx_0012_RMOL.bss9     equ bss_9274
api_idx_0012_RMOL.bss10    equ bss_91f7
%include "shared/game/api_idx_0012_RMOL.asm"     ; 0x30f4

%include "shared/game/api_idx_0016_LHKK.asm"     ; 0x39e2

%include "shared/game/api_idx_0024_NUGL.asm"     ; 0x3b83

%include "shared/game/draw_clock_marker_glyph.asm" ; 0x3d29

api_idx_0030_GVGM.bss1                equ bss_91de
api_idx_0030_GVGM.bss2                equ bss_91c5
api_idx_0030_GVGM.bss3                equ bss_91ac
api_idx_0030_GVGM.bss4                equ bss_9aee
api_idx_0030_GVGM.bss5                equ bss_91f7
api_idx_0030_GVGM.bss6                equ bss_928e
api_idx_0030_GVGM.bss7                equ bss_9274
api_idx_0030_GVGM.bss8                equ bss_9210
api_idx_0030_GVGM.bss9                equ bss_92c0
api_idx_0030_GVGM.bss10               equ bss_9242
api_idx_0030_GVGM.bss11               equ bss_92f4
api_idx_0030_GVGM.bss12               equ bss_92f2
api_idx_0030_GVGM.bss13               equ bss_9b08
api_idx_0030_GVGM.bss14               equ bss_91a6
jumptable_4471_case_1                 equ api_idx_0030_GVGM.jumptable_case1
api_idx_0030_GVGM.loc1                equ loc_UMHI_193b
api_idx_0030_GVGM.loc2                equ loc_LPLI_194f
jumptable_4471_case_0                 equ api_idx_0030_GVGM.jumptable_case2
jumptable_4471_case_2                 equ api_idx_0030_GVGM.jumptable_case3
jumptable_4471_case_3                 equ api_idx_0030_GVGM.jumptable_case4
jumptable_4471_case_4                 equ api_idx_0030_GVGM.jumptable_case5
jumptable_4471_case_5                 equ api_idx_0030_GVGM.jumptable_case6
jumptable_4471_case_6                 equ api_idx_0030_GVGM.jumptable_case7
jumptable_4471                        equ api_idx_0030_GVGM.jumptable1
api_idx_0030_GVGM.bss15               equ bss_91a4
api_idx_0030_GVGM.grid_origin_y1      equ grid_origin_y
api_idx_0030_GVGM.bss16               equ bss_91ae
api_idx_0030_GVGM.grid_origin_x1      equ grid_origin_x
api_idx_0030_GVGM.bss17               equ bss_9b0e
api_idx_0030_GVGM.api_idx1            equ api_idx_0008_UNPO
api_idx_0030_GVGM.bss18               equ bss_9b10
api_idx_0030_GVGM.bss19               equ bss_9b12
api_idx_0030_GVGM.bss20               equ bss_9b14
api_idx_0030_GVGM.bss21               equ bss_9b16
api_idx_0030_GVGM.bss22               equ bss_9b18
api_idx_0030_GVGM.bss23               equ bss_9b1a
api_idx_0030_GVGM.bss24               equ bss_9aec
api_idx_0030_GVGM.api_idx2            equ api_idx_0010_NIMV
api_idx_0030_GVGM.api_idx3            equ api_idx_0012_STJU
api_idx_0030_GVGM.api_idx4            equ api_idx_0012_JLRR
api_idx_0030_GVGM.bss25               equ bss_91b8
api_idx_0030_GVGM.bss26               equ bss_9182
api_idx_0030_GVGM.save_location_flag1 equ save_location_flag
api_idx_0030_GVGM.bss27               equ bss_918c
api_idx_0030_GVGM.bss28               equ bss_9192
api_idx_0030_GVGM.bss29               equ bss_9198
%include "shared/game/api_idx_0030_GVGM.asm"     ; 0x3e8c

redraw_maze_view.api_idx1 equ api_idx_0030_GVGM
%include "shared/game/redraw_maze_view.asm"      ; 0x51fb

%include "shared/aztec/aztec_ovbgn.asm"           ; 0x521b

__zdata_start:
%include "vmext/data/dseg_9098.asm"        ; 0x5259

%include "shared/data/save_si.asm"          ; 0x5337

%include "shared/data/save_di.asm"          ; 0x5339

%include "shared/data/save_sp.asm"          ; 0x533b

%include "shared/data/save_bp.asm"          ; 0x533d

%include "shared/data/save_ret.asm"         ; 0x533f


__zimage_end:
absolute __zimage_end
__zobss_9180:
    resb 0x0002
__zobss_9182:
    resb 0x0006
__zobss_9188:
    resb 0x0002
__zobss_918a:
    resb 0x0002
__zobss_918c:
    resb 0x0006
__zobss_9192:
    resb 0x0006
__zobss_9198:
    resb 0x0006
__zobss_919e:
    resb 0x0006
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
    resb 0x000a
__zobss_91b8:
    resb 0x000d
__zobss_91c5:
    resb 0x0002
__zobss_91c7:
    resb 0x0017
__zobss_91de:
    resb 0x0002
__zobss_91e0:
    resb 0x0005
__zobss_91e5:
    resb 0x0012
__zobss_91f7:
    resb 0x0002
__zobss_91f9:
    resb 0x0017
__zobss_9210:
    resb 0x0004
__zobss_9214:
    resb 0x002e
__zobss_9242:
    resb 0x0004
__zobss_9246:
    resb 0x002e
__zobss_9274:
    resb 0x0002
__zobss_9276:
    resb 0x0018
__zobss_928e:
    resb 0x0004
__zobss_9292:
    resb 0x002e
__zobss_92c0:
    resb 0x0004
__zobss_92c4:
    resb 0x002e
__zobss_92f2:
    resb 0x0002
__zobss_92f4:
    resb 0x0002
__zobss_92f6:
    resb 0x0002
__zobss_92f8:
    resb 0x0002
__zobss_92fa:
    resb 0x0002
__zobss_92fc:
    resb 0x0001
__zobss_92fd:
    resb 0x0001
__zobss_92fe:
    resb 0x0001
__zobss_92ff:
    resb 0x0001
__zobss_9300:
    resb 0x0001
__zobss_9301:
    resb 0x0001
__zobss_9302:
    resb 0x0001
__zobss_9303:
    resb 0x0001
__zobss_9304:
    resb 0x07e8
__zobss_9aec:
    resb 0x0002
__zobss_9aee:
    resb 0x001a
__zobss_9b08:
    resb 0x0002
__zobss_9b0a:
    resb 0x0002
__zobss_9b0c:
    resb 0x0002
__zobss_9b0e:
    resb 0x0002
__zobss_9b10:
    resb 0x0002
__zobss_9b12:
    resb 0x0002
__zobss_9b14:
    resb 0x0002
__zobss_9b16:
    resb 0x0002
__zobss_9b18:
    resb 0x0002
__zobss_9b1a:
    resb 0x0002
__zobss_end:
