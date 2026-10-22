/* 240 objects, one parallel array per field */
struct maze_tables {
	int key[240];
	int party_mask[240];		/* 0: any party, else bit per party_tag */
	int flags[240];			/* packed bitfields, read via get_bits */
	unsigned char type[240];
	unsigned char x[240];
	unsigned char y[240];
	unsigned char map[240];
	unsigned char f960[240];
	unsigned char sound[240];
	unsigned char map_first[1];	/* indexed by map piece */
};

/* strides 0xc, 0x78, 0x248 */
struct grid_cell { int key; char pad[10]; };
struct grid_row { struct grid_cell cell[10]; };
struct grid_page { struct grid_row row[4]; char pad[104]; };

extern struct maze_tables *maze_tables;
extern struct grid_page cell_key_grid[];
extern int party_map_piece, party_cell_y, party_cell_x, party_tag;
extern int party_region, game_state_arg, loaded_sound_id, pending_event, pending_event_hi;

/* scan the objects in the party's cell for one keyed to grid entry
   [page][row][col]; returns 1 if a type 0x13 or type 7 object fired */
trigger_keyed_cell_object(page, row, col)
int page, row, col;
{
	int unused1, unused2, key, obj, bit, snd;

	obj = maze_tables->map_first[party_map_piece];
	for (;;) {	/* each object at the party's x, y, map piece */
		obj = find_object_at(party_cell_x, party_cell_y, party_map_piece, obj);
		if (obj == -1)
			break;
		if (maze_tables->type[obj] == 0x13 &&
		    cell_key_grid[page].row[row].cell[col].key == maze_tables->key[obj] &&
		    (maze_tables->party_mask[obj] == 0 ||
		     maze_tables->party_mask[obj] & (1 << party_tag))) {
			/* flags bits 0-7 clear, bits 8-15 set a bit in the level's 16-byte map */
			bit = get_bits(maze_tables->flags[obj], 0, 8);
			set_bitmap_bit((game_state_arg << 4) + 0x8d14, bit, 0);
			if (bit = get_bits(maze_tables->flags[obj], 8, 8))
				set_bitmap_bit((game_state_arg << 4) + 0x8d14, bit, 1);
			if (maze_tables->sound[obj] > 0) {
				gfx_show_area(0x36, 0x8e, 0x109, 0xc6);
				/* sounds below 5 and 8, 9 play directly; others load first */
				if ((snd = maze_tables->sound[obj]) < 5 || snd == 8 || snd == 9)
					play_sound_effect(snd);
				else {
					ds_app_QTIV(snd);
					play_sound_effect(0x10);
					wait_and_free_sound(0x10);
					loaded_sound_id = -1;
				}
			}
			party_region = obj + 1;
			return 1;
		}
		/* type 7: 2-bit field at bit 2 * party_tag is 1 or 2 */
		if (maze_tables->type[obj] == 7 &&
		    (get_bits(maze_tables->flags[obj], party_tag << 1, 2) == 1 ||
		     get_bits(maze_tables->flags[obj], party_tag << 1, 2) == 2)) {
			key = maze_tables->party_mask[obj];
			if (cell_key_grid[page].row[row].cell[col].key == key) {
				claim_type7_object(obj);
				pending_event = 0x841;
				pending_event_hi = 0;
				return 1;
			}
		}
		obj++;
	}
	return 0;
}
