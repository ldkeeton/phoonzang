/* Merge compatible item stacks in the character inventory. */
#include "structs/pcrec.h"

extern char item_type_counted[];
extern int combine_item_recipe();
extern int play_sound_effect();
extern int strcpy();

merge_counted_item_slots(source, destination, source_name, destination_name)
struct pc_item_slot *source, *destination;
char *source_name, *destination_name;
{
	int combined_count;

	if (source->item_id == destination->item_id &&
		item_type_counted[source->item_type] == 1) {
		combined_count = source->level + destination->level;
		if (source->flags & 128) {
			destination->flags |= 128;
			strcpy(destination_name, source_name);
		}
		if (destination->flags & 128) {
			source->flags |= 128;
			strcpy(source_name, destination_name);
		}
		if (combined_count <= 250) {
			source->level = combined_count;
			destination->item_id = 0;
		} else {
			source->level = 250;
			destination->level = combined_count - 250;
		}
		play_sound_effect(0);
	} else {
		if (combine_item_recipe(source, destination, source_name))
			play_sound_effect(0);
	}
}
