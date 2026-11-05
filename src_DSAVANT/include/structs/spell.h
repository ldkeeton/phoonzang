/* one 6-byte spell_table entry */

#ifndef SPELL_H
#define SPELL_H

/* The first two bytes of an entry: the realm and the level it takes off the
 * caster.  Some panel code reads the pair as one word. */
union spell_realm_level {
	int word;
	struct spell_realm_level_bytes {
		unsigned char realm;	/* +0: 0..5 */
		unsigned char level;	/* +1: taken off the caster's level */
	} bytes;
};

/* Bytes +2 and +3: the point cost and an unused byte, also read as a word. */
union spell_cost_effect {
	int word;
	struct spell_cost_effect_bytes {
		unsigned char cost;	/* +2: points per power level */
		unsigned char f3;
	} bytes;
};

/* Bytes +4 and +5 are also compared together by the item-recipe table. */
union spell_targeting {
	int word;
	struct spell_targeting_bytes {
		unsigned char targeted;	/* +4: 1 when a party member is picked */
		unsigned char aux;	/* +5: school mask for learn_member_spell;
					   a type code in vtrea's draw_treasure_panel */
	} bytes;
};

struct spell_info {
	union spell_realm_level realm_level;
	union spell_cost_effect cost_effect;
	union spell_targeting targeting;
};

/* spell_table as a whole: 128 six-byte entries, then the word tables that
 * follow.  Entries after the first 102 are the treasure panel's spell
 * animations. */
struct spell_table_view {
	struct spell_info spell[128];
	int state_icon[6];		/* +0x300: icon per party record state */
	int status_icon[10];		/* +0x30c: icon per status byte */
	int status_weight[10];		/* +0x320: icon priority per status byte */
	int glyph_base[11];		/* +0x334: base per glyph set; its last
					   word is the lead of the table below */
	int trap_first_candidate[18];	/* +0x34a: per chest trap type, the
					   first decoy trap type tried for
					   the inspect list */
	int pad2[6];			/* +0x36e */
	int trap_glyphs[18][8];		/* +0x37a: per trap type, the glyph
					   pressed at each step of its
					   disarm code; 255 for an unused step */
};

#endif
