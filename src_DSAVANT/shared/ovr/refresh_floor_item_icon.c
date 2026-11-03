/* Refresh the floor item marker at the party's current cell. */
#include "structs/flooritm.h"

extern int base_screen_area, base_screen_area_segment;
extern int party_map_piece, party_cell_x, party_cell_y;
extern char floor_item_cell_bits[];
extern struct floor_item *find_floor_item_at_party();
extern int call_restore_area(), call_set_text_pos(), draw_font_glyph();
extern int call_show_area(), set_bitmap_bit();

refresh_floor_item_icon()
{
	struct floor_item *floor_item;
	int cell_bit_index;
	int redraw_result;

	/* Draw the marker when the party's current cell has a floor item. */
	if ((floor_item = find_floor_item_at_party()) != 0) {
		call_restore_area(base_screen_area, base_screen_area_segment, 0);
		/* Draw the item glyph at the fixed marker position. */
		call_set_text_pos(305, 185);
		/* Use the glyph value stored in the floor item record. */
		draw_font_glyph(floor_item->glyph, 4);
		call_show_area(305, 185, 316, 196);
		return 1;
	}

	/* Clear the current cell's bit; each map piece has 64 cells in 8 rows. */
	set_bitmap_bit(floor_item_cell_bits,
		(party_map_piece << 6) + (party_cell_y << 3) + party_cell_x, 0);
	call_restore_area(base_screen_area, base_screen_area_segment, 0);
	call_show_area(305, 185, 316, 196);
	return 0;
}
