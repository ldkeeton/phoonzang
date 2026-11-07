/* Picks a random phrase from a slash-separated NPC phrase message. */
extern int npc_phrase_msg_id;
extern int npc_dialog_choice_auxiliary;
extern int npc_dialog_choice_index;
extern int load_message_string();
extern int strpos();
extern int random_below();
extern int strncpy();
extern int strcpy();
extern int find_npc_choice_text_prefix();
extern int titlecase_string();

/* Chooses a random NPC phrase and matches it to a dialog choice. */
choose_random_npc_phrase(destination, randomize)
char *destination;
int randomize;
{
	char message[80];
	int found;
	int segment_count;
	int segment_start;
	int segment_offsets[20];
	int selected_segment;
	int first_segment_length;
	int maximum_segment;

	load_message_string(npc_phrase_msg_id, message);
	first_segment_length = (unsigned char)message[0];
	maximum_segment = (unsigned char)message[1] - 1;
	segment_count = 0;
	segment_start = 2;
	for (;;) {
		found = strpos(message + segment_start, 47);
		if (found == -1)
			break;
		segment_offsets[segment_count] = segment_start;
		segment_start += found + 1;
		segment_count++;
	}
	segment_offsets[segment_count] = segment_start;
	if (randomize == 0) {
		if (segment_count > first_segment_length)
			segment_count = first_segment_length;
		selected_segment = random_below(segment_count);
	} else {
		segment_count -= maximum_segment;
		selected_segment = random_below(segment_count) + maximum_segment;
	}
	found =
		segment_offsets[selected_segment + 1] - segment_offsets[selected_segment];
	strncpy(destination, message + segment_offsets[selected_segment],
		found);
	destination[found - 1] = 0;
	strcpy(message, destination);
	message[found - 1] = ' ';
	message[found] = 0;
	npc_dialog_choice_index = find_npc_choice_text_prefix(message,
		&npc_dialog_choice_auxiliary);
	titlecase_string(destination);
}
