/* One time tick for a member: HP regen/drain/poison, disease effects, stamina,
   status timers, realm points. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int random_below();
extern int mark_party_member_dead();
extern int draw_party_member_panel();

update_party_member_tick(member_index, random_limit, stamina_percent,
		tick_count, realm_gain)
int member_index;
int random_limit;
int stamina_percent;
int tick_count;
int realm_gain;
{
	/* This slot is unused but keeps the compiler's frame layout exact. */
	int unused_local;
	int realm_index;
	int temporary;
	int change;
	int stat_index;

	/* Only members with state below 3 are updated. */
	if (party_records[member_index].state < 3) {
		/* status[6] (diseased) takes the disease path instead of ordinary
		   recovery. */
		if (party_records[member_index].status[6] > 0) {
			/* One chance in 100 per tick of a disease flare-up. */
			if (random_below(100) == 0) {
				/* Select one of six affected status bytes. */
				switch (random_below(6)) {
				case 0: change = 3; break;
				case 1: change = 4; break;
				case 2: change = 5; break;
				case 3: change = 7; break;
				case 4: change = 8; break;
				case 5: change = 9; break;
				}
				party_records[member_index].status[change] = 255;
				if (change == 5)
					party_records[member_index].poison_strength += random_below(2) + 1;
				stat_index = random_below(7);
				/* The stat loss and maximum HP loss each have a one-in-ten chance. */
				if (random_below(10) == 0
					&& party_records[member_index].stat[stat_index] > 1)
					party_records[member_index].stat[stat_index]--;
				if (random_below(10) == 0 && party_records[member_index].hp[1] > 2)
					party_records[member_index].hp[1] -= random_below(3);
			}
			party_records[member_index].hp[0] +=
				party_records[member_index].hp_regen * tick_count -
				party_records[member_index].hp_drain * tick_count -
				party_records[member_index].poison_strength * tick_count;
			if (party_records[member_index].hp[0] > party_records[member_index].hp[1])
				party_records[member_index].hp[0] = party_records[member_index].hp[1];
			if (party_records[member_index].hp[0] <= 0)
				mark_party_member_dead(member_index, 0);
		} else {
			party_records[member_index].hp[0] += random_below(random_limit) +
				party_records[member_index].hp_regen * tick_count -
				party_records[member_index].hp_drain * tick_count -
				party_records[member_index].poison_strength * tick_count;
			if (party_records[member_index].hp[0] > party_records[member_index].hp[1])
				party_records[member_index].hp[0] = party_records[member_index].hp[1];
			if (party_records[member_index].hp[0] <= 0)
				mark_party_member_dead(member_index, 0);
			else {
				/* Empty stamina is reset and marks the member with a random status. */
				if (party_records[member_index].stamina[0] <= 0) {
					party_records[member_index].stamina[0] = 0;
					party_records[member_index].status[2] = random_below(6) + 6;
				}
				if (stamina_percent > 0) {
					temporary = ((long) party_records[member_index].stamina[1] *
						stamina_percent) / 100;
					party_records[member_index].stamina[0] +=
						random_below(temporary / 2) + temporary / 2 + 1;
					if (party_records[member_index].stamina[0]
						> party_records[member_index].stamina[1])
						party_records[member_index].stamina[0] =
							party_records[member_index].stamina[1];
				}
				/* Age each of the ten temporary status bytes. */
				for (realm_index = 0; realm_index < 10; realm_index++) {
					temporary = party_records[member_index].status[realm_index];
					if (temporary > 0 && temporary != 255) {
						temporary -= tick_count;
						if (temporary < 0)
							temporary = 0;
						party_records[member_index].status[realm_index] = temporary;
					}
				}
				if (party_records[member_index].status[5] == 0 ||
				    party_records[member_index].poison_strength == 0) {
					party_records[member_index].status[5] = 0;
					party_records[member_index].poison_strength = 0;
				}
				/* A positive realm gain rolls points for all six realms. */
				if (realm_gain > 0) {
					for (realm_index = 0; realm_index < 6; realm_index++) {
						party_records[member_index].realm_points[realm_index][0] +=
							random_below(party_records[member_index].glyph_row[realm_index] + 1);
						if (party_records[member_index].realm_points[realm_index][0] >
						    party_records[member_index].realm_points[realm_index][1])
							party_records[member_index].realm_points[realm_index][0] =
								party_records[member_index].realm_points[realm_index][1];
					}
				}
			}
		}
		draw_party_member_panel(member_index, 1);
	}
}
