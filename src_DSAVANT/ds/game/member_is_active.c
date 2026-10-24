/* true only when a party member's +5 state byte and the two counters at
   +0x128/+0x129 are all zero */
struct grid_page {
	char pad0[296];
	unsigned char slot_a;		/* +0x128: first per-member counter */
	unsigned char slot_b;		/* +0x129: second per-member counter */
	char pad1[584 - 298];
};
struct member_state_rec {
	char pad0[5];
	unsigned char state;		/* +5: state byte, 0 when settled */
	char pad1[584 - 6];
};

extern struct grid_page cell_key_grid[];
extern struct member_state_rec member_state[];

member_is_active(pc)
int pc;
{
	return !(member_state[pc].state ||
		 cell_key_grid[pc].slot_a > 0 ||
		 cell_key_grid[pc].slot_b > 0);
}
