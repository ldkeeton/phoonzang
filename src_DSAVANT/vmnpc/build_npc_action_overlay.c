/* Builds the action entry and target glyph sequence for an NPC cell. */
#include "structs/slotrec.h"
#include "structs/actslot.h"

extern struct slot_rec slot_recs[];
extern struct action_slot action_slot_table[][3][10];
extern unsigned char action_slot_mode[][3];
extern unsigned char picture_slot_number[];
extern int party_status_frame;
extern int npc_action_state, npc_record_index;
extern int dest_alt_arg;
extern int fill_npc_action_slots();
extern int random_below();

build_npc_action_overlay(slot_index, row, col, roll_adjust, glyphs)
int slot_index;
int row;
int col;
int roll_adjust;
unsigned char *glyphs;
{
	int entry;
	int action;
	int target;
	int roll;
	int unused_action;
	int glyph_index;

	glyph_index = 0;
	entry = slot_recs[slot_index].first[action_slot_mode[row][col]];
	for (; entry < slot_recs[slot_index].first[action_slot_mode[row][col]] +
	    slot_recs[slot_index].count[action_slot_mode[row][col]]; ++entry) {
		target = action_slot_table[row][col][entry].target;
		if (picture_slot_number[slot_index] == 24 && npc_action_state == 1 &&
		    slot_recs[slot_index].range[target].glyph == 4)
			roll_adjust = 0;
		roll = action_slot_table[row][col][entry].roll;
		if (roll_adjust != 0)
			--roll;
		if (roll > 0) {
		} else {
			action = action_slot_table[row][col][entry].action;
			++target;
			if (slot_recs[slot_index].target[action] +
			    slot_recs[slot_index].target_rand[action] - 1 < target) {
				if (action_slot_mode[row][col] != 0) {
					action_slot_mode[row][col] = 0;
					fill_npc_action_slots(slot_index, row, col, 0);
					build_npc_action_overlay(slot_index, row, col, 0, glyphs);
					return;
				}
				action = slot_recs[slot_index].action[entry] +
					random_below(slot_recs[slot_index].action_rand[entry]);
				action_slot_table[row][col][entry].action = action;
				target = slot_recs[slot_index].target[action];
			}
			action_slot_table[row][col][entry].target = target;
			roll = random_below(slot_recs[slot_index].range[target].rand) +
				slot_recs[slot_index].range[target].base;
		}
		action_slot_table[row][col][entry].roll = roll;
		glyphs[glyph_index] = slot_recs[slot_index].range[target].glyph;
		if (picture_slot_number[slot_index] == 71)
			dest_alt_arg = (action_slot_table[row][col][entry].action << 8)
				+ action_slot_table[row][col][entry].target;
		if (npc_record_index == 35 || npc_record_index == 11) {
			++glyph_index;
			glyphs[glyph_index] = glyphs[glyph_index - 1];
			glyphs[glyph_index - 1] = slot_recs[slot_index].last_glyph;
		}
		if (glyphs[glyph_index] != 0)
			++glyph_index;
	}

	if (npc_record_index >= 60 && npc_record_index <= 62) {
		glyphs[0] = slot_recs[slot_index].range[npc_action_state].glyph;
		glyphs[1] = slot_recs[slot_index].range[npc_action_state].base;
		glyphs[2] = slot_recs[slot_index].range[npc_action_state].rand;
		glyphs[3] = 0;
		glyph_index = 3;
		switch (npc_action_state) {
		case 1:
		case 2:
			glyphs[0] += party_status_frame;
			break;
		case 20:
			glyphs[1] += party_status_frame;
			break;
		}
	}
	switch (picture_slot_number[slot_index]) {
	case 52:
		if (npc_action_state == 1)
			glyph_index = 1;
		break;
	case 55:
		if (npc_action_state == 1)
			glyph_index = 1;
		if (npc_action_state == 2)
			glyphs[1] = party_status_frame + 3;
		break;
	case 70:
		if (npc_action_state == 1)
			glyphs[1] = 2;
		glyph_index = 2;
		break;
	case 73:
		if (npc_action_state == 1)
			glyphs[0] = party_status_frame + 1;
		glyph_index = 1;
		break;
	}
	if ((npc_record_index == 45 || npc_record_index == 50)
		&& npc_action_state > 0) {
		glyphs[0] = npc_action_state;
		glyph_index = 1;
	}
	glyphs[glyph_index] = 0;
}
