/* Prepare and select one new spell for a party member. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern char spell_table[];
extern int dialog_selection;
extern int test_bit();
extern int set_bitmap_bit();
extern int aztec_movmem();
extern int aztec_setmem();
extern int load_message_string();
extern int display_centered_message();
extern int pick_spell_dialog_keep_frames();
extern int draw_member_realm_points();

select_spell_to_learn(member_index, spell_type)
int member_index, spell_type;
{
	int spell_index;
	int learned_count;
	int selection_slot;
	int selection_realm;
	int required_level;
	int realm_mask;
	int spell_limit;
	char spell_bits[16];
	char message[80];

	switch (spell_type) {
	case 0:
		realm_mask = 8;
		spell_limit = 32;
		break;
	case 1:
		realm_mask = 4;
		spell_limit = 30;
		break;
	case 3:
		realm_mask = 2;
		spell_limit = 31;
		break;
	case 2:
		realm_mask = 1;
		spell_limit = 29;
		break;
	}

	aztec_movmem(party_records[member_index].spell_bitmap,
		spell_bits, 16);
	aztec_setmem(party_records[member_index].spell_bitmap, 16, 0);
	required_level = 1;
	learned_count = 0;
	for (spell_index = 0; spell_index < 102; spell_index++) {
		if ((realm_mask & (unsigned char)spell_table[spell_index * 6 + 5]) != 0
			&& (unsigned char)spell_table[spell_index * 6 + 1] <= required_level
			&& !test_bit(spell_bits, spell_index)) {
			set_bitmap_bit(party_records[member_index].spell_bitmap,
				spell_index, 1);
			learned_count++;
		}
	}

	if (learned_count == 0) {
		aztec_movmem(spell_bits,
			party_records[member_index].spell_bitmap, 16);
		return;
	}

	load_message_string(MSG_SELECT_A_NEW_SPELL_FOR_703, message);
	display_centered_message(message, 1);
	learned_count = pick_spell_dialog_keep_frames(member_index, MSG_LEARN,
		1, 0);
	aztec_movmem(spell_bits,
		party_records[member_index].spell_bitmap, 16);
	if (learned_count != 0)
		goto return_from_routine;

	selection_realm = dialog_selection / 256;
	selection_slot = dialog_selection % 256;
	set_bitmap_bit(party_records[member_index].spell_bitmap,
		selection_slot, 1);
	spell_index = (unsigned char)spell_table[selection_slot * 6 + 1]
		* ((unsigned char)party_records[member_index].stat[2] / 6) + 1;
	learned_count = (unsigned char)spell_table[selection_slot * 6];
	if (party_records[member_index].realm_points[learned_count][1] + spell_index
		< (unsigned char)spell_table[selection_slot * 6 + 2])
		spell_index = (unsigned char)spell_table[selection_slot * 6 + 2]
			- party_records[member_index].realm_points[learned_count][1];
	party_records[member_index].realm_points[learned_count][1] += spell_index;
	party_records[member_index].realm_points[learned_count][0] += spell_index;
	party_records[member_index].spells_to_learn[spell_type]--;
	draw_member_realm_points(member_index);

return_from_routine:
	;
}
