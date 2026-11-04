/* Draw glyph code area_number + 1 inside the selected screen area
   rectangle. */
#include "structs/arearect.h"
extern long call_save_area();
extern int call_draw_text();
extern int call_show_area();
extern int call_restore_area();

extern struct area_rectangle screen_area_rectangles[];

draw_area_number_glyph(area_number)
int area_number;
{
	int text_color;
	char text[10];
	long saved_area;

	/* Read the selected rectangle from the data-segment table. */
	saved_area = call_save_area(screen_area_rectangles[area_number].left,
		screen_area_rectangles[area_number].top,
			screen_area_rectangles[area_number].right,
		screen_area_rectangles[area_number].bottom);
	text_color = 0;
	text[0] = (char)area_number + 1;
	text[1] = 0;
	/* Draw the glyph at the rectangle origin, clipped to the full 320x200
	   screen. */
	call_draw_text(text_color, screen_area_rectangles[area_number].left,
		screen_area_rectangles[area_number].top,
		0, 319, 0, 199, 0, text, 0, 0);
	call_show_area(screen_area_rectangles[area_number].left,
		screen_area_rectangles[area_number].top,
			screen_area_rectangles[area_number].right,
		screen_area_rectangles[area_number].bottom);
	call_restore_area(saved_area, 1);
}
