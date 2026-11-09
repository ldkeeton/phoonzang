/* Records read from a Bane of the Cosmic Forge saved game when importing
 * its party. */
#ifndef BANE_H
#define BANE_H

/* The block in front of the party's character records. */
struct bane_party_header {
	char unused_0[64];
	int member_count;
};

/* One item a Bane character holds. */
struct bane_item {
	int item;                  /* Bane item number */
	char unused_2[4];
	unsigned char level;       /* charges or level, passed to init_item_slot */
	unsigned char flags;       /* bit 0: may be kept when it has no match */
};

/* One Bane character, 432 bytes. */
struct bane_character {
	char name[8];
	long age_days;
	char unused_c[14];
	int hit_points;            /* +0x1a: maximum, scaled by level */
	char unused_1c[8];
	int level;                 /* +0x24 */
	int deaths;                /* +0x26 */
	int realm_points[6][2];    /* +0x28: [1] scaled by level */
	struct bane_item equipped[10];   /* +0x40 */
	struct bane_item carried[19];    /* +0x90: follows equipped, so an
	                                    index of 10 + n reaches carried[n] */
	char unused_128[4];
	unsigned char stats[8];          /* +0x12c */
	unsigned char skill_caps[30];    /* +0x134 */
	unsigned char resistances[14];   /* +0x152 */
	char unused_160[40];
	unsigned char spell_bits[12];    /* +0x188 */
	unsigned char imported_flags[4]; /* +0x194 */
	unsigned char story_flags[5];    /* +0x198 */
	unsigned char race;              /* +0x19d */
	unsigned char gender;            /* +0x19e */
	unsigned char profession;        /* +0x19f */
	unsigned char rank;              /* +0x1a0 */
	char unused_1a1[11];
	unsigned char equipped_count;    /* +0x1ac */
	unsigned char carried_count;     /* +0x1ad */
	char power_adjustment;           /* +0x1ae */
	char unused_1af;
};

#endif
