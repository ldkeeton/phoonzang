/* Encode a special power code as four glyphs for the item details panel. */
#include "msg.h"

extern int load_message_string();

encode_special_power_glyphs(output, value)
char *output;
int value;
{
	int digit_index;
	int remainder;
	int digit_sum;
	char symbol_table[20];

	load_message_string(MSG_471, symbol_table);
	for (digit_index = 0; digit_index < 4; ++digit_index) {
		remainder = value % 10;
		value /= 10;
		digit_sum += remainder;
		remainder = (digit_index * digit_sum + remainder) % 10;
		output[digit_index] = symbol_table[remainder];
	}
	output[4] = 0;
}
