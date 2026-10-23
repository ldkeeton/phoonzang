/* 240 objects, one parallel array per field */
struct maze_tables {
	char pad0[960];
	int flags[240];			/* packed bitfields, read via get_bits */
	unsigned char type[240];
	unsigned char x[240];
	unsigned char y[240];
	unsigned char map[240];
	unsigned char f960[240];
	unsigned char owner[240];
	unsigned char map_first[1];	/* indexed by map piece */
};

extern struct maze_tables *maze_tables;
extern int party_map_piece, party_cell_y, party_cell_x, party_tag, message_delay;
extern int found_object_owner, party_region, game_state;

/* on entering the party's cell: optionally show a message unless the cell
   is already tagged for party_tag, then act on the first matching object */
check_cell_objects(announce)
int announce;
{
	int cell, obj, kind, tag, shown;

	cell = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;	/* 8x8 cells per piece */
	loc_RRJG(cell, &kind, &tag);
	shown = 0;
	/* kinds 5, 10, 11 already tagged with party_tag: defer the message */
	if ((kind == 5 || kind == 10 || kind == 11) && tag == party_tag) {
		if (announce)
			shown = 2;
	} else if (announce) {
		shown = 1;
		show_message(2043);
		wait_ticks_or_key(message_delay);
	}
	gfx_show_area(0, 146, 319, 152);	/* message strip */
	obj = maze_tables->map_first[party_map_piece];
	for (;;) {	/* each object at the party's x, y, map piece */
		obj = find_object_at(party_cell_x, party_cell_y, party_map_piece, obj);
		if (obj == -1)
			break;
		/* type 7: 2-bit field at bit 8 + 2 * party_tag */
		if (maze_tables->type[obj] == 7 &&
		    get_bits(maze_tables->flags[obj], party_tag * 2 + 8, 2) == 2) {
			claim_cell(obj);
			return;
		}
		if (maze_tables->type[obj] == 8 && check_type8_object(obj) == 1)
			return;
		if (maze_tables->type[obj] == 25 &&
		    (found_object_owner = maze_tables->owner[obj]) == party_tag) {
			game_state = 27;
			party_region = obj;
			return;
		}
		obj++;
	}
	if (shown == 2) {
		show_message(2043);
		wait_ticks_or_key(message_delay);
		gfx_show_area(0, 146, 319, 152);
	}
	if (shown) {
		show_message(2045);
		play_sound_effect(0);
		wait_ticks_or_key(message_delay / 2);	/* half the usual delay */
	}
	gfx_show_area(0, 146, 319, 152);
}
