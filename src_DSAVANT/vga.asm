; auto-generated
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif


%include "shared/library/loc_LPSH.asm"                ; 0x0000

loc_JTQK_0007.mouse_off1 equ mouse_off
%include "shared/library/loc_JTQK_0007.asm"           ; 0x0007

loc_JTQK_000b.mouse_hit_test1 equ mouse_hit_test
%include "shared/library/loc_JTQK_000b.asm"           ; 0x000b

loc_JTQK_000f.leaf_loc1 equ request_mouse_redraw
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

%include "shared/library/thunk_loc_JULP.asm"          ; 0x00db

%include "shared/data/maze_mem_seg.asm"       ; 0x00e1

%include "shared/data/screen_buf_seg.asm"     ; 0x00e5

%include "shared/data/scratch_buf_seg.asm"    ; 0x00e9

%include "vga/data/palette_ptr.asm"        ; 0x00f7

%include "vga/data/delay_hook.asm"         ; 0x00fb

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

%include "shared/library/graphics_loc_VNKS.asm"       ; 0x0293

%include "shared/library/set_text_opaque.asm"         ; 0x0439

%include "vga/set_text_color.asm"          ; 0x0447

%include "shared/library/set_text_pos.asm"            ; 0x045c

%include "vga/get_text_pos.asm"            ; 0x0477

%include "vga/fill_screen_buffer.asm"      ; 0x0496

%include "vga/show_area.asm"               ; 0x04b5

%include "vga/data/cseg_0515.asm"          ; 0x0515

%include "vga/clip_mouse_pointer_to_area.asm" ; 0x0516

%include "vga/redraw_mouse_pointer.asm"    ; 0x067f

%include "shared/library/put_pixel.asm"               ; 0x06b2

%include "shared/library/fill_area.asm"               ; 0x06d9

%include "vga/invert_area.asm"             ; 0x0728

%include "shared/library/save_area.asm"               ; 0x077a

cseg_080d equ save_area_out_of_memory.cseg1
%include "shared/library/save_area_out_of_memory.asm" ; 0x07fd

%include "shared/library/save_area_clear_result.asm"  ; 0x082a

%include "shared/library/area_restore_and_return.asm" ; 0x082e

cseg_089f equ restore_area.cseg1
%include "shared/library/restore_area.asm"            ; 0x0836

%include "shared/library/load_screen.asm"             ; 0x08d2

cseg_0a5f equ save_screen.cseg1
cseg_0a9d equ save_screen.cseg2
%include "shared/library/save_screen.asm"             ; 0x099c

%include "shared/data/maze_map_slots.asm"     ; 0x0ac6

%include "shared/data/maze_blocks.asm"        ; 0x0ada

%include "shared/data/maze_block_count.asm"   ; 0x0baa

%include "shared/data/maze_paras_used.asm"    ; 0x0bac

cseg_0d3c equ load_maze.cseg1
cseg_0d10 equ load_maze.cseg2
cseg_0d6b equ load_maze.cseg3
%include "shared/library/load_maze.asm"               ; 0x0bae

%include "shared/library/decrement_cached_slot_ids.asm" ; 0x0e34

%include "vga/data/cseg_0e6d.asm"          ; 0x0e6d

release_and_compact_ems_blocks.cseg1 equ cseg_0e6d
release_and_compact_ems_blocks.cseg2 equ cseg_0e6f
%include "shared/library/release_and_compact_ems_blocks.asm" ; 0x0e71

leaf_loc_TPOL.cseg1 equ cseg_0e6f
leaf_loc_TPOL.cseg2 equ cseg_0e6d
%include "shared/library/leaf_loc_TPOL.asm"           ; 0x0f3b

%include "shared/library/free_maze.asm"               ; 0x0f6f

loc_0fda  equ draw_maze_piece.loc1
cseg_0fea equ draw_maze_piece.cseg1
%include "shared/library/draw_maze_piece.asm"         ; 0x0fb7

%include "vga/mouse_init.asm"              ; 0x11f8

%include "vga/mouse_off.asm"               ; 0x126c

%include "shared/library/update_mouse_pointer.asm"    ; 0x12c9

%include "shared/library/request_mouse_redraw.asm"    ; 0x1308

mouse_hit_test.cseg1 equ cseg_1dcd
mouse_hit_test.cseg2 equ cseg_1dcf
mouse_hit_test.cseg3 equ cseg_1dd1
%include "shared/library/mouse_hit_test.asm"          ; 0x1317

%include "shared/library/get_mouse.asm"               ; 0x139a

data_1e5c equ __zdata_1e5c - IMAGE_BASE
%include "vga/set_mouse_pointer.asm"       ; 0x13c9

%include "shared/data/mouse_drawn_x.asm"      ; 0x14ac

%include "shared/data/mouse_drawn_y.asm"      ; 0x14ae

%include "vga/data/cseg_14b0.asm"          ; 0x14b0

draw_mouse_pointer_at.cseg1 equ cseg_1dd3
draw_mouse_pointer_at.cseg2 equ cseg_14b0
draw_mouse_pointer_at.cseg3 equ cseg_14b2
%include "shared/library/draw_mouse_pointer_at.asm"   ; 0x1e1a

data_1dc4 equ __zdata_1dc4 - IMAGE_BASE
data_1e4c equ __zdata_1e4c - IMAGE_BASE
%include "vga/graphics_loc_OSKV.asm"       ; 0x1e35

leaf_loc_OLKS.cseg1 equ cseg_1dcd
%include "shared/library/leaf_loc_OLKS.asm"           ; 0x217d

%include "shared/library/free_picture.asm"            ; 0x2185

loc_22be  equ load_picture.loc1
cseg_22ce equ load_picture.cseg1
cseg_22fe equ load_picture.cseg2
%include "shared/library/load_picture.asm"            ; 0x21cd

%include "vga/data/rgb_to_palette.asm"     ; 0x2327

%include "vga/dissolve_area.asm"           ; 0x2528

%include "vga/set_rgb.asm"                 ; 0x277f

%include "vga/get_rgb.asm"                 ; 0x27d0

%include "vga/fade_in.asm"                 ; 0x2802

%include "vga/fade_out.asm"                ; 0x28f0

%include "vga/reset_rgb.asm"               ; 0x29f6

%include "vga/set_palette.asm"             ; 0x2acf

%include "shared/library/get_free_space.asm"          ; 0x2b01

mouse_glide_to.cseg1 equ delay_hook
%include "shared/library/mouse_glide_to.asm"          ; 0x2b6c

mouse_glide_back.cseg1 equ delay_hook
%include "shared/library/mouse_glide_back.asm"        ; 0x2c0e

%include "shared/library/free_screen.asm"             ; 0x2cbe

get_palette.cseg1 equ palette_ptr
%include "shared/library/get_palette.asm"             ; 0x2d08

%include "shared/data/text_state_words.asm"   ; 0x2d2b

%include "shared/data/text_state_bytes.asm"   ; 0x2d53

draw_text.leaf_loc1     equ check_frame_index
draw_text.graphics_loc1 equ graphics_loc_PVIU
%include "shared/library/draw_text.asm"               ; 0x2d6c

%include "vga/check_frame_index.asm"       ; 0x3131

%include "shared/library/leaf_loc_NOSG.asm"           ; 0x319f

graphics_loc_PVIU           equ graphics_loc_NVPK
graphics_loc_NVPK.loc1      equ loc_3498
graphics_loc_NVPK.loc2      equ loc_35d8
graphics_loc_NVPK.loc3      equ loc_337c
graphics_loc_NVPK.leaf_loc1 equ leaf_loc_QLNN
%include "shared/library/graphics_loc_NVPK.asm"       ; 0x31d9

%include "shared/library/leaf_loc_MTKK.asm"           ; 0x3340

leaf_loc_QLNN equ leaf_loc_KSJN
%include "shared/library/leaf_loc_KSJN.asm"           ; 0x3360

loc_338d           equ loc_337c.loc1
loc_339d           equ loc_337c.loc2
loc_3490           equ loc_337c.loc3
loc_33aa           equ loc_337c.loc4
loc_337c.leaf_loc1 equ leaf_loc_QLNN
loc_33bb           equ loc_337c.loc5
loc_3463           equ loc_337c.loc6
loc_33cb           equ loc_337c.loc7
loc_33d5           equ loc_337c.loc8
loc_33dd           equ loc_337c.loc9
loc_345e           equ loc_337c.loc10
loc_33eb           equ loc_337c.loc11
loc_3459           equ loc_337c.loc12
loc_33f5           equ loc_337c.loc13
loc_3451           equ loc_337c.loc14
loc_343d           equ loc_337c.loc15
loc_3422           equ loc_337c.loc16
loc_341d           equ loc_337c.loc17
loc_343a           equ loc_337c.loc18
loc_3437           equ loc_337c.loc19
loc_3444           equ loc_337c.loc20
loc_344a           equ loc_337c.loc21
loc_3475           equ loc_337c.loc22
loc_3492           equ loc_337c.loc23
loc_3495           equ loc_337c.loc24
%include "shared/library/loc_337c.asm"                ; 0x337c

loc_34d0           equ loc_3498.loc1
loc_34dd           equ loc_3498.loc2
loc_35d0           equ loc_3498.loc3
loc_34ea           equ loc_3498.loc4
loc_3498.leaf_loc1 equ leaf_loc_QLNN
loc_34fb           equ loc_3498.loc5
loc_35a3           equ loc_3498.loc6
loc_350b           equ loc_3498.loc7
loc_3515           equ loc_3498.loc8
loc_351d           equ loc_3498.loc9
loc_359e           equ loc_3498.loc10
loc_352b           equ loc_3498.loc11
loc_3599           equ loc_3498.loc12
loc_3535           equ loc_3498.loc13
loc_3591           equ loc_3498.loc14
loc_357d           equ loc_3498.loc15
loc_3562           equ loc_3498.loc16
loc_355d           equ loc_3498.loc17
loc_357a           equ loc_3498.loc18
loc_3577           equ loc_3498.loc19
loc_3584           equ loc_3498.loc20
loc_358a           equ loc_3498.loc21
loc_35b5           equ loc_3498.loc22
loc_35d2           equ loc_3498.loc23
loc_35d5           equ loc_3498.loc24
%include "shared/library/loc_3498.asm"                ; 0x3498

loc_3610           equ loc_35d8.loc1
loc_3620           equ loc_35d8.loc2
loc_3713           equ loc_35d8.loc3
loc_362d           equ loc_35d8.loc4
loc_35d8.leaf_loc1 equ leaf_loc_QLNN
loc_363e           equ loc_35d8.loc5
loc_36e6           equ loc_35d8.loc6
loc_364e           equ loc_35d8.loc7
loc_3658           equ loc_35d8.loc8
loc_3660           equ loc_35d8.loc9
loc_36e1           equ loc_35d8.loc10
loc_366e           equ loc_35d8.loc11
loc_36dc           equ loc_35d8.loc12
loc_3678           equ loc_35d8.loc13
loc_36d4           equ loc_35d8.loc14
loc_36c0           equ loc_35d8.loc15
loc_36a5           equ loc_35d8.loc16
loc_36a0           equ loc_35d8.loc17
loc_36bd           equ loc_35d8.loc18
loc_36ba           equ loc_35d8.loc19
loc_36c7           equ loc_35d8.loc20
loc_36cd           equ loc_35d8.loc21
loc_36f8           equ loc_35d8.loc22
loc_3715           equ loc_35d8.loc23
loc_3718           equ loc_35d8.loc24
%include "shared/library/loc_35d8.asm"                ; 0x35d8

%include "shared/data/intensity_limits.asm"   ; 0x371b

cseg_382b equ cache_area_disk_error.cseg1
cseg_3ac7 equ cache_area_disk_error.cseg2
cseg_3afe equ cache_area_disk_error.cseg3
cseg_3b2f equ cache_area_disk_error.cseg4
cseg_3b6c equ cache_area_disk_error.cseg5
%include "shared/library/cache_area_disk_error.asm"   ; 0x381b

%include "shared/library/ems_map_pages.asm"           ; 0x3b90

%include "shared/library/restore_screen.asm"          ; 0x3ba5

cseg_3d49 equ copy_file_region.cseg1
%include "shared/library/copy_file_region.asm"        ; 0x3d0b

cseg_3f06 equ cache_maze.cseg1
cseg_3f4e equ cache_maze.cseg2
%include "shared/library/cache_maze.asm"              ; 0x3d72

%include "shared/library/cache_screen_to_storage.asm" ; 0x3f73

%include "shared/data/sound_slots.asm"        ; 0x4102

cseg_4238 equ load_sound.cseg1
cseg_4274 equ load_sound.cseg2
%include "shared/library/load_sound.asm"              ; 0x4156

%include "shared/library/string_loc_RQON.asm"         ; 0x4300

%include "shared/library/dos_file_loc_VPIN.asm"       ; 0x4319

free_sound.leaf_loc1    equ leaf_loc_PTSI
free_sound.leaf_loc2    equ leaf_loc_VRNL
free_sound.dos_con_loc1 equ dos_con_loc_GOSI
free_sound.leaf_loc3    equ leaf_loc_IQGS
%include "shared/library/free_sound.asm"              ; 0x439a

leaf_loc_PTSI equ leaf_loc_OSUJ
%include "shared/library/leaf_loc_OSUJ.asm"           ; 0x43f7

%include "shared/library/leaf_loc_IHJG.asm"           ; 0x440c

%include "shared/library/leaf_loc_MGRH.asm"           ; 0x4421

%include "shared/library/leaf_loc_USQQ.asm"           ; 0x4436

leaf_loc_VRNL equ leaf_loc_JRKU
%include "shared/library/leaf_loc_JRKU.asm"           ; 0x444b

dos_con_loc_GOSI equ dos_con_loc_GJMS
cseg_448c        equ dos_con_loc_GJMS.cseg1
%include "shared/library/dos_con_loc_GJMS.asm"        ; 0x4461

%include "shared/library/leaf_loc_IQGS.asm"           ; 0x44a3

%include "shared/library/play_sound.asm"              ; 0x4527

%include "shared/library/wait_sound.asm"              ; 0x4596

%include "shared/library/stop_sound.asm"              ; 0x45b2

%include "shared/data/score_slots.asm"        ; 0x45d9

%include "shared/data/score_info.asm"         ; 0x45f1

cseg_4722 equ load_score.cseg1
cseg_475e equ load_score.cseg2
%include "shared/library/load_score.asm"              ; 0x45fb

%include "shared/library/play_score.asm"              ; 0x478a

%include "shared/library/free_score.asm"              ; 0x481f

%include "shared/library/is_music_playing.asm"        ; 0x4866

%include "shared/library/stop_music.asm"              ; 0x487e

%include "shared/library/set_music_tempo_volume.asm"  ; 0x4896

%include "vga/data/cseg_48b7.asm"          ; 0x48b7

