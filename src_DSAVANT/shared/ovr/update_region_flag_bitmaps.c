/* Move the selected flag between the region and scenario bitmaps. */
#include "structs/rgnstate.h"

extern struct saved_region_blocks party_region;
extern unsigned char scenario_header_data[][16];
extern int current_level;
extern int set_bitmap_bit();

update_region_flag_bitmaps(first_bit, second_bit, reverse_order)
int first_bit;
int second_bit;
int reverse_order;
{
	int bit_to_clear;
	int bit_to_set;

	/* The caller can reverse which bit is cleared and which is set. */
	bit_to_clear = reverse_order == 0 ? first_bit : second_bit;
	bit_to_set = reverse_order == 0 ? second_bit : first_bit;

	/* Skip a zero clear index; zero as the flag value clears the bit. */
	if (bit_to_clear != 0) {
		set_bitmap_bit(party_region.state[current_level], bit_to_clear, 0);
		set_bitmap_bit(scenario_header_data[current_level], bit_to_clear, 0);
	}
	/* Skip a zero set index; one as the flag value sets the bit. */
	if (bit_to_set != 0) {
		set_bitmap_bit(party_region.state[current_level], bit_to_set, 1);
		set_bitmap_bit(scenario_header_data[current_level], bit_to_set, 1);
	}
}
