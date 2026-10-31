/* reverse a string in place by exchanging characters from its ends */

extern int aztec_strlen();

reverse_string(string)
char *string;
{
	int saved_character;
	int left_index;
	int right_index;

	left_index = 0;
	right_index = aztec_strlen(string) - 1;
	/* Test before the first exchange, then move inward. */
	goto loop_test;
loop_body:
		saved_character = string[left_index];
		string[left_index] = string[right_index];
		string[right_index] = saved_character;
		right_index--;
		left_index++;
loop_test:
	if (left_index < right_index)
		goto loop_body;
}
