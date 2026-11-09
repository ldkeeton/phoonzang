/* The character-making overlay's uninitialized globals.  ln lays commons
   out in the reverse of their order here, so the last is at the lowest
   address. */

int character_creation_mode;
int profession_eligible[14];
int party_redraw_interval;
int known_spell_ids[40];
int slot_limit[34];
char slot_label[10][20];
int personal_skill_points[2];
int skill_group_points[2];
char skill_points_label[20];
char unused_95ea[10];
int both_high_stats_flag;
int skill_availability_flags[28];
int banner_animation_frame;
int banner_plain_flag;
int banner_offset;
char remaining_points_label[20];
int remaining_stat_points;
char character_stat_labels[8][10];
long saved_screen;
long saved_screen_handle;
long realm_panel_cache;
long character_screen_cache_b;
long character_screen_cache_a;
long roster_screen;
long detail_panel_cache;
long summary_panel_cache;
