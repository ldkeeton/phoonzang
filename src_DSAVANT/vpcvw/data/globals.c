/* The character view overlay's uninitialized globals.  ln lays commons
   out in the reverse of their order here, so the last is at the lowest
   address. */

#include "structs/encstyle.h"

char skill_points_label[20];
char unused_96d2[10];
int both_high_stats_flag;
int skill_availability_flags[28];
int profession_eligible[14];
int item_page_drawn;
char inventory_button_labels[10][10];
int item_page_alt_mode;
int item_slot_attr[10];
int item_slot_color[10];
int selected_equipment_slot;
unsigned char scene_message_text_buffer[128];
int scene_message_last_x;
int scene_message_line_index;
int selected_spell_target_member;
int party_redraw_interval;
int known_spell_ids[40];
char item_slot_names[10][22];
int item_page;
int banner_animation_frame;
int banner_plain_flag;
int banner_offset;
int selected_item_count;
int selected_item_type;
char selected_item_list_text[22];
int selected_item_list_color;
int selected_item_list_glyph;
int selected_item_list_index;
long saved_screen;
char unused_9406[4];
long realm_panel_cache;
long ac_screen_b_handle;
long ac_screen_a_handle;
long roster_screen;
long member_detail_cache;
long member_screen_cache;
struct encumbrance_style window_record;
