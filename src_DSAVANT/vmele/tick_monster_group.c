/* ticks every monster in one group, packs the survivors to the front of
   unit[] and announces how many died ("3 Goblins died") */

#include "structs/member.h"
#include "msg.h"

extern struct member_rec *battle_groups[];		/* 0x1a4-byte battle groups */
extern struct member_ext *battle_group_ext[];		/* 0xe8-byte monster records */
extern int cell_slot_ref[][3];				/* cells: group*10 + unit, 0 free */
extern int message_delay;
extern char space_text[];		/* single space between count and name */
extern tick_combatant(), redraw_glyph_strip(),
	wait_ticks_with_events(), format_int_decimal(), strcat(),
	strlen(), load_message_string(), show_centered_message(),
	titlecase_string();

tick_monster_group(group)
int group;
{
	int kept, idx, row, col, fired, len;
	char buf[80];

	kept = 0;
	fired = 0;
	for (idx = 0; idx < battle_groups[group]->unit_count; idx++) {
		if (battle_groups[group]->unit[idx].state < 3) {
			/* the monster's own HP regen, no drain */
			if (tick_combatant(group, idx,
				battle_group_ext[group]->hp_regen, 0) == 1)
				fired++;
		}
		/* the dead are dropped */
		if (battle_groups[group]->unit[idx].state < 3) {
			battle_groups[group]->unit[kept] =
				battle_groups[group]->unit[idx];
			if (battle_groups[group]->unit[kept].cell != -1) {
				row = battle_groups[group]->unit[kept].cell / 10;
				col = battle_groups[group]->unit[kept].cell % 10;
				/* the monster now sits at its new index */
				cell_slot_ref[row][col] = group * 10 + kept;
			}
			kept++;
		}
	}
	if (fired > 0) {
		redraw_glyph_strip(1);	/* show the message strip */
		wait_ticks_with_events(1);
		if (battle_groups[group]->unit_count == 1)
			buf[0] = 0;		/* lone monster: leave out the count */
		else {
			format_int_decimal(fired, buf);
			strcat(buf, space_text);
		}
		/* 32-byte name row: +0 singular, +16 plural */
		strcat(buf, battle_group_ext[group]->name
			[battle_groups[group]->unidentified][fired == 1 ? 0 : 1]);
		titlecase_string(buf);
		len = strlen(buf);
		buf[len] = ' ';
		load_message_string(MSG_DIED, buf + len + 1);
		show_centered_message(buf, 17);			/* 17: its message sound */
		wait_ticks_with_events(message_delay);
	}
	battle_groups[group]->unit_count = kept;	/* survivors */
}
