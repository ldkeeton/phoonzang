/* The base overlay's uninitialized globals; ln lays the commons out last
   declared first. */
#include "structs/pcrec.h"
#include "structs/loadrec.h"
#include "structs/bane.h"

int scene_clip_arg;
int scene_step_d;
int scene_step_c;
int scene_step_b;
char unused_a5f4[6];
int actor_y;
int scene_sprite_three_y;
char scene_sprite_y[6];
char unused_a5e6[4];
int trail_x;
int actor_x;
int scene_sprite_three_x;
int sprite_pos_1[2];
int sprite_pos;
int scroll_x_4;
int scroll_x_3;
int scroll_x_2;
int scroll_x_1;
int scroll_x;
int scene_step_a;
char scene_digit_cycle[8];
char unused_a5c0[6];
int scene_cue_e;
int scene_cue_d;
int scene_cue_c;
int scene_cue_b;
int scene_cue_a;
long scene_backdrop_ref;
int scene_frame;
int scene_frame_delay_ticks;
int scene_running;
int scene_tick;
char scene_message_line_buffer[256];
int scene_message_previous_x;
int scene_message_row;
int scene_index;
char unused_a496[14];
int copy_protection_result;
char quantized_rgb_lookup[512];
unsigned char adjusted_palette_rgb[256][3];
char base_palette_rgb[768];
struct pc_rec loaded_party_member;
struct load_state loaded_game_state;
char game_block_b[128];
char game_block_a[128];
struct load_header preserved_load_header;
int intro_screen_number;
struct bane_character bane_character;
struct bane_party_header bane_party_header;
int bane_import_buffer;
char bane_header_buffer[414];
char game_load_path[50];
char selected_game_drive[20];
char game_data_drive[20];
