/* ticks each party member's combat copy (group 0) with their HP regen and
   drain, copies it back to the pc record, then sorts the party by state and
   picks the return state */

#include "structs/member.h"
#include "structs/pcrec.h"

extern struct member_rec *battle_groups[];		/* battle groups; 0 is the party */
extern struct pc_rec party_records[];
extern int member_icon[];
extern int member_roster_index[];		/* word 0 is scratch */
extern int party_char_count, party_return_state, party_screen_done;
extern tick_combatant(), copy_member_party_record(),
	draw_party_member_panel(),
	play_sound_effect(), aztec_swapmem();

tick_party_combatants()
{
	int member, other;
	char frame_pad[628];		/* keeps the original 0x27c frame */
	int swap, found;

	for (member = 0; member < party_char_count; member++) {
		/* still alive */
		if (battle_groups[0]->unit[member].state < 3) {
			if (tick_combatant(0, member,
				party_records[member].hp_regen,
				party_records[member].hp_drain) == 1) {
				copy_member_party_record(member);
				draw_party_member_panel(member, 1);	/* show the death */
				play_sound_effect(
					party_records[member].gender + 8);
			}
		}
	}
	/* refresh every pc record from the roster */
	for (member = 0; member < party_char_count; member++)
		copy_member_party_record(member);
	/* order by the state byte, moving the pc record, the combat copy and
	   the two parallel word arrays together */
	for (member = 0; member < party_char_count - 1; member++) {
		for (other = member + 1; other < party_char_count; other++) {
						if (party_records[member].state >
			    party_records[other].state) {
				aztec_swapmem(&party_records[member],
					&party_records[other], sizeof(struct pc_rec));
				aztec_swapmem(&battle_groups[0]->unit[member],
					&battle_groups[0]->unit[other],
					sizeof(struct combatant));
				swap = member_roster_index[member + 1];
				member_roster_index[member + 1] =
					member_roster_index[other + 1];
				member_roster_index[other + 1] = swap;
				swap = member_icon[member];
				member_icon[member] = member_icon[other];
				member_icon[other] = swap;
			}
		}
	}
	other = 0;				/* members in state >= 2 */
	found = 0;				/* a member is in phase 2 */
	for (member = 0; member < party_char_count; member++) {
		if (party_records[member].state >= 2)
			other++;
		if (battle_groups[0]->unit[member].phase == 2)
			found = 1;
	}
	if (other == party_char_count) {	/* all spent: back to the battle */
		party_return_state = 8;
		party_screen_done = 1;
	} else if (found > 0) {			/* reopen the party screen */
		party_return_state = 23;	/* 0x17: party screen */
		party_screen_done = 1;
	}
}
