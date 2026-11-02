/* the six 0x248-byte party records: party_records[] */

#ifndef PCREC_H
#define PCREC_H

struct pc_item_slot {			/* 12 bytes */
	int item_id;		/* +0x0: 0 when free, counted when positive */
	int weight;			/* +0x2: weight of one unit (see item_slot_weight) */
	unsigned char overlay;		/* +0x4: index into cell_overlay_code */
	unsigned char glyph;		/* +0x5: icon drawn on the member panel */
	unsigned char level;		/* +0x6 */
	unsigned char flags;		/* +0x7: bit 0 equipped */
	unsigned char resist_bonus[2];	/* +0x8: high nibble resist index, low nibble * 10 percent */
	unsigned char regen_drain;	/* +0xa: low nibble hp_regen, high nibble hp_drain */
	char armor_class;		/* +0xb: taken off the wearer's armor_class */
};

struct pc_hand_base {
	int damage_bonus;		/* +0x00: added to the dice roll */
	unsigned char damage_dice;	/* +0x02: add_random_steps roll count */
	unsigned char damage_sides;	/* +0x03: add_random_steps die size */
};

/* set_party_hand_attack copies the item's eight hand_values over +0x04
 * through +0x0b, so critical_chance starts as hand_values[6].  No routine
 * found reads +0x04..+0x09, +0x0b, +0x0c or +0x10. */
struct pc_hand_attack {
	struct pc_hand_base base;	/* +0x00: four-byte base damage tuple */
	char pad04[6];
	unsigned char critical_chance; /* +0x0a: plus skills[33] / 5 */
	char pad0b;
	char pad0c;			/* +0x0c: from the item's +0x45 */
	unsigned char range;		/* +0x0d: indexes the rank limits at
					   bss_9386; ranks 3+ need non-zero */
	char hit_penalty;             /* +0x0e: lowered by stat[4] */
	unsigned char attack_flags;   /* +0x0f: attack mode bits 0..7 */
	char pad10;			/* +0x10: from the item's +0x42 */
	unsigned char slay_family;	/* +0x11: damage multiplier 2 when it
					   matches the target's family */
};

struct pc_rec {				/* 0x248 bytes */
	char name[8];			/* +0x000 */
	long age_days;			/* +0x008: age in days, years = /365 */
	long experience;		/* +0x00c: accumulated survivor reward */
	long marks;			/* +0x010: MKS on the summary panel */
	long gold;			/* +0x014: GP on the summary panel */
	int hp[2];			/* +0x018: [cur, max], HP on the summary panel */
	int stamina[2];			/* +0x01c: [cur, max], ST; drained by casting and walking */
	int carried_weight;		/* +0x020: sum of item_slot_weight, CC x/10 */
	int carry_capacity;		/* +0x022: encumbrance divisor, CC /y */
	int level;			/* +0x024: LVL; less a spell's level, caps its power */
	int deaths;			/* +0x026: bumped by resurrection, shortens the lifespan bar */
	int realm_points[6][2];		/* +0x028: [cur, max] per realm */
	struct pc_item_slot item_slots[2][10];	/* +0x040 */
	struct pc_hand_attack hand_attack[2]; /* +0x130: per weapon hand */
	unsigned char equipped[8];	/* +0x154: item_slots index per equip position, 0xff empty; 0-1 hands */
	unsigned char spell_school[4];	/* +0x15c: mage, priest, alchemist, psionic */
	unsigned char glyph_row[6];	/* +0x160: panel glyph rows, each at least 1 */
	unsigned char status[10];	/* +0x166: [2] set 6..11 when stamina[0] hits 0 */
	unsigned char stat[8];		/* +0x170 */
	/* skills[i] is named by message 5500 + i.  Weaponry 0-9: wand&dagger,
	   sword, axe, mace&flail, pole&staff, throwing, sling, bows, shield,
	   hands&feet.  Physical 10-17: swimming, climbing, scouting, music,
	   oratory, legerdemain, skulduggery, ninjutsu.  Personal 18-23:
	   firearms, reflextion, snake speed, eagle eye, power strike, mind
	   control.  Academia 24-33: artifacts, mythology, mapping, scribe,
	   diplomacy, alchemy, theology, theosophy, thaumaturgy, kirijutsu. */
	unsigned char skills[34];	/* +0x178 */
	unsigned char base_resist[14];	/* +0x19a: percent, 0..125; profession and level, plus bonuses */
	unsigned char resist[14];	/* +0x1a8: base_resist plus equipment; beat random_below(100) to resist */
	char armor_class[8];		/* +0x1b6: per equip slot; [0] base 10, lower is better */
	char pad1[0x60];			/* +0x1be */
	unsigned char spell_bitmap[10];	/* +0x21e: imported spell selection bits */
	char pad2[6];			/* +0x228 */
	unsigned char imported_flags[4];	/* +0x22e: imported status values */
	unsigned char story_flags[4];	/* +0x232: completed story message bits */
	unsigned char kind;		/* +0x236: 0x13 and 0x19 use glyph base 10 */
	unsigned char race;		/* +0x237: MSG_RACE_BASE + race; 5 faerie; picks the panel's glyph base */
	unsigned char gender;		/* +0x238: 0 male, 1 female (MSG_MALE + gender) */
	unsigned char profession;	/* +0x239: class, MSG_CLASS_BASE + profession */
	unsigned char rank;		/* +0x23a: rank within profession */
	unsigned char state;		/* +0x23b: 0 when settled */
	unsigned char hp_regen;		/* +0x23c: HP gained per tick; best of the equipped items */
	unsigned char hp_drain;		/* +0x23d: HP lost per tick; worst of the equipped items */
	unsigned char poison_strength;	/* +0x23e: HP lost per tick; status[5] clears at 0 */
	unsigned char stamina_drain;	/* +0x23f: extra stamina per step, by encumbrance */
	unsigned char imported_fields[2]; /* +0x240: set by import_bane_party */
	char pad4;			/* +0x242 */
	unsigned char adjusted_stat4;	/* +0x243 */
	unsigned char adjusted_stat5;	/* +0x244 */
	unsigned char stat5_plus_power;	/* +0x245 */
	char pad5;			/* +0x246 */
	unsigned char power_floor;		/* +0x247 */
};

#endif
