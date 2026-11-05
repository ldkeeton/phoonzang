/* reverse a string in place by exchanging characters from its ends */

extern int aztec_strlen();

reverse_string(string)
char *string;
{
	int saved_character;
	int left_index;
	int right_index;

	/* Swap the outermost pair, then move inward. */
	for (left_index = 0, right_index = aztec_strlen(string) - 1;
	    left_index < right_index; left_index++, right_index--) {
		saved_character = string[left_index];
		string[left_index] = string[right_index];
		string[right_index] = saved_character;
	}
}
