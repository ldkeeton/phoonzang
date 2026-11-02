/* Find the matching entry in the runtime six-byte record table. */
struct six_byte_record {
	unsigned char first_value;   /* +0: first lookup key */
	unsigned char second_value;  /* +1: second lookup key */
	int stored_value;	     /* +2: value tested against the key */
	int unused_value;	     /* +4: remaining word in the record */
};

extern struct six_byte_record *runtime_buffer_3k;
extern int runtime_six_byte_count;

find_maze_change(first_value, second_value, third_value, fourth_value,
		last_value)
int first_value, second_value, third_value, fourth_value, last_value;
{
	int record_index;
	int combined_value;
	struct six_byte_record *record;

	/* The table stores each record in a fixed six-byte stride. */
	combined_value = (third_value << 8) + (fourth_value << 4)
		+ last_value;
	record = runtime_buffer_3k;
	for (record_index = 0; record_index < runtime_six_byte_count;
		record_index++, record++) {
		if (record->first_value != first_value
			|| record->second_value != second_value)
			continue;

		/* The second key value selects which third-field form is used. */
		if (second_value == 6) {
			if (record->stored_value == third_value)
				return record_index;
		} else if (record->stored_value == combined_value) {
			return record_index;
		}
	}
	return -1;
}
