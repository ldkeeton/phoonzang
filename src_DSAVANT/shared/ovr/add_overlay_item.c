/* inserts an overlay item in code order; hangs when the 12-slot table is
   full */

#include "structs/ovlitem.h"

extern struct {
	int count;
	struct overlay_item *items[12];
} overlay_list;

add_overlay_item(code, color, x, y, clip_left, clip_right, variant, flag, text)
int code, color, x, y, clip_left, clip_right, variant, flag;
char *text;
{
	int pos, i;

	pos = 0;
	/* records are kept ascending by code */
	while (pos < overlay_list.count && overlay_list.items[pos]->code <= code)
		++pos;
	/* make room by moving the tail up one 24-byte record */
	for (i = overlay_list.count; i > pos; --i)
		*overlay_list.items[i] = *overlay_list.items[i - 1];
	if (pos >= 12)		/* no free slot: the original spins here */
		for (;;)
			play_sound_effect(0);
	overlay_list.items[pos]->code = code;
	overlay_list.items[pos]->color = color;
	overlay_list.items[pos]->x = x;
	overlay_list.items[pos]->y = y;
	overlay_list.items[pos]->clip_left = clip_left;
	overlay_list.items[pos]->clip_right = clip_right;
	overlay_list.items[pos]->variant = variant;
	overlay_list.items[pos]->flag = flag;
	aztec_strcpy(overlay_list.items[pos]->text, text);
	++overlay_list.count;
}
