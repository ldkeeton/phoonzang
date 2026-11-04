/* Poll one filtered key and set the Escape bit when pressed. */
extern int story_escape_state;
extern int poll_filtered_key();
extern unsigned char get_filtered_key();

poll_escape_key()
{
	int key_code;

	/* A -1 marker state disables further polling. */
	if (story_escape_state == -1)
		return 0;

	/* Read a key only when the filtered queue reports one. */
	if (poll_filtered_key(1)) {
		key_code = get_filtered_key(1);
		/* 27 (0x1b) is Escape; OR its comparison result into the flags. */
		story_escape_state |= key_code == 27 ? 1 : 0;
	}
	return story_escape_state;
}
