/* collect the spells of realm that pc knows: names into list_entry_text, ids
   into known_spell_ids; returns the count */

#include "structs/spell.h"
#include "msg.h"

extern struct spell_table_view spell_table;
extern char list_entry_text[][20];
extern int known_spell_ids[];

collect_known_spells(pc, realm)
int pc, realm;
{
	int spell, n;

	n = 0;
	for (spell = 0; spell < 102; spell++) {	/* 0x66 spells */
		if (spell_table.spell[spell].realm == realm
			&& test_bit(pc * 584 + 24082, spell)) {	/* 0x248-byte pc records */
			load_message_string(spell + MSG_SPELL_NAME_BASE,
				list_entry_text[n]);	/* spell names are a message base */
			known_spell_ids[n] = spell;
			n++;
		}
	}
	return n;
}
