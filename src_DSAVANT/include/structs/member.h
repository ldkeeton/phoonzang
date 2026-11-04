/* battle groups: battle_groups[] and battle_group_ext[] point at these.  Group 0
   is the party; the other groups are monster groups. */

#ifndef MEMBER_H
#define MEMBER_H

struct combatant {			/* 0x2c bytes: one fighter's battle copy */
	int level;			/* +0x00: pc_rec.level; WEAKENED lowers it */
	int hp;				/* +0x02 */
	int hp_max;			/* +0x04 */
	int stamina;			/* +0x06 */
	int stamina_max;		/* +0x08 */
	char pad1[4];
	unsigned char status[10];	/* +0x0e: same as pc_rec.status */
	char pad2[7];
	unsigned char target_group;	/* +0x1f: group a party member attacks;
					   kept in 1..monster_group_count */
	unsigned char target_unit;	/* +0x20: unit attacked in target_group */
	char pad2b;
	unsigned char state;		/* +0x22: same as pc_rec.state, 3 dead */
	unsigned char poison_strength;	/* +0x23 */
	unsigned char countdown;	/* +0x24 */
	char pad3;
	/* Signed battle modifiers.  At battle start a party member's are seeded
	   from the personal skills (skills[19..22]); spells and hits move them,
	   and speed_mod drifts back toward 0 each turn. */
	signed char reflex_mod;		/* +0x26: -(Reflextion/15 + 2) */
	signed char aim_mod;		/* +0x27: -(Eagle Eye/15 + 2); WEAKENED raises */
	signed char strike_mod;		/* +0x28: Power Strike/10 + 2; WEAKENED lowers */
	signed char speed_mod;		/* +0x29: Snake Speed/10 + 2; SLOWED lowers;
					   adds to initiative and swings */
	signed char cell;		/* +0x2a: battle cell held, -1 none */
	unsigned char phase;		/* +0x2b */
};

struct member_rec {
	struct combatant unit[9];	/* +0x000 */
	unsigned char charge[6];	/* +0x18c: per-action charge left */
	unsigned char delay[6];		/* +0x192: per-action delay counter */
	char pad0[6];
	unsigned char kind;		/* +0x19e */
	char slot;			/* +0x19f: slot_recs index, -1 none */
	unsigned char unidentified;	/* +0x1a0: 1 until identified; selects
					   member_ext.name[1] */
	unsigned char unit_count;	/* +0x1a1: fighters still alive */
	unsigned char active_unit_count; /* +0x1a2: units with state < 2 and
					   status[2], status[3] clear */
	char pad1;
};

/* Four-byte base/count/span value consumed by add_random_steps. */
struct member_step_spec {
	int base;			/* +0: starting value */
	unsigned char count;		/* +2: number of random steps */
	unsigned char span;		/* +3: random_below limit */
};

struct member_ext {			/* 0xe8 bytes: the group's monster */
	char name[2][2][16];		/* +0x00: [unidentified][singular/plural] */
	long experience;		/* +0x40: earned for each one killed */
	char pad0[0x7a - 0x44];
	struct member_step_spec member_count_spec; /* +0x7a */
	struct member_step_spec hp_spec;	/* +0x7e */
	struct member_step_spec stamina_spec;	/* +0x82 */
	unsigned char attack_mode[3];	/* +0x86: per attack slot (0x12-byte
					   records at +0x44); 0 unused, 2 and 3
					   fixed effects, else a random bit of
					   the slot's mask */
	char pad1[0xaa - 0x89];
	unsigned char companion_id[2];	/* +0xaa: monster that may join */
	unsigned char companion_chance[2]; /* +0xac: its join roll limit */
	unsigned char f_00ae;	/* +0xae */
	unsigned char f_00af;	/* +0xaf */
	unsigned char f_00b0;	/* +0xb0 */
	unsigned char f_00b1;	/* +0xb1 */
	char pad2[0xd7 - 0xb2];
	unsigned char kind;		/* +0xd7: 0x47 when the member has a picture */
	unsigned char sound_id;		/* +0xd8: encounter sound, 0 none */
	char pad3[0xdd - 0xd9];
	unsigned char hp_regen;		/* +0xdd: HP regained each turn */
	char pad4[2];
	unsigned char bitmap_bit;	/* +0xe0: bit set in action_bitmap */
	char pad5;
	unsigned char flags;		/* +0xe2: bit 0 sets bitmap_bit */
	char pad6;
	unsigned char f_e4;		/* +0xe4 */
	unsigned char class_id;	/* +0xe5 */
	char pad7[2];
};

#endif
