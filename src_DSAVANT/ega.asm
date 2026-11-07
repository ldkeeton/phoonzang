; auto-generated
org 0
bits 16
%include "include/nasm_macros.inc"
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif

dseg_24fd equ 0x24fd
dseg_2a02 equ 0x2a02

ln_com_jump                                ; 0x0000

%include "shared/drv/driver_dispatch.asm"         ; 0x0003

%include "shared/data/drv_buffer_segments.asm" ; 0x00df

%include "shared/data/drv_ems_frame.asm"      ; 0x00ff

%include "shared/data/mouse_init_enabled.asm" ; 0x0105

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

%include "shared/drv/save_area.asm"               ; 0x0c9b

%include "shared/drv/restore_area.asm"            ; 0x0d57

%include "shared/drv/load_screen.asm"             ; 0x0df3

%include "shared/drv/save_screen.asm"             ; 0x0ebd

%include "shared/data/drv_maze_tables.asm"    ; 0x0fe7

%include "shared/drv/load_maze.asm"               ; 0x10cf

%include "shared/drv/decrement_cached_slot_ids.asm" ; 0x1355

%include "shared/data/ems_compact_source_page.asm" ; 0x138e

%include "shared/data/ems_compact_dest_page.asm" ; 0x1390

%include "shared/drv/release_and_compact_ems_blocks.asm" ; 0x1392

%include "shared/drv/map_compaction_pages.asm"    ; 0x145c

%include "shared/drv/free_maze.asm"               ; 0x1490

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

%include "ega/mouse_event_handler.asm"     ; 0x2a08

%include "ega/restore_old_background_plane.asm" ; 0x2e35

%include "ega/restore_cursor_surround_plane.asm" ; 0x2e7d

%include "ega/save_cursor_background_plane.asm" ; 0x2f46

%include "ega/draw_cursor_from_planes.asm" ; 0x2f70

%include "shared/drv/clear_mouse_click.asm"       ; 0x3035

%include "shared/drv/free_picture.asm"            ; 0x303d

%include "shared/drv/load_picture.asm"            ; 0x3085

%include "ega/dissolve_area.asm"           ; 0x31df

%include "ega/data/rgb_intensity_lookup.asm" ; 0x31e2

%include "ega/set_rgb.asm"                 ; 0x31f4

%include "ega/get_rgb.asm"                 ; 0x3240

%include "ega/fade_in.asm"                 ; 0x3241

%include "ega/fade_out.asm"                ; 0x3242

%include "ega/reset_rgb.asm"               ; 0x3243

%include "ega/set_palette.asm"             ; 0x3244

%include "ega/expand_pixel_to_planes.asm"  ; 0x3245

%include "ega/data/pixel_plane_lookup.asm" ; 0x32b3

%include "shared/drv/get_free_space.asm"          ; 0x33b3

%include "shared/drv/mouse_glide_to.asm"          ; 0x341e

%include "shared/drv/mouse_glide_back.asm"        ; 0x34c0

%include "shared/drv/free_screen.asm"             ; 0x3570

%include "shared/drv/get_palette.asm"             ; 0x35ba

%include "shared/data/drv_text_state.asm"     ; 0x35dd

%include "shared/drv/draw_text.asm"               ; 0x361e

%include "shared/drv/check_frame_index.asm"       ; 0x39e3

%include "shared/drv/set_text_bitmap_bits.asm"    ; 0x3a51

%include "shared/drv/render_text_glyph_by_mode.asm" ; 0x3a8b

%include "shared/data/intensity_limits.asm"   ; 0x3fcd

%include "shared/drv/cache_area.asm"              ; 0x40cd

%include "shared/drv/ems_map_pages.asm"           ; 0x4442

%include "shared/drv/restore_screen.asm"          ; 0x4457

%include "shared/drv/copy_file_region.asm"        ; 0x45bd

%include "shared/drv/cache_maze.asm"              ; 0x4624

%include "shared/drv/cache_screen_to_storage.asm" ; 0x4825

%include "shared/data/sound_slots.asm"        ; 0x49b4

%include "shared/drv/load_sound.asm"              ; 0x4a08

%include "shared/drv/expand_compressed_string.asm" ; 0x4bb2

dseg_0400 equ 0x0400
%include "shared/drv/decode_compressed_string_byte.asm" ; 0x4bcb

%include "shared/drv/free_sound.asm"              ; 0x4c4c

%include "shared/drv/renumber_and_release_block.asm" ; 0x4c93

%include "shared/drv/decrement_maze_map_slot_ids.asm" ; 0x4ca9

%include "shared/drv/decrement_picture_slot_ids.asm" ; 0x4cbe

%include "shared/drv/decrement_maze_slot_ids.asm" ; 0x4cd3

%include "shared/drv/decrement_screen_slot_ids.asm" ; 0x4ce8

%include "shared/drv/decrement_sound_slot_ids.asm" ; 0x4cfd

%include "shared/drv/decrement_score_slot_values.asm" ; 0x4d13

%include "shared/drv/release_maze_block.asm"      ; 0x4d55

%include "shared/drv/play_sound.asm"              ; 0x4dd9

%include "shared/drv/wait_sound.asm"              ; 0x4e48

%include "shared/drv/stop_sound.asm"              ; 0x4e64

%include "shared/data/drv_score_tables.asm"   ; 0x4e8b

%include "shared/drv/load_score.asm"              ; 0x4ead

%include "shared/drv/play_score.asm"              ; 0x503c

%include "shared/drv/free_score.asm"              ; 0x50d1

%include "shared/drv/is_music_playing.asm"        ; 0x5118

%include "shared/drv/stop_music.asm"              ; 0x5130

%include "shared/drv/set_music_tempo_volume.asm"  ; 0x5148

%include "ega/data/driver_end_padding.asm" ; 0x5169

