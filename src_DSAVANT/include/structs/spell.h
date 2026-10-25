/* one 6-byte spell_table entry */

#ifndef SPELL_H
#define SPELL_H

struct spell_info {
	unsigned char realm;		/* +0: 0..5 */
	unsigned char level;		/* +1: taken off the power cap */
	unsigned char cost;		/* +2: points per power level */
	unsigned char f3;
	unsigned char targeted;		/* +4: 1 when a party member is picked */
	char pad;
};

/* spell_table as a whole: the 102 entries, then the word tables that follow */
struct spell_table_view {
	struct spell_info spell[102];
	char pad[0x300 - 0x66 * 6];
	int state_icon[6];		/* +0x300: icon per party record state */
	int status_icon[10];		/* +0x30c: icon per status byte */
	int status_weight[10];		/* +0x320: icon priority per status byte */
	int glyph_base[1];		/* +0x334: open-ended, per glyph set */
};

#endif
