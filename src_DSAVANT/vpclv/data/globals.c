/* The level-up overlay's uninitialized globals.  ln lays commons out in
   the reverse of their order here, so the last is at the lowest address. */

#include "structs/encstyle.h"

int level_up_transition_state[84];
int slot_limit[34];
char slot_label[10][20];
int slot_value2[2];
int slot_value[2];
char slot_prompt_text[20];
char unused_95d2[10];
int both_high_stats_flag;
int skill_availability_flags[28];
int item_slot_color[10];
int item_slot_attr[10];
char item_slot_names[10][22];
int item_page_drawn;
int item_page_alt_mode;
int item_page;
int party_redraw_interval;
int known_spell_ids[40];
int banner_animation_frame;
int banner_plain_flag;
int banner_offset;
int saved_screen_hi;
int saved_screen;
int realm_panel_cache_low[3];
int realm_panel_cache_high;
int ac_screen_b_handle_high;
int ac_screen_b_handle_low;
int ac_screen_a_handle_high;
int ac_screen_a_handle_low;
int roster_screen_a;
int roster_screen_b;
int member_detail_cache_high;
int member_detail_cache_low;
int member_screen_cache_high;
int member_screen_cache_low;
struct encumbrance_style window_record;
