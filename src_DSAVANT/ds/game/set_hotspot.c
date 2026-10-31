/* record one hotspot's rectangle and its two activation keys by hotspot id */
extern int hotspot_rects[];
extern unsigned char hotspot_keys[][2];

set_hotspot(hotspot_id, x0, y0, x1, y1, key, alt_key)
int hotspot_id, x0, y0, x1, y1, key, alt_key;
{
	hotspot_keys[hotspot_id][0] = key;
	hotspot_keys[hotspot_id][1] = alt_key;

	/* Each rectangle takes four ints, so turn the id into a first-int index. */
	hotspot_id *= 4;
	hotspot_rects[hotspot_id] = x0;
	hotspot_rects[hotspot_id + 1] = y0;
	hotspot_rects[hotspot_id + 2] = x1;
	hotspot_rects[hotspot_id + 3] = y1;
}
