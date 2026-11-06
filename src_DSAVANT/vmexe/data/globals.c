/* The combat overlay's uninitialized globals.  ln lays commons out in the
   reverse of their order here, so the last is at the lowest address. */

#include "structs/encstyle.h"

int spell_cast_failed;
int spell_backfired;
int combat_message_layout;
char combat_action_suffix_buffer[80];
char combat_action_message_buffer[80];
char combat_action_name_buffer[80];
int combat_wait_occurred;
int party_redraw_interval;
int combat_overlay_entry_flag;
int combat_effect_sound;
int pending_effect_sound;
int cell_effect_frame[3][3];
struct encumbrance_style window_record;
