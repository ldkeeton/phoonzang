/* Restore the NPC screen and release the temporary overlay resources. */

#include "structs/ovlitem.h"

extern int game_state;
extern unsigned char picture_slot_number[];
extern struct {
	int count;
	struct overlay_item *items[12];
} overlay_list;
extern int cell_slot_ref[3][3];
extern int npc_cell_effect_frame[3][3];
extern int loaded_sound_id;
extern int saved_screen_pending, saved_screen_slot;
extern int screen_cache_0_seg, screen_cache_1_seg;
extern int screen_cache_1_off, screen_cache;
extern long saved_area_a, saved_area_b;
extern char npc_screen_temp_file[];

extern int redraw_area_set(), show_area_set(), free_picture_slot();
extern int call_restore_area(), dissolve_or_show_area();
extern int free(), setmem(), wait_and_free_sound();
extern int call_restore_screen(), save_screen_area();

restore_npc_interaction_screen()
{
	int i;
	int overlay_slot_index;
	int picture_slot_index;

	redraw_area_set(3);
	if (game_state != 10)
		show_area_set(3);
	free_picture_slot(1);
	free_picture_slot(2);
	free_picture_slot(12);
	call_restore_area(saved_area_b, 1);
	call_restore_area(saved_area_a, 1);
	if (game_state != 10)
		dissolve_or_show_area(55, 146, 265, 198);
	for (i = 0; i < 12; ++i)
		free(overlay_list.items[i]);
	for (i = 15; i < 18; ++i) {
		if (picture_slot_number[i] != 255)
			free_picture_slot(i);
	}
	setmem(cell_slot_ref, 18, 0);
	setmem(npc_cell_effect_frame, 18, 0);
	if (loaded_sound_id != -1) {
		wait_and_free_sound(16);
		loaded_sound_id = -1;
	}
	call_restore_screen(screen_cache_1_off, screen_cache_1_seg, 1, 0);
	saved_screen_slot = save_screen_area(72, 33, 247, 143,
		npc_screen_temp_file);
	saved_screen_pending = 1;
	call_restore_screen(screen_cache, screen_cache_0_seg, 1, 0);
}
