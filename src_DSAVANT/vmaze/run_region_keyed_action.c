/* Run the action selected by the current region's key value. */

#include "structs/maze.h"
#include "msg.h"

extern struct maze_tables *maze_tables;
extern int party_region, maze_message_refresh_pending;
extern int play_maze_sound_effect(), show_message(), play_sound_effect();
extern int wait_ticks_or_key(), move_party_to_dest();

run_region_keyed_action()
{
	int action;

	action = maze_tables->key[party_region];
	/* Region key values select one of the actions below; others do nothing. */
	switch (action) {
	case 1:
		/* Key 1 plays sound 17 before following the ordinary move path. */
		play_maze_sound_effect(17);
		/* Fall through to the ordinary region move. */
	case 0:
		move_party_to_dest(party_region);
		break;
	case 2:
		/* Key 2 displays the chute message and waits eight ticks. */
		show_message(MSG_A_CHUTE);
		play_sound_effect(8);
		wait_ticks_or_key(8);
		maze_message_refresh_pending = 1;
		move_party_to_dest(party_region);
		break;
	case 4:
	case 5:
	case 6:
		/* Keys 4 through 6 play sound 8 before moving. */
		play_sound_effect(8);
		move_party_to_dest(party_region);
		break;
	}
}
