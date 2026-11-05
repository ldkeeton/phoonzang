/* Apply fountain effects to each selected party member. */
#include "structs/pcrec.h"
#include "structs/maze.h"
#include "structs/rgnstate.h"
#include "structs/randstep.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern int pick_party_member(), get_bits(), clamp_between(), random_below();
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps();
extern void draw_party_member_panel(), show_fountain_result(),
	play_sound_effect();

/* Apply the fountain object in party_region.region, then advance the index. */
drink_from_fountain()
{
	int effect, i, member, flags, count, span, amount, benefit, harm;
	flags = maze_tables->flags[party_region.region];
	count = maze_tables->party_mask[party_region.region] / 16;
	span = maze_tables->party_mask[party_region.region] % 16;
	while (1) {
		member = pick_party_member();
		if (member == -1) break;
		benefit = 0;
		harm = 0;
		if (party_records[member].state < 3 || get_bits(flags, 7, 1)) {
			amount = add_random_steps(*store_word_and_pair(
				count, span, count));
			for (effect = 0; effect < 16; effect++) {
				if (get_bits(flags, effect, 1) == 1) {
					if (effect < 7) benefit = 1;
					if (effect > 7 && effect < 15) harm = 2;
					switch (effect) {
					/* 0: restore stamina by amount, capped at max */
					case 0: party_records[member].stamina[0] = clamp_between(
						party_records[member].stamina[0] + amount, 0,
						party_records[member].stamina[1]); break;
					/* 1: restore each realm's spell points by a fresh roll, capped at max */
					case 1:
						for (i = 0; i < 6; i++)
						party_records[member].realm_points[i][0] = clamp_between(
							party_records[member].realm_points[i][0] +
							add_random_steps(*store_word_and_pair(count, span, count)), 0,
							party_records[member].realm_points[i][1]);
						break;
					/* 2: heal hp by amount, capped at max */
					case 2: party_records[member].hp[0] = clamp_between(
						party_records[member].hp[0] + amount, 0,
						party_records[member].hp[1]); break;
					/* 3: cure poison: clear strength and duration (status[5]) */
					case 3: party_records[member].poison_strength =
						0; party_records[member].status[5] = 0; break;
					/* 4: clear status[3] */
					case 4: party_records[member].status[3] = 0; break;
					/* 5: lift state 2 back to 0 and cure disease (status[6]) */
					case 5: if (
						party_records[member].state == 2) party_records[member].state =
						0; party_records[member].status[6] = 0; break;
					/* 6: clear status bytes 1, 2, 4, 8 and 9 */
					case 6:
						for (i = 1; i <= 9; i++)
						if (i == 1 || i == 2 || i == 4 || i == 8 || i == 9)
							party_records[member].status[i] = 0;
						break;
					/* 7: full restore: settle state, refill hp and stamina */
					case 7: party_records[member].state = 0; party_records[member].hp[0] =
						party_records[member].hp[1]; party_records[member].stamina[0] =
						party_records[member].stamina[1]; break;
					/* 8: drain stamina by amount; at 0 add 6..11 to status[2] (out of
					   breath) */
					case 8:
						party_records[member].stamina[0] = clamp_between(
							party_records[member].stamina[0] - amount, 0,
							party_records[member].stamina[1]);
						if (party_records[member].stamina[0] <= 0)
						party_records[member].status[2] += random_below(6) + 6;
						break;
					/* 9: drain each realm's spell points by a fresh roll, floored at 0 */
					case 9:
						for (i = 0; i < 6; i++)
						party_records[member].realm_points[i][0] = clamp_between(
							party_records[member].realm_points[i][0] -
							add_random_steps(*store_word_and_pair(count, span, count)), 0,
							party_records[member].realm_points[i][1]);
						break;
					/* 10: damage hp by amount; at 0 the member dies (state 3, sound gender +
					   8) */
					case 10:
						party_records[member].hp[0] = clamp_between(
							party_records[member].hp[0] - amount, 0, party_records[member].hp[1]);
						if (party_records[member].hp[0] <= 0) {
						party_records[member].state = 3;
						party_records[member].hp[0] = 0;
						party_records[member].stamina[0] = 0;
						play_sound_effect(party_records[member].gender + 8);
					}
						break;
					/* 11: poison: raise strength to count and duration (status[5]) to
					   amount */
					case 11:
						if (party_records[member].poison_strength < count)
						party_records[member].poison_strength = count;
						if (party_records[member].status[5] < amount)
						party_records[member].status[5] = amount;
						break;
					/* 12: raise status[3] to at least amount */
					case 12: if (party_records[member].status[3] < amount)
						party_records[member].status[3] = amount; break;
					/* 13: put a living member (state < 2) into state 2 */
					case 13: if (
						party_records[member].state < 2) party_records[member].state = 2; break;
					/* 14: raise status[2] (out of breath) to at least amount */
					case 14: if (party_records[member].status[2] < amount)
						party_records[member].status[2] = amount; break;
					}
				}
			}
		}
		draw_party_member_panel(member, 1);
		show_fountain_result(MSG_FOUNTAIN_RESULT_BASE + benefit + harm);
	}
	party_region.region++;
}
