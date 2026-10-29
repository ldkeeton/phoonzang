/* Occasionally adjust the weights between two slots, then mark both pairs. */

extern int random_below();
extern int log_slot_event();
extern int adjust_faction_attitude();
extern unsigned char slot_pair_processed[];

mark_slot_pair_processed(first_slot, second_slot)
int first_slot, second_slot;
{
	/* One chance in three: refresh the pair using lookup key values 5 and -1. */
	if (random_below(3) == 0) {
		log_slot_event(first_slot, second_slot, 5, -1);
		/* Fifteen outcomes shifted by five give weight changes from -5 to 9. */
		adjust_faction_attitude(first_slot, second_slot, random_below(15) - 5);
		adjust_faction_attitude(second_slot, first_slot, random_below(15) - 5);
	}
	/* The 22-column table records each directed slot pair. */
	slot_pair_processed[first_slot * 22 + second_slot] = 1;
	slot_pair_processed[second_slot * 22 + first_slot] = 1;
}
