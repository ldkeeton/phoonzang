/* spell_table: the spell entries and the tables stored after them */

#ifndef SPELL_H
#define SPELL_H

struct spell_info {
	unsigned char realm;	/* +0: 0..5 */
	unsigned char level;	/* +1: taken off the caster's level */
	unsigned char cost;	/* +2: points per power level */
	unsigned char fail_flags; /* +3: 1 the cast can fizzle, 2 it can
				   backfire */
	unsigned char targeted;	/* +4: 1 when a party member is picked */
	unsigned char aux;	/* +5: school mask for learn_member_spell */
};

/* A treasure-panel or combat spell animation: the start offsets the
 * frames close in from, the first glyph, and how the frames advance. */
struct spell_animation {
	int x;			/* +0 */
	int y;			/* +2 */
	unsigned char glyph;	/* +4 */
	unsigned char motion;	/* +5: 0 or 1 reverse, 2 forward */
};

/* Two items that combine into a third, either way round. */
struct item_recipe {
	int left;		/* +0 */
	int right;		/* +2 */
	int result;		/* +4 */
};

/* spell_table as a whole: the spell entries, the spell animations, then
 * the word tables that follow. */
struct spell_table_view {
	struct spell_info spell[102];
	struct spell_animation animation[26];	/* +0x264 */
	int state_icon[6];		/* +0x300: icon per party record state */
	int status_icon[10];		/* +0x30c: icon per status byte */
	int status_weight[10];		/* +0x320: icon priority per status byte */
	int glyph_base[11];		/* +0x334: base glyph per race */
	int trap_first_candidate[24];	/* +0x34a: per chest trap type, the
					   first decoy trap type tried for
					   the inspect list; 18 used */
	int trap_glyphs[24][8];		/* +0x37a: per trap type, the glyph
					   pressed at each step of its
					   disarm code; 255 for an unused step */
	struct item_recipe recipe[15];	/* +0x4fa: the last is all zero */
};

#endif
