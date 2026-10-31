; auto-generated
org 0
bits 16
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif

dseg_24fd equ 0x24fd
dseg_2a02 equ 0x2a02

%include "ega/driver_entry_0_stub.asm"     ; 0x0000

driver_slot_0.mouse_init1 equ mouse_init
%include "shared/drv/driver_slot_0.asm"           ; 0x0003

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

%include "shared/data/drv_buffer_segments.asm" ; 0x00e1

%include "shared/data/drv_ems_frame.asm"      ; 0x00ff

%include "ega/data/mouse_init_enabled.asm" ; 0x0105

%include "shared/data/drv_far_calls.asm"      ; 0x0106

%include "shared/data/drv_mouse_flags.asm"    ; 0x0126

%include "shared/data/drv_picture_maze_slots.asm" ; 0x0129

%include "shared/data/secondary_text_color.asm" ; 0x0191

%include "shared/data/primary_text_color.asm" ; 0x0193

%include "shared/data/text_pos_x.asm"         ; 0x0195

%include "shared/data/text_pos_y.asm"         ; 0x0197

%include "shared/data/text_opaque.asm"        ; 0x0199

%include "shared/data/drv_ems_tables.asm"     ; 0x019b

%include "shared/drv/draw_glyph.asm"              ; 0x0293

%include "shared/drv/set_text_opaque.asm"         ; 0x0439

%include "ega/set_text_color.asm"          ; 0x0447

%include "shared/drv/set_text_pos.asm"            ; 0x0462

%include "ega/get_text_pos.asm"            ; 0x047d

%include "ega/fill_screen_buffer.asm"      ; 0x0496

%include "ega/show_area.asm"               ; 0x04b1

%include "ega/data/mouse_overlaps_area.asm" ; 0x0948

%include "ega/refresh_mouse_overlay.asm"   ; 0x0949

%include "ega/restore_mouse_background.asm" ; 0x0b91

%include "shared/drv/put_pixel.asm"               ; 0x0bcf

%include "shared/drv/fill_area.asm"               ; 0x0bf6

%include "ega/invert_area.asm"             ; 0x0c45

cseg_0d2e equ save_area.cseg1
%include "shared/drv/save_area.asm"               ; 0x0c9b

cseg_0dc0 equ restore_area.cseg1
%include "shared/drv/restore_area.asm"            ; 0x0d57

%include "shared/drv/load_screen.asm"             ; 0x0df3

cseg_0f80 equ save_screen.cseg1
cseg_0fbe equ save_screen.cseg2
%include "shared/drv/save_screen.asm"             ; 0x0ebd

%include "shared/data/drv_maze_tables.asm"    ; 0x0fe7

cseg_125d equ load_maze.cseg1
cseg_1231 equ load_maze.cseg2
cseg_128c equ load_maze.cseg3
%include "shared/drv/load_maze.asm"               ; 0x10cf

%include "shared/drv/decrement_cached_slot_ids.asm" ; 0x1355

%include "shared/data/ems_compact_source_page.asm" ; 0x138e

%include "shared/data/ems_compact_dest_page.asm" ; 0x1390

%include "shared/drv/release_and_compact_ems_blocks.asm" ; 0x1392

%include "shared/drv/leaf_loc_TPOL.asm"           ; 0x145c

%include "shared/drv/free_maze.asm"               ; 0x1490

loc_14fb  equ draw_maze_piece.loc1
cseg_150b equ draw_maze_piece.cseg1
%include "shared/drv/draw_maze_piece.asm"         ; 0x14d8

%include "ega/mouse_init.asm"              ; 0x1719

%include "ega/expand_cursor_bitmap_planes.asm" ; 0x17a1

%include "ega/mouse_off.asm"               ; 0x1810

%include "ega/restore_cursor_background_plane.asm" ; 0x189f

%include "shared/drv/update_mouse_pointer.asm"    ; 0x18c1

%include "shared/drv/request_mouse_redraw.asm"    ; 0x1900

%include "shared/drv/mouse_hit_test.asm"          ; 0x190f

%include "shared/drv/get_mouse.asm"               ; 0x1992

%include "ega/set_mouse_pointer.asm"       ; 0x19c1

%include "ega/data/mouse_pointer_size_message.asm" ; 0x1aaf

%include "ega/data/cursor_save_buffer.asm" ; 0x1ad5

%include "ega/data/cursor_background_buffer.asm" ; 0x1ad7

%include "shared/data/drv_mouse_position.asm" ; 0x1ad9

%include "ega/data/cursor_copy_width.asm"  ; 0x1add

%include "ega/data/mouse_drawn_row_bytes.asm" ; 0x1ae1

%include "ega/data/mouse_drawn_height.asm" ; 0x1ae3

%include "ega/data/mouse_drawn_video_offset.asm" ; 0x1ae5

%include "ega/data/ega_mouse_state.asm"    ; 0x1aeb

%include "ega/data/mouse_pointer_width.asm" ; 0x248d

%include "ega/data/cursor_bitmap_stride.asm" ; 0x248f

%include "ega/data/mouse_pointer_height.asm" ; 0x2491

%include "ega/data/default_pointer_dimensions.asm" ; 0x2493

%include "ega/data/mouse_pointer_bitmap_offset.asm" ; 0x2499

%include "ega/data/mouse_pointer_bitmap_segment.asm" ; 0x249b

%include "ega/data/cursor_overlaps_previous.asm" ; 0x249d

%include "ega/data/default_pointer_bitmap.asm" ; 0x249e

%include "ega/data/cursor_plane_buffers.asm" ; 0x2502

%include "ega/data/cursor_plane_buffer_2.asm" ; 0x2602

%include "ega/data/cursor_plane_buffer_3.asm" ; 0x2702

%include "ega/data/cursor_plane_buffer_4.asm" ; 0x2802

%include "ega/data/cursor_bitmap_base.asm" ; 0x2902

%include "shared/data/mouse_click_pending.asm" ; 0x2a02

%include "shared/data/mouse_click_x.asm"      ; 0x2a04

%include "shared/data/mouse_click_y.asm"      ; 0x2a06

%include "ega/data/cursor_draw_busy.asm"   ; 0x2a08

%include "shared/drv/draw_mouse_pointer_at.asm"   ; 0x2a4f

%include "ega/update_mouse_cursor.asm"     ; 0x2a6a

%include "ega/restore_old_background_plane.asm" ; 0x2e35

%include "ega/restore_cursor_surround_plane.asm" ; 0x2e7d

%include "ega/save_cursor_background_plane.asm" ; 0x2f46

%include "ega/draw_cursor_from_planes.asm" ; 0x2f70

%include "shared/drv/clear_mouse_click.asm"       ; 0x3035

%include "shared/drv/free_picture.asm"            ; 0x303d

loc_3176  equ load_picture.loc1
cseg_3186 equ load_picture.cseg1
cseg_31b6 equ load_picture.cseg2
%include "shared/drv/load_picture.asm"            ; 0x3085

%include "ega/dissolve_area.asm"           ; 0x31df

%include "ega/data/rgb_intensity_lookup.asm" ; 0x31e2

%include "ega/set_rgb.asm"                 ; 0x31f4

%include "ega/get_rgb.asm"                 ; 0x3240

%include "ega/fade_in.asm"                 ; 0x3241

%include "ega/fade_out.asm"                ; 0x3242

%include "ega/reset_rgb.asm"               ; 0x3243

%include "ega/set_palette.asm"             ; 0x3244

%include "ega/expand_transparent_px_to_planes.asm" ; 0x3245

%include "ega/data/pixel_plane_lookup.asm" ; 0x32b3

%include "shared/drv/get_free_space.asm"          ; 0x33b3

%include "shared/drv/mouse_glide_to.asm"          ; 0x341e

%include "shared/drv/mouse_glide_back.asm"        ; 0x34c0

%include "shared/drv/free_screen.asm"             ; 0x3570

%include "shared/drv/get_palette.asm"             ; 0x35ba

%include "shared/data/drv_text_state.asm"     ; 0x35dd

%include "shared/drv/draw_text.asm"               ; 0x361e

%include "shared/drv/check_frame_index.asm"       ; 0x39e3

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
free_sound.leaf_loc3    equ leaf_loc_SSGH
%include "shared/drv/free_sound.asm"              ; 0x4c4c

%include "shared/drv/leaf_loc_OSUJ.asm"           ; 0x4ca9

%include "shared/drv/leaf_loc_IHJG.asm"           ; 0x4cbe

%include "shared/drv/leaf_loc_MGRH.asm"           ; 0x4cd3

%include "shared/drv/leaf_loc_USQQ.asm"           ; 0x4ce8

%include "shared/drv/leaf_loc_JRKU.asm"           ; 0x4cfd

cseg_4d3e equ dos_con_loc_GJMS.cseg1
%include "shared/drv/dos_con_loc_GJMS.asm"        ; 0x4d13

leaf_loc_SSGH equ leaf_loc_HLKP
%include "shared/drv/leaf_loc_HLKP.asm"           ; 0x4d55

%include "shared/drv/play_sound.asm"              ; 0x4dd9

%include "shared/drv/wait_sound.asm"              ; 0x4e48

%include "shared/drv/stop_sound.asm"              ; 0x4e64

%include "shared/data/drv_score_tables.asm"   ; 0x4e8b

cseg_4fd4 equ load_score.cseg1
cseg_5010 equ load_score.cseg2
%include "shared/drv/load_score.asm"              ; 0x4ead

%include "shared/drv/play_score.asm"              ; 0x503c

%include "shared/drv/free_score.asm"              ; 0x50d1

%include "shared/drv/is_music_playing.asm"        ; 0x5118

%include "shared/drv/stop_music.asm"              ; 0x5130

%include "shared/drv/set_music_tempo_volume.asm"  ; 0x5148

%include "ega/data/driver_end_padding.asm" ; 0x5169

