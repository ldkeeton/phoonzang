/* collect the spells of realm that pc knows: names into known_spell_names, ids
   into known_spell_ids; returns the count */

struct spell_info {	/* 6-byte entries */
	unsigned char realm;
	char pad[5];
};
extern struct spell_info spell_table[];
extern char known_spell_names[][20];
extern int known_spell_ids[];

collect_known_realm_spells(pc, realm)
int pc, realm;
{
	int spell, n;

	n = 0;
	for (spell = 0; spell < 102; spell++) {	/* 0x66 spells */
		if (spell_table[spell].realm == realm
			&& test_bit(pc * 584 + 24082, spell)) {	/* 0x248-byte pc records */
			load_message_string(spell + 4000,
				known_spell_names[n]);	/* spell names start at message 0xfa0 */
			known_spell_ids[n] = spell;
			n++;
		}
	}
	return n;
}
