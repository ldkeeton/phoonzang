/* Slot state records, 0x26 bytes each. */
#ifndef SLOTSTAT_H
#define SLOTSTAT_H

struct slot_record {
	char pad0[4];
	unsigned char kind;		/* +0x04: < 25 means in use */
	unsigned char map_piece;	/* +0x05 */
	char pad1[18];
	unsigned char flag;		/* +0x18 */
	char pad2;
	char assigned_bits[2];		/* +0x1a */
	char selected_bits[6];		/* +0x1c */
	char marked_bits[2];		/* +0x22 */
	char pad3[2];
};

#endif
