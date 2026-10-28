; auto-generated
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif


%include "shared/drv/loc_LPSH.asm"                ; 0x0000

loc_JTQK_0007.mouse_off1 equ mouse_off
%include "shared/drv/loc_JTQK_0007.asm"           ; 0x0007

loc_JTQK_000b.mouse_hit_test1 equ mouse_hit_test
%include "shared/drv/loc_JTQK_000b.asm"           ; 0x000b

loc_JTQK_000f.leaf_loc1 equ leaf_loc_LMQV
%include "shared/drv/loc_JTQK_000f.asm"           ; 0x000f

loc_JTQK_0013.update_mouse_pointer1 equ update_mouse_pointer
%include "shared/drv/loc_JTQK_0013.asm"           ; 0x0013

loc_JTQK_0017.load_picture1 equ load_picture
%include "shared/drv/loc_JTQK_0017.asm"           ; 0x0017

loc_JTQK_001b.draw_text1 equ draw_text
%include "shared/drv/loc_JTQK_001b.asm"           ; 0x001b

loc_JTQK_001f.load_screen1 equ load_screen
%include "shared/drv/loc_JTQK_001f.asm"           ; 0x001f

%include "shared/drv/loc_JTQK_0023.asm"           ; 0x0023

%include "shared/drv/loc_JTQK_0027.asm"           ; 0x0027

%include "shared/drv/loc_JTQK_002b.asm"           ; 0x002b

%include "shared/drv/loc_JTQK_002f.asm"           ; 0x002f

%include "shared/drv/loc_JTQK_0033.asm"           ; 0x0033

%include "shared/drv/loc_JTQK_0037.asm"           ; 0x0037

%include "shared/drv/loc_JTQK_003b.asm"           ; 0x003b

%include "shared/drv/loc_JTQK_003f.asm"           ; 0x003f

%include "shared/drv/loc_JTQK_0043.asm"           ; 0x0043

%include "shared/drv/loc_JTQK_0047.asm"           ; 0x0047

%include "shared/drv/loc_JTQK_004b.asm"           ; 0x004b

%include "shared/drv/loc_JTQK_004f.asm"           ; 0x004f

%include "shared/drv/loc_JTQK_0053.asm"           ; 0x0053

%include "shared/drv/loc_JTQK_0057.asm"           ; 0x0057

%include "shared/drv/loc_JTQK_005b.asm"           ; 0x005b

%include "shared/drv/loc_JTQK_005f.asm"           ; 0x005f

%include "shared/drv/loc_JTQK_0063.asm"           ; 0x0063

%include "shared/drv/loc_JTQK_0067.asm"           ; 0x0067

%include "shared/drv/loc_JTQK_006b.asm"           ; 0x006b

%include "shared/drv/loc_JTQK_006f.asm"           ; 0x006f

%include "shared/drv/loc_JTQK_0073.asm"           ; 0x0073

%include "shared/drv/loc_JTQK_0077.asm"           ; 0x0077

%include "shared/drv/loc_JTQK_007b.asm"           ; 0x007b

%include "shared/drv/loc_JTQK_007f.asm"           ; 0x007f

%include "shared/drv/loc_JTQK_0083.asm"           ; 0x0083

%include "shared/drv/loc_JTQK_0087.asm"           ; 0x0087

%include "shared/drv/loc_JTQK_008b.asm"           ; 0x008b

%include "shared/drv/loc_JTQK_008f.asm"           ; 0x008f

%include "shared/drv/loc_JTQK_0093.asm"           ; 0x0093

%include "shared/drv/loc_JTQK_0097.asm"           ; 0x0097

%include "shared/drv/loc_JTQK_009b.asm"           ; 0x009b

%include "shared/drv/loc_JTQK_009f.asm"           ; 0x009f

%include "shared/drv/loc_JTQK_00a3.asm"           ; 0x00a3

%include "shared/drv/loc_JTQK_00a7.asm"           ; 0x00a7

%include "shared/drv/loc_JTQK_00ab.asm"           ; 0x00ab

%include "shared/drv/loc_JTQK_00af.asm"           ; 0x00af

%include "shared/drv/loc_JTQK_00b3.asm"           ; 0x00b3

%include "shared/drv/loc_JTQK_00b7.asm"           ; 0x00b7

%include "shared/drv/loc_JTQK_00bb.asm"           ; 0x00bb

%include "shared/drv/loc_JTQK_00bf.asm"           ; 0x00bf

%include "shared/drv/loc_JTQK_00c3.asm"           ; 0x00c3

%include "shared/drv/loc_JTQK_00c7.asm"           ; 0x00c7

%include "shared/drv/loc_JTQK_00cb.asm"           ; 0x00cb

%include "shared/drv/loc_JTQK_00cf.asm"           ; 0x00cf

%include "shared/drv/loc_JTQK_00d3.asm"           ; 0x00d3

%include "shared/drv/loc_JTQK_00d7.asm"           ; 0x00d7

%include "shared/drv/thunk_loc_JULP.asm"          ; 0x00db

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

%include "shared/data/cache_maze_slot_table.asm" ; 0x01c3

%include "shared/data/screen_ems_slots.asm"   ; 0x01d7

%include "shared/data/ems_blocks.asm"         ; 0x01eb

%include "shared/data/ems_block_count.asm"    ; 0x028f

%include "shared/data/ems_paras_used.asm"     ; 0x0291

%include "shared/drv/graphics_loc_VNKS.asm"       ; 0x0293

%include "shared/drv/set_text_opaque.asm"         ; 0x0439

%include "ega/set_text_color.asm"          ; 0x0447

%include "shared/drv/set_text_pos.asm"            ; 0x0462

%include "ega/get_text_pos.asm"            ; 0x047d

%include "ega/fill_screen_buffer.asm"      ; 0x0496

%include "ega/show_area.asm"               ; 0x04b1

%include "ega/data/cseg_0948.asm"          ; 0x0948

%include "ega/graphics_loc_IMOU.asm"       ; 0x0949

%include "ega/leaf_loc_KNIM.asm"           ; 0x0b91

%include "shared/drv/put_pixel.asm"               ; 0x0bcf

%include "shared/drv/fill_area.asm"               ; 0x0bf6

%include "ega/invert_area.asm"             ; 0x0c45

%include "shared/drv/save_area.asm"               ; 0x0c9b

cseg_0d2e equ save_area_out_of_memory.cseg1
%include "shared/drv/save_area_out_of_memory.asm" ; 0x0d1e

%include "shared/drv/save_area_clear_result.asm"  ; 0x0d4b

%include "shared/drv/area_restore_and_return.asm" ; 0x0d4f

cseg_0dc0 equ restore_area.cseg1
%include "shared/drv/restore_area.asm"            ; 0x0d57

%include "shared/drv/load_screen.asm"             ; 0x0df3

cseg_0f80 equ save_screen.cseg1
cseg_0fbe equ save_screen.cseg2
%include "shared/drv/save_screen.asm"             ; 0x0ebd

%include "shared/data/maze_map_slots.asm"     ; 0x0fe7

%include "shared/data/maze_blocks.asm"        ; 0x0ffb

%include "shared/data/maze_block_count.asm"   ; 0x10cb

%include "shared/data/maze_paras_used.asm"    ; 0x10cd

cseg_125d equ load_maze.cseg1
cseg_1231 equ load_maze.cseg2
cseg_128c equ load_maze.cseg3
%include "shared/drv/load_maze.asm"               ; 0x10cf

%include "shared/drv/decrement_cached_slot_ids.asm" ; 0x1355

%include "ega/data/cseg_138e.asm"          ; 0x138e

release_and_compact_ems_blocks.cseg1 equ cseg_138e
release_and_compact_ems_blocks.cseg2 equ cseg_1390
%include "shared/drv/release_and_compact_ems_blocks.asm" ; 0x1392

leaf_loc_TPOL.cseg1 equ cseg_1390
leaf_loc_TPOL.cseg2 equ cseg_138e
%include "shared/drv/leaf_loc_TPOL.asm"           ; 0x145c

%include "shared/drv/free_maze.asm"               ; 0x1490

loc_14fb  equ draw_maze_piece.loc1
cseg_150b equ draw_maze_piece.cseg1
%include "shared/drv/draw_maze_piece.asm"         ; 0x14d8

%include "ega/mouse_init.asm"              ; 0x1719

%include "ega/string_loc_RHHH.asm"         ; 0x17a1

%include "ega/mouse_off.asm"               ; 0x1810

%include "ega/leaf_loc_PUST.asm"           ; 0x189f

%include "shared/drv/update_mouse_pointer.asm"    ; 0x18c1

leaf_loc_LMQV equ request_mouse_redraw
%include "shared/drv/request_mouse_redraw.asm"           ; 0x1900

mouse_hit_test.cseg1 equ cseg_2a02
mouse_hit_test.cseg2 equ cseg_2a04
mouse_hit_test.cseg3 equ cseg_2a06
%include "shared/drv/mouse_hit_test.asm"          ; 0x190f

%include "shared/drv/get_mouse.asm"               ; 0x1992

%include "ega/set_mouse_pointer.asm"       ; 0x19c1

%include "ega/data/cseg_1ad5.asm"          ; 0x1ad5

%include "shared/data/mouse_drawn_x.asm"      ; 0x1ad9

%include "shared/data/mouse_drawn_y.asm"      ; 0x1adb

%include "ega/data/cseg_1add.asm"          ; 0x1add

draw_mouse_pointer_at.cseg1 equ cseg_2a08
draw_mouse_pointer_at.cseg2 equ cseg_1aeb
draw_mouse_pointer_at.cseg3 equ cseg_1aed
%include "shared/drv/draw_mouse_pointer_at.asm"   ; 0x2a4f

%include "ega/io_loc_UQHG.asm"             ; 0x2a6a

%include "ega/io_loc_SRLG.asm"             ; 0x2e35

%include "ega/io_loc_JGUP.asm"             ; 0x2e7d

%include "ega/io_loc_TSTG.asm"             ; 0x2f46

%include "ega/io_loc_QMLN.asm"             ; 0x2f70

leaf_loc_OLKS.cseg1 equ cseg_2a02
%include "shared/drv/leaf_loc_OLKS.asm"           ; 0x3035

%include "shared/drv/free_picture.asm"            ; 0x303d

loc_3176  equ load_picture.loc1
cseg_3186 equ load_picture.cseg1
cseg_31b6 equ load_picture.cseg2
%include "shared/drv/load_picture.asm"            ; 0x3085

dissolve_area.show_area1 equ show_area
%include "shared/drv/dissolve_area.asm"           ; 0x31df

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

%include "shared/drv/get_free_space.asm"          ; 0x33b3

mouse_glide_to.cseg1 equ cseg_00fb
%include "shared/drv/mouse_glide_to.asm"          ; 0x341e

mouse_glide_back.cseg1 equ cseg_00fb
%include "shared/drv/mouse_glide_back.asm"        ; 0x34c0

%include "shared/drv/free_screen.asm"             ; 0x3570

get_palette.cseg1 equ cseg_00f7
%include "shared/drv/get_palette.asm"             ; 0x35ba

%include "shared/data/text_state_words.asm"   ; 0x35dd

%include "shared/data/text_state_bytes.asm"   ; 0x3605

draw_text.leaf_loc1 equ leaf_loc_TVGR
%include "shared/drv/draw_text.asm"               ; 0x361e

%include "ega/leaf_loc_TVGR.asm"           ; 0x39e3

%include "ega/print_msg_and_exit.asm"      ; 0x3a0f

%include "ega/data/msg_frame_too_big.asm"  ; 0x3a18

%include "ega/data/frame_digit_hi.asm"     ; 0x3a21

%include "ega/data/frame_digit_lo.asm"     ; 0x3a22

%include "ega/data/slot_digit_hi.asm"      ; 0x3a34

%include "ega/data/slot_digit_lo.asm"      ; 0x3a35

%include "ega/table_entry_ptr.asm"         ; 0x3a3a

%include "shared/drv/leaf_loc_NOSG.asm"           ; 0x3a51

leaf_loc_KSJN equ render_text_glyph_by_mode.leaf_loc1
%include "shared/drv/render_text_glyph_by_mode.asm" ; 0x3a8b

%include "shared/data/intensity_limits.asm"   ; 0x3fcd

cseg_40dd equ cache_area_disk_error.cseg1
cseg_4379 equ cache_area_disk_error.cseg2
cseg_43b0 equ cache_area_disk_error.cseg3
cseg_43e1 equ cache_area_disk_error.cseg4
cseg_441e equ cache_area_disk_error.cseg5
%include "shared/drv/cache_area_disk_error.asm"   ; 0x40cd

%include "shared/drv/ems_map_pages.asm"           ; 0x4442

%include "shared/drv/restore_screen.asm"          ; 0x4457

cseg_45fb equ copy_file_region.cseg1
%include "shared/drv/copy_file_region.asm"        ; 0x45bd

cseg_47b8 equ cache_maze.cseg1
cseg_4800 equ cache_maze.cseg2
%include "shared/drv/cache_maze.asm"              ; 0x4624

%include "shared/drv/cache_screen_to_storage.asm" ; 0x4825

%include "shared/data/sound_slots.asm"        ; 0x49b4

cseg_4aea equ load_sound.cseg1
cseg_4b26 equ load_sound.cseg2
%include "shared/drv/load_sound.asm"              ; 0x4a08

%include "shared/drv/string_loc_RQON.asm"         ; 0x4bb2

%include "shared/drv/dos_file_loc_VPIN.asm"       ; 0x4bcb

free_sound.leaf_loc1    equ leaf_loc_OSUJ
free_sound.leaf_loc2    equ leaf_loc_JRKU
free_sound.dos_con_loc1 equ dos_con_loc_GJMS
free_sound.leaf_loc3    equ leaf_loc_RJJR
%include "shared/drv/free_sound.asm"              ; 0x4c4c

%include "shared/drv/leaf_loc_OSUJ.asm"           ; 0x4ca9

%include "shared/drv/leaf_loc_IHJG.asm"           ; 0x4cbe

%include "shared/drv/leaf_loc_MGRH.asm"           ; 0x4cd3

%include "shared/drv/leaf_loc_USQQ.asm"           ; 0x4ce8

%include "shared/drv/leaf_loc_JRKU.asm"           ; 0x4cfd

cseg_4d3e equ dos_con_loc_GJMS.cseg1
%include "shared/drv/dos_con_loc_GJMS.asm"        ; 0x4d13

leaf_loc_RJJR equ leaf_loc_IQGS
%include "shared/drv/leaf_loc_IQGS.asm"           ; 0x4d55

%include "shared/drv/play_sound.asm"              ; 0x4dd9

%include "shared/drv/wait_sound.asm"              ; 0x4e48

%include "shared/drv/stop_sound.asm"              ; 0x4e64

%include "shared/data/score_slots.asm"        ; 0x4e8b

%include "shared/data/score_info.asm"         ; 0x4ea3

cseg_4fd4 equ load_score.cseg1
cseg_5010 equ load_score.cseg2
%include "shared/drv/load_score.asm"              ; 0x4ead

%include "shared/drv/play_score.asm"              ; 0x503c

%include "shared/drv/free_score.asm"              ; 0x50d1

%include "shared/drv/is_music_playing.asm"        ; 0x5118

%include "shared/drv/stop_music.asm"              ; 0x5130

%include "shared/drv/set_music_tempo_volume.asm"  ; 0x5148

%include "ega/data/cseg_5169.asm"          ; 0x5169

