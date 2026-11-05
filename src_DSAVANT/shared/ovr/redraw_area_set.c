/* redraw the glyph strip after saving and restoring one selected area set */

extern int save_screen_area(), redraw_glyph_strip(), restore_saved_screen();
extern char area_set_0_save_file[];
extern char area_set_1_left_save_file[], area_set_1_right_save_file[],
	area_set_1_center_save_file[], area_set_2_save_file[];

redraw_area_set(area_set)
int area_set;
{
	int saved_area_1;
	int saved_area_2;
	int saved_area_3;

	switch (area_set) {
	case 0:
		/* Set zero saves the middle of the lower band. */
		saved_area_1 = save_screen_area(98, 164, 224, 194,
			area_set_0_save_file);
		redraw_glyph_strip(0);
		restore_saved_screen(saved_area_1, 1);
		break;
	case 1:
		/* Save three screen rectangles, then restore them in reverse order. */
		saved_area_1 =
			save_screen_area(8, 165, 96, 194, area_set_1_left_save_file);
		saved_area_2 =
			save_screen_area(231, 165, 314, 194, area_set_1_right_save_file);
		saved_area_3 =
			save_screen_area(115, 147, 205, 159, area_set_1_center_save_file);
		redraw_glyph_strip(0);
		restore_saved_screen(saved_area_3, 1);
		restore_saved_screen(saved_area_2, 1);
		restore_saved_screen(saved_area_1, 1);
		break;
	case 2:
		/* This set saves the broad lower rectangle with its associated file. */
		saved_area_1 = save_screen_area(8, 164, 314, 194, area_set_2_save_file);
		redraw_glyph_strip(0);
		restore_saved_screen(saved_area_1, 1);
		break;
	case 3:
		/* Set three only redraws the glyph strip. */
		redraw_glyph_strip(0);
		break;
	}
}
