/* Poll keyboard and mouse input for a hotspot selection. */
extern int escape_key_hit;
extern int space_key_hit;
extern int hotspot_hit;
extern int mouse_active;
extern int hotspot_rects[][4];
extern unsigned char hotspot_keys[][2];
extern unsigned char get_filtered_key();

poll_hotspots(hotspot_rectangles)
int hotspot_rectangles[];
{
	int hotspot_index;
	int key;

	/* Reset key state before checking the current input. */
	escape_key_hit = 0;
	space_key_hit = 0;
	/* Check one filtered key. */
	if (poll_filtered_key(1)) {
		key = get_filtered_key(1);
		if (key == 27) /* Escape key. */
			escape_key_hit = 1;
		if (key == 32) /* Space key. */
			space_key_hit = 1;

		/* Scan enabled hotspots for either assigned key. */
		hotspot_index = 0;
		while (hotspot_rects[hotspot_index][0] != -1) {
			if (hotspot_keys[hotspot_index][0] == key ||
			    hotspot_keys[hotspot_index][1] == key) {
				hotspot_hit = 1;
				return hotspot_index + 1;
			}
			hotspot_index++;
		}
	}

	/* A mouse hit test returns a negative value for a hit. */
	hotspot_index = 0;
	if (mouse_active)
		hotspot_index = call_mouse_hit_test(hotspot_rectangles);
	hotspot_hit = hotspot_index < 0;
	return hotspot_index < 0 ? -hotspot_index : hotspot_index;
}
