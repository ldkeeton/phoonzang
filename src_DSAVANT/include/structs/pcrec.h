/* the six 0x248-byte party records: party_records[] */

#ifndef PCREC_H
#define PCREC_H

struct grid_cell {			/* 12 bytes */
	int key;			/* +0x0: 0 when free, counted when positive */
	int value;			/* +0x2: value of one level */
	unsigned char overlay;		/* +0x4: index into cell_overlay_code */
	unsigned char glyph;		/* +0x5: icon drawn on the member panel */
	unsigned char level;		/* +0x6 */
	unsigned char flags;		/* +0x7: bit 0 keyed */
	unsigned char pos[2];		/* +0x8: high nibble column, low nibble * 10px */
	unsigned char coord;		/* +0xa: packed nibbles tracked as maxima */
	unsigned char weight;		/* +0xb */
};

struct pc_rec {				/* 0x248 bytes */
	char name[8];			/* +0x000 */
	int w8[2];			/* +0x008 */
	long experience;		/* +0x00c: accumulated survivor reward */
	int w10[3];			/* +0x010 */
	int w16;			/* +0x016 */
	int pair_a[2];			/* +0x018: [cur, max], the 0x1b panel bar */
	int pair_b[2];			/* +0x01c: [cur, max], drained by casting */
	int power_total;		/* +0x020: sum of the keyed cells' power */
	int w22;			/* +0x022 */
	int power_cap;			/* +0x024: less a spell's level, caps its power */
	int w26;			/* +0x026 */
	int realm_points[6][2];		/* +0x028: [cur, max] per realm */
	struct grid_cell cell[2][10];	/* +0x040 */
	unsigned char slot_info[2][18];	/* +0x130: reset by reset_page_record */
	unsigned char order[8];		/* +0x154: cell index per slot, 0xff free */
	char pad0[10];			/* +0x15c */
	unsigned char status[10];	/* +0x166: [2] set 6..11 when pair_b[0] hits 0 */
	unsigned char stat[8];		/* +0x170 */
	unsigned char flag[34];		/* +0x178 */
	unsigned char prev[14];		/* +0x19a: slot spacing last frame */
	unsigned char cur[14];		/* +0x1a8: slot spacing this frame */
	unsigned char count[8];		/* +0x1b6: per-slot tallies */
	char pad1[116];			/* +0x1be */
	unsigned char story_flags[4];	/* +0x232: completed story message bits */
	unsigned char kind;		/* +0x236: 0x13 and 0x19 use glyph base 10 */
	unsigned char glyph_set;	/* +0x237: picks the panel's glyph base */
	unsigned char gender;		/* +0x238: 0 male, 1 female (MSG_MALE + gender) */
	unsigned char profession;	/* +0x239: class, MSG_CLASS_BASE + profession */
	char pad2;			/* +0x23a */
	unsigned char state;		/* +0x23b: 0 when settled */
	unsigned char attack;		/* +0x23c: also the cells' highest low nibble */
	unsigned char defense;		/* +0x23d: also the cells' highest high nibble */
	char pad3[5];			/* +0x23e */
	unsigned char adjusted_stat4;	/* +0x243 */
	unsigned char adjusted_stat5;	/* +0x244 */
	unsigned char stat5_plus_power;	/* +0x245 */
	char pad4;			/* +0x246 */
	unsigned char power_floor;		/* +0x247 */
};

#endif
