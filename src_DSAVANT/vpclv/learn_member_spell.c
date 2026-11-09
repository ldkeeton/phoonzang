/* Offer a member a new spell from the selected school and award realm
   points. */
#include "structs/pcrec.h"
#include "structs/spell.h"
#include "msg.h"
extern struct pc_rec party_records[];
extern struct spell_table_view spell_table;
extern int dialog_selection;
extern int aztec_movmem(), aztec_setmem(), test_bit(), set_bitmap_bit();
extern int load_message_string(), str_subst_char(), display_centered_message();
extern int pick_spell_dialog_keep_frames(), random_below(),
	draw_member_realm_points();

/* Build the available spell list, let the player learn one, and update
   points. */
learn_member_spell(member, school)
int member, school;
{
	int spell, count, selected, quotient, max_level, mask, skill;
	char known_spells[16];
	char message[92];
	char class_name[80];
	switch (school) {
	case 0: mask = 8; skill = 32; break;
	case 1: mask = 4; skill = 30; break;
	case 3: mask = 2; skill = 31; break;
	case 2: mask = 1; skill = 29; break;
	}
	aztec_movmem(party_records[member].spell_bitmap, known_spells, 16);
	aztec_setmem(party_records[member].spell_bitmap, 16, 0);
	max_level = party_records[member].skills[skill] / 18 + 1;
	if (party_records[member].skills[skill] >= 98) max_level = 7;
	count = 0;
	spell = 0;
	do {
	if (spell_table.spell[spell].aux & mask &&
		spell_table.spell[spell].level <= max_level
		&& !test_bit(known_spells, spell)) {
	set_bitmap_bit(party_records[member].spell_bitmap, spell, 1);
	++count;
	}
	} while (++spell < 102);
	if (count == 0) {
	party_records[member].spells_to_learn[school] = 0;
	aztec_movmem(known_spells, party_records[member].spell_bitmap, 16);
	return;
	}
	load_message_string(MSG_YOU_LEARNED_A_NEW_SPELL, message);
	load_message_string(party_records[member].profession + 120, class_name);
	str_subst_char(message, class_name, 36);
	display_centered_message(message, 1);
	count = pick_spell_dialog_keep_frames(member, MSG_LEARN, 1, 0);
	aztec_movmem(known_spells, party_records[member].spell_bitmap, 16);
	if (count == 0) {
	quotient = dialog_selection / 256;
	selected = dialog_selection % 256;
	set_bitmap_bit(party_records[member].spell_bitmap, selected, 1);
	spell = random_below(party_records[member].skills[skill] / 20)
	+ spell_table.spell[selected].level *
		(party_records[member].stat[2] / 6)
		+ 1;
	count = spell_table.spell[selected].realm;
	if (party_records[member].realm_points[count][1] + spell
	< spell_table.spell[selected].cost)
	spell =
	spell_table.spell[selected].cost
		- party_records[member].realm_points[count][1];
	party_records[member].realm_points[count][1] += spell;
	party_records[member].realm_points[count][0] += spell;
	--party_records[member].spells_to_learn[school];
	draw_member_realm_points(member);
	}
}
