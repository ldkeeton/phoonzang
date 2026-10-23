struct spell_info {	/* 6-byte entries */
	unsigned char realm;	/* +0 */
	unsigned char level;	/* +1 */
	unsigned char cost;	/* +2: points per power level */
	unsigned char f3;
	unsigned char targeted;	/* +4: 1 when a party member is picked */
	char pad;
};
struct pc_rec {	/* 0x248-byte records */
	int w0;	/* +0: drained by casting, floored at 0 */
	int w2[3];
	int cap;
	int w10;
	int points[6][2];	/* +0xc: [cur, max] per realm */
	char pad1[332 - 36];
	unsigned char b14c;	/* +0x14c: set to 6..11 when w0 bottoms out */
	char pad2[584 - 333];
};
extern struct spell_info spell_table[];
extern struct pc_rec pc_records[];
extern int party_redraw_mode, spell_target, spell_dialog_result, pending_event;

/* let pc pick and cast a spell: pay its points, apply it, drain w0 by a roll; then show any pending event */
cast_spell_from_menu(pc)
int pc;
{
	int spell, power;

	party_redraw_mode = 5;
	if (pick_spell_dialog(pc, 2026, 1, 1) == 0) {	/* zero: a spell was chosen */
		power = spell_dialog_result / 256;	/* (power << 8) + spell + 0x100 */
		spell = spell_dialog_result % 256;
		if (spell_table[spell].targeted == 1) {
			if ((spell_target = pick_party_member()) == -1)	/* -1: Esc */
				;
		}
		if (spell >= 0) {
			pc_records[pc].points[spell_table[spell].realm][0] -= spell_table[spell].cost * power;
			apply_spell_effect(pc, spell, power, spell_target);
			pc_records[pc].w0 -= random_below(power) + spell_table[spell].level + power;
			if (pc_records[pc].w0 < 0) {
				pc_records[pc].w0 = 0;
				pc_records[pc].b14c = random_below(6) + 6;	/* 6..11 */
			}
		}
	}
	if (pending_event > 0)
		show_event_message(pending_event);
}
