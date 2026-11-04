/* Clear the three marker string animation frames. */
extern int marker_string_frames[];

clear_marker_string_frames()
{
	int marker_index;

	/* Reset each of the three marker strings. */
	for (marker_index = 0; marker_index < 3; marker_index++) {
		marker_string_frames[marker_index] = 0;
	}
}
