/* closes the party screen: restores the cached screens, frees the screen's
   pictures, sounds and party/overlay records, then reloads the monster
   pictures and the party members' own records */

extern int party_return_state;		/* game state the party screen returns to */
extern char far *screen_cache[];
	/* cached full-screen images, swapped per frame */
extern int saved_screen_slot;		/* slot holding the screen area saved here */
extern int saved_screen_pending;
	/* set while a saved area waits to be restored */
extern char screen_temp_name[];
	/* "VM1.$$$" spool name for save_screen_area */
extern char *party_char[];			/* 0x2c-byte party member records */
extern char *party_char_ext[];			/* 0x2c-byte extended member records */
extern unsigned char picture_slot_number[];	/* picture number in each slot */
extern int loaded_sound_id;			/* sound currently loaded, -1 if none */
extern long saved_area_a, saved_area_b;
extern struct {
	int count;
	char *items[12];
} overlay_list;

extern gfx_wait_sound(), gfx_restore_screen(), save_screen_area(),
	free_picture_slot(), wait_and_free_sound(), restore_areas_redraw_glyph(),
	gfx_restore_area(), dissolve_or_show_area(), load_monster_picture(),
	aztec_free();

close_party_screen()
{
	int i, slot;

	gfx_wait_sound(1);			/* flush queued sound first */
	gfx_restore_screen(screen_cache[1], 1, 0);
	saved_screen_slot = save_screen_area(72, 33, 247, 143,
		screen_temp_name);		/* keep the area for the return state */
	saved_screen_pending = 1;
	gfx_restore_screen(screen_cache[0], 1, 0);
	free_picture_slot(12);
	free_picture_slot(7);
	wait_and_free_sound(5);
	wait_and_free_sound(6);
	wait_and_free_sound(7);
	wait_and_free_sound(10);
	wait_and_free_sound(11);
	wait_and_free_sound(12);
	if (loaded_sound_id != -1) {		/* -1: nothing loaded */
		wait_and_free_sound(16);
		loaded_sound_id = -1;
	}
	restore_areas_redraw_glyph(0);
	free_picture_slot(1);
	free_picture_slot(2);
	gfx_restore_area(saved_area_b, 1);
	gfx_restore_area(saved_area_a, 1);
	if (party_return_state == 23)		/* back to the combat screen */
		dissolve_or_show_area(55, 146, 265, 198);
	for (i = 0; i < 7; i++) {		/* 7 party slots */
		aztec_free(party_char_ext[i]);
		aztec_free(party_char[i]);
	}
	for (i = 0; i < 12; i++)		/* 12 overlay slots, skip the count */
		aztec_free(overlay_list.items[i]);
	for (slot = 15; slot < 18; slot++)
		if (picture_slot_number[slot] != 255)	/* 0xff: slot free */
			free_picture_slot(slot);
	load_monster_picture(1, 0);		/* monster 1/5/7 into picture */
	load_monster_picture(5, 4);		/* slots 0/4/6 */
	load_monster_picture(7, 6);
}
