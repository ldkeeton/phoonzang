/* Split a counted item stack into a second inventory slot. */
#include "structs/pcrec.h"

extern char item_type_counted[];
extern int movmem();
extern int strcpy();
extern int play_sound_effect();

split_counted_item_stack(source, destination, source_name, destination_name)
struct pc_item_slot *source, *destination;
char *source_name, *destination_name;
{
	int split_count;
	struct pc_item_slot split_slot;

	if (item_type_counted[source->item_type] == 1 && source->level > 1) {
		movmem(source, destination, 12);
		strcpy(destination_name, source_name);
		split_count = source->level / 2;
		source->level -= split_count;
		destination->level = split_count;
		play_sound_effect(0);
	}
}
