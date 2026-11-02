/* Advances one state of the party screen overlay animation. */

#include "structs/ovlitem.h"

extern int bss_845e;
extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int party_redraw_interval;
extern int screen_cache_index;
extern int screen_cache[2][2];
extern int party_status_frame;
extern int cell_overlay_y_offset[][3];
extern struct {
	int count;
	struct overlay_item *items[12];
} overlay_list;

extern call_show_area();
extern call_restore_screen();
extern loc_KRMP();
extern loc_SSIO();
extern queue_cell_action_overlay();
extern queue_marker_overlay();
extern draw_party_status_glyphs();

/* Dispatch the current animation state, then advance its twelve-step cycle. */
step_party_screen_animation()
{
	int row;
	int column;
	int redraw_result;

	switch (bss_845e) {
	case -3:
		/* Show the cleared area at the start of a cycle. */
		call_show_area(72, 32, 247, 143);
		break;
	case -2:
		/* Alternate the cached screen when the redraw interval elapsed. */
		if (*tick_counter_ptr - party_redraw_last_tick
			>= party_redraw_interval)
			screen_cache_index = (screen_cache_index + 1) % 2;
		call_restore_screen(screen_cache[screen_cache_index][0],
			screen_cache[screen_cache_index][1], 0, 0);
		/* Mark all twelve overlay records free and clear their count. */
		for (row = 0; row < 12; row++)
			overlay_list.items[row]->code = 255;
		overlay_list.count = 0;
		break;
	case -1:
		redraw_result = loc_KRMP();
		/* Queue action overlays for each cell in the three by three grid. */
		for (row = 0; row < 3; row++)
			for (column = 0; column < 3; column++)
				queue_cell_action_overlay(row, column, 0,
					100 - cell_overlay_y_offset[row][column],
					72, 248, redraw_result);
		queue_marker_overlay();
		/* Keep the status glyph frame in its two-frame cycle on redraw. */
		if (redraw_result != 0)
			party_status_frame = (party_status_frame + 1) % 2;
		draw_party_status_glyphs();
		break;
	default:
		/* Process the overlay belonging to this ordinary animation state. */
		loc_SSIO(bss_845e);
	}

	++bss_845e;
	/* State twelve begins a new cycle at state minus three. */
	if (bss_845e == 12)
		bss_845e = -3;
}
