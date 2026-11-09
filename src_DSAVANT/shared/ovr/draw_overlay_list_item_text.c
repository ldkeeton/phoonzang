/* Draw one active entry from the overlay list. */

#include "structs/ovlitem.h"

extern struct overlay_list overlay_list;

extern int call_draw_text();

draw_overlay_list_item_text(item_index)
int item_index;
{
	/* A 0xff code marks an unused overlay slot. */
	if (overlay_list.items[item_index]->code != 255) {
		/* Pass the item's text, color, position, and clipping to the renderer. */
		call_draw_text(overlay_list.items[item_index]->color,
			overlay_list.items[item_index]->x,
			overlay_list.items[item_index]->y,
			overlay_list.items[item_index]->clip_left,
			overlay_list.items[item_index]->clip_right,
			33, 142,
			overlay_list.items[item_index]->variant,
			overlay_list.items[item_index]->text,
			0,
			overlay_list.items[item_index]->flag);
	}
}
