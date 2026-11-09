/* Sets up the NPC encounter portrait and starts its entrance animation. */
#include "structs/npc.h"
extern struct npc_record npc_record;
extern int npc_encounter_sound;
extern int cell_slot_ref[3][3];
extern int npc_cell_effect_frame[3][3];
extern int ensure_sound_loaded(), load_monster_picture();
extern int fill_npc_action_slots(), animate_npc_encounter_cells();
extern int run_npc_screen_animation();

/* Loads encounter resources, populates the portrait cell, and animates it. */
prepare_npc_encounter_scene()
{
	npc_encounter_sound = 0;
	if (npc_record.encounter_intro_sound_id > 0) {
		ensure_sound_loaded(npc_record.encounter_intro_sound_id);
		npc_encounter_sound = 16;
	}
	if (npc_record.monster_picture_id != 0) {
		load_monster_picture(npc_record.monster_picture_id, 15);
		cell_slot_ref[0][0] = 15;
		fill_npc_action_slots(15, 0, 0, -1);
	} else
		cell_slot_ref[0][0] = 0;
	npc_cell_effect_frame[0][0] = 1;
	animate_npc_encounter_cells(0, 1);
	run_npc_screen_animation();
}
