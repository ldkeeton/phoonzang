; auto-generated
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif


loc_LPSH.mouse_init1 equ mouse_init
%include "shared/library/loc_LPSH.asm"                ; 0x0000

loc_JTQK_0007.mouse_off1 equ mouse_off
%include "shared/library/loc_JTQK_0007.asm"           ; 0x0007

loc_JTQK_000b.mouse_hit_test1 equ mouse_hit_test
%include "shared/library/loc_JTQK_000b.asm"           ; 0x000b

loc_JTQK_000f.leaf_loc1 equ leaf_loc_LMQV
%include "shared/library/loc_JTQK_000f.asm"           ; 0x000f

loc_JTQK_0013.update_mouse_pointer1 equ update_mouse_pointer
%include "shared/library/loc_JTQK_0013.asm"           ; 0x0013

loc_JTQK_0017.load_picture1 equ load_picture
%include "shared/library/loc_JTQK_0017.asm"           ; 0x0017

loc_JTQK_001b.draw_text1 equ draw_text
%include "shared/library/loc_JTQK_001b.asm"           ; 0x001b

loc_JTQK_001f.load_screen1 equ load_screen
%include "shared/library/loc_JTQK_001f.asm"           ; 0x001f

%include "shared/library/loc_JTQK_0023.asm"           ; 0x0023

%include "shared/library/loc_JTQK_0027.asm"           ; 0x0027

%include "shared/library/loc_JTQK_002b.asm"           ; 0x002b

%include "shared/library/loc_JTQK_002f.asm"           ; 0x002f

%include "shared/library/loc_JTQK_0033.asm"           ; 0x0033

%include "shared/library/loc_JTQK_0037.asm"           ; 0x0037

%include "shared/library/loc_JTQK_003b.asm"           ; 0x003b

%include "shared/library/loc_JTQK_003f.asm"           ; 0x003f

%include "shared/library/loc_JTQK_0043.asm"           ; 0x0043

%include "shared/library/loc_JTQK_0047.asm"           ; 0x0047

%include "shared/library/loc_JTQK_004b.asm"           ; 0x004b

%include "shared/library/loc_JTQK_004f.asm"           ; 0x004f

%include "shared/library/loc_JTQK_0053.asm"           ; 0x0053

%include "shared/library/loc_JTQK_0057.asm"           ; 0x0057

%include "shared/library/loc_JTQK_005b.asm"           ; 0x005b

%include "shared/library/loc_JTQK_005f.asm"           ; 0x005f

%include "shared/library/loc_JTQK_0063.asm"           ; 0x0063

%include "shared/library/loc_JTQK_0067.asm"           ; 0x0067

%include "shared/library/loc_JTQK_006b.asm"           ; 0x006b

%include "shared/library/loc_JTQK_006f.asm"           ; 0x006f

%include "shared/library/loc_JTQK_0073.asm"           ; 0x0073

%include "shared/library/loc_JTQK_0077.asm"           ; 0x0077

%include "shared/library/loc_JTQK_007b.asm"           ; 0x007b

%include "shared/library/loc_JTQK_007f.asm"           ; 0x007f

%include "shared/library/loc_JTQK_0083.asm"           ; 0x0083

%include "shared/library/loc_JTQK_0087.asm"           ; 0x0087

%include "shared/library/loc_JTQK_008b.asm"           ; 0x008b

%include "shared/library/loc_JTQK_008f.asm"           ; 0x008f

%include "shared/library/loc_JTQK_0093.asm"           ; 0x0093

%include "shared/library/loc_JTQK_0097.asm"           ; 0x0097

%include "shared/library/loc_JTQK_009b.asm"           ; 0x009b

%include "shared/library/loc_JTQK_009f.asm"           ; 0x009f

%include "shared/library/loc_JTQK_00a3.asm"           ; 0x00a3

%include "shared/library/loc_JTQK_00a7.asm"           ; 0x00a7

%include "shared/library/loc_JTQK_00ab.asm"           ; 0x00ab

%include "shared/library/loc_JTQK_00af.asm"           ; 0x00af

%include "shared/library/loc_JTQK_00b3.asm"           ; 0x00b3

%include "shared/library/loc_JTQK_00b7.asm"           ; 0x00b7

%include "shared/library/loc_JTQK_00bb.asm"           ; 0x00bb

%include "shared/library/loc_JTQK_00bf.asm"           ; 0x00bf

%include "shared/library/loc_JTQK_00c3.asm"           ; 0x00c3

%include "shared/library/loc_JTQK_00c7.asm"           ; 0x00c7

%include "shared/library/loc_JTQK_00cb.asm"           ; 0x00cb

%include "shared/library/loc_JTQK_00cf.asm"           ; 0x00cf

%include "shared/library/loc_JTQK_00d3.asm"           ; 0x00d3

%include "shared/library/loc_JTQK_00d7.asm"           ; 0x00d7

%include "shared/library/loc_JULP.asm"                ; 0x00db

%include "shared/data/maze_mem_seg.asm"       ; 0x00e1

%include "shared/data/screen_buf_seg.asm"     ; 0x00e5

%include "shared/data/scratch_buf_seg.asm"    ; 0x00e9

%include "ega/data/cseg_00f7.asm"          ; 0x00f7

%include "shared/data/ems_para_limit.asm"     ; 0x00ff

%include "ega/data/cseg_0101.asm"          ; 0x0101

%include "shared/data/ems_frame_seg.asm"      ; 0x0103

%include "ega/data/cseg_0105.asm"          ; 0x0105

%include "shared/data/music_start_far.asm"    ; 0x0106

%include "shared/data/music_load_far.asm"     ; 0x010e

%include "shared/data/music_stop_far.asm"     ; 0x0112

%include "shared/data/music_config_far.asm"   ; 0x0116

%include "shared/data/sound_play_far.asm"     ; 0x011a

%include "shared/data/music_playing_far.asm"  ; 0x011e

%include "shared/data/sound_wait_far.asm"     ; 0x0122

%include "shared/data/mouse_glide_active.asm" ; 0x0126

%include "shared/data/mouse_redraw_pending.asm" ; 0x0127

%include "shared/data/mouse_present.asm"      ; 0x0128

%include "shared/data/picture_slots.asm"      ; 0x0129

%include "shared/data/screen_maze_slots.asm"  ; 0x0151

%include "shared/data/maze_slots.asm"         ; 0x015b

%include "shared/data/maze_piece_table.asm"   ; 0x017b

%include "ega/data/cseg_0191.asm"          ; 0x0191

%include "shared/data/ems_slots.asm"          ; 0x019b

%include "ega/data/cseg_01c3.asm"          ; 0x01c3

%include "shared/data/screen_ems_slots.asm"   ; 0x01d7

%include "shared/data/ems_blocks.asm"         ; 0x01eb

%include "shared/data/ems_block_count.asm"    ; 0x028f

%include "shared/data/ems_paras_used.asm"     ; 0x0291

%include "shared/library/graphics_loc_VNKS.asm"       ; 0x0293

%include "shared/library/set_text_opaque.asm"         ; 0x0439

%include "ega/set_text_color.asm"          ; 0x0447

%include "shared/library/set_text_pos.asm"            ; 0x0462

%include "ega/get_text_pos.asm"            ; 0x047d

%include "ega/fill_screen_buffer.asm"      ; 0x0496

%include "ega/show_area.asm"               ; 0x04b1

%include "ega/data/cseg_0948.asm"          ; 0x0948

%include "ega/graphics_loc_IMOU.asm"       ; 0x0949

%include "ega/leaf_loc_KNIM.asm"           ; 0x0b91

%include "shared/library/put_pixel.asm"               ; 0x0bcf

%include "shared/library/fill_area.asm"               ; 0x0bf6

%include "ega/invert_area.asm"             ; 0x0c45

%include "shared/library/save_area.asm"               ; 0x0c9b

cseg_0d2e equ save_area_out_of_memory.cseg1
%include "shared/library/save_area_out_of_memory.asm" ; 0x0d1e

%include "shared/library/save_area_clear_result.asm"  ; 0x0d4b

%include "shared/library/area_restore_and_return.asm" ; 0x0d4f

restore_area.dos_con_loc1 equ dos_con_loc_TMRV
restore_area.loc1         equ loc_0deb
%include "shared/library/restore_area.asm"            ; 0x0d57

dos_con_loc_TMRV equ dos_con_loc_SUSK
cseg_0dc0        equ dos_con_loc_SUSK.cseg1
%include "shared/library/dos_con_loc_SUSK.asm"        ; 0x0db0

loc_0deb equ loc_08ca
%include "shared/library/loc_08ca.asm"                ; 0x0deb

%include "shared/library/load_screen.asm"             ; 0x0df3

save_screen.dos_con_loc1 equ dos_con_loc_KOIJ
save_screen.dos_con_loc2 equ dos_con_loc_UNVT
%include "shared/library/save_screen.asm"             ; 0x0ebd

cseg_0f80 equ dos_con_loc_KOIJ.cseg1
%include "shared/library/dos_con_loc_KOIJ.asm"        ; 0x0f70

dos_con_loc_UNVT equ dos_con_loc_HUUH
cseg_0fbe        equ dos_con_loc_HUUH.cseg1
%include "shared/library/dos_con_loc_HUUH.asm"        ; 0x0fae

%include "shared/data/maze_map_slots.asm"     ; 0x0fe7

%include "shared/data/maze_blocks.asm"        ; 0x0ffb

%include "shared/data/maze_block_count.asm"   ; 0x10cb

%include "shared/data/maze_paras_used.asm"    ; 0x10cd

load_maze.dos_con_loc1 equ dos_con_loc_OIUO
load_maze.dos_con_loc2 equ dos_con_loc_GNNJ
load_maze.loc1         equ loc_SMNJ
%include "shared/library/load_maze.asm"               ; 0x10cf

dos_con_loc_GNNJ.cseg1        equ cseg_125d
loc_SMNJ                      equ dos_con_loc_GNNJ.loc1
dos_con_loc_GNNJ.dos_con_loc1 equ dos_con_loc_MQHQ
%include "shared/library/dos_con_loc_GNNJ.asm"        ; 0x10ff

dos_con_loc_OIUO       equ dos_con_loc_NRMP
dos_con_loc_NRMP.cseg1 equ cseg_1231
%include "shared/library/dos_con_loc_NRMP.asm"        ; 0x1211

dos_con_loc_MQHQ       equ dos_con_loc_GKGP
dos_con_loc_GKGP.cseg1 equ cseg_128c
%include "shared/library/dos_con_loc_GKGP.asm"        ; 0x1221

%include "ega/data/cseg_1231.asm"          ; 0x1231

%include "shared/library/loc_LQTO.asm"                ; 0x12bb

%include "shared/library/leaf_loc_MIUO.asm"           ; 0x1355

%include "ega/data/cseg_138e.asm"          ; 0x138e

loc_KLNH.cseg1 equ cseg_138e
loc_KLNH.cseg2 equ cseg_1390
%include "shared/library/loc_KLNH.asm"                ; 0x1392

leaf_loc_TPOL.cseg1 equ cseg_1390
leaf_loc_TPOL.cseg2 equ cseg_138e
%include "shared/library/leaf_loc_TPOL.asm"           ; 0x145c

%include "shared/library/free_maze.asm"               ; 0x1490

dos_con_loc_14fb equ draw_maze_piece.dos_con_loc1
cseg_150b        equ draw_maze_piece.cseg1
%include "shared/library/draw_maze_piece.asm"         ; 0x14d8

%include "ega/mouse_init.asm"              ; 0x1719

%include "ega/string_loc_RHHH.asm"         ; 0x17a1

%include "ega/mouse_off.asm"               ; 0x1810

%include "ega/leaf_loc_PUST.asm"           ; 0x189f

%include "shared/library/update_mouse_pointer.asm"    ; 0x18c1

leaf_loc_LMQV equ request_mouse_redraw
%include "shared/library/request_mouse_redraw.asm"           ; 0x1900

mouse_hit_test.cseg1 equ cseg_2a02
mouse_hit_test.cseg2 equ cseg_2a04
mouse_hit_test.cseg3 equ cseg_2a06
%include "shared/library/mouse_hit_test.asm"          ; 0x190f

%include "shared/library/get_mouse.asm"               ; 0x1992

%include "ega/set_mouse_pointer.asm"       ; 0x19c1

dos_con_loc_NUII equ dos_con_loc_JJUT
cseg_1aaf        equ dos_con_loc_JJUT.cseg1
%include "shared/library/dos_con_loc_JJUT.asm"        ; 0x1a9f

%include "ega/data/cseg_1ad5.asm"          ; 0x1ad5

%include "shared/data/mouse_drawn_x.asm"      ; 0x1ad9

%include "shared/data/mouse_drawn_y.asm"      ; 0x1adb

%include "ega/data/cseg_1add.asm"          ; 0x1add

draw_mouse_pointer_at.cseg1 equ cseg_2a08
draw_mouse_pointer_at.cseg2 equ cseg_1aeb
draw_mouse_pointer_at.cseg3 equ cseg_1aed
%include "shared/library/draw_mouse_pointer_at.asm"   ; 0x2a4f

%include "ega/io_loc_UQHG.asm"             ; 0x2a6a

%include "ega/io_loc_SRLG.asm"             ; 0x2e35

%include "ega/io_loc_JGUP.asm"             ; 0x2e7d

%include "ega/io_loc_TSTG.asm"             ; 0x2f46

%include "ega/io_loc_QMLN.asm"             ; 0x2f70

leaf_loc_OLKS.cseg1 equ cseg_2a02
%include "shared/library/leaf_loc_OLKS.asm"           ; 0x3035

%include "shared/library/free_picture.asm"            ; 0x303d

load_picture.dos_con_loc1 equ dos_con_loc_QMKK
%include "shared/library/load_picture.asm"            ; 0x3085

cseg_3186 equ dos_con_loc_KGLK.cseg1
%include "shared/library/dos_con_loc_KGLK.asm"        ; 0x3176

%include "shared/data/picture_error_tens.asm" ; 0x3196

%include "shared/data/picture_error_ones.asm" ; 0x3197

cseg_31b6 equ dos_con_loc_QMKK.cseg1
%include "shared/library/dos_con_loc_QMKK.asm"        ; 0x31a6

dissolve_area.show_area1 equ show_area
%include "shared/library/dissolve_area.asm"           ; 0x31df

%include "ega/data/cseg_31e2.asm"          ; 0x31e2

%include "ega/set_rgb.asm"                 ; 0x31f4

%include "ega/get_rgb.asm"                 ; 0x3240

%include "ega/fade_in.asm"                 ; 0x3241

%include "ega/fade_out.asm"                ; 0x3242

%include "ega/reset_rgb.asm"               ; 0x3243

%include "ega/set_palette.asm"             ; 0x3244

%include "ega/leaf_loc_TTKL.asm"           ; 0x3245

%include "ega/leaf_loc_OHGP.asm"           ; 0x3252

%include "ega/data/cseg_32b3.asm"          ; 0x32b3

%include "shared/library/get_free_space.asm"          ; 0x33b3

mouse_glide_to.cseg1 equ cseg_00fb
%include "shared/library/mouse_glide_to.asm"          ; 0x341e

mouse_glide_back.cseg1 equ cseg_00fb
%include "shared/library/mouse_glide_back.asm"        ; 0x34c0

%include "shared/library/free_screen.asm"             ; 0x3570

get_palette.cseg1 equ cseg_00f7
%include "shared/library/get_palette.asm"             ; 0x35ba

%include "shared/data/text_state_words.asm"   ; 0x35dd

%include "shared/data/text_state_bytes.asm"   ; 0x3605

draw_text.leaf_loc1     equ leaf_loc_TVGR
draw_text.graphics_loc1 equ graphics_loc_NVPK
%include "shared/library/draw_text.asm"               ; 0x361e

%include "ega/leaf_loc_TVGR.asm"           ; 0x39e3

%include "ega/print_msg_and_exit.asm"      ; 0x3a0f

%include "ega/data/msg_frame_too_big.asm"  ; 0x3a18

%include "ega/data/frame_digit_hi.asm"     ; 0x3a21

%include "ega/data/frame_digit_lo.asm"     ; 0x3a22

%include "ega/data/slot_digit_hi.asm"      ; 0x3a34

%include "ega/data/slot_digit_lo.asm"      ; 0x3a35

%include "ega/table_entry_ptr.asm"         ; 0x3a3a

%include "shared/library/leaf_loc_NOSG.asm"           ; 0x3a51

graphics_loc_NVPK.loc1      equ loc_3d4a
graphics_loc_NVPK.loc2      equ loc_3e8a
graphics_loc_NVPK.loc3      equ loc_3c2e
graphics_loc_NVPK.leaf_loc1 equ leaf_loc_KSJN
%include "shared/library/graphics_loc_NVPK.asm"       ; 0x3a8b

%include "shared/library/leaf_loc_MTKK.asm"           ; 0x3bf2

%include "shared/library/leaf_loc_KSJN.asm"           ; 0x3c12

loc_3c2e           equ loc_337c
loc_3c3f           equ loc_337c.loc1
loc_3c4f           equ loc_337c.loc2
loc_3d42           equ loc_337c.loc3
loc_3c5c           equ loc_337c.loc4
loc_337c.leaf_loc1 equ leaf_loc_KSJN
loc_3c6d           equ loc_337c.loc5
loc_3d15           equ loc_337c.loc6
loc_3c7d           equ loc_337c.loc7
loc_3c87           equ loc_337c.loc8
loc_3c8f           equ loc_337c.loc9
loc_3d10           equ loc_337c.loc10
loc_3c9d           equ loc_337c.loc11
loc_3d0b           equ loc_337c.loc12
loc_3ca7           equ loc_337c.loc13
loc_3d03           equ loc_337c.loc14
loc_3cef           equ loc_337c.loc15
loc_3cd4           equ loc_337c.loc16
loc_3ccf           equ loc_337c.loc17
loc_3cec           equ loc_337c.loc18
loc_3ce9           equ loc_337c.loc19
loc_3cf6           equ loc_337c.loc20
loc_3cfc           equ loc_337c.loc21
loc_3d27           equ loc_337c.loc22
loc_3d44           equ loc_337c.loc23
loc_3d47           equ loc_337c.loc24
%include "shared/library/loc_337c.asm"                ; 0x3c2e

loc_3d4a           equ loc_3498
loc_3d82           equ loc_3498.loc1
loc_3d8f           equ loc_3498.loc2
loc_3e82           equ loc_3498.loc3
loc_3d9c           equ loc_3498.loc4
loc_3498.leaf_loc1 equ leaf_loc_KSJN
loc_3dad           equ loc_3498.loc5
loc_3e55           equ loc_3498.loc6
loc_3dbd           equ loc_3498.loc7
loc_3dc7           equ loc_3498.loc8
loc_3dcf           equ loc_3498.loc9
loc_3e50           equ loc_3498.loc10
loc_3ddd           equ loc_3498.loc11
loc_3e4b           equ loc_3498.loc12
loc_3de7           equ loc_3498.loc13
loc_3e43           equ loc_3498.loc14
loc_3e2f           equ loc_3498.loc15
loc_3e14           equ loc_3498.loc16
loc_3e0f           equ loc_3498.loc17
loc_3e2c           equ loc_3498.loc18
loc_3e29           equ loc_3498.loc19
loc_3e36           equ loc_3498.loc20
loc_3e3c           equ loc_3498.loc21
loc_3e67           equ loc_3498.loc22
loc_3e84           equ loc_3498.loc23
loc_3e87           equ loc_3498.loc24
%include "shared/library/loc_3498.asm"                ; 0x3d4a

loc_3e8a           equ loc_35d8
loc_3ec2           equ loc_35d8.loc1
loc_3ed2           equ loc_35d8.loc2
loc_3fc5           equ loc_35d8.loc3
loc_3edf           equ loc_35d8.loc4
loc_35d8.leaf_loc1 equ leaf_loc_KSJN
loc_3ef0           equ loc_35d8.loc5
loc_3f98           equ loc_35d8.loc6
loc_3f00           equ loc_35d8.loc7
loc_3f0a           equ loc_35d8.loc8
loc_3f12           equ loc_35d8.loc9
loc_3f93           equ loc_35d8.loc10
loc_3f20           equ loc_35d8.loc11
loc_3f8e           equ loc_35d8.loc12
loc_3f2a           equ loc_35d8.loc13
loc_3f86           equ loc_35d8.loc14
loc_3f72           equ loc_35d8.loc15
loc_3f57           equ loc_35d8.loc16
loc_3f52           equ loc_35d8.loc17
loc_3f6f           equ loc_35d8.loc18
loc_3f6c           equ loc_35d8.loc19
loc_3f79           equ loc_35d8.loc20
loc_3f7f           equ loc_35d8.loc21
loc_3faa           equ loc_35d8.loc22
loc_3fc7           equ loc_35d8.loc23
loc_3fca           equ loc_35d8.loc24
%include "shared/library/loc_35d8.asm"                ; 0x3e8a

%include "shared/data/intensity_limits.asm"   ; 0x3fcd

cseg_40dd equ cache_area_disk_error.cseg1
%include "shared/library/cache_area_disk_error.asm"   ; 0x40cd

%include "shared/library/cache_area.asm"              ; 0x4111

cseg_4379 equ cache_area_out_of_ems.cseg1
%include "shared/library/cache_area_out_of_ems.asm"   ; 0x4369

%include "shared/library/cache_area_clear_result.asm" ; 0x4394

%include "shared/library/cache_area_restore_and_return.asm" ; 0x4398

cseg_43b0 equ cache_area_ems_slots_full.cseg1
%include "shared/library/cache_area_ems_slots_full.asm" ; 0x43a0

cseg_43e1 equ cache_area_maze_mem_full.cseg1
%include "shared/library/cache_area_maze_mem_full.asm" ; 0x43d1

%include "shared/library/cache_area_return_zero.asm"  ; 0x4408

cseg_441e equ cache_area_maze_slots_full.cseg1
%include "shared/library/cache_area_maze_slots_full.asm" ; 0x440e

%include "shared/data/ems_cur_page.asm"       ; 0x4440

%include "shared/library/ems_map_pages.asm"           ; 0x4442

%include "shared/library/restore_screen.asm"          ; 0x4457

dos_file_loc_MUHV.loc1         equ loc_461f
dos_file_loc_MUHV.dos_con_loc1 equ dos_con_loc_TORI
%include "shared/library/dos_file_loc_MUHV.asm"       ; 0x45bd

dos_con_loc_TORI equ dos_con_loc_KVVK
cseg_45fb        equ dos_con_loc_KVVK.cseg1
%include "shared/library/dos_con_loc_KVVK.asm"        ; 0x45eb

loc_461f equ loc_3d6d
%include "shared/library/loc_3d6d.asm"                ; 0x461f

cache_maze.dos_con_loc1 equ dos_con_loc_TUHU
%include "shared/library/cache_maze.asm"              ; 0x4624

%include "shared/library/cache_maze_restore_and_return.asm" ; 0x47a0

cseg_47b8 equ cache_maze_slot_in_use.cseg1
%include "shared/library/cache_maze_slot_in_use.asm"  ; 0x47a8

%include "shared/library/cache_maze_return_zero.asm"  ; 0x47ea

dos_con_loc_TUHU equ dos_con_loc_JUQV
cseg_4800        equ dos_con_loc_JUQV.cseg1
%include "shared/library/dos_con_loc_JUQV.asm"        ; 0x47f0

%include "shared/library/cache_screen.asm"            ; 0x4825

%include "shared/library/cache_screen_restore_and_return.asm" ; 0x492b

cseg_4943 equ cache_screen_slot_in_use.cseg1
%include "shared/library/cache_screen_slot_in_use.asm" ; 0x4933

%include "shared/library/cache_screen_return_zero.asm" ; 0x4977

cseg_498d equ cache_screen_out_of_ems.cseg1
%include "shared/library/cache_screen_out_of_ems.asm" ; 0x497d

%include "shared/data/sound_slots.asm"        ; 0x49b4

load_sound.dos_con_loc1 equ dos_con_loc_TVRM
load_sound.loc1         equ loc_4b52
load_sound.dos_con_loc2 equ dos_con_loc_LGMH
%include "shared/library/load_sound.asm"              ; 0x4a08

dos_con_loc_TVRM equ dos_con_loc_KPVS
cseg_4aea        equ dos_con_loc_KPVS.cseg1
%include "shared/library/dos_con_loc_KPVS.asm"        ; 0x4ada

dos_con_loc_LGMH equ dos_con_loc_KOGR
cseg_4b26        equ dos_con_loc_KOGR.cseg1
%include "shared/library/dos_con_loc_KOGR.asm"        ; 0x4b16

loc_4b52              equ loc_42a0
loc_4b9c              equ loc_42a0.loc1
loc_42a0.dos_con_loc1 equ dos_con_loc_LGMH
%include "shared/library/loc_42a0.asm"                ; 0x4b52

%include "shared/library/string_loc_RQON.asm"         ; 0x4bb2

%include "shared/library/dos_file_loc_VPIN.asm"       ; 0x4bcb

free_sound.leaf_loc1    equ leaf_loc_OSUJ
free_sound.leaf_loc2    equ leaf_loc_JRKU
free_sound.dos_con_loc1 equ dos_con_loc_GJMS
free_sound.leaf_loc3    equ leaf_loc_RJJR
%include "shared/library/free_sound.asm"              ; 0x4c4c

%include "shared/library/leaf_loc_OSUJ.asm"           ; 0x4ca9

%include "shared/library/leaf_loc_IHJG.asm"           ; 0x4cbe

%include "shared/library/leaf_loc_MGRH.asm"           ; 0x4cd3

%include "shared/library/leaf_loc_USQQ.asm"           ; 0x4ce8

%include "shared/library/leaf_loc_JRKU.asm"           ; 0x4cfd

cseg_4d3e equ dos_con_loc_GJMS.cseg1
%include "shared/library/dos_con_loc_GJMS.asm"        ; 0x4d13

leaf_loc_RJJR equ leaf_loc_IQGS
%include "shared/library/leaf_loc_IQGS.asm"           ; 0x4d55

%include "shared/library/play_sound.asm"              ; 0x4dd9

%include "shared/library/wait_sound.asm"              ; 0x4e48

%include "shared/library/stop_sound.asm"              ; 0x4e64

%include "shared/data/score_slots.asm"        ; 0x4e8b

%include "shared/data/score_info.asm"         ; 0x4ea3

load_score.dos_con_loc1 equ dos_con_loc_OOVK
load_score.dos_con_loc2 equ dos_con_loc_LIIS
%include "shared/library/load_score.asm"              ; 0x4ead

cseg_4fd4 equ dos_con_loc_OOVK.cseg1
%include "shared/library/dos_con_loc_OOVK.asm"        ; 0x4fc4

dos_con_loc_LIIS equ dos_con_loc_HPIH
cseg_5010        equ dos_con_loc_HPIH.cseg1
%include "shared/library/dos_con_loc_HPIH.asm"        ; 0x5000

%include "shared/library/play_score.asm"              ; 0x503c

%include "shared/library/free_score.asm"              ; 0x50d1

%include "shared/library/is_music_playing.asm"        ; 0x5118

%include "shared/library/stop_music.asm"              ; 0x5130

%include "shared/library/set_music_tempo_volume.asm"  ; 0x5148

%include "ega/data/cseg_5169.asm"          ; 0x5169

