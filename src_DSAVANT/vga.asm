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

loc_JTQK_000f.request_mouse_redraw1 equ request_mouse_redraw
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

%include "shared/data/palette_ptr.asm"        ; 0x00f7

%include "shared/data/delay_hook.asm"         ; 0x00fb

%include "shared/data/ems_para_limit.asm"     ; 0x00ff

%include "vga/data/cseg_0101.asm"          ; 0x0101

%include "shared/data/ems_frame_seg.asm"      ; 0x0103

%include "vga/data/cseg_0105.asm"          ; 0x0105

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

%include "vga/data/cseg_0191.asm"          ; 0x0191

%include "shared/data/ems_slots.asm"          ; 0x019b

%include "shared/data/cache_maze_slot_table.asm" ; 0x01c3

%include "shared/data/screen_ems_slots.asm"   ; 0x01d7

%include "shared/data/ems_blocks.asm"         ; 0x01eb

%include "shared/data/ems_block_count.asm"    ; 0x028f

%include "shared/data/ems_paras_used.asm"     ; 0x0291

%include "shared/drv/graphics_loc_VNKS.asm"       ; 0x0293

%include "shared/drv/set_text_opaque.asm"         ; 0x0439

%include "vga/set_text_color.asm"          ; 0x0447

%include "shared/drv/set_text_pos.asm"            ; 0x045c

%include "vga/get_text_pos.asm"            ; 0x0477

%include "vga/fill_screen_buffer.asm"      ; 0x0496

%include "vga/show_area.asm"               ; 0x04b5

%include "vga/data/cseg_0515.asm"          ; 0x0515

%include "vga/clip_mouse_pointer_to_area.asm" ; 0x0516

%include "vga/redraw_mouse_pointer.asm"    ; 0x067f

%include "shared/drv/put_pixel.asm"               ; 0x06b2

%include "shared/drv/fill_area.asm"               ; 0x06d9

%include "vga/invert_area.asm"             ; 0x0728

cseg_080d equ save_area.cseg1
%include "shared/drv/save_area.asm"               ; 0x077a

cseg_089f equ restore_area.cseg1
%include "shared/drv/restore_area.asm"            ; 0x0836

%include "shared/drv/load_screen.asm"             ; 0x08d2

cseg_0a5f equ save_screen.cseg1
cseg_0a9d equ save_screen.cseg2
%include "shared/drv/save_screen.asm"             ; 0x099c

%include "shared/data/maze_map_slots.asm"     ; 0x0ac6

%include "shared/data/maze_blocks.asm"        ; 0x0ada

%include "shared/data/maze_block_count.asm"   ; 0x0baa

%include "shared/data/maze_paras_used.asm"    ; 0x0bac

cseg_0d3c equ load_maze.cseg1
cseg_0d10 equ load_maze.cseg2
cseg_0d6b equ load_maze.cseg3
%include "shared/drv/load_maze.asm"               ; 0x0bae

%include "shared/drv/decrement_cached_slot_ids.asm" ; 0x0e34

%include "vga/data/cseg_0e6d.asm"          ; 0x0e6d

release_and_compact_ems_blocks.cseg1 equ cseg_0e6d
release_and_compact_ems_blocks.cseg2 equ cseg_0e6f
%include "shared/drv/release_and_compact_ems_blocks.asm" ; 0x0e71

leaf_loc_TPOL.cseg1 equ cseg_0e6f
leaf_loc_TPOL.cseg2 equ cseg_0e6d
%include "shared/drv/leaf_loc_TPOL.asm"           ; 0x0f3b

%include "shared/drv/free_maze.asm"               ; 0x0f6f

loc_0fda  equ draw_maze_piece.loc1
cseg_0fea equ draw_maze_piece.cseg1
%include "shared/drv/draw_maze_piece.asm"         ; 0x0fb7

%include "vga/mouse_init.asm"              ; 0x11f8

%include "vga/mouse_off.asm"               ; 0x126c

%include "shared/drv/update_mouse_pointer.asm"    ; 0x12c9

%include "shared/drv/request_mouse_redraw.asm"    ; 0x1308

mouse_hit_test.cseg1 equ cseg_1dcd
mouse_hit_test.cseg2 equ cseg_1dcf
mouse_hit_test.cseg3 equ cseg_1dd1
%include "shared/drv/mouse_hit_test.asm"          ; 0x1317

%include "shared/drv/get_mouse.asm"               ; 0x139a

data_1e5c equ __zdata_1e5c - IMAGE_BASE
%include "vga/set_mouse_pointer.asm"       ; 0x13c9

%include "shared/data/mouse_drawn_x.asm"      ; 0x14ac

%include "shared/data/mouse_drawn_y.asm"      ; 0x14ae

%include "vga/data/cseg_14b0.asm"          ; 0x14b0

draw_mouse_pointer_at.cseg1 equ cseg_1dd3
draw_mouse_pointer_at.cseg2 equ cseg_14b0
draw_mouse_pointer_at.cseg3 equ cseg_14b2
%include "shared/drv/draw_mouse_pointer_at.asm"   ; 0x1e1a

data_1dc4 equ __zdata_1dc4 - IMAGE_BASE
data_1e4c equ __zdata_1e4c - IMAGE_BASE
%include "vga/graphics_loc_OSKV.asm"       ; 0x1e35

leaf_loc_OLKS.cseg1 equ cseg_1dcd
%include "shared/drv/leaf_loc_OLKS.asm"           ; 0x217d

%include "shared/drv/free_picture.asm"            ; 0x2185

loc_22be  equ load_picture.loc1
cseg_22ce equ load_picture.cseg1
cseg_22fe equ load_picture.cseg2
%include "shared/drv/load_picture.asm"            ; 0x21cd

%include "vga/data/rgb_to_palette.asm"     ; 0x2327

%include "vga/dissolve_area.asm"           ; 0x2528

%include "vga/set_rgb.asm"                 ; 0x277f

%include "vga/get_rgb.asm"                 ; 0x27d0

%include "vga/fade_in.asm"                 ; 0x2802

%include "vga/fade_out.asm"                ; 0x28f0

%include "vga/reset_rgb.asm"               ; 0x29f6

%include "vga/set_palette.asm"             ; 0x2acf

%include "shared/drv/get_free_space.asm"          ; 0x2b01

%include "shared/drv/mouse_glide_to.asm"          ; 0x2b6c

%include "shared/drv/mouse_glide_back.asm"        ; 0x2c0e

%include "shared/drv/free_screen.asm"             ; 0x2cbe

%include "shared/drv/get_palette.asm"             ; 0x2d08

%include "shared/data/text_state_words.asm"   ; 0x2d2b

%include "shared/data/text_state_bytes.asm"   ; 0x2d53

%include "shared/drv/draw_text.asm"               ; 0x2d6c

%include "shared/drv/check_frame_index.asm"       ; 0x3131

%include "shared/drv/leaf_loc_NOSG.asm"           ; 0x319f

leaf_loc_QLNN equ render_text_glyph_by_mode.leaf_loc1
%include "shared/drv/render_text_glyph_by_mode.asm" ; 0x31d9

%include "shared/data/intensity_limits.asm"   ; 0x371b

cseg_382b equ cache_area_disk_error.cseg1
cseg_3ac7 equ cache_area_disk_error.cseg2
cseg_3afe equ cache_area_disk_error.cseg3
cseg_3b2f equ cache_area_disk_error.cseg4
cseg_3b6c equ cache_area_disk_error.cseg5
%include "shared/drv/cache_area_disk_error.asm"   ; 0x381b

%include "shared/drv/ems_map_pages.asm"           ; 0x3b90

%include "shared/drv/restore_screen.asm"          ; 0x3ba5

cseg_3d49 equ copy_file_region.cseg1
%include "shared/drv/copy_file_region.asm"        ; 0x3d0b

cseg_3f06 equ cache_maze.cseg1
cseg_3f4e equ cache_maze.cseg2
%include "shared/drv/cache_maze.asm"              ; 0x3d72

%include "shared/drv/cache_screen_to_storage.asm" ; 0x3f73

%include "shared/data/sound_slots.asm"        ; 0x4102

cseg_4238 equ load_sound.cseg1
cseg_4274 equ load_sound.cseg2
%include "shared/drv/load_sound.asm"              ; 0x4156

%include "shared/drv/string_loc_RQON.asm"         ; 0x4300

%include "shared/drv/dos_file_loc_VPIN.asm"       ; 0x4319

free_sound.leaf_loc1    equ leaf_loc_PTSI
free_sound.leaf_loc2    equ leaf_loc_VRNL
free_sound.dos_con_loc1 equ dos_con_loc_GOSI
free_sound.leaf_loc3    equ leaf_loc_IQGS
%include "shared/drv/free_sound.asm"              ; 0x439a

leaf_loc_PTSI equ leaf_loc_OSUJ
%include "shared/drv/leaf_loc_OSUJ.asm"           ; 0x43f7

%include "shared/drv/leaf_loc_IHJG.asm"           ; 0x440c

%include "shared/drv/leaf_loc_MGRH.asm"           ; 0x4421

%include "shared/drv/leaf_loc_USQQ.asm"           ; 0x4436

leaf_loc_VRNL equ leaf_loc_JRKU
%include "shared/drv/leaf_loc_JRKU.asm"           ; 0x444b

dos_con_loc_GOSI equ dos_con_loc_GJMS
cseg_448c        equ dos_con_loc_GJMS.cseg1
%include "shared/drv/dos_con_loc_GJMS.asm"        ; 0x4461

%include "shared/drv/leaf_loc_IQGS.asm"           ; 0x44a3

%include "shared/drv/play_sound.asm"              ; 0x4527

%include "shared/drv/wait_sound.asm"              ; 0x4596

%include "shared/drv/stop_sound.asm"              ; 0x45b2

%include "shared/data/score_slots.asm"        ; 0x45d9

%include "shared/data/score_info.asm"         ; 0x45f1

cseg_4722 equ load_score.cseg1
cseg_475e equ load_score.cseg2
%include "shared/drv/load_score.asm"              ; 0x45fb

%include "shared/drv/play_score.asm"              ; 0x478a

%include "shared/drv/free_score.asm"              ; 0x481f

%include "shared/drv/is_music_playing.asm"        ; 0x4866

%include "shared/drv/stop_music.asm"              ; 0x487e

%include "shared/drv/set_music_tempo_volume.asm"  ; 0x4896

%include "vga/data/cseg_48b7.asm"          ; 0x48b7

