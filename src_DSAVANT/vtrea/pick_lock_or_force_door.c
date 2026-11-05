/* Pick a lock or force the door, then display the outcome. */

#include "structs/maze.h"
#include "msg.h"

extern struct maze_tables *maze_tables;
extern int party_facing, party_world_x, party_world_y, maze_variant;
extern int lock_tumbler_values[];
extern int jam_maze_region_side();

/* Pick the lock when force_door is zero; otherwise force the door. */
pick_lock_or_force_door(member, object_index, force_door)
int member, object_index, force_door;
{
	int packed_level, lock_strength, door_requirement;
	int result, difficulty, jammed;
	char message[40];

	flush_keyboard();
	door_requirement = maze_tables->party_mask[object_index];
	packed_level = maze_tables->arg[object_index];
	lock_strength = get_bits(packed_level, 0, 5);
	difficulty = lock_strength / 3 + 1;
	if (difficulty > 6)
		difficulty = 6;
	jammed = 0;
	packed_level = maze_tables->flags[object_index];
	if (get_bits(packed_level, party_facing * 2, 2) == 2) {
		lock_tumbler_values[(party_world_x + party_world_y) % difficulty] = 100;
		jammed = 1;
	}
	if (force_door == 0)
		result = pick_lock_minigame(member, MSG_PICK_LOCK, 1,
			difficulty, jammed, lock_strength);
	else {
		result = force_door_minigame(member,
			maze_variant == 1 ? MSG_FORCE_GATE : MSG_FORCE_DOOR,
			1, 1, jammed,
			jammed != 0 ? 20 : lock_strength);
	}
	if (result != -1) {
		if (result == 0)
			unlock_maze_region_side(object_index, 1);
		else if (result == 2)
			jam_maze_region_side(object_index);
		load_message_string(result + MSG_SUCCESS, message);
		if (result == 0)
			show_treasure_message(message, 1, 0, 85);
		else
			show_treasure_message(message, 1, 1, 22);
	}
	return result;
}
