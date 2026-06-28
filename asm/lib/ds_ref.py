"""
DS.EXE external function registry.

Maps Ghidra func_0xXXXXXXXX addresses to meaningful names and signatures.
Built by analyzing call patterns across all 13 overlays (2,643 functions).

Pattern codes:
  (o)     = no arguments (context save / prologue / cleanup)
  (x,y)   = coordinate pair
  (x,y,w,h) = rectangle
  (idx)   = index/slot
  (ptr)   = pointer/buffer
  (val)   = single value
  (ret)   = returns something
"""

DS_FUNCTIONS = {
    # ── Core system services ──
    "b7a1": {
        "name": "ds_input_poll",
        "desc": "Poll for keyboard input; returns scancode or 0 if none",
        "sig": "uint16_t ds_input_poll(void)",
        "ret_type": "uint16_t",
    },
    "b905": {
        "name": "ds_input_read",
        "desc": "Blocking input read; returns input event code",
        "sig": "uint16_t ds_input_read(void)",
        "ret_type": "uint16_t",
    },
    "eb2a": {
        "name": "ds_input_wait",
        "desc": "Wait for input; returns masked key/button code",
        "sig": "uint16_t ds_input_wait(void)",
        "ret_type": "uint16_t",
    },
    "ea48": {
        "name": "ds_input_ready",
        "desc": "Check if input is available; returns non-zero if ready",
        "sig": "int ds_input_ready(void)",
        "ret_type": "int",
    },
    "bae7": {
        "name": "ds_mouse_poll",
        "desc": "Poll mouse state; returns mouse button/position data",
        "sig": "uint16_t ds_mouse_poll(void)",
        "ret_type": "uint16_t",
    },

    # ── Graphics / Display ──
    "e8d2": {
        "name": "ds_display_update",
        "desc": "Update display region or full screen",
        "sig": "void ds_display_update(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2)",
    },
    "e8f9": {
        "name": "ds_draw_line",
        "desc": "Draw line between two points",
        "sig": "void ds_draw_line(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2)",
    },
    "e93a": {
        "name": "ds_draw_rect_fill",
        "desc": "Fill rectangle",
        "sig": "void ds_draw_rect_fill(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t attr)",
    },
    "e947": {
        "name": "ds_draw_finish",
        "desc": "Finish drawing operation / flush",
        "sig": "void ds_draw_finish(void)",
    },
    "e920": {
        "name": "ds_draw_pixel",
        "desc": "Draw pixel or compute pixel address",
        "sig": "uint32_t ds_draw_pixel(uint16_t x, uint16_t y, uint16_t attr)",
        "ret_type": "uint32_t",
    },
    "e92d": {
        "name": "ds_draw_char",
        "desc": "Draw character glyph",
        "sig": "void ds_draw_char(uint16_t x, uint16_t y, uint16_t ch, uint16_t attr)",
    },
    "bf8f": {
        "name": "ds_draw_string",
        "desc": "Draw text string",
        "sig": "void ds_draw_string(uint16_t x, uint16_t y, uint16_t max_w, uint16_t max_h, const char *s, ...)",
    },
    "bfd0": {
        "name": "ds_draw_fill_attr",
        "desc": "Fill region with attribute",
        "sig": "void ds_draw_fill_attr(uint16_t x, uint16_t y, uint16_t attr)",
    },
    "be57": {
        "name": "ds_draw_button",
        "desc": "Draw button/UI element with label",
        "sig": "void ds_draw_button(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t flags)",
    },
    "beb0": {
        "name": "ds_draw_slider",
        "desc": "Draw scrollbar/slider",
        "sig": "void ds_draw_slider(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t pos)",
    },

    # ── Window / Region ──
    "c27b": {
        "name": "ds_window_create",
        "desc": "Create window region",
        "sig": "uint16_t ds_window_create(uint16_t x, uint16_t y, uint16_t w, uint16_t h)",
        "ret_type": "uint16_t",
    },
    "c451": {
        "name": "ds_window_destroy",
        "desc": "Destroy/close window or UI element",
        "sig": "void ds_window_destroy(uint16_t handle, uint16_t flags)",
    },
    "e828": {
        "name": "ds_window_clear",
        "desc": "Clear window region",
        "sig": "void ds_window_clear(uint16_t x, uint16_t y, uint16_t w, uint16_t h)",
    },
    "e801": {
        "name": "ds_rect_draw_border",
        "desc": "Draw rectangle border",
        "sig": "void ds_rect_draw_border(uint16_t x, uint16_t y, uint16_t w, uint16_t h)",
    },
    "e81b": {
        "name": "ds_rect_fill",
        "desc": "Fill rectangle interior",
        "sig": "void ds_rect_fill(uint16_t x, uint16_t y, uint16_t w, uint16_t h)",
    },
    "e846": {
        "name": "ds_rect_clear",
        "desc": "Clear rectangle (erase to background)",
        "sig": "void ds_rect_clear(uint16_t x, uint16_t y, uint16_t w, uint16_t h)",
    },

    # ── UI Framework ──
    "ba9e": {
        "name": "ds_ui_draw_cell",
        "desc": "Draw a single cell/item in a list/grid widget",
        "sig": "void ds_ui_draw_cell(uint16_t row, uint16_t flags, uint16_t x, uint16_t y, uint16_t attr)",
    },
    "b533": {
        "name": "ds_ui_clear_state",
        "desc": "Clear UI state / reset display flags",
        "sig": "void ds_ui_clear_state(void)",
    },
    "c0b9": {
        "name": "ds_ui_init_state",
        "desc": "Initialize UI state variables",
        "sig": "void ds_ui_init_state(void)",
    },
    "b7ba": {
        "name": "ds_ui_calc_offset",
        "desc": "Calculate scroll offset or position",
        "sig": "uint16_t ds_ui_calc_offset(uint16_t val, uint16_t divisor)",
        "ret_type": "uint16_t",
    },
    "b7d8": {
        "name": "ds_ui_set_pos",
        "desc": "Set UI position/state",
        "sig": "void ds_ui_set_pos(uint16_t idx, uint16_t val)",
    },
    "f325": {
        "name": "ds_ui_select_item",
        "desc": "Select/list highlight item in UI",
        "sig": "void ds_ui_select_item(uint16_t idx, uint16_t flags)",
    },
    "f0cf": {
        "name": "ds_ui_navigate",
        "desc": "Handle navigation (up/down/left/right) in UI",
        "sig": "void ds_ui_navigate(uint16_t dir, uint16_t count)",
    },
    "f0b5": {
        "name": "ds_ui_activate",
        "desc": "Activate/confirm UI selection",
        "sig": "void ds_ui_activate(uint16_t idx)",
    },

    # ── Memory / Data ──
    "f403": {
        "name": "ds_context_save",
        "desc": "Save current execution context (register state)",
        "sig": "void ds_context_save(void)",
    },
    "fd9d": {
        "name": "ds_context_restore",
        "desc": "Restore execution context",
        "sig": "void ds_context_restore(void)",
    },
    "fd67": {
        "name": "ds_context_save2",
        "desc": "Save context variant 2",
        "sig": "void ds_context_save2(void)",
    },
    "fd6e": {
        "name": "ds_context_save3",
        "desc": "Save context variant 3",
        "sig": "void ds_context_save3(void)",
    },
    "fdb5": {
        "name": "ds_context_setup",
        "desc": "Setup context for operation",
        "sig": "void ds_context_setup(void)",
    },
    "fa88": {
        "name": "ds_string_copy",
        "desc": "Copy string data",
        "sig": "void ds_string_copy(const void *src, void *dst, uint16_t len)",
    },
    "f35c": {
        "name": "ds_string_concat",
        "desc": "Concatenate strings",
        "sig": "void ds_string_concat(void *dst, const void *src)",
    },
    "efc9": {
        "name": "ds_mem_set",
        "desc": "Set memory region to value",
        "sig": "void ds_mem_set(void *ptr, uint16_t val, uint16_t count)",
    },

    # ── Data lookup / DB ──
    "b275": {
        "name": "ds_db_lookup",
        "desc": "Look up data from table by index",
        "sig": "uint16_t ds_db_lookup(uint16_t table, uint16_t idx)",
        "ret_type": "uint16_t",
    },
    "cea9": {
        "name": "ds_class_check",
        "desc": "Check class validity or permission",
        "sig": "int ds_class_check(uint16_t char_idx, uint16_t class_id)",
        "ret_type": "int",
    },
    "bcdb": {
        "name": "ds_data_read_field",
        "desc": "Read field from structured data",
        "sig": "void ds_data_read_field(uint16_t x, uint16_t y, uint16_t w)",
    },
    "bc92": {
        "name": "ds_data_write_field",
        "desc": "Write field to structured data",
        "sig": "void ds_data_write_field(uint16_t x, uint16_t y, uint16_t w)",
    },

    # ── File I/O ──
    "d159": {
        "name": "ds_file_load",
        "desc": "Load file from disk",
        "sig": "void ds_file_load(uint16_t token)",
    },
    "d1a0": {
        "name": "ds_file_read_next",
        "desc": "Read next chunk from loaded file",
        "sig": "void ds_file_read_next(uint16_t buf, uint16_t len)",
    },
    "ef0c": {
        "name": "ds_file_init",
        "desc": "Initialize file system",
        "sig": "void ds_file_init(void)",
    },
    "f901": {
        "name": "ds_file_open_internal",
        "desc": "Open file (internal)",
        "sig": "uint16_t ds_file_open_internal(void)",
        "ret_type": "uint16_t",
    },
    "fed4": {
        "name": "ds_file_seek",
        "desc": "Seek in file",
        "sig": "void ds_file_seek(uint16_t handle, uint32_t offset)",
    },

    # ── Random / Math ──
    "d8ff": {
        "name": "ds_random",
        "desc": "Generate random number",
        "sig": "uint16_t ds_random(uint16_t range)",
        "ret_type": "uint16_t",
    },
    "d913": {
        "name": "ds_math_mul_div",
        "desc": "Multiply-divide: (a * b) / c",
        "sig": "uint16_t ds_math_mul_div(uint16_t a, uint16_t b, uint16_t c)",
        "ret_type": "uint16_t",
    },
    "c600": {
        "name": "ds_math_scale",
        "desc": "Scale value: (a * b) / 100",
        "sig": "uint16_t ds_math_scale(uint16_t a, uint16_t b)",
        "ret_type": "uint16_t",
    },

    # ── Character / Party ──
    "f0c2": {
        "name": "ds_char_get_stat",
        "desc": "Get character stat/attribute",
        "sig": "uint16_t ds_char_get_stat(uint16_t char_idx, uint16_t stat_id)",
        "ret_type": "uint16_t",
    },
    "f103": {
        "name": "ds_char_set_stat",
        "desc": "Set character stat/attribute",
        "sig": "void ds_char_set_stat(uint16_t char_idx, uint16_t stat_id, uint16_t val)",
    },
    "f2fe": {
        "name": "ds_char_get_skill",
        "desc": "Get character skill value",
        "sig": "uint16_t ds_char_get_skill(uint16_t char_idx, uint16_t skill_id)",
        "ret_type": "uint16_t",
    },
    "f04b": {
        "name": "ds_char_get_level",
        "desc": "Get character level/XP",
        "sig": "uint16_t ds_char_get_level(uint16_t char_idx)",
        "ret_type": "uint16_t",
    },
    "b381": {
        "name": "ds_party_get_count",
        "desc": "Get active party member count",
        "sig": "uint16_t ds_party_get_count(void)",
        "ret_type": "uint16_t",
    },

    # ── Maze/Rendering specific ──
    "ed32": {
        "name": "ds_maze_wall_render",
        "desc": "Render maze wall segment (3D projection)",
        "sig": "void ds_maze_wall_render(uint16_t col, uint16_t height, uint16_t tex, uint16_t shade)",
    },
    "f017": {
        "name": "ds_maze_cell_update",
        "desc": "Update maze cell data",
        "sig": "void ds_maze_cell_update(uint16_t x, uint16_t y, uint16_t val)",
    },
    "ec9c": {
        "name": "ds_maze_raycast",
        "desc": "Cast ray for maze rendering",
        "sig": "void ds_maze_raycast(uint16_t angle, uint16_t dist)",
    },
    "d614": {
        "name": "ds_maze_check_wall",
        "desc": "Check wall presence at cell",
        "sig": "int ds_maze_check_wall(uint16_t x, uint16_t y, uint16_t dir)",
        "ret_type": "int",
    },

    # ── Timer / Delay ──
    "f599": {
        "name": "ds_timer_delay",
        "desc": "Delay for N ticks",
        "sig": "void ds_timer_delay(uint16_t ticks)",
    },
    "f49b": {
        "name": "ds_timer_get",
        "desc": "Get current timer value",
        "sig": "uint16_t ds_timer_get(void)",
        "ret_type": "uint16_t",
    },

    # ── Misc ──
    "b169": {
        "name": "ds_error_handler",
        "desc": "Error/file-not-found handler",
        "sig": "void ds_error_handler(void)",
    },
    "c122": {
        "name": "ds_char_slot_lookup",
        "desc": "Look up character by slot position",
        "sig": "uint16_t ds_char_slot_lookup(uint16_t index)",
        "ret_type": "uint16_t",
    },
    "c13d": {
        "name": "ds_render_compact_mode",
        "desc": "Render compact/overview display mode",
        "sig": "void ds_render_compact_mode(void)",
    },
    "c9e0": {
        "name": "ds_char_draw_icons",
        "desc": "Draw character icons/symbols",
        "sig": "void ds_char_draw_icons(uint16_t char_idx)",
    },
    "d6be": {
        "name": "ds_widget_nav_prev",
        "desc": "Navigate to previous widget item",
        "sig": "void ds_widget_nav_prev(void)",
    },
    "d6d4": {
        "name": "ds_widget_nav_next",
        "desc": "Navigate to next widget item",
        "sig": "void ds_widget_nav_next(void)",
    },
    "d95c": {
        "name": "ds_config_read_divisor",
        "desc": "Read configuration divisor value",
        "sig": "uint16_t ds_config_read_divisor(void)",
        "ret_type": "uint16_t",
    },
    "d99e": {
        "name": "ds_config_check",
        "desc": "Check if configuration is active",
        "sig": "int ds_config_check(void)",
        "ret_type": "int",
    },
    "e7a7": {
        "name": "ds_char_get_stat_ptr",
        "desc": "Get pointer to character stat data",
        "sig": "void* ds_char_get_stat_ptr(uint16_t slot)",
        "ret_type": "void*",
    },
    "efd6": {
        "name": "ds_file_cleanup",
        "desc": "Clean up file handles",
        "sig": "void ds_file_cleanup(void)",
    },
    "f997": {
        "name": "ds_get_screen_size",
        "desc": "Get screen dimensions or text area size",
        "sig": "uint32_t ds_get_screen_size(void)",
        "ret_type": "uint32_t",
    },
    "b2df": {
        "name": "ds_draw_border",
        "desc": "Draw border around UI element",
        "sig": "void ds_draw_border(uint16_t x, uint16_t y, uint16_t w, uint16_t h)",
    },
    "b634": {
        "name": "ds_char_data_read",
        "desc": "Read character data field",
        "sig": "uint16_t ds_char_data_read(uint16_t slot, uint16_t offset)",
        "ret_type": "uint16_t",
    },
    "b756": {
        "name": "ds_char_data_write",
        "desc": "Write character data field",
        "sig": "void ds_char_data_write(uint16_t slot, uint16_t offset, uint16_t value)",
    },
    "b8a7": {
        "name": "ds_ui_draw_list",
        "desc": "Draw UI list element",
        "sig": "void ds_ui_draw_list(uint16_t index, uint16_t count)",
    },
    "ca1f": {
        "name": "ds_char_stat_dispatch",
        "desc": "Dispatch character stat operation",
        "sig": "void ds_char_stat_dispatch(uint16_t slot, uint16_t op)",
    },
    "ca7d": {
        "name": "ds_char_spell_op",
        "desc": "Character spell operation (learn/forget/cast)",
        "sig": "void ds_char_spell_op(uint16_t slot, uint16_t spell_id, uint16_t op)",
    },
    "d0b6": {
        "name": "ds_scroll_update",
        "desc": "Update scrollbar/position state",
        "sig": "uint16_t ds_scroll_update(uint16_t delta, uint16_t max)",
        "ret_type": "uint16_t",
    },
    "d0e2": {
        "name": "ds_scroll_clamp",
        "desc": "Clamp scroll position to valid range",
        "sig": "uint16_t ds_scroll_clamp(uint16_t pos, uint16_t min, uint16_t max)",
        "ret_type": "uint16_t",
    },
    "e481": {
        "name": "ds_ui_draw_field",
        "desc": "Draw UI text/number field",
        "sig": "void ds_ui_draw_field(uint16_t x, uint16_t y, uint16_t w, const char *str)",
    },
    "e73b": {
        "name": "ds_char_load_portrait",
        "desc": "Load character portrait graphic",
        "sig": "void ds_char_load_portrait(uint16_t slot)",
    },
    "ec0f": {
        "name": "ds_item_get_name",
        "desc": "Get item display name",
        "sig": "void ds_item_get_name(uint16_t item_id, char *buf)",
    },
    "ec39": {
        "name": "ds_item_get_data",
        "desc": "Get item data field",
        "sig": "uint16_t ds_item_get_data(uint16_t item_id, uint16_t field)",
        "ret_type": "uint16_t",
    },
    "ec6c": {
        "name": "ds_item_validate",
        "desc": "Validate item action (can equip/use/etc)",
        "sig": "int ds_item_validate(uint16_t item_id, uint16_t action)",
        "ret_type": "int",
    },
    "f058": {
        "name": "ds_render_char_name",
        "desc": "Render character name at position",
        "sig": "void ds_render_char_name(uint16_t slot, uint16_t x, uint16_t y)",
    },
    "bd90": {
        "name": "ds_sound_play",
        "desc": "Play sound effect",
        "sig": "void ds_sound_play(uint16_t sound_id)",
    },
    "cb32": {
        "name": "ds_game_set_flag",
        "desc": "Set game state flag",
        "sig": "void ds_game_set_flag(uint16_t flag, uint16_t val)",
    },
    "c587": {
        "name": "ds_game_get_flag",
        "desc": "Get game state flag",
        "sig": "uint16_t ds_game_get_flag(uint16_t flag)",
        "ret_type": "uint16_t",
    },
    "d7df": {
        "name": "ds_config_read",
        "desc": "Read configuration value",
        "sig": "uint16_t ds_config_read(uint16_t key)",
        "ret_type": "uint16_t",
    },
    "d59a": {
        "name": "ds_string_format",
        "desc": "Format string into buffer",
        "sig": "void ds_string_format(void *buf, const void *fmt, ...)",
    },
}
