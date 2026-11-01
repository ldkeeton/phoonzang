; auto-generated
org 0
bits 16
%include "include/nasm_macros.inc"
%ifndef IMAGE_BASE
IMAGE_BASE equ -0x0100
%endif


ln_com_jump                                ; 0x0000

%include "vga/driver_dispatch.asm"         ; 0x0003

%include "shared/data/drv_buffer_segments.asm" ; 0x00e1

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

%include "vga/set_text_color.asm"          ; 0x0447

%include "shared/drv/set_text_pos.asm"            ; 0x045c

%include "vga/get_text_pos.asm"            ; 0x0477

%include "vga/fill_screen_buffer.asm"      ; 0x0496

%include "vga/show_area.asm"               ; 0x04b5

%include "vga/data/mouse_area_intersects.asm" ; 0x0515

%include "vga/clip_mouse_pointer_to_area.asm" ; 0x0516

%include "vga/redraw_mouse_pointer.asm"    ; 0x067f

%include "shared/drv/put_pixel.asm"               ; 0x06b2

%include "shared/drv/fill_area.asm"               ; 0x06d9

%include "vga/invert_area.asm"             ; 0x0728

%include "shared/drv/save_area.asm"               ; 0x077a

%include "shared/drv/restore_area.asm"            ; 0x0836

%include "shared/drv/load_screen.asm"             ; 0x08d2

%include "shared/drv/save_screen.asm"             ; 0x099c

%include "shared/data/drv_maze_tables.asm"    ; 0x0ac6

%include "shared/drv/load_maze.asm"               ; 0x0bae

%include "shared/drv/decrement_cached_slot_ids.asm" ; 0x0e34

%include "shared/data/ems_compact_source_page.asm" ; 0x0e6d

%include "shared/data/ems_compact_dest_page.asm" ; 0x0e6f

%include "shared/drv/release_and_compact_ems_blocks.asm" ; 0x0e71

%include "shared/drv/leaf_loc_TPOL.asm"           ; 0x0f3b

%include "shared/drv/free_maze.asm"               ; 0x0f6f

%include "shared/drv/draw_maze_piece.asm"         ; 0x0fb7

%include "vga/mouse_init.asm"              ; 0x11f8

%include "vga/mouse_off.asm"               ; 0x126c

%include "shared/drv/update_mouse_pointer.asm"    ; 0x12c9

%include "shared/drv/request_mouse_redraw.asm"    ; 0x1308

%include "shared/drv/mouse_hit_test.asm"          ; 0x1317

%include "shared/drv/get_mouse.asm"               ; 0x139a

data_1e5c equ __zdata_1e5c - IMAGE_BASE
%include "vga/set_mouse_pointer.asm"       ; 0x13c9

%include "shared/data/drv_mouse_position.asm" ; 0x14ac

%include "vga/data/vga_mouse_state.asm"    ; 0x14b0

%include "vga/data/mouse_cursor_overlaps.asm" ; 0x1d68

%include "shared/data/mouse_click_pending.asm" ; 0x1dcd

%include "shared/data/mouse_click_x.asm"      ; 0x1dcf

%include "shared/data/mouse_click_y.asm"      ; 0x1dd1

%include "vga/data/cursor_draw_busy.asm"   ; 0x1dd3

%include "shared/drv/draw_mouse_pointer_at.asm"   ; 0x1e1a

data_1dc4 equ __zdata_1dc4 - IMAGE_BASE
data_1e4c equ __zdata_1e4c - IMAGE_BASE
%include "vga/draw_mouse_cursor_image.asm" ; 0x1e35

%include "shared/drv/clear_mouse_click.asm"       ; 0x217d

%include "shared/drv/free_picture.asm"            ; 0x2185

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

%include "shared/data/drv_text_state.asm"     ; 0x2d2b

%include "shared/drv/draw_text.asm"               ; 0x2d6c

%include "shared/drv/check_frame_index.asm"       ; 0x3131

%include "shared/drv/leaf_loc_NOSG.asm"           ; 0x319f

%include "shared/drv/render_text_glyph_by_mode.asm" ; 0x31d9

%include "shared/data/intensity_limits.asm"   ; 0x371b

%include "shared/drv/cache_area_disk_error.asm"   ; 0x381b

%include "shared/drv/ems_map_pages.asm"           ; 0x3b90

%include "shared/drv/restore_screen.asm"          ; 0x3ba5

%include "shared/drv/copy_file_region.asm"        ; 0x3d0b

%include "shared/drv/cache_maze.asm"              ; 0x3d72

%include "shared/drv/cache_screen_to_storage.asm" ; 0x3f73

%include "shared/data/sound_slots.asm"        ; 0x4102

%include "shared/drv/load_sound.asm"              ; 0x4156

%include "shared/drv/string_loc_RQON.asm"         ; 0x4300

%include "shared/drv/dos_file_loc_VPIN.asm"       ; 0x4319

%include "shared/drv/free_sound.asm"              ; 0x439a

%include "shared/drv/leaf_loc_OSUJ.asm"           ; 0x43f7

%include "shared/drv/leaf_loc_IHJG.asm"           ; 0x440c

%include "shared/drv/leaf_loc_MGRH.asm"           ; 0x4421

%include "shared/drv/leaf_loc_USQQ.asm"           ; 0x4436

%include "shared/drv/leaf_loc_JRKU.asm"           ; 0x444b

%include "shared/drv/dos_con_loc_GJMS.asm"        ; 0x4461

%include "shared/drv/leaf_loc_SSGH.asm"           ; 0x44a3

%include "shared/drv/play_sound.asm"              ; 0x4527

%include "shared/drv/wait_sound.asm"              ; 0x4596

%include "shared/drv/stop_sound.asm"              ; 0x45b2

%include "shared/data/drv_score_tables.asm"   ; 0x45d9

%include "shared/drv/load_score.asm"              ; 0x45fb

%include "shared/drv/play_score.asm"              ; 0x478a

%include "shared/drv/free_score.asm"              ; 0x481f

%include "shared/drv/is_music_playing.asm"        ; 0x4866

%include "shared/drv/stop_music.asm"              ; 0x487e

%include "shared/drv/set_music_tempo_volume.asm"  ; 0x4896

%include "vga/data/cseg_48b7.asm"          ; 0x48b7

