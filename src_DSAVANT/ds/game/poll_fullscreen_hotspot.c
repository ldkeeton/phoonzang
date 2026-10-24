/* install two hotspot regions in hotspot_rects and report the hit id */

extern int hotspot_hit;
extern int hotspot_rects[];

poll_fullscreen_hotspot()
{
	set_hotspot(0, 0, 0, 319, 199, 13,
		27);	/* whole screen; keys 13 (CR), 27 (ESC) */
	set_hotspot(1, -1, 0, 0, 0, 0, 0);	/* id 1, x0 -1: disabled */
	poll_hotspots(hotspot_rects);
	return hotspot_hit;			/* 0 when nothing was hit */
}
