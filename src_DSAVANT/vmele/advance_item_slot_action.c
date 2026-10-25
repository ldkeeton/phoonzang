/* fires one item slot's queued action: ages its roll and timer, charges the
   action from the member's stat difference, and pays the party when it
   bottoms out */

#include "structs/member.h"
#include "structs/pcrec.h"

extern struct member_rec *party_char[];
extern struct member_ext *party_char_ext[];
extern struct pc_rec party_records[];
extern int cell_slot_ref[][3];		/* cells: member*10 + item slot, 0 free */
extern unsigned char action_bitmap[];	/* 0xcc-byte bitmap */
extern long item_action_reward;		/* running total shared by the party */
extern int random_below();
extern set_bitmap_bit();

advance_item_slot_action(member, item, attack, defense)
int member, item, attack, defense;
{
	int step_max;
	struct item_slot *rec;
	int charge_delta, i, fired, row, col;

	rec = &party_char[member]->item[item];
	fired = 0;
	if (rec->counter[2] > 0) {		/* action is running */
		step_max = (long)rec->timer_max * 5 / 100;
		rec->timer += random_below(step_max) + 1;
		if (rec->timer > rec->timer_max)
			rec->timer = rec->timer_max;
	}
	if (rec->timer <= 0) {			/* restart 6..11 ticks */
		rec->timer = 0;
		rec->counter[2] = random_below(6) + 6;
	}
	/* the resistance comes off the attack difference; charges cap at +4 */
	charge_delta = (attack - defense) - rec->resist;
	rec->charges += charge_delta;
	if (rec->charges > rec->charge_cap)
		rec->charges = rec->charge_cap;
	if (rec->charges > 0)
		goto scan;
	/* charges are gone: the action fires and the slot goes idle */
	rec->charges = 0;
	rec->timer = 0;
	rec->state = 3;
	fired = 1;
	if (member == 0)
		goto scan;
	if (member >= 1 && member <= 5)		/* other five members */
		item_action_reward += party_char_ext[member]->reward;
	if (rec->cell != -1) {			/* slot holds a cell */
		row = rec->cell / 10;
		col = rec->cell % 10;
		cell_slot_ref[row][col] = 0;
		rec->cell = -1;
	}
	if (party_char_ext[member]->flags & 1)
		/* ext flag bit 0: set the member's bit in the action bitmap */
		set_bitmap_bit(action_bitmap,
			party_char_ext[member]->bitmap_bit, 1);
scan:
	/* ten per-cell counters: count down the live ones */
	for (i = 0; i < 10; i++)
		if (rec->counter[i] > 0 && rec->counter[i] != 255)
			rec->counter[i]--;
	if (rec->counter[5] == 0)	/* flag clear: drop the resistance */
		rec->resist = 0;
	i = rec->level;			/* level eases toward 0 */
	rec->level = i < 0 ? i + 1 : i > 0 ? i - 1 : i;
	/* member 0: top the level up from party record flag[20] */
	if (member == 0 && party_records[step_max].flag[20] > 0) {
		i = party_records[step_max].flag[20] / 10 + 2;
		if (rec->level < i)
			rec->level++;
	}
	if (rec->countdown > 0)		/* countdown to the next action */
		rec->countdown--;
	if (rec->phase == 3)		/* phase wraps 3 -> 0 */
		rec->phase = 0;
	/* a fired action for another member ends on phase 2 */
	if (rec->state != 3 && member != 0 && rec->phase == 2) {
		rec->charges = 0;
		rec->timer = 0;
		rec->state = 3;
	}
	return fired;
}
