/* The level-up overlay's uninitialized globals.  ln lays commons out in
   the reverse of their order here, so the last is at the lowest address. */

#include "structs/encstyle.h"

int level_up_transition_state[84];
int slot_limit[34];
char slot_label[10][20];
int personal_skill_points[2];
int skill_group_points[2];
char skill_points_label[20];
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
long saved_screen;
char unused_942e[4];
long realm_panel_cache;
long ac_screen_b_handle;
long ac_screen_a_handle;
long roster_screen;
long member_detail_cache;
long member_screen_cache;
struct encumbrance_style window_record;
