/* one battle turn for one fighter's combat copy: recovers stamina, applies HP
   regen, drain and poison, handles death (experience, freeing its cell) and
   counts its status effects down.  Returns 1 when the fighter died. */

#include "structs/member.h"
#include "structs/pcrec.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern int cell_slot_ref[][3];		/* cells: group*10 + unit, 0 free */
extern unsigned char action_bitmap[];	/* 0xcc-byte bitmap */
extern long battle_experience;		/* earned from kills this battle */
extern int random_below();
extern set_bitmap_bit();

tick_combatant(group, unit, regen, drain)
int group, unit, regen, drain;
{
	int step_max;			/* also read below as a party index */
	struct combatant *fighter;
	int hp_delta, i, died, row, col;

	fighter = &battle_groups[group]->unit[unit];
	died = 0;
	if (fighter->status[2] > 0) {	/* out of breath: recover stamina */
		step_max = (long)fighter->stamina_max * 5 / 100;
		fighter->stamina += random_below(step_max) + 1;
		if (fighter->stamina > fighter->stamina_max)
			fighter->stamina = fighter->stamina_max;
	}
	if (fighter->stamina <= 0) {	/* exhausted: out for 6..11 turns */
		fighter->stamina = 0;
		fighter->status[2] = random_below(6) + 6;
	}
	/* HP changes by regen - drain - poison strength, capped at max HP */
	hp_delta = (regen - drain) - fighter->poison_strength;
	fighter->hp += hp_delta;
	if (fighter->hp > fighter->hp_max)
		fighter->hp = fighter->hp_max;
	if (fighter->hp > 0)
		goto scan;
	/* dead */
	fighter->hp = 0;
	fighter->stamina = 0;
	fighter->state = 3;
	died = 1;
	if (group == 0)
		goto scan;
	if (group >= 1 && group <= 5)	/* a monster: the party earns it */
		battle_experience += battle_group_ext[group]->experience;
	if (fighter->cell != -1) {	/* free the battle cell it stood in */
		row = fighter->cell / 10;
		col = fighter->cell % 10;
		cell_slot_ref[row][col] = 0;
		fighter->cell = -1;
	}
	if (battle_group_ext[group]->flags & 1)
		/* ext flag bit 0: record the kill in the action bitmap */
		set_bitmap_bit(action_bitmap,
			battle_group_ext[group]->bitmap_bit, 1);
scan:
	/* count the ten status effects down; 255 never expires */
	for (i = 0; i < 10; i++)
		if (fighter->status[i] > 0 && fighter->status[i] != 255)
			fighter->status[i]--;
	if (fighter->status[5] == 0)	/* poison wore off */
		fighter->poison_strength = 0;
	i = fighter->speed_mod;		/* haste or slow wears off */
	fighter->speed_mod = i < 0 ? i + 1 : i > 0 ? i - 1 : i;
	/* party: Snake Speed (skills[20]) climbs back to its floor */
	if (group == 0 && party_records[step_max].skills[20] > 0) {
		i = party_records[step_max].skills[20] / 10 + 2;
		if (fighter->speed_mod < i)
			fighter->speed_mod++;
	}
	if (fighter->countdown > 0)
		fighter->countdown--;
	if (fighter->phase == 3)	/* phase wraps 3 -> 0 */
		fighter->phase = 0;
	/* a living monster in phase 2 dies at the end of the turn */
	if (fighter->state != 3 && group != 0 && fighter->phase == 2) {
		fighter->hp = 0;
		fighter->stamina = 0;
		fighter->state = 3;
	}
	return died;
}
