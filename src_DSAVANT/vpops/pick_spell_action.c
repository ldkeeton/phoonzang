struct spell_info {	/* 6-byte entries */
	unsigned char realm;	/* +0 */
	unsigned char level;	/* +1 */
	unsigned char cost;	/* +2: points per power level */
	unsigned char f3;
	unsigned char targeted;	/* +4: 1 when a party member is picked */
	char pad;
};
extern struct spell_info spell_table[];
extern char *party_char[];
extern int spell_dialog_result;

void wait_for_party_redraw();
int action_spell_dialog();
int pick_party_member();

/* let pc pick a spell and, for a targeted one, pick the member it lands on */
int pick_spell_action(pc)
int pc;
{
	int result, button, power, spell, target;

	wait_for_party_redraw();
	button = action_spell_dialog(pc, 0x7ea, 1, 1);	/* 0x7ea: button labels */
	result = spell_dialog_result;
	if (button == 1)	/* second button: cancelled */
		return -1;
	power = result / 0x100;		/* high byte: power */
	spell = result % 0x100;		/* low byte: spell id */
	if (spell_table[spell].targeted == 1) {	/* 1: needs a party member */
		target = pick_party_member();
		if (target == -1)	/* -1: Esc */
			return -1;
		party_char[0][pc * 0x2c + 0x1f] = 0;	/* 0x2c-byte slot records */
		party_char[0][pc * 0x2c + 0x20] = target;
	}
	if (spell == 0x13 || spell == 0x58 || spell == 0x42)	/* ids that also clear +0x1f */
		party_char[0][pc * 0x2c + 0x1f] = 0;
	return (power << 8) + spell;	/* drop the dialog's 0x100 bias */
}
