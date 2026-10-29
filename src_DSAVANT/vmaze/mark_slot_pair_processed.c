/* Occasionally adjust the weights between two slots, then mark both pairs. */

extern int random_below();
extern int find_or_add_loaded_record();
extern int adjust_target_weight();
extern unsigned char slot_pair_processed[];

mark_slot_pair_processed(first_slot, second_slot)
int first_slot, second_slot;
{
	/* One chance in three: refresh the pair using lookup key values 5 and -1. */
	if (random_below(3) == 0) {
		find_or_add_loaded_record(first_slot, second_slot, 5, -1);
		/* Fifteen outcomes shifted by five give weight changes from -5 to 9. */
		adjust_target_weight(first_slot, second_slot, random_below(15) - 5);
		adjust_target_weight(second_slot, first_slot, random_below(15) - 5);
	}
	/* The 22-column table records each directed slot pair. */
	slot_pair_processed[first_slot * 22 + second_slot] = 1;
	slot_pair_processed[second_slot * 22 + first_slot] = 1;
}
