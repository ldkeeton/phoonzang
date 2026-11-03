/* Redraw the fixed screen regions selected by the area-set index. */

extern int call_show_area();

show_area_set(area_set)
int area_set;
{
	switch (area_set) {
	case 0:
		/* The first set contains the main region and two smaller panels. */
		call_show_area(115, 147, 205, 159);
		call_show_area(8, 165, 96, 194);
		call_show_area(231, 165, 314, 194);
		break;
	case 1:
		/* The second set selects the lower-centre band. */
		call_show_area(98, 164, 224, 194);
		break;
	case 2:
		/* The third set redraws the main region. */
		call_show_area(115, 147, 205, 159);
		break;
	case 3:
		/* The fourth set selects the wide lower region. */
		call_show_area(8, 147, 314, 194);
	}
}
