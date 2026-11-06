/* Show an action message; for a monster actor flash its group's front cell,
   then wait. */
extern int acting_group;
extern int startup_option;
extern int cell_effect_frame[3][3];
extern int effect_frame_phase;
extern int display_combat_message();
extern int run_combat_screen_animation();
extern int wait_for_combat_input();

display_combat_action_and_wait(message, color)
int message, color;
{
	display_combat_message(message, color, 0);
	if (acting_group != 0 && acting_group != 6) {
		cell_effect_frame[acting_group < 3 ? 0 : 1][0] = 0;
		effect_frame_phase = 0;
		run_combat_screen_animation();
	}
	wait_for_combat_input(startup_option / 2);
}
