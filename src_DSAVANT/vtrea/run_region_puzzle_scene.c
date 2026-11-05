/* Show the party options in the treasure scene. */
#include "msg.h"

extern int prepare_treasure_scene();
extern int redraw_treasure_caption();
extern int run_region_choice_puzzle();
extern int restore_treasure_scene();

/* Open the party options and restore the treasure scene afterward. */
run_region_puzzle_scene()
{
	prepare_treasure_scene(MSG_PARTY_OPTIONS_2038);
	redraw_treasure_caption(0);
	run_region_choice_puzzle();
	redraw_treasure_caption(1);
	restore_treasure_scene();
}
