/* one action table entry: action_slot_table[row][col][entry] */

#ifndef ACTSLOT_H
#define ACTSLOT_H

struct action_slot {
	unsigned char action;
	unsigned char target;
	unsigned char roll;
};

#endif
