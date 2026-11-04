/* The 0x48-byte item data record read by data_record_io. */
#ifndef ITEMREC_H
#define ITEMREC_H

#include "structs/pcrec.h"

/* A dice roll: count rolls of 1..span added to base (add_random_steps). */
struct item_dice {
	int base;
	unsigned char count;
	unsigned char span;
};

/* Kind 4 items are keys: using one on map clears one region bit and sets
 * another (use_item_menu). */
struct item_key_bits {
	int map;
	unsigned char clear_bit;
	unsigned char set_bit;
};

/* +0x1e: what a key opens, or a weapon's base damage. */
union item_effect {
	struct item_key_bits key;
	struct pc_hand_base damage;
};

struct item_record {
	char name[0x1a];			/* +0x00: own name, shown once identified */
	struct item_dice level_spec;		/* +0x1a: rolled into the slot's level */
	union item_effect u;			/* +0x1e: key (kind 4) or damage */
	int spell_code;			/* +0x22: power * 256 + spell */
	int weight;			/* +0x24: copied to the slot's weight */
	char pad26[2];				/* +0x26 through +0x27 */
	unsigned char resist_bonus[2];		/* +0x28: copied to the slot's resist_bonus */
	unsigned char hand_values[8];		/* +0x2a: copied to hand_attack +0x04;
					   [6] is the base critical chance */
	char pad32[5];				/* +0x32 through +0x36 */
	unsigned char slot_flags;		/* +0x37: translated to the slot's flags */
	unsigned char item_type;		/* +0x38: copied to the slot; indexes
					   item_type_counted; 4 is special to
					   set_party_hand_attack */
	unsigned char glyph;			/* +0x39: icon; also indexes the generic
					   item names at MSG_DAGGER_6000 */
	unsigned char page_attr;		/* +0x3a: kept in item_slot_attr */
	char pad3b;				/* +0x3b */
	unsigned char regen_drain;		/* +0x3c: copied to the slot's regen_drain */
	char pad3d[2];			/* +0x3d through +0x3e */
	unsigned char kind;			/* +0x3f */
	char armor_class;			/* +0x40: copied to the slot's armor_class */
	signed char hit_adjustment;		/* +0x41: times 5 into hit_penalty */
	unsigned char hand_field10;		/* +0x42: copied to hand_attack pad10 */
	unsigned char slay_family;		/* +0x43: hand_attack slay_family */
	unsigned char range;			/* +0x44: hand_attack range */
	unsigned char hand_field0c;		/* +0x45: copied to hand_attack pad0c */
	unsigned char attack_flags;		/* +0x46: hand_attack attack_flags */
	char pad47;				/* +0x47 */
};

#endif
